-- =====================================================
-- FINANCIAL & PERFORMANCE CONTROLLING DATABASE
-- Schema creation
-- =====================================================


-- =====================================================
-- BUSINESS UNITS
-- =====================================================

CREATE TABLE business_units (
    bu_id SERIAL PRIMARY KEY,
    bu_name TEXT NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- =====================================================
-- COST CENTERS
-- =====================================================

CREATE TABLE cost_centers (
    cost_center_id SERIAL PRIMARY KEY,
    cost_center_name TEXT NOT NULL,
    bu_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT fk_costcenter_bu
        FOREIGN KEY (bu_id)
        REFERENCES business_units(bu_id)
);


-- =====================================================
-- PROJECTS
-- =====================================================

CREATE TABLE projects (
    project_id SERIAL PRIMARY KEY,
    project_name TEXT NOT NULL,
    cost_center_id INT NOT NULL,
    start_date DATE,
    end_date DATE,
    budget NUMERIC(14,2) CHECK (budget >= 0),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_project_costcenter
        FOREIGN KEY (cost_center_id)
        REFERENCES cost_centers(cost_center_id)
);


-- =====================================================
-- SUPPLIERS
-- =====================================================

CREATE TABLE suppliers (
    supplier_id SERIAL PRIMARY KEY,
    supplier_name TEXT NOT NULL,
    country TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- =====================================================
-- PURCHASE ORDERS
-- =====================================================

CREATE TABLE purchase_orders (
    po_id SERIAL PRIMARY KEY,
    supplier_id INT NOT NULL,
    project_id INT NOT NULL,
    order_date DATE NOT NULL,
    amount NUMERIC(14,2) NOT NULL CHECK (amount > 0),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_po_supplier
        FOREIGN KEY (supplier_id)
        REFERENCES suppliers(supplier_id),

    CONSTRAINT fk_po_project
        FOREIGN KEY (project_id)
        REFERENCES projects(project_id)
);


-- =====================================================
-- ACTUAL COSTS
-- =====================================================

CREATE TABLE actual_costs (
    cost_id SERIAL PRIMARY KEY,
    project_id INT NOT NULL,
    cost_date DATE NOT NULL,
    amount NUMERIC(14,2) NOT NULL CHECK (amount > 0),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_actualcost_project
        FOREIGN KEY (project_id)
        REFERENCES projects(project_id)
);


-- =====================================================
-- REVENUES
-- =====================================================

CREATE TABLE revenues (
    revenue_id SERIAL PRIMARY KEY,
    project_id INT NOT NULL,
    revenue_date DATE NOT NULL,
    amount NUMERIC(14,2) NOT NULL CHECK (amount > 0),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_revenue_project
        FOREIGN KEY (project_id)
        REFERENCES projects(project_id)
);


-- =====================================================
-- BUDGETS
-- =====================================================

CREATE TABLE budgets (
    budget_id SERIAL PRIMARY KEY,
    project_id INT NOT NULL,
    fiscal_year INT NOT NULL,
    planned_cost NUMERIC(14,2) CHECK (planned_cost >= 0),
    planned_revenue NUMERIC(14,2) CHECK (planned_revenue >= 0),

    CONSTRAINT fk_budget_project
        FOREIGN KEY (project_id)
        REFERENCES projects(project_id),

    CONSTRAINT unique_project_year
        UNIQUE(project_id, fiscal_year)
);


-- =====================================================
-- INDEXES FOR ANALYTICAL QUERIES
-- =====================================================

CREATE INDEX idx_projects_cost_center
ON projects(cost_center_id);

CREATE INDEX idx_po_project
ON purchase_orders(project_id);

CREATE INDEX idx_po_supplier
ON purchase_orders(supplier_id);

CREATE INDEX idx_actual_cost_project
ON actual_costs(project_id);

CREATE INDEX idx_revenue_project
ON revenues(project_id);

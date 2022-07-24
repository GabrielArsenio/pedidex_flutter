const String DATABASE_NAME = "pedidex.db";

const String PRODUCT_TABLE_NAME = "product";
const String PRODUCT_TABLE_CREATE_SCRIPT = "CREATE TABLE " +
    PRODUCT_TABLE_NAME +
    " (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, date DATETIME)";

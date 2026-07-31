package com.redshift.rs_vapourtraining;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public class DBHandler extends SQLiteOpenHelper {
    private static final String CARDNUMMBER_COL = "cardNummber";
    private static final String CREDITSWORTH_COL = "credits";
    private static final String CREDITS_COL = "Credits";
    private static final String CVV_COL = "cvv";
    private static final String DB_NAME = "traindb";
    private static final int DB_VERSION = 1;
    private static final String DESCRIPTION_COL = "description";
    private static final String EXPIRYDATE_COL = "expiryDate";
    private static final String GAMEID_COL = "gameid";
    private static final String ID_COL = "id";
    private static final String ID_COL2 = "id";
    private static final String ID_COL3 = "id";
    private static final String ID_COL4 = "purchaseid";
    private static final String IMG_URL_COL = "imageURL";
    private static final String NAMEONCARD_COL = "nameoncard";
    private static final String NAME_COL = "name";
    private static final String NAME_COL2 = "name";
    private static final String PASSWORD_COL = "password";
    private static final String PRICE_COL = "price";
    private static final String TABLE_NAME = "Product";
    private static final String TABLE_NAME2 = "Users";
    private static final String TABLE_NAME3 = "cardINFO";
    private static final String TABLE_NAME4 = "gamePurchases";
    private static final String USERID_COL3 = "userid";
    private static final String USERID_COL4 = "userid";

    public DBHandler(Context context) {
        super(context, DB_NAME, (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE Product (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT,description TEXT,imageURL TEXT,price TEXT,credits INTEGER)");
        db.execSQL("CREATE TABLE Users (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT,password TEXT,Credits INTEGER)");
        db.execSQL("CREATE TABLE cardINFO (id INTEGER PRIMARY KEY AUTOINCREMENT, userid TEXT NOT NULL,cardNummber TEXT,cvv TEXT,expiryDate TEXT,nameoncard TEXT)");
        db.execSQL("CREATE TABLE gamePurchases (purchaseid INTEGER PRIMARY KEY AUTOINCREMENT, userid INTEGER NOT NULL,gameid INTEGER NOT NULL)");
    }

    public void addNewUser(String username, String password, int creds) {
        SQLiteDatabase db = getWritableDatabase();
        ContentValues values = new ContentValues();
        values.put("name", username);
        values.put(PASSWORD_COL, password);
        values.put(CREDITS_COL, Integer.valueOf(creds));
        db.insert(TABLE_NAME2, null, values);
        db.close();
    }

    public void addNewProduct(String prodName, String desc, String url, String price, int credits) {
        SQLiteDatabase db = getWritableDatabase();
        ContentValues values = new ContentValues();
        values.put("name", prodName);
        values.put(DESCRIPTION_COL, desc);
        values.put(IMG_URL_COL, url);
        values.put(PRICE_COL, price);
        values.put(CREDITSWORTH_COL, Integer.valueOf(credits));
        db.insert(TABLE_NAME, null, values);
        db.close();
    }

    public void addCreditCard(String userID, String cardNummber, String cvv, String expiryDate, String nameOnCard) {
        SQLiteDatabase db = getWritableDatabase();
        ContentValues values = new ContentValues();
        values.put("userid", userID);
        values.put(CARDNUMMBER_COL, cardNummber);
        values.put(CVV_COL, cvv);
        values.put(EXPIRYDATE_COL, expiryDate);
        values.put(NAMEONCARD_COL, nameOnCard);
        db.insert(TABLE_NAME3, null, values);
        db.close();
    }

    public String checkUser(String username, String password) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursorSQL = db.rawQuery("SELECT * FROM Users WHERE name = '" + username + "' AND " + PASSWORD_COL + " = '" + password + "'", null);
        if (cursorSQL.moveToFirst()) {
            String name = cursorSQL.getString(1);
            cursorSQL.getString(2);
            return name;
        }
        cursorSQL.close();
        return null;
    }

    public String checkUser(String userID) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursorSQL = db.rawQuery("SELECT * FROM Users WHERE id = '" + userID + "'", null);
        if (cursorSQL.moveToFirst()) {
            String name = cursorSQL.getString(1);
            cursorSQL.getString(2);
            return name;
        }
        cursorSQL.close();
        return null;
    }

    public void buyGame(String userID, int gameID) {
        SQLiteDatabase db = getWritableDatabase();
        ContentValues values = new ContentValues();
        values.put("userid", userID);
        values.put(GAMEID_COL, Integer.valueOf(gameID));
        db.insert(TABLE_NAME4, null, values);
        db.close();
    }

    public ArrayList<ProductModal> getOwnedGames(String userID) {
        ArrayList<ProductModal> productModalArrayList = new ArrayList<>();
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursorSQL = db.rawQuery("SELECT * FROM gamePurchases WHERE userid = '" + userID + "'", null);
        if (cursorSQL.moveToFirst()) {
            do {
                productModalArrayList.add(getGame(cursorSQL.getInt(2)));
            } while (cursorSQL.moveToNext());
            cursorSQL.close();
            return productModalArrayList;
        }
        cursorSQL.close();
        return null;
    }

    public ProductModal getGame(int gameID) {
        SQLiteDatabase db = getWritableDatabase();
        Cursor cursorProducts = db.rawQuery("SELECT * FROM Product WHERE id = '" + gameID + "'", null);
        if (!cursorProducts.moveToFirst()) {
            return null;
        }
        ProductModal game = new ProductModal(cursorProducts.getString(1), cursorProducts.getString(3), cursorProducts.getString(4), cursorProducts.getString(2), cursorProducts.getInt(0), cursorProducts.getInt(5));
        return game;
    }

    public String getUserID(String username) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursorSQL = db.rawQuery("SELECT * FROM Users WHERE name = '" + username + "'", null);
        if (cursorSQL.moveToFirst()) {
            String userID = cursorSQL.getString(0);
            cursorSQL.close();
            return userID;
        }
        cursorSQL.close();
        return null;
    }

    public int getCreds(String userID) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursorSQL = db.rawQuery("SELECT Credits FROM Users WHERE id = '" + userID + "'", null);
        if (cursorSQL.moveToFirst()) {
            int credits = cursorSQL.getInt(0);
            cursorSQL.close();
            return credits;
        }
        cursorSQL.close();
        return 0;
    }

    public void updateCredits(String userID, int credits) {
        SQLiteDatabase db = getReadableDatabase();
        ContentValues values = new ContentValues();
        values.put(CREDITS_COL, Integer.valueOf(credits));
        db.update(TABLE_NAME2, values, "id=?", new String[]{userID});
    }

    public ArrayList<ProductModal> readProducts() {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursorProducts = db.rawQuery("SELECT * FROM Product", null);
        ArrayList<ProductModal> productModalArrayList = new ArrayList<>();
        if (cursorProducts.moveToFirst()) {
            do {
                productModalArrayList.add(new ProductModal(cursorProducts.getString(1), cursorProducts.getString(3), cursorProducts.getString(4), cursorProducts.getString(2), cursorProducts.getInt(0), cursorProducts.getInt(5)));
            } while (cursorProducts.moveToNext());
            cursorProducts.close();
            return productModalArrayList;
        }
        cursorProducts.close();
        return null;
    }

    public ProductModal getProduct(int productID) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursorProducts = db.rawQuery("SELECT * FROM Product WHERE id = '" + productID + "'", null);
        if (cursorProducts.moveToFirst()) {
            ProductModal game = new ProductModal(cursorProducts.getString(1), cursorProducts.getString(3), cursorProducts.getString(4), cursorProducts.getString(2), cursorProducts.getInt(0), cursorProducts.getInt(5));
            cursorProducts.close();
            return game;
        }
        cursorProducts.close();
        return null;
    }

    public ArrayList<CardModal> getCard(String userID) {
        SQLiteDatabase db = getReadableDatabase();
        Cursor cursorCards = db.rawQuery("SELECT * FROM cardINFO WHERE userid = " + userID, null);
        ArrayList<CardModal> cardModalArrayList = new ArrayList<>();
        if (cursorCards.moveToFirst()) {
            do {
                cardModalArrayList.add(new CardModal(cursorCards.getInt(1), cursorCards.getString(2), cursorCards.getString(3), cursorCards.getString(4), cursorCards.getString(5)));
            } while (cursorCards.moveToNext());
            cursorCards.close();
            return cardModalArrayList;
        }
        cursorCards.close();
        return null;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS Product");
        db.execSQL("DROP TABLE IF EXISTS Users");
        db.execSQL("DROP TABLE IF EXISTS cardINFO");
        onCreate(db);
    }
}

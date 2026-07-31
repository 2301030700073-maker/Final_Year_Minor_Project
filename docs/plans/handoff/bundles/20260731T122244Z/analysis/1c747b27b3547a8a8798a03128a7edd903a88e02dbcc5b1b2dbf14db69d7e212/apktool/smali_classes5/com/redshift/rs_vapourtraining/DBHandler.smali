.class public Lcom/redshift/rs_vapourtraining/DBHandler;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHandler.java"


# static fields
.field private static final CARDNUMMBER_COL:Ljava/lang/String; = "cardNummber"

.field private static final CREDITSWORTH_COL:Ljava/lang/String; = "credits"

.field private static final CREDITS_COL:Ljava/lang/String; = "Credits"

.field private static final CVV_COL:Ljava/lang/String; = "cvv"

.field private static final DB_NAME:Ljava/lang/String; = "traindb"

.field private static final DB_VERSION:I = 0x1

.field private static final DESCRIPTION_COL:Ljava/lang/String; = "description"

.field private static final EXPIRYDATE_COL:Ljava/lang/String; = "expiryDate"

.field private static final GAMEID_COL:Ljava/lang/String; = "gameid"

.field private static final ID_COL:Ljava/lang/String; = "id"

.field private static final ID_COL2:Ljava/lang/String; = "id"

.field private static final ID_COL3:Ljava/lang/String; = "id"

.field private static final ID_COL4:Ljava/lang/String; = "purchaseid"

.field private static final IMG_URL_COL:Ljava/lang/String; = "imageURL"

.field private static final NAMEONCARD_COL:Ljava/lang/String; = "nameoncard"

.field private static final NAME_COL:Ljava/lang/String; = "name"

.field private static final NAME_COL2:Ljava/lang/String; = "name"

.field private static final PASSWORD_COL:Ljava/lang/String; = "password"

.field private static final PRICE_COL:Ljava/lang/String; = "price"

.field private static final TABLE_NAME:Ljava/lang/String; = "Product"

.field private static final TABLE_NAME2:Ljava/lang/String; = "Users"

.field private static final TABLE_NAME3:Ljava/lang/String; = "cardINFO"

.field private static final TABLE_NAME4:Ljava/lang/String; = "gamePurchases"

.field private static final USERID_COL3:Ljava/lang/String; = "userid"

.field private static final USERID_COL4:Ljava/lang/String; = "userid"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const-string v0, "traindb"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 48
    return-void
.end method


# virtual methods
.method public addCreditCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "userID"    # Ljava/lang/String;
    .param p2, "cardNummber"    # Ljava/lang/String;
    .param p3, "cvv"    # Ljava/lang/String;
    .param p4, "expiryDate"    # Ljava/lang/String;
    .param p5, "nameOnCard"    # Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/DBHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 115
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "userid"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "cardNummber"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "cvv"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v2, "expiryDate"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v2, "nameoncard"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v2, "cardINFO"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 122
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 123
    return-void
.end method

.method public addNewProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "prodName"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "price"    # Ljava/lang/String;
    .param p5, "credits"    # I

    .line 102
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/DBHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 103
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 104
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "description"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v2, "imageURL"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "price"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "credits"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v2, "Product"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 110
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 111
    return-void
.end method

.method public addNewUser(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "creds"    # I

    .line 92
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/DBHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 93
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 94
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Credits"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v2, "Users"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 98
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 99
    return-void
.end method

.method public buyGame(Ljava/lang/String;I)V
    .locals 4
    .param p1, "userID"    # Ljava/lang/String;
    .param p2, "gameID"    # I

    .line 152
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/DBHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 153
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 154
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "userid"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "gameid"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const-string v2, "gamePurchases"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 157
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 158
    return-void
.end method

.method public checkUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "userID"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/DBHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 141
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM Users WHERE id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 142
    .local v1, "cursorSQL":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "pass":Ljava/lang/String;
    return-object v2

    .line 147
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "pass":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 148
    return-object v2
.end method

.method public checkUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/DBHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 128
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM Users WHERE name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "password"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 129
    .local v1, "cursorSQL":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "pass":Ljava/lang/String;
    return-object v2

    .line 134
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "pass":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 135
    return-object v2
.end method

.method public getCard(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "userID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/redshift/rs_vapourtraining/CardModal;",
            ">;"
        }
    .end annotation

    .line 265
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/DBHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 266
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM cardINFO WHERE userid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 267
    .local v1, "cursorCards":Landroid/database/Cursor;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v3, "cardModalArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/redshift/rs_vapourtraining/CardModal;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 270
    :cond_0
    new-instance v2, Lcom/redshift/rs_vapourtraining/CardModal;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v4, 0x2

    .line 271
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x3

    .line 272
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x4

    .line 273
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x5

    .line 274
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/redshift/rs_vapourtraining/CardModal;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 277
    return-object v3

    .line 279
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 280
    return-object v2
.end method

.method public getCreds(Ljava/lang/String;)I
    .locals 5
    .param p1, "userID"    # Ljava/lang/String;

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "credits":I
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/DBHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 208
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT Credits FROM Users WHERE id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 209
    .local v2, "cursorSQL":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 210
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 211
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 212
    return v0

    .line 214
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 215
    return v4
.end method

.method public getGame(I)Lcom/redshift/rs_vapourtraining/ProductModal;
    .locals 11
    .param p1, "gameID"    # I

    .line 177
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/DBHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 178
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM Product WHERE id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 179
    .local v1, "cursorProducts":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    new-instance v2, Lcom/redshift/rs_vapourtraining/ProductModal;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x3

    .line 181
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x4

    .line 182
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x2

    .line 183
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    .line 184
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v3, 0x5

    .line 185
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/redshift/rs_vapourtraining/ProductModal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 186
    .local v2, "game":Lcom/redshift/rs_vapourtraining/ProductModal;
    return-object v2

    .line 188
    .end local v2    # "game":Lcom/redshift/rs_vapourtraining/ProductModal;
    :cond_0
    return-object v2
.end method

.method public getOwnedGames(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "userID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/redshift/rs_vapourtraining/ProductModal;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v0, "productModalArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/redshift/rs_vapourtraining/ProductModal;>;"
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/DBHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 164
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM gamePurchases WHERE userid = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 165
    .local v2, "cursorSQL":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 167
    :cond_0
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/redshift/rs_vapourtraining/DBHandler;->getGame(I)Lcom/redshift/rs_vapourtraining/ProductModal;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 170
    return-object v0

    .line 172
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 173
    return-object v3
.end method

.method public getProduct(I)Lcom/redshift/rs_vapourtraining/ProductModal;
    .locals 11
    .param p1, "productID"    # I

    .line 247
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/DBHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 248
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM Product WHERE id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 250
    .local v1, "cursorProducts":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    new-instance v2, Lcom/redshift/rs_vapourtraining/ProductModal;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x3

    .line 252
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x4

    .line 253
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x2

    .line 254
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    .line 255
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v3, 0x5

    .line 256
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/redshift/rs_vapourtraining/ProductModal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 257
    .local v2, "game":Lcom/redshift/rs_vapourtraining/ProductModal;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 258
    return-object v2

    .line 260
    .end local v2    # "game":Lcom/redshift/rs_vapourtraining/ProductModal;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 261
    return-object v2
.end method

.method public getUserID(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "username"    # Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/DBHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 195
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM Users WHERE name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 196
    .local v1, "cursorSQL":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "userID":Ljava/lang/String;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 199
    return-object v2

    .line 201
    .end local v2    # "userID":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 202
    return-object v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    const-string v0, "CREATE TABLE Product (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT,description TEXT,imageURL TEXT,price TEXT,credits INTEGER)"

    .line 60
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    const-string v1, "CREATE TABLE Users (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT,password TEXT,Credits INTEGER)"

    .line 67
    .local v1, "query2":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string v2, "CREATE TABLE cardINFO (id INTEGER PRIMARY KEY AUTOINCREMENT, userid TEXT NOT NULL,cardNummber TEXT,cvv TEXT,expiryDate TEXT,nameoncard TEXT)"

    .line 76
    .local v2, "query3":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    const-string v3, "CREATE TABLE gamePurchases (purchaseid INTEGER PRIMARY KEY AUTOINCREMENT, userid INTEGER NOT NULL,gameid INTEGER NOT NULL)"

    .line 82
    .local v3, "query4":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 285
    const-string v0, "DROP TABLE IF EXISTS Product"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 286
    const-string v0, "DROP TABLE IF EXISTS Users"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 287
    const-string v0, "DROP TABLE IF EXISTS cardINFO"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0, p1}, Lcom/redshift/rs_vapourtraining/DBHandler;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 289
    return-void
.end method

.method public readProducts()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/redshift/rs_vapourtraining/ProductModal;",
            ">;"
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/DBHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 228
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT * FROM Product"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 229
    .local v1, "cursorProducts":Landroid/database/Cursor;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v3, "productModalArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/redshift/rs_vapourtraining/ProductModal;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 232
    :cond_0
    new-instance v2, Lcom/redshift/rs_vapourtraining/ProductModal;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x3

    .line 233
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x4

    .line 234
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x2

    .line 235
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x0

    .line 236
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v4, 0x5

    .line 237
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/redshift/rs_vapourtraining/ProductModal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 232
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 239
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 240
    return-object v3

    .line 242
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 243
    return-object v2
.end method

.method public updateCredits(Ljava/lang/String;I)V
    .locals 5
    .param p1, "userID"    # Ljava/lang/String;
    .param p2, "credits"    # I

    .line 219
    invoke-virtual {p0}, Lcom/redshift/rs_vapourtraining/DBHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 221
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 222
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Credits"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Users"

    const-string v4, "id=?"

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 224
    return-void
.end method

.class final Lcom/android/contacts/database/SimContactDaoImpl$AccountQuery;
.super Ljava/lang/Object;
.source "SimContactDaoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/database/SimContactDaoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccountQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "_id"

    const-string v1, "account_name"

    const-string v2, "account_type"

    const-string v3, "data_set"

    .line 471
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/database/SimContactDaoImpl$AccountQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public static getAccount(Landroid/database/Cursor;)Lcom/android/contacts/model/account/AccountWithDataSet;
    .locals 4

    .line 481
    new-instance v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 482
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getId(Landroid/database/Cursor;)J
    .locals 2

    const/4 v0, 0x0

    .line 477
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

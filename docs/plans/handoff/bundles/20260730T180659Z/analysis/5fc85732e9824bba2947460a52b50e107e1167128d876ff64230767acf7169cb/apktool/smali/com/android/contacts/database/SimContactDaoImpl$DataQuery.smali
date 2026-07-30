.class final Lcom/android/contacts/database/SimContactDaoImpl$DataQuery;
.super Ljava/lang/Object;
.source "SimContactDaoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/database/SimContactDaoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "raw_contact_id"

    const-string v1, "data1"

    const-string v2, "display_name"

    const-string v3, "mimetype"

    .line 444
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/database/SimContactDaoImpl$DataQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public static getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 462
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPhoneNumber(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 458
    invoke-static {p0}, Lcom/android/contacts/database/SimContactDaoImpl$DataQuery;->isPhoneNumber(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getRawContactId(Landroid/database/Cursor;)J
    .locals 2

    const/4 v0, 0x0

    .line 454
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isPhoneNumber(Landroid/database/Cursor;)Z
    .locals 1

    const/4 v0, 0x3

    .line 466
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

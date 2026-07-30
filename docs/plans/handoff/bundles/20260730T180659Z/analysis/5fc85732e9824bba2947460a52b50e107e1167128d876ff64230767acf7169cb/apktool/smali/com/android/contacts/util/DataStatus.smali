.class public Lcom/android/contacts/util/DataStatus;
.super Ljava/lang/Object;
.source "DataStatus.java"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0, p1}, Lcom/android/contacts/util/DataStatus;->fromCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private fromCursor(Landroid/database/Cursor;)V
    .locals 4

    const-string v0, "mode"

    const/4 v1, -0x1

    .line 77
    invoke-static {p1, v0, v1}, Lcom/android/contacts/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    const-string v0, "status"

    .line 78
    invoke-static {p1, v0}, Lcom/android/contacts/util/DataStatus;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "status_ts"

    const-wide/16 v2, -0x1

    .line 79
    invoke-static {p1, v0, v2, v3}, Lcom/android/contacts/util/DataStatus;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    const-string v0, "status_res_package"

    .line 80
    invoke-static {p1, v0}, Lcom/android/contacts/util/DataStatus;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "status_icon"

    .line 81
    invoke-static {p1, v0, v1}, Lcom/android/contacts/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    const-string v0, "status_label"

    .line 82
    invoke-static {p1, v0, v1}, Lcom/android/contacts/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    return-void
.end method

.method private static getInt(Landroid/database/Cursor;Ljava/lang/String;I)I
    .locals 1

    .line 153
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 154
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    :goto_0
    return p2
.end method

.method private static getLong(Landroid/database/Cursor;Ljava/lang/String;J)J
    .locals 1

    .line 158
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 159
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method private static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 145
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

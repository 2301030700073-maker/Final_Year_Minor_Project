.class public final Lcom/android/contacts/group/GroupUtil$GroupsProjection;
.super Ljava/lang/Object;
.source "GroupUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupsProjection"
.end annotation


# instance fields
.field public final accountType:I

.field public final isReadOnly:I

.field public final summaryCount:I

.field public final systemId:I

.field public final title:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_id"

    .line 309
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v0, "title"

    .line 310
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/group/GroupUtil$GroupsProjection;->title:I

    const-string v0, "summ_count"

    .line 311
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/group/GroupUtil$GroupsProjection;->summaryCount:I

    const-string v0, "system_id"

    .line 312
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/group/GroupUtil$GroupsProjection;->systemId:I

    const-string v0, "account_name"

    .line 313
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v0, "account_type"

    .line 314
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/group/GroupUtil$GroupsProjection;->accountType:I

    const-string v0, "data_set"

    .line 315
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v0, "auto_add"

    .line 316
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v0, "favorites"

    .line 317
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v0, "group_is_read_only"

    .line 318
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/group/GroupUtil$GroupsProjection;->isReadOnly:I

    const-string v0, "deleted"

    .line 319
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 338
    iget v0, p0, Lcom/android/contacts/group/GroupUtil$GroupsProjection;->title:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isEmptyFFCGroup(Landroid/database/Cursor;)Z
    .locals 3

    .line 354
    iget v0, p0, Lcom/android/contacts/group/GroupUtil$GroupsProjection;->accountType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/android/contacts/group/GroupUtil$GroupsProjection;->isReadOnly:I

    if-eq v2, v1, :cond_1

    iget v2, p0, Lcom/android/contacts/group/GroupUtil$GroupsProjection;->systemId:I

    if-eq v2, v1, :cond_1

    iget v2, p0, Lcom/android/contacts/group/GroupUtil$GroupsProjection;->summaryCount:I

    if-eq v2, v1, :cond_1

    .line 358
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/group/GroupUtil$GroupsProjection;->isReadOnly:I

    .line 359
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/group/GroupUtil$GroupsProjection;->systemId:I

    .line 360
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/group/GroupUtil;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/group/GroupUtil$GroupsProjection;->summaryCount:I

    .line 361
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 356
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Projection is missing required columns"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

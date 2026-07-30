.class public Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
.super Lcom/android/contacts/model/ValuesDelta;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GroupDelta"
.end annotation


# instance fields
.field private mAccountHasGroups:Z

.field private mUngrouped:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 246
    invoke-direct {p0}, Lcom/android/contacts/model/ValuesDelta;-><init>()V

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)Z
    .locals 0

    .line 241
    iget-boolean p0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    return p0
.end method

.method public static fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .locals 2

    .line 296
    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-direct {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;-><init>()V

    const/4 v1, 0x0

    .line 297
    iput-object v1, v0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 298
    iput-object p0, v0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    return-object v0
.end method

.method public static fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .locals 1

    .line 289
    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-direct {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;-><init>()V

    .line 290
    iput-object p0, v0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 291
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    iput-object p0, v0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    return-object v0
.end method

.method public static fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .locals 11

    .line 256
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    .line 257
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_type"

    .line 258
    invoke-virtual {v0, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "data_set"

    if-eqz p3, :cond_0

    .line 260
    invoke-virtual {v0, v3, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 262
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const-string v0, "should_sync"

    const-string v10, "ungrouped_visible"

    filled-new-array {v0, v10}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 267
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 268
    invoke-virtual {v4, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v4, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v4, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p0, :cond_2

    .line 272
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 274
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    invoke-static {v4}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->setUngrouped(Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 284
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    .line 279
    :cond_2
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    invoke-static {v4}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->setUngrouped(Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    .line 284
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_4
    throw p1
.end method

.method private getAccountType()Ljava/lang/String;
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    :cond_0
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public beforeExists()Z
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public buildDiff()Landroid/content/ContentProviderOperation;
    .locals 8

    .line 365
    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->isInsert()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/contacts/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 369
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 370
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected diff"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->isUpdate()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 377
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_3

    const-string v0, "account_name"

    .line 378
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "account_type"

    .line 379
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data_set"

    .line 380
    invoke-virtual {p0, v2}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "account_name=? AND account_type=?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_2

    const-string v2, " AND data_set IS NULL"

    .line 385
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v6

    aput-object v1, v2, v5

    goto :goto_0

    :cond_2
    const-string v7, " AND data_set=?"

    .line 388
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    aput-object v0, v7, v6

    aput-object v1, v7, v5

    aput-object v2, v7, v4

    move-object v2, v7

    .line 391
    :goto_0
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 392
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 393
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    .line 396
    :cond_3
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 397
    invoke-static {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$300(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 396
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {p0}, Lcom/android/contacts/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 399
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1
.end method

.method public getShouldSync()Z
    .locals 3

    .line 314
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    const/4 v0, 0x1

    .line 315
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "should_sync"

    .line 314
    invoke-virtual {p0, v2, v1}, Lcom/android/contacts/model/ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    .line 336
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_2

    .line 338
    invoke-direct {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/contacts/util/LocalizedNameResolver;->getAllContactsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 342
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAccountHasGroups:Z

    if-eqz v0, :cond_1

    const v0, 0x7f1000fd

    .line 343
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_1
    const v0, 0x7f1000f4

    .line 345
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "title_res"

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 349
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "res_package"

    .line 350
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 352
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "title"

    .line 355
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVisible()Z
    .locals 3

    .line 319
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string v0, "ungrouped_visible"

    goto :goto_0

    :cond_0
    const-string v0, "group_visible"

    :goto_0
    const/4 v1, 0x0

    .line 320
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 319
    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/model/ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public putShouldSync(Z)V
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    const-string v0, "should_sync"

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;I)V

    return-void
.end method

.method public putVisible(Z)V
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    if-eqz v0, :cond_0

    const-string v0, "ungrouped_visible"

    goto :goto_0

    :cond_0
    const-string v0, "group_visible"

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/model/ValuesDelta;->put(Ljava/lang/String;I)V

    return-void
.end method

.method protected setUngrouped(Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .locals 1

    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mUngrouped:Z

    .line 304
    iput-boolean p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->mAccountHasGroups:Z

    return-object p0
.end method

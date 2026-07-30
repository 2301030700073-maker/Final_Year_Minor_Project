.class public Lcom/android/contacts/list/DirectoryListLoader;
.super Landroid/content/AsyncTaskLoader;
.source "DirectoryListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/DirectoryListLoader$DirectoryQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESULT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mDefaultDirectoryList:Landroid/database/MatrixCursor;

.field private mDirectorySearchMode:I

.field private mLocalInvisibleDirectoryEnabled:Z

.field private final mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "_id"

    const-string v1, "directoryType"

    const-string v2, "displayName"

    const-string v3, "photoSupport"

    .line 74
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/DirectoryListLoader;->RESULT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 94
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance p1, Lcom/android/contacts/list/DirectoryListLoader$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/contacts/list/DirectoryListLoader$1;-><init>(Lcom/android/contacts/list/DirectoryListLoader;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/contacts/list/DirectoryListLoader;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getDefaultDirectories()Landroid/database/Cursor;
    .locals 10

    .line 195
    iget-object v0, p0, Lcom/android/contacts/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/contacts/list/DirectoryListLoader;->RESULT_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v3, 0x0

    .line 198
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 199
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f1000b7

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const/4 v6, 0x0

    aput-object v6, v2, v3

    const/4 v7, 0x3

    aput-object v6, v2, v7

    .line 197
    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/android/contacts/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/16 v8, 0x1

    .line 204
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 205
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f100177

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v6, v1, v3

    aput-object v6, v1, v7

    .line 203
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    return-object v0
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 15

    const-string v0, "ContactEntryListAdapter"

    .line 124
    iget v1, p0, Lcom/android/contacts/list/DirectoryListLoader;->mDirectorySearchMode:I

    if-nez v1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/android/contacts/list/DirectoryListLoader;->getDefaultDirectories()Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 128
    :cond_0
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/contacts/list/DirectoryListLoader;->RESULT_PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 132
    iget v4, p0, Lcom/android/contacts/list/DirectoryListLoader;->mDirectorySearchMode:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    const-string v4, "shortcutSupport IN (2, 1)"

    goto :goto_0

    .line 148
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported directory search mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/contacts/list/DirectoryListLoader;->mDirectorySearchMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v4, "shortcutSupport=2"

    :goto_0
    move-object v12, v4

    goto :goto_1

    :cond_3
    move-object v12, v5

    .line 153
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget v2, p0, Lcom/android/contacts/list/DirectoryListLoader;->mDirectorySearchMode:I

    .line 154
    invoke-static {v2}, Lcom/android/contacts/list/DirectoryListLoader$DirectoryQuery;->getDirectoryUri(I)Landroid/net/Uri;

    move-result-object v10

    sget-object v11, Lcom/android/contacts/list/DirectoryListLoader$DirectoryQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "_id"

    .line 153
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_5

    if-eqz v2, :cond_4

    .line 187
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v1

    .line 161
    :cond_5
    :goto_2
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    .line 162
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 163
    iget-boolean v11, p0, Lcom/android/contacts/list/DirectoryListLoader;->mLocalInvisibleDirectoryEnabled:Z

    if-nez v11, :cond_6

    .line 164
    invoke-static {v9, v10}, Lcom/android/contacts/compat/DirectoryCompat;->isInvisibleDirectory(J)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_2

    .line 169
    :cond_6
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 170
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 171
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v13, :cond_7

    if-eqz v12, :cond_7

    .line 173
    :try_start_2
    invoke-virtual {v3, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    .line 174
    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 176
    :catch_0
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot obtain directory type from package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object v11, v5

    .line 179
    :goto_3
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x4

    .line 180
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    new-array v13, v13, [Ljava/lang/Object;

    .line 181
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v13, v4

    aput-object v11, v13, v8

    aput-object v12, v13, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v13, v6

    invoke-virtual {v1, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_9

    .line 187
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v5, v2

    goto :goto_6

    :catch_1
    move-object v5, v2

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_2
    :goto_4
    :try_start_4
    const-string v2, "Runtime Exception when querying directory"

    .line 184
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_9

    .line 187
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_5
    return-object v1

    :goto_6
    if-eqz v5, :cond_a

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_a
    throw v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/android/contacts/list/DirectoryListLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .line 215
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->stopLoading()V

    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    .line 111
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/list/DirectoryListLoader;->mDirectorySearchMode:I

    .line 112
    invoke-static {v1}, Lcom/android/contacts/list/DirectoryListLoader$DirectoryQuery;->getDirectoryUri(I)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/DirectoryListLoader;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 114
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->forceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .locals 2

    .line 119
    invoke-virtual {p0}, Landroid/content/AsyncTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/DirectoryListLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/android/contacts/list/DirectoryListLoader;->mDirectorySearchMode:I

    return-void
.end method

.method public setLocalInvisibleDirectoryEnabled(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/android/contacts/list/DirectoryListLoader;->mLocalInvisibleDirectoryEnabled:Z

    return-void
.end method

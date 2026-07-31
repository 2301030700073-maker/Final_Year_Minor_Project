.class public final synthetic Lcom/fsck/k9/storage/messages/RetrieveFolderOperations$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# instance fields
.field public final synthetic f$0:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Long;

.field public final synthetic f$3:Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/storage/messages/CheckFolderOperations;ZLjava/lang/Long;Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/RetrieveFolderOperations$$ExternalSyntheticLambda6;->f$0:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/fsck/k9/storage/messages/RetrieveFolderOperations$$ExternalSyntheticLambda6;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/storage/messages/RetrieveFolderOperations$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Long;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/storage/messages/RetrieveFolderOperations$$ExternalSyntheticLambda6;->f$3:Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/storage/messages/RetrieveFolderOperations$$ExternalSyntheticLambda6;->f$3:Lcom/fsck/k9/mailstore/LocalFolder$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/storage/messages/RetrieveFolderOperations$$ExternalSyntheticLambda6;->f$0:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/fsck/k9/storage/messages/RetrieveFolderOperations$$ExternalSyntheticLambda6;->f$1:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, ""

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "WHERE visible = 1"

    .line 16
    .line 17
    :goto_0
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/RetrieveFolderOperations$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Long;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    sget-object v4, Lcom/fsck/k9/storage/messages/K9MessageStoreFactoryKt;->FOLDER_COLUMNS:[Ljava/lang/String;

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    const/16 v9, 0x3f

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    invoke-static/range {v4 .. v9}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v4, ", (\n  SELECT COUNT(messages.id)\n  FROM messages\n  WHERE messages.folder_id = folders.id\n    AND messages.empty = 0 AND messages.deleted = 0\n    AND (messages.read = 0 OR folders.id = ?)\n), (\n  SELECT COUNT(messages.id)\n  FROM messages\n  WHERE messages.folder_id = folders.id\n    AND messages.empty = 0 AND messages.deleted = 0\n    AND messages.flagged = 1\n)\nFROM folders\n"

    .line 36
    .line 37
    const-string v5, "\n                "

    .line 38
    .line 39
    const-string v6, "\nSELECT "

    .line 40
    .line 41
    invoke-static {v6, p0, v4, v1, v5}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    filled-new-array {v1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :try_start_0
    new-instance p1, Lokhttp3/ConnectionPool;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x5

    .line 63
    invoke-direct {p1, v1, p0}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    :goto_1
    if-ge v3, v1, :cond_1

    .line 77
    .line 78
    invoke-interface {p0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, p1}, Lapp/k9mail/legacy/mailstore/FolderMapper;->map(Lokhttp3/ConnectionPool;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    add-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 92
    .line 93
    .line 94
    return-object v2

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    move-object p1, v0

    .line 97
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    :catchall_1
    move-exception v0

    .line 99
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    throw v0
.end method

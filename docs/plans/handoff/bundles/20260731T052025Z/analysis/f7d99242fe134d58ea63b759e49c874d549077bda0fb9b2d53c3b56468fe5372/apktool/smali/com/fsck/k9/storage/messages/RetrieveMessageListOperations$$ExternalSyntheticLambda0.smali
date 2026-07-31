.class public final synthetic Lcom/fsck/k9/storage/messages/RetrieveMessageListOperations$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:Lapp/k9mail/legacy/mailstore/MessageMapper;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lapp/k9mail/legacy/mailstore/MessageMapper;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/fsck/k9/storage/messages/RetrieveMessageListOperations$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/RetrieveMessageListOperations$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/storage/messages/RetrieveMessageListOperations$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/fsck/k9/storage/messages/RetrieveMessageListOperations$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/String;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/fsck/k9/storage/messages/RetrieveMessageListOperations$$ExternalSyntheticLambda0;->f$3:Lapp/k9mail/legacy/mailstore/MessageMapper;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lcom/fsck/k9/storage/messages/RetrieveMessageListOperations$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    const-string v2, "\n                "

    .line 6
    .line 7
    iget-object v3, p0, Lcom/fsck/k9/storage/messages/RetrieveMessageListOperations$$ExternalSyntheticLambda0;->f$3:Lapp/k9mail/legacy/mailstore/MessageMapper;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/fsck/k9/storage/messages/RetrieveMessageListOperations$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/fsck/k9/storage/messages/RetrieveMessageListOperations$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/RetrieveMessageListOperations$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    const-string v0, "\nSELECT \n  messages.id AS id, \n  uid, \n  folder_id, \n  sender_list, \n  to_list, \n  cc_list, \n  aggregated.date AS date, \n  aggregated.internal_date AS internal_date, \n  subject, \n  preview_type,\n  preview, \n  aggregated.read AS read, \n  aggregated.flagged AS flagged, \n  aggregated.answered AS answered, \n  aggregated.forwarded AS forwarded, \n  aggregated.attachment_count AS attachment_count, \n  root, \n  aggregated.thread_count AS thread_count\nFROM (\n  SELECT \n    threads.root AS thread_root,\n    MAX(date) AS date,\n    MAX(internal_date) AS internal_date,\n    MIN(read) AS read,\n    MAX(flagged) AS flagged,\n    MIN(answered) AS answered,\n    MIN(forwarded) AS forwarded,\n    SUM(attachment_count) AS attachment_count,\n    COUNT(threads.root) AS thread_count                        \n  FROM messages\n  JOIN threads ON (threads.message_id = messages.id)\n  JOIN folders ON (folders.id = messages.folder_id)\n  WHERE\n    threads.root IN (\n      SELECT threads.root \n      FROM messages\n      JOIN threads ON (threads.message_id = messages.id)\n      WHERE messages.empty = 0 AND messages.deleted = 0\n    )\n    AND ("

    .line 19
    .line 20
    const-string v6, ")\n    AND messages.empty = 0 AND messages.deleted = 0\n  GROUP BY threads.root\n) aggregated\nJOIN threads ON (threads.root = aggregated.thread_root)\nJOIN messages ON (\n  messages.id = threads.message_id\n  AND messages.empty = 0 AND messages.deleted = 0\n  AND messages.date = aggregated.date\n)\nJOIN folders ON (folders.id = messages.folder_id)\nGROUP BY threads.root\nORDER BY "

    .line 21
    .line 22
    invoke-static {v0, p0, v6, v5, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p1, p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :try_start_0
    new-instance p1, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-direct {p1, v1, p0, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(ILjava/lang/Object;Z)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-interface {v3, p1}, Lapp/k9mail/legacy/mailstore/MessageMapper;->map(Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 66
    .line 67
    .line 68
    return-object p1

    .line 69
    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    :catchall_1
    move-exception v0

    .line 71
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :pswitch_0
    const-string v0, "\nSELECT \n  messages.id AS id, \n  uid, \n  folder_id, \n  sender_list, \n  to_list, \n  cc_list, \n  date, \n  internal_date, \n  subject, \n  preview_type,\n  preview, \n  read, \n  flagged, \n  answered, \n  forwarded, \n  attachment_count, \n  root\nFROM messages\nJOIN threads ON (threads.message_id = messages.id)\nLEFT JOIN FOLDERS ON (folders.id = messages.folder_id)\nWHERE\n  ("

    .line 76
    .line 77
    const-string v6, ")\n  AND empty = 0 AND deleted = 0\nORDER BY "

    .line 78
    .line 79
    invoke-static {v0, p0, v6, v5, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p1, p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    :try_start_2
    new-instance p1, Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    const/4 v0, 0x0

    .line 93
    invoke-direct {p1, v1, p0, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;-><init>(ILjava/lang/Object;Z)V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :cond_2
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    invoke-interface {v3, p1}, Lapp/k9mail/legacy/mailstore/MessageMapper;->map(Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_2

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catchall_2
    move-exception p1

    .line 117
    goto :goto_3

    .line 118
    :cond_3
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 119
    .line 120
    .line 121
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 122
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 123
    .line 124
    .line 125
    return-object p1

    .line 126
    :goto_3
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 127
    :catchall_3
    move-exception v0

    .line 128
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    throw v0

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

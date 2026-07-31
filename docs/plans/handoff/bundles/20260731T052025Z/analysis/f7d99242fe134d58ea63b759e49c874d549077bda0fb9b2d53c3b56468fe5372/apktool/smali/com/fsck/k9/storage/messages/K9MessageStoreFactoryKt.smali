.class public abstract Lcom/fsck/k9/storage/messages/K9MessageStoreFactoryKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final AGGREGATED_MESSAGES_COLUMNS:[Ljava/lang/String;

.field public static final FOLDER_COLUMNS:[Ljava/lang/String;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 14

    .line 1
    const-string v12, "more_messages"

    .line 2
    .line 3
    const-string v13, "last_updated"

    .line 4
    .line 5
    const-string v0, "id"

    .line 6
    .line 7
    const-string v1, "name"

    .line 8
    .line 9
    const-string v2, "type"

    .line 10
    .line 11
    const-string v3, "server_id"

    .line 12
    .line 13
    const-string v4, "local_only"

    .line 14
    .line 15
    const-string v5, "top_group"

    .line 16
    .line 17
    const-string v6, "integrate"

    .line 18
    .line 19
    const-string v7, "sync_enabled"

    .line 20
    .line 21
    const-string/jumbo v8, "visible"

    .line 22
    .line 23
    .line 24
    const-string v9, "notifications_enabled"

    .line 25
    .line 26
    const-string v10, "push_enabled"

    .line 27
    .line 28
    const-string/jumbo v11, "visible_limit"

    .line 29
    .line 30
    .line 31
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/fsck/k9/storage/messages/K9MessageStoreFactoryKt;->FOLDER_COLUMNS:[Ljava/lang/String;

    .line 36
    .line 37
    const-string v6, "answered"

    .line 38
    .line 39
    const-string v7, "forwarded"

    .line 40
    .line 41
    const-string v1, "date"

    .line 42
    .line 43
    const-string v2, "internal_date"

    .line 44
    .line 45
    const-string v3, "attachment_count"

    .line 46
    .line 47
    const-string v4, "read"

    .line 48
    .line 49
    const-string v5, "flagged"

    .line 50
    .line 51
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/fsck/k9/storage/messages/K9MessageStoreFactoryKt;->AGGREGATED_MESSAGES_COLUMNS:[Ljava/lang/String;

    .line 56
    .line 57
    return-void
.end method

.method public static final access$isGoogle(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, ".gmail.com"

    .line 2
    .line 3
    const-string v1, ".googlemail.com"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-static {p0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    return v2

    .line 44
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public static performChunkedOperation$default(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    check-cast p0, Ljava/lang/Iterable;

    .line 11
    .line 12
    new-instance v0, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-direct {v0, v1, p0}, Lkotlin/text/StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-instance p0, Lkotlin/sequences/TakeWhileSequence;

    .line 19
    .line 20
    invoke-direct {p0, v0, p1, v1}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Landroidx/core/view/TreeIterator;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Landroidx/core/view/TreeIterator;-><init>(Lkotlin/sequences/TakeWhileSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p1, Landroidx/core/view/TreeIterator;->iterator:Ljava/util/Iterator;

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    sget-object p0, Lkotlin/collections/EmptyIterator;->INSTANCE:Lkotlin/collections/EmptyIterator;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p0, Lkotlinx/coroutines/JobSupport$children$1;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-direct {p0, p1, v0, v1}, Lkotlinx/coroutines/JobSupport$children$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Lorg/minidns/util/Base64;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Ljava/util/List;

    .line 61
    .line 62
    invoke-static {p1}, Landroidx/compose/ui/unit/IntOffsetKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v4, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    const/16 v1, 0x14

    .line 69
    .line 70
    invoke-direct {v4, v1}, Lcom/fsck/k9/ui/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 71
    .line 72
    .line 73
    const/16 v5, 0x18

    .line 74
    .line 75
    const-string v1, ","

    .line 76
    .line 77
    const-string v2, "IN ("

    .line 78
    .line 79
    const-string v3, ")"

    .line 80
    .line 81
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/4 v1, 0x0

    .line 86
    new-array v1, v1, [Ljava/lang/String;

    .line 87
    .line 88
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-interface {p2, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    return-void

    .line 97
    :cond_2
    const-string p0, "\'arguments\' must not be empty"

    .line 98
    .line 99
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

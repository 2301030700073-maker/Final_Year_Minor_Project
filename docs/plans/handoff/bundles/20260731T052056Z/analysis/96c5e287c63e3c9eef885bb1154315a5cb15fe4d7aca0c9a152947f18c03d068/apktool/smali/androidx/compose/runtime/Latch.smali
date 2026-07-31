.class public Landroidx/compose/runtime/Latch;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# instance fields
.field public final synthetic $r8$classId:I

.field public _isOpen:Z

.field public awaiters:Ljava/lang/Object;

.field public lock:Ljava/lang/Object;

.field public spareList:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object v0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/foundation/lazy/layout/PrefetchScheduler;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 132
    iput-object p2, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 133
    iput-object p3, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    return-void
.end method

.method public constructor <init>(Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 112
    new-instance p1, Landroidx/work/impl/AutoMigration_14_15;

    const/16 v0, 0x10

    .line 113
    invoke-direct {p1, v0}, Landroidx/work/impl/AutoMigration_14_15;-><init>(I)V

    .line 114
    iput-object p1, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcoil3/disk/DiskLruCache;Lcoil3/disk/DiskLruCache$Entry;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 136
    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    iput v1, v0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v2, Landroidx/work/impl/model/WorkSpec;

    .line 19
    .line 20
    iget-object v1, v0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ljava/util/UUID;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const/16 v34, 0x0

    .line 36
    .line 37
    const v35, 0x1fffffa

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    const-wide/16 v9, 0x0

    .line 45
    .line 46
    const-wide/16 v11, 0x0

    .line 47
    .line 48
    const-wide/16 v13, 0x0

    .line 49
    .line 50
    const/4 v15, 0x0

    .line 51
    const/16 v16, 0x0

    .line 52
    .line 53
    const/16 v17, 0x0

    .line 54
    .line 55
    const-wide/16 v18, 0x0

    .line 56
    .line 57
    const-wide/16 v20, 0x0

    .line 58
    .line 59
    const-wide/16 v22, 0x0

    .line 60
    .line 61
    const-wide/16 v24, 0x0

    .line 62
    .line 63
    const/16 v26, 0x0

    .line 64
    .line 65
    const/16 v27, 0x0

    .line 66
    .line 67
    const/16 v28, 0x0

    .line 68
    .line 69
    const-wide/16 v29, 0x0

    .line 70
    .line 71
    const/16 v31, 0x0

    .line 72
    .line 73
    const/16 v32, 0x0

    .line 74
    .line 75
    const/16 v33, 0x0

    .line 76
    .line 77
    invoke-direct/range {v2 .. v35}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IJIILjava/lang/String;Ljava/lang/Boolean;I)V

    .line 78
    .line 79
    .line 80
    iput-object v2, v0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    filled-new-array {v1}, [Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 91
    .line 92
    const/4 v3, 0x1

    .line 93
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->toCollection([Ljava/lang/Object;Ljava/util/LinkedHashSet;)V

    .line 101
    .line 102
    .line 103
    iput-object v2, v0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 104
    .line 105
    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 138
    iput-object p2, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 139
    iget-boolean p2, p2, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x2

    .line 141
    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 124
    iput-object p2, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 125
    iput-object p3, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lokio/Buffer;)V
    .locals 2

    const/4 v0, 0x7

    iput v0, p0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 107
    new-array v0, v0, [Lokio/BufferedSink;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Landroidx/room/Room;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 108
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 109
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/nodes/Node;Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 128
    iput-object p2, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 129
    iput-object p3, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    return-void
.end method

.method public static bodyComplete$default(Landroidx/compose/runtime/Latch;ZLjava/io/IOException;I)Ljava/io/IOException;
    .locals 11

    .line 1
    and-int/lit8 v0, p3, 0x4

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    and-int/lit8 p3, p3, 0x8

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    move p3, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move p3, v1

    .line 17
    :goto_1
    if-eqz p2, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/Latch;->trackFailure(Ljava/io/IOException;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v3, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v4, v3

    .line 25
    check-cast v4, Lokhttp3/internal/connection/RealCall;

    .line 26
    .line 27
    if-eqz p3, :cond_3

    .line 28
    .line 29
    if-nez p1, :cond_3

    .line 30
    .line 31
    move v6, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_3
    move v6, v2

    .line 34
    :goto_2
    if-eqz v0, :cond_4

    .line 35
    .line 36
    if-nez p1, :cond_4

    .line 37
    .line 38
    move v7, v1

    .line 39
    goto :goto_3

    .line 40
    :cond_4
    move v7, v2

    .line 41
    :goto_3
    if-eqz p3, :cond_5

    .line 42
    .line 43
    if-eqz p1, :cond_5

    .line 44
    .line 45
    move v9, v1

    .line 46
    goto :goto_4

    .line 47
    :cond_5
    move v9, v2

    .line 48
    :goto_4
    if-eqz v0, :cond_6

    .line 49
    .line 50
    if-eqz p1, :cond_6

    .line 51
    .line 52
    move v8, v1

    .line 53
    :goto_5
    move-object v5, p0

    .line 54
    move-object v10, p2

    .line 55
    goto :goto_6

    .line 56
    :cond_6
    move v8, v2

    .line 57
    goto :goto_5

    .line 58
    :goto_6
    invoke-virtual/range {v4 .. v10}, Lokhttp3/internal/connection/RealCall;->messageDone$okhttp(Landroidx/compose/runtime/Latch;ZZZZLjava/io/IOException;)Ljava/io/IOException;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public static isBlankText(Lorg/jsoup/nodes/Node;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/jsoup/nodes/TextNode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/jsoup/nodes/TextNode;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method


# virtual methods
.method public abort()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/internal/cache/DiskLruCache;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 13
    .line 14
    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Landroidx/compose/runtime/Latch;

    .line 15
    .line 16
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, p0, v1}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit$okhttp(Landroidx/compose/runtime/Latch;Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v1, "Check failed."

    .line 37
    .line 38
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :goto_1
    monitor-exit v0

    .line 43
    throw p0
.end method

.method public build()Landroidx/work/OneTimeWorkRequest;
    .locals 40

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroidx/work/impl/model/WorkSpec;

    .line 11
    .line 12
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 13
    .line 14
    iget-boolean v1, v1, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "Cannot set backoff criteria on an idle mode job"

    .line 20
    .line 21
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_1
    :goto_0
    new-instance v1, Landroidx/work/OneTimeWorkRequest;

    .line 26
    .line 27
    iget-object v3, v0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Ljava/util/UUID;

    .line 30
    .line 31
    iget-object v4, v0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v4, Landroidx/work/impl/model/WorkSpec;

    .line 34
    .line 35
    iget-object v5, v0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, Ljava/util/LinkedHashSet;

    .line 38
    .line 39
    invoke-direct {v1, v3, v4, v5}, Landroidx/work/OneTimeWorkRequest;-><init>(Ljava/util/UUID;Landroidx/work/impl/model/WorkSpec;Ljava/util/LinkedHashSet;)V

    .line 40
    .line 41
    .line 42
    iget-object v3, v4, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 43
    .line 44
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    .line 46
    const/16 v5, 0x18

    .line 47
    .line 48
    const/4 v6, 0x1

    .line 49
    const/4 v7, 0x0

    .line 50
    if-lt v4, v5, :cond_2

    .line 51
    .line 52
    invoke-virtual {v3}, Landroidx/work/Constraints;->hasContentUriTriggers()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_4

    .line 57
    .line 58
    :cond_2
    iget-boolean v4, v3, Landroidx/work/Constraints;->requiresBatteryNotLow:Z

    .line 59
    .line 60
    if-nez v4, :cond_4

    .line 61
    .line 62
    iget-boolean v4, v3, Landroidx/work/Constraints;->requiresCharging:Z

    .line 63
    .line 64
    if-nez v4, :cond_4

    .line 65
    .line 66
    iget-boolean v3, v3, Landroidx/work/Constraints;->requiresDeviceIdle:Z

    .line 67
    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move v3, v7

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    :goto_1
    move v3, v6

    .line 74
    :goto_2
    iget-object v4, v0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v4, Landroidx/work/impl/model/WorkSpec;

    .line 77
    .line 78
    iget-boolean v5, v4, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 79
    .line 80
    if-eqz v5, :cond_7

    .line 81
    .line 82
    if-nez v3, :cond_6

    .line 83
    .line 84
    iget-wide v8, v4, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 85
    .line 86
    const-wide/16 v10, 0x0

    .line 87
    .line 88
    cmp-long v3, v8, v10

    .line 89
    .line 90
    if-gtz v3, :cond_5

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_5
    const-string v0, "Expedited jobs cannot be delayed"

    .line 94
    .line 95
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-object v2

    .line 99
    :cond_6
    const-string v0, "Expedited jobs only support network and storage constraints"

    .line 100
    .line 101
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-object v2

    .line 105
    :cond_7
    :goto_3
    iget-object v2, v4, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 106
    .line 107
    const/16 v3, 0x7f

    .line 108
    .line 109
    if-nez v2, :cond_a

    .line 110
    .line 111
    iget-object v2, v4, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 112
    .line 113
    const-string v5, "."

    .line 114
    .line 115
    filled-new-array {v5}, [Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-static {v2, v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-ne v5, v6, :cond_8

    .line 128
    .line 129
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_8
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Ljava/lang/String;

    .line 141
    .line 142
    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-gt v5, v3, :cond_9

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_9
    invoke-static {v3, v2}, Lkotlin/text/StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    :goto_5
    iput-object v2, v4, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-le v4, v3, :cond_b

    .line 161
    .line 162
    iget-object v4, v0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v4, Landroidx/work/impl/model/WorkSpec;

    .line 165
    .line 166
    invoke-static {v3, v2}, Lkotlin/text/StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    iput-object v2, v4, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 171
    .line 172
    :cond_b
    :goto_6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    iput-object v2, v0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 180
    .line 181
    new-instance v3, Landroidx/work/impl/model/WorkSpec;

    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    iget-object v2, v0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v2, Landroidx/work/impl/model/WorkSpec;

    .line 193
    .line 194
    iget-object v6, v2, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 195
    .line 196
    iget-object v5, v2, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 197
    .line 198
    iget-object v7, v2, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 199
    .line 200
    new-instance v8, Landroidx/work/Data;

    .line 201
    .line 202
    iget-object v9, v2, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 203
    .line 204
    invoke-direct {v8, v9}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    .line 205
    .line 206
    .line 207
    new-instance v9, Landroidx/work/Data;

    .line 208
    .line 209
    iget-object v10, v2, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 210
    .line 211
    invoke-direct {v9, v10}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    .line 212
    .line 213
    .line 214
    iget-wide v10, v2, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 215
    .line 216
    iget-wide v12, v2, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 217
    .line 218
    iget-wide v14, v2, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 219
    .line 220
    move-object/from16 v37, v1

    .line 221
    .line 222
    new-instance v1, Landroidx/work/Constraints;

    .line 223
    .line 224
    move-object/from16 v16, v3

    .line 225
    .line 226
    iget-object v3, v2, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 227
    .line 228
    invoke-direct {v1, v3}, Landroidx/work/Constraints;-><init>(Landroidx/work/Constraints;)V

    .line 229
    .line 230
    .line 231
    iget v3, v2, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 232
    .line 233
    move-object/from16 v17, v1

    .line 234
    .line 235
    iget-object v1, v2, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 236
    .line 237
    move/from16 v19, v3

    .line 238
    .line 239
    move-object/from16 v18, v4

    .line 240
    .line 241
    iget-wide v3, v2, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 242
    .line 243
    move-wide/from16 v20, v3

    .line 244
    .line 245
    iget-wide v3, v2, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 246
    .line 247
    move-wide/from16 v22, v3

    .line 248
    .line 249
    iget-wide v3, v2, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 250
    .line 251
    move-wide/from16 v24, v3

    .line 252
    .line 253
    iget-wide v3, v2, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 254
    .line 255
    move-object/from16 v26, v1

    .line 256
    .line 257
    iget-boolean v1, v2, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 258
    .line 259
    move/from16 v27, v1

    .line 260
    .line 261
    iget-object v1, v2, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    .line 262
    .line 263
    move-object/from16 v28, v1

    .line 264
    .line 265
    iget v1, v2, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    .line 266
    .line 267
    move-wide/from16 v29, v3

    .line 268
    .line 269
    iget-wide v3, v2, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverride:J

    .line 270
    .line 271
    move/from16 v31, v1

    .line 272
    .line 273
    iget v1, v2, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    .line 274
    .line 275
    move/from16 v32, v1

    .line 276
    .line 277
    iget v1, v2, Landroidx/work/impl/model/WorkSpec;->stopReason:I

    .line 278
    .line 279
    move/from16 v33, v1

    .line 280
    .line 281
    iget-object v1, v2, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    .line 282
    .line 283
    iget-object v2, v2, Landroidx/work/impl/model/WorkSpec;->backOffOnSystemInterruptions:Ljava/lang/Boolean;

    .line 284
    .line 285
    const/high16 v36, 0x80000

    .line 286
    .line 287
    move-object/from16 v34, v1

    .line 288
    .line 289
    move-object/from16 v35, v2

    .line 290
    .line 291
    move-wide/from16 v38, v3

    .line 292
    .line 293
    move-object/from16 v3, v16

    .line 294
    .line 295
    move-object/from16 v16, v17

    .line 296
    .line 297
    move-object/from16 v4, v18

    .line 298
    .line 299
    move/from16 v17, v19

    .line 300
    .line 301
    move-wide/from16 v19, v20

    .line 302
    .line 303
    move-wide/from16 v21, v22

    .line 304
    .line 305
    move-wide/from16 v23, v24

    .line 306
    .line 307
    move-object/from16 v18, v26

    .line 308
    .line 309
    move-wide/from16 v25, v29

    .line 310
    .line 311
    move/from16 v29, v31

    .line 312
    .line 313
    move-wide/from16 v30, v38

    .line 314
    .line 315
    invoke-direct/range {v3 .. v36}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IJIILjava/lang/String;Ljava/lang/Boolean;I)V

    .line 316
    .line 317
    .line 318
    iput-object v3, v0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 319
    .line 320
    return-object v37
.end method

.method public commit()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/internal/cache/DiskLruCache;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 13
    .line 14
    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Landroidx/compose/runtime/Latch;

    .line 15
    .line 16
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit$okhttp(Landroidx/compose/runtime/Latch;Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    iput-boolean v2, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v1, "Check failed."

    .line 36
    .line 37
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :goto_1
    monitor-exit v0

    .line 42
    throw p0
.end method

.method public complete(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcoil3/disk/DiskLruCache;

    .line 4
    .line 5
    iget-object v1, v0, Lcoil3/disk/DiskLruCache;->lock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-boolean v2, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Lcoil3/disk/DiskLruCache$Entry;

    .line 15
    .line 16
    iget-object v2, v2, Lcoil3/disk/DiskLruCache$Entry;->currentEditor:Landroidx/compose/runtime/Latch;

    .line 17
    .line 18
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p0, p1}, Lcoil3/disk/DiskLruCache;->completeEdit(Landroidx/compose/runtime/Latch;Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :cond_1
    :try_start_1
    const-string p0, "editor is closed"

    .line 36
    .line 37
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :goto_1
    monitor-exit v1

    .line 44
    throw p0
.end method

.method public detach$okhttp()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 4
    .line 5
    iget-object v1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Landroidx/compose/runtime/Latch;

    .line 6
    .line 7
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lokhttp3/internal/cache/DiskLruCache;

    .line 16
    .line 17
    iget-boolean v2, v1, Lokhttp3/internal/cache/DiskLruCache;->civilizedFileSystem:Z

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {v1, p0, v0}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit$okhttp(Landroidx/compose/runtime/Latch;Z)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const/4 p0, 0x1

    .line 27
    iput-boolean p0, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->zombie:Z

    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public file(I)Lokio/Path;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcoil3/disk/DiskLruCache;

    .line 4
    .line 5
    iget-object v1, v0, Lcoil3/disk/DiskLruCache;->lock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-boolean v2, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, [Z

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    aput-boolean v3, v2, p1

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lcoil3/disk/DiskLruCache$Entry;

    .line 22
    .line 23
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$Entry;->dirtyFiles:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget-object p1, v0, Lcoil3/disk/DiskLruCache;->fileSystem:Lcoil3/disk/DiskLruCache$fileSystem$1;

    .line 30
    .line 31
    move-object v0, p0

    .line 32
    check-cast v0, Lokio/Path;

    .line 33
    .line 34
    invoke-static {p1, v0}, Lkotlin/TuplesKt;->createFile$default(Lokio/FileSystem;Lokio/Path;)V

    .line 35
    .line 36
    .line 37
    check-cast p0, Lokio/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    monitor-exit v1

    .line 40
    return-object p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    :try_start_1
    const-string p0, "editor is closed"

    .line 44
    .line 45
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :goto_0
    monitor-exit v1

    .line 52
    throw p0
.end method

.method public getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lokhttp3/internal/http/ExchangeCodec;

    .line 4
    .line 5
    invoke-interface {p0}, Lokhttp3/internal/http/ExchangeCodec;->getCarrier()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, Lokhttp3/internal/connection/RealConnection;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p0, Lokhttp3/internal/connection/RealConnection;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p0, v1

    .line 18
    :goto_0
    if-eqz p0, :cond_1

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    const-string p0, "no connection for CONNECT tunnels"

    .line 22
    .line 23
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v1
.end method

.method public head(ILorg/jsoup/nodes/Node;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lorg/jsoup/nodes/TextNode;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v1, :cond_9

    .line 9
    .line 10
    check-cast p2, Lorg/jsoup/nodes/TextNode;

    .line 11
    .line 12
    iget-boolean v0, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_8

    .line 16
    .line 17
    iget-object v0, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/Latch;->isBlockEl(Lorg/jsoup/nodes/Node;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v3, 0x4

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    :cond_0
    move v1, v3

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/nodes/Node;->previousSibling()Lorg/jsoup/nodes/Node;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p2}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    instance-of v5, v0, Lorg/jsoup/nodes/Element;

    .line 37
    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/Latch;->isBlockEl(Lorg/jsoup/nodes/Node;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_4

    .line 45
    .line 46
    :cond_2
    if-eqz v0, :cond_3

    .line 47
    .line 48
    instance-of v5, v0, Lorg/jsoup/nodes/TextNode;

    .line 49
    .line 50
    if-nez v5, :cond_4

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/Latch;->shouldIndent(Lorg/jsoup/nodes/Node;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    :cond_3
    const/16 v3, 0xc

    .line 59
    .line 60
    :cond_4
    if-eqz v4, :cond_7

    .line 61
    .line 62
    instance-of v0, v4, Lorg/jsoup/nodes/TextNode;

    .line 63
    .line 64
    if-nez v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/Latch;->shouldIndent(Lorg/jsoup/nodes/Node;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_5
    :goto_0
    invoke-static {v4}, Landroidx/compose/runtime/Latch;->isBlankText(Lorg/jsoup/nodes/Node;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    invoke-virtual {v4}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    goto :goto_0

    .line 84
    :cond_6
    instance-of v0, v4, Lorg/jsoup/nodes/TextNode;

    .line 85
    .line 86
    if-eqz v0, :cond_0

    .line 87
    .line 88
    check-cast v4, Lorg/jsoup/nodes/LeafNode;

    .line 89
    .line 90
    invoke-virtual {v4}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    .line 104
    :cond_7
    :goto_1
    or-int/lit8 v0, v3, 0x10

    .line 105
    .line 106
    move v1, v0

    .line 107
    :goto_2
    invoke-virtual {p2}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_8

    .line 116
    .line 117
    iget-object v0, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 118
    .line 119
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/Latch;->isBlockEl(Lorg/jsoup/nodes/Node;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_8

    .line 124
    .line 125
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/Latch;->shouldIndent(Lorg/jsoup/nodes/Node;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_8

    .line 130
    .line 131
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Latch;->indent(I)V

    .line 132
    .line 133
    .line 134
    :cond_8
    or-int/lit8 p1, v1, 0x1

    .line 135
    .line 136
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 139
    .line 140
    invoke-virtual {p2}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    iget-object p0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p0, Lorg/jsoup/nodes/Document$OutputSettings;

    .line 147
    .line 148
    invoke-static {v0, p2, p0, p1}, Lorg/jsoup/nodes/Entities;->escape(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;I)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_9
    instance-of v0, p2, Lorg/jsoup/nodes/Element;

    .line 153
    .line 154
    if-eqz v0, :cond_c

    .line 155
    .line 156
    check-cast p2, Lorg/jsoup/nodes/Element;

    .line 157
    .line 158
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/Latch;->shouldIndent(Lorg/jsoup/nodes/Node;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_a

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Latch;->indent(I)V

    .line 165
    .line 166
    .line 167
    :cond_a
    iget-object p1, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast p1, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 170
    .line 171
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v0, Lorg/jsoup/nodes/Document$OutputSettings;

    .line 174
    .line 175
    invoke-virtual {p2, p1, v0}, Lorg/jsoup/nodes/Element;->outerHtmlHead(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 176
    .line 177
    .line 178
    const/16 p1, 0x40

    .line 179
    .line 180
    iget-object p2, p2, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 181
    .line 182
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/Tag;->is(I)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_b

    .line 187
    .line 188
    iput-boolean v2, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 189
    .line 190
    :cond_b
    return-void

    .line 191
    :cond_c
    check-cast p2, Lorg/jsoup/nodes/LeafNode;

    .line 192
    .line 193
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/Latch;->shouldIndent(Lorg/jsoup/nodes/Node;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_d

    .line 198
    .line 199
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Latch;->indent(I)V

    .line 200
    .line 201
    .line 202
    :cond_d
    iget-object p1, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast p1, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 205
    .line 206
    iget-object p0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast p0, Lorg/jsoup/nodes/Document$OutputSettings;

    .line 209
    .line 210
    invoke-virtual {p2, p1, p0}, Lorg/jsoup/nodes/Node;->outerHtmlHead(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method public indent(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v0, Lorg/jsoup/internal/StringUtil;->padding:[Ljava/lang/String;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-ltz p1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v0

    .line 19
    :goto_0
    const-string/jumbo v2, "width must be >= 0"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v1}, Landroidx/room/Room;->isTrue(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x1e

    .line 26
    .line 27
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    sget-object v1, Lorg/jsoup/internal/StringUtil;->padding:[Ljava/lang/String;

    .line 32
    .line 33
    const/16 v2, 0x15

    .line 34
    .line 35
    if-ge p1, v2, :cond_1

    .line 36
    .line 37
    aget-object p1, v1, p1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    new-array v1, p1, [C

    .line 41
    .line 42
    :goto_1
    if-ge v0, p1, :cond_2

    .line 43
    .line 44
    const/16 v2, 0x20

    .line 45
    .line 46
    aput-char v2, v1, v0

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :goto_2
    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/String;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public isBlockEl(Lorg/jsoup/nodes/Node;)Z
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_2

    .line 5
    :cond_0
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 10
    .line 11
    const-string v0, "br"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->isBlock()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 28
    .line 29
    iget v0, v0, Lorg/jsoup/parser/Tag;->options:I

    .line 30
    .line 31
    and-int/2addr v0, v1

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    iget-object v0, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 36
    .line 37
    instance-of v0, v0, Lorg/jsoup/nodes/Document;

    .line 38
    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->firstElementChild()Lorg/jsoup/nodes/Element;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    move v0, p0

    .line 46
    :goto_0
    const/4 v2, 0x5

    .line 47
    if-ge v0, v2, :cond_4

    .line 48
    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->isBlock()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    iget-object v2, p1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 58
    .line 59
    iget v2, v2, Lorg/jsoup/parser/Tag;->options:I

    .line 60
    .line 61
    and-int/2addr v2, v1

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextElementSibling()Lorg/jsoup/nodes/Element;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    :goto_1
    return v1

    .line 72
    :cond_4
    :goto_2
    return p0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0

    .line 10
    throw p0
.end method

.method public newSink(I)Lokio/Sink;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/internal/cache/DiskLruCache;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 13
    .line 14
    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Landroidx/compose/runtime/Latch;

    .line 15
    .line 16
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    new-instance p0, Lokio/BlackholeSink;

    .line 24
    .line 25
    invoke-direct {p0, v2}, Lokio/BlackholeSink;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-object p0

    .line 30
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 33
    .line 34
    iget-boolean v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, [Z

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    aput-boolean v3, v1, p1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 54
    .line 55
    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lokio/Path;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    :try_start_2
    iget-object v1, v0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/cache/DiskLruCache$fileSystem$1;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p1, v2}, Lokhttp3/internal/cache/DiskLruCache$fileSystem$1;->sink(Lokio/Path;Z)Lokio/Sink;

    .line 72
    .line 73
    .line 74
    move-result-object p1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    :try_start_3
    new-instance v1, Lokhttp3/internal/cache/FaultHidingSink;

    .line 76
    .line 77
    new-instance v2, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 78
    .line 79
    const/16 v3, 0x8

    .line 80
    .line 81
    invoke-direct {v2, v3, v0, p0}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, p1, v2}, Lokhttp3/internal/cache/FaultHidingSink;-><init>(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    .line 86
    .line 87
    monitor-exit v0

    .line 88
    return-object v1

    .line 89
    :catch_0
    :try_start_4
    new-instance p0, Lokio/BlackholeSink;

    .line 90
    .line 91
    invoke-direct {p0, v2}, Lokio/BlackholeSink;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 92
    .line 93
    .line 94
    monitor-exit v0

    .line 95
    return-object p0

    .line 96
    :cond_2
    :try_start_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    const-string p1, "Check failed."

    .line 99
    .line 100
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 104
    :goto_1
    monitor-exit v0

    .line 105
    throw p0
.end method

.method public readResponseHeaders(Z)Lokhttp3/Response$Builder;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/internal/http/ExchangeCodec;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lokhttp3/internal/http/ExchangeCodec;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iput-object p0, p1, Lokhttp3/Response$Builder;->exchange:Landroidx/compose/runtime/Latch;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-object p1

    .line 17
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Latch;->trackFailure(Ljava/io/IOException;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public setBackoffCriteria(Landroidx/work/BackoffPolicy;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroidx/work/impl/model/WorkSpec;

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 17
    .line 18
    sget-object p1, Landroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;

    .line 19
    .line 20
    const-wide/16 v2, 0x2710

    .line 21
    .line 22
    const-wide/32 v4, 0x112a880

    .line 23
    .line 24
    .line 25
    const-wide/16 v0, 0x2710

    .line 26
    .line 27
    invoke-static/range {v0 .. v5}, Lkotlin/text/RegexKt;->coerceIn(JJJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    iput-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 32
    .line 33
    return-void
.end method

.method public setInitialDelay(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/work/impl/model/WorkSpec;

    .line 7
    .line 8
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    iput-wide p1, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 13
    .line 14
    const-wide p1, 0x7fffffffffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    sub-long/2addr p1, v0

    .line 24
    iget-object p0, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Landroidx/work/impl/model/WorkSpec;

    .line 27
    .line 28
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 29
    .line 30
    cmp-long p0, p1, v0

    .line 31
    .line 32
    if-lez p0, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    const-string p0, "The given initial delay is too large and will cause an overflow!"

    .line 36
    .line 37
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public shouldIndent(Lorg/jsoup/nodes/Node;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Lorg/jsoup/nodes/Node;

    .line 7
    .line 8
    if-eq p1, v1, :cond_6

    .line 9
    .line 10
    iget-boolean v1, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 11
    .line 12
    if-nez v1, :cond_6

    .line 13
    .line 14
    invoke-static {p1}, Landroidx/compose/runtime/Latch;->isBlankText(Lorg/jsoup/nodes/Node;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Latch;->isBlockEl(Lorg/jsoup/nodes/Node;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->previousSibling()Lorg/jsoup/nodes/Node;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-static {v1}, Landroidx/compose/runtime/Latch;->isBlankText(Lorg/jsoup/nodes/Node;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->previousSibling()Lorg/jsoup/nodes/Node;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/Latch;->isBlockEl(Lorg/jsoup/nodes/Node;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    iget-object p1, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Latch;->isBlockEl(Lorg/jsoup/nodes/Node;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_6

    .line 57
    .line 58
    iget-object v2, p1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 59
    .line 60
    const/16 v3, 0x8

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/Tag;->is(I)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_6

    .line 67
    .line 68
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->firstChild()Lorg/jsoup/nodes/Node;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    move v2, v0

    .line 73
    :goto_1
    const/4 v3, 0x5

    .line 74
    if-ge v2, v3, :cond_6

    .line 75
    .line 76
    if-eqz p1, :cond_6

    .line 77
    .line 78
    instance-of v3, p1, Lorg/jsoup/nodes/TextNode;

    .line 79
    .line 80
    if-nez v3, :cond_5

    .line 81
    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    instance-of p1, v1, Lorg/jsoup/nodes/TextNode;

    .line 85
    .line 86
    if-nez p1, :cond_6

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/Latch;->isBlockEl(Lorg/jsoup/nodes/Node;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-nez p0, :cond_4

    .line 93
    .line 94
    instance-of p0, v1, Lorg/jsoup/nodes/Element;

    .line 95
    .line 96
    if-nez p0, :cond_6

    .line 97
    .line 98
    :cond_4
    :goto_2
    const/4 p0, 0x1

    .line 99
    return p0

    .line 100
    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    :goto_3
    return v0
.end method

.method public sink()Lokio/BufferedSink;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {v0, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lokio/BufferedSink;

    .line 11
    .line 12
    return-object p0
.end method

.method public tail(ILorg/jsoup/nodes/Node;)V
    .locals 2

    .line 1
    instance-of v0, p2, Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    check-cast p2, Lorg/jsoup/nodes/Element;

    .line 6
    .line 7
    invoke-virtual {p2}, Lorg/jsoup/nodes/Node;->firstChild()Lorg/jsoup/nodes/Node;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/Latch;->isBlankText(Lorg/jsoup/nodes/Node;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/Latch;->shouldIndent(Lorg/jsoup/nodes/Node;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Latch;->indent(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lorg/jsoup/nodes/Document$OutputSettings;

    .line 38
    .line 39
    invoke-virtual {p2, p1, v0}, Lorg/jsoup/nodes/Element;->outerHtmlTail(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    .line 40
    .line 41
    .line 42
    iget-boolean p1, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 43
    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    iget-object p1, p2, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 47
    .line 48
    const/16 v0, 0x40

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tag;->is(I)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    iget-object p1, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 57
    .line 58
    :goto_1
    if-eqz p1, :cond_3

    .line 59
    .line 60
    iget-object p2, p1, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 61
    .line 62
    iget p2, p2, Lorg/jsoup/parser/Tag;->options:I

    .line 63
    .line 64
    and-int/2addr p2, v0

    .line 65
    if-eqz p2, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    iget-object p1, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Element;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 73
    .line 74
    :cond_4
    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Landroidx/compose/runtime/Latch;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/16 v5, 0x3e

    .line 18
    .line 19
    const-string v1, " / "

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public trackFailure(Ljava/io/IOException;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lokhttp3/internal/http/ExchangeCodec;

    .line 7
    .line 8
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->getCarrier()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object p0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lokhttp3/internal/connection/RealCall;

    .line 15
    .line 16
    invoke-interface {v0, p0, p1}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->trackFailure(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public upgradeToSocket()Lokhttp3/FormBody$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/internal/connection/RealCall;

    .line 4
    .line 5
    iget-boolean v1, v0, Lokhttp3/internal/connection/RealCall;->timeoutEarlyExit:Z

    .line 6
    .line 7
    if-nez v1, :cond_4

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v0, Lokhttp3/internal/connection/RealCall;->timeoutEarlyExit:Z

    .line 11
    .line 12
    iget-object v2, v0, Lokhttp3/internal/connection/RealCall;->timeout:Lokhttp3/internal/connection/RealCall$timeout$1;

    .line 13
    .line 14
    invoke-virtual {v2}, Lokio/AsyncTimeout;->exit()Z

    .line 15
    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v2, v0, Lokhttp3/internal/connection/RealCall;->exchange:Landroidx/compose/runtime/Latch;

    .line 19
    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    iget-boolean v2, v0, Lokhttp3/internal/connection/RealCall;->socketSinkOpen:Z

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    iget-boolean v2, v0, Lokhttp3/internal/connection/RealCall;->socketSourceOpen:Z

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    iget-boolean v2, v0, Lokhttp3/internal/connection/RealCall;->requestBodyOpen:Z

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    iget-boolean v2, v0, Lokhttp3/internal/connection/RealCall;->responseBodyOpen:Z

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    iput-boolean v2, v0, Lokhttp3/internal/connection/RealCall;->responseBodyOpen:Z

    .line 40
    .line 41
    iput-boolean v1, v0, Lokhttp3/internal/connection/RealCall;->socketSinkOpen:Z

    .line 42
    .line 43
    iput-boolean v1, v0, Lokhttp3/internal/connection/RealCall;->socketSourceOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    monitor-exit v0

    .line 46
    iget-object v0, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lokhttp3/internal/http/ExchangeCodec;

    .line 49
    .line 50
    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->getCarrier()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    .line 58
    .line 59
    iget-object v1, v0, Lokhttp3/internal/connection/RealConnection;->javaNetSocket:Ljava/net/Socket;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges()V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lokhttp3/FormBody$Builder;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lokhttp3/FormBody$Builder;-><init>(Landroidx/compose/runtime/Latch;)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string v1, "Check failed."

    .line 78
    .line 79
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    const-string v1, "Check failed."

    .line 86
    .line 87
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    const-string v1, "Check failed."

    .line 94
    .line 95
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0

    .line 99
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    const-string v1, "Check failed."

    .line 102
    .line 103
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :goto_0
    monitor-exit v0

    .line 108
    throw p0

    .line 109
    :cond_4
    const-string p0, "Check failed."

    .line 110
    .line 111
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const/4 p0, 0x0

    .line 115
    return-object p0
.end method

.method public write(Ljava/lang/String;IJLkotlin/jvm/functions/Function1;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokio/Buffer;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-boolean v2, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    :try_start_0
    invoke-interface {p5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-boolean p5, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 31
    .line 32
    if-eqz p5, :cond_0

    .line 33
    .line 34
    const/16 p5, 0x20

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move p5, v2

    .line 38
    :goto_0
    iput-boolean p1, p0, Landroidx/compose/runtime/Latch;->_isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    sub-int/2addr v4, p1

    .line 45
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    sub-int/2addr v1, p1

    .line 53
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/compose/runtime/Latch;->sink()Lokio/BufferedSink;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-wide/16 v3, 0x1f

    .line 61
    .line 62
    cmp-long v3, p3, v3

    .line 63
    .line 64
    if-gez v3, :cond_1

    .line 65
    .line 66
    or-int p0, p2, p5

    .line 67
    .line 68
    long-to-int p2, p3

    .line 69
    or-int/2addr p0, p2

    .line 70
    invoke-interface {v1, p0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    or-int/2addr p2, p5

    .line 75
    or-int/lit8 p2, p2, 0x1f

    .line 76
    .line 77
    invoke-interface {v1, p2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p3, p4}, Landroidx/compose/runtime/Latch;->writeVariableLengthLong(J)V

    .line 81
    .line 82
    .line 83
    :goto_1
    iget-wide p2, v0, Lokio/Buffer;->size:J

    .line 84
    .line 85
    const-wide/16 p4, 0x80

    .line 86
    .line 87
    cmp-long p0, p2, p4

    .line 88
    .line 89
    if-gez p0, :cond_2

    .line 90
    .line 91
    long-to-int p0, p2

    .line 92
    invoke-interface {v1, p0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    rsub-int/lit8 p0, p0, 0x47

    .line 101
    .line 102
    div-int/lit8 p0, p0, 0x8

    .line 103
    .line 104
    or-int/lit16 p4, p0, 0x80

    .line 105
    .line 106
    invoke-interface {v1, p4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 107
    .line 108
    .line 109
    sub-int/2addr p0, p1

    .line 110
    mul-int/lit8 p0, p0, 0x8

    .line 111
    .line 112
    const/4 p1, -0x8

    .line 113
    invoke-static {p0, v2, p1}, Lcoil3/util/ContextsKt;->getProgressionLastElement(III)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-gt p1, p0, :cond_3

    .line 118
    .line 119
    :goto_2
    shr-long p4, p2, p0

    .line 120
    .line 121
    long-to-int p4, p4

    .line 122
    invoke-interface {v1, p4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 123
    .line 124
    .line 125
    if-eq p0, p1, :cond_3

    .line 126
    .line 127
    add-int/lit8 p0, p0, -0x8

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    :goto_3
    invoke-interface {v1, v0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    sub-int/2addr p2, p1

    .line 140
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    sub-int/2addr p2, p1

    .line 148
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    throw p0
.end method

.method public writeVariableLengthLong(J)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/Latch;->sink()Lokio/BufferedSink;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    rsub-int/lit8 v0, v0, 0x46

    .line 10
    .line 11
    div-int/lit8 v0, v0, 0x7

    .line 12
    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    mul-int/lit8 v0, v0, 0x7

    .line 16
    .line 17
    const/4 v1, -0x7

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v0, v2, v1}, Lcoil3/util/ContextsKt;->getProgressionLastElement(III)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-gt v1, v0, :cond_1

    .line 24
    .line 25
    :goto_0
    if-nez v0, :cond_0

    .line 26
    .line 27
    move v3, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/16 v3, 0x80

    .line 30
    .line 31
    :goto_1
    shr-long v4, p1, v0

    .line 32
    .line 33
    const-wide/16 v6, 0x7f

    .line 34
    .line 35
    and-long/2addr v4, v6

    .line 36
    long-to-int v4, v4

    .line 37
    or-int/2addr v3, v4

    .line 38
    invoke-interface {p0, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 39
    .line 40
    .line 41
    if-eq v0, v1, :cond_1

    .line 42
    .line 43
    add-int/lit8 v0, v0, -0x7

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

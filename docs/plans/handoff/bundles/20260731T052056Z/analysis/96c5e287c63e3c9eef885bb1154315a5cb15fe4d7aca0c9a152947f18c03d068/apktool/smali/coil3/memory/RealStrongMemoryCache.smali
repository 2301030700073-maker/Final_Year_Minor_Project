.class public final Lcoil3/memory/RealStrongMemoryCache;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final cache:Ljava/lang/Object;

.field public initialMaxSize:J

.field public final weakMemoryCache:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->Lsq2:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    .line 5
    .line 6
    new-instance v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2, v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;-><init>(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcoil3/memory/RealStrongMemoryCache;->weakMemoryCache:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance v1, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 15
    .line 16
    invoke-direct {v1, v2, v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;-><init>(ZLandroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcoil3/memory/RealStrongMemoryCache;->cache:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(JLokio/PriorityQueue;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcoil3/memory/RealStrongMemoryCache;->initialMaxSize:J

    .line 24
    iput-object p3, p0, Lcoil3/memory/RealStrongMemoryCache;->weakMemoryCache:Ljava/lang/Object;

    .line 25
    new-instance p3, Lcoil3/memory/RealStrongMemoryCache$cache$1;

    invoke-direct {p3, p0, p1, p2}, Lcoil3/memory/RealStrongMemoryCache$cache$1;-><init>(Lcoil3/memory/RealStrongMemoryCache;J)V

    iput-object p3, p0, Lcoil3/memory/RealStrongMemoryCache;->cache:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addPosition-Uv8p0NA(JJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/memory/RealStrongMemoryCache;->weakMemoryCache:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 4
    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    shr-long v1, p3, v1

    .line 8
    .line 9
    long-to-int v1, v1

    .line 10
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->addDataPoint(FJ)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache;->cache:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 20
    .line 21
    const-wide v0, 0xffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr p3, v0

    .line 27
    long-to-int p3, p3

    .line 28
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    invoke-virtual {p0, p3, p1, p2}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->addDataPoint(FJ)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public set(Lcoil3/memory/MemoryCache$Key;Lcoil3/Image;Ljava/util/Map;J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcoil3/memory/RealStrongMemoryCache;->cache:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcoil3/memory/RealStrongMemoryCache$cache$1;

    .line 4
    .line 5
    iget-wide v1, v0, Lcoil3/memory/RealStrongMemoryCache$cache$1;->maxSize:J

    .line 6
    .line 7
    iget-object v3, v0, Lcoil3/memory/RealStrongMemoryCache$cache$1;->map:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    cmp-long v1, p4, v1

    .line 12
    .line 13
    if-gtz v1, :cond_1

    .line 14
    .line 15
    new-instance p0, Lcoil3/memory/RealStrongMemoryCache$InternalValue;

    .line 16
    .line 17
    invoke-direct {p0, p2, p3, p4, p5}, Lcoil3/memory/RealStrongMemoryCache$InternalValue;-><init>(Lcoil3/Image;Ljava/util/Map;J)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {v0}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->getSize()J

    .line 25
    .line 26
    .line 27
    move-result-wide p3

    .line 28
    invoke-virtual {v0, p1, p0}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    add-long/2addr v1, p3

    .line 33
    iput-wide v1, v0, Lcoil3/memory/RealStrongMemoryCache$cache$1;->size:J

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->getSize()J

    .line 38
    .line 39
    .line 40
    move-result-wide p3

    .line 41
    invoke-virtual {v0, p1, p2}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    sub-long/2addr p3, v1

    .line 46
    iput-wide p3, v0, Lcoil3/memory/RealStrongMemoryCache$cache$1;->size:J

    .line 47
    .line 48
    invoke-virtual {v0, p1, p2, p0}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->entryRemoved(Ljava/lang/Object;Ljava/lang/Object;Lcoil3/memory/RealStrongMemoryCache$InternalValue;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-wide p0, v0, Lcoil3/memory/RealStrongMemoryCache$cache$1;->maxSize:J

    .line 52
    .line 53
    invoke-virtual {v0, p0, p1}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->trimToSize(J)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->getSize()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    invoke-virtual {v0, p1, v1}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v4

    .line 71
    sub-long/2addr v2, v4

    .line 72
    iput-wide v2, v0, Lcoil3/memory/RealStrongMemoryCache$cache$1;->size:J

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-virtual {v0, p1, v1, v2}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->entryRemoved(Ljava/lang/Object;Ljava/lang/Object;Lcoil3/memory/RealStrongMemoryCache$InternalValue;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache;->weakMemoryCache:Ljava/lang/Object;

    .line 79
    .line 80
    move-object v0, p0

    .line 81
    check-cast v0, Lokio/PriorityQueue;

    .line 82
    .line 83
    move-object v1, p1

    .line 84
    move-object v2, p2

    .line 85
    move-object v3, p3

    .line 86
    move-wide v4, p4

    .line 87
    invoke-virtual/range {v0 .. v5}, Lokio/PriorityQueue;->set(Lcoil3/memory/MemoryCache$Key;Lcoil3/Image;Ljava/util/Map;J)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

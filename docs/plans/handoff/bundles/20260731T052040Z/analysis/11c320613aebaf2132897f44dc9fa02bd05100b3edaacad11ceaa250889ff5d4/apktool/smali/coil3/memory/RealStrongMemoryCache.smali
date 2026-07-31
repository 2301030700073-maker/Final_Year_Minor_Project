.class public final Lcoil3/memory/RealStrongMemoryCache;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final cache:Ljava/lang/Object;

.field public initialMaxSize:J

.field public final weakMemoryCache:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcoil3/memory/RealStrongMemoryCache;->weakMemoryCache:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcoil3/memory/RealStrongMemoryCache;->cache:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(JLokio/PriorityQueue;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcoil3/memory/RealStrongMemoryCache;->initialMaxSize:J

    .line 21
    iput-object p3, p0, Lcoil3/memory/RealStrongMemoryCache;->weakMemoryCache:Ljava/lang/Object;

    .line 22
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
    check-cast v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

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
    invoke-virtual {v0, p1, p2, v1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->addDataPoint(JF)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache;->cache:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->addDataPoint(JF)V

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
    iget-object v3, v0, Lcoil3/memory/RealStrongMemoryCache$cache$1;->map:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    cmp-long v1, p4, v1

    .line 10
    .line 11
    if-gtz v1, :cond_1

    .line 12
    .line 13
    new-instance p0, Lcoil3/memory/RealStrongMemoryCache$InternalValue;

    .line 14
    .line 15
    invoke-direct {p0, p2, p3, p4, p5}, Lcoil3/memory/RealStrongMemoryCache$InternalValue;-><init>(Lcoil3/Image;Ljava/util/Map;J)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {v0}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->getSize()J

    .line 23
    .line 24
    .line 25
    move-result-wide p3

    .line 26
    invoke-virtual {v0, p1, p0}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    add-long/2addr v1, p3

    .line 31
    iput-wide v1, v0, Lcoil3/memory/RealStrongMemoryCache$cache$1;->size:J

    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->getSize()J

    .line 36
    .line 37
    .line 38
    move-result-wide p3

    .line 39
    invoke-virtual {v0, p1, p2}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    sub-long/2addr p3, v1

    .line 44
    iput-wide p3, v0, Lcoil3/memory/RealStrongMemoryCache$cache$1;->size:J

    .line 45
    .line 46
    invoke-virtual {v0, p1, p2, p0}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->entryRemoved(Ljava/lang/Object;Ljava/lang/Object;Lcoil3/memory/RealStrongMemoryCache$InternalValue;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-wide p0, v0, Lcoil3/memory/RealStrongMemoryCache$cache$1;->maxSize:J

    .line 50
    .line 51
    invoke-virtual {v0, p0, p1}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->trimToSize(J)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->getSize()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    invoke-virtual {v0, p1, v1}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    sub-long/2addr v2, v4

    .line 70
    iput-wide v2, v0, Lcoil3/memory/RealStrongMemoryCache$cache$1;->size:J

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-virtual {v0, p1, v1, v2}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->entryRemoved(Ljava/lang/Object;Ljava/lang/Object;Lcoil3/memory/RealStrongMemoryCache$InternalValue;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache;->weakMemoryCache:Ljava/lang/Object;

    .line 77
    .line 78
    move-object v0, p0

    .line 79
    check-cast v0, Lokio/PriorityQueue;

    .line 80
    .line 81
    move-object v1, p1

    .line 82
    move-object v2, p2

    .line 83
    move-object v3, p3

    .line 84
    move-wide v4, p4

    .line 85
    invoke-virtual/range {v0 .. v5}, Lokio/PriorityQueue;->set(Lcoil3/memory/MemoryCache$Key;Lcoil3/Image;Ljava/util/Map;J)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

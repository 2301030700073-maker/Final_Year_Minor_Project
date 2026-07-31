.class public final Lorg/koin/core/KoinApplication;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final allowOverride:Z

.field public final koin:Lorg/koin/core/Koin;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/koin/core/Koin;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lorg/koin/core/logger/EmptyLogger;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, v2}, Lorg/koin/core/logger/EmptyLogger;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lorg/koin/core/logger/Level;->NONE:Lorg/koin/core/logger/Level;

    .line 16
    .line 17
    iput-object v2, v1, Lorg/koin/core/logger/Logger;->level:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object v1, v0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 20
    .line 21
    new-instance v1, Lorg/jsoup/parser/TokenData;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lorg/jsoup/parser/TokenData;-><init>(Lorg/koin/core/Koin;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Lorg/koin/core/Koin;->resolver:Ljava/lang/Object;

    .line 27
    .line 28
    new-instance v1, Lorg/koin/core/registry/ScopeRegistry;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Lorg/koin/core/registry/ScopeRegistry;-><init>(Lorg/koin/core/Koin;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    .line 34
    .line 35
    new-instance v1, Lorg/jsoup/nodes/Printer;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Lorg/jsoup/nodes/Printer;-><init>(Lorg/koin/core/Koin;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, v0, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    .line 41
    .line 42
    new-instance v1, Lorg/koin/core/registry/PropertyRegistry;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lorg/koin/core/registry/PropertyRegistry;-><init>(Lorg/koin/core/Koin;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, v0, Lorg/koin/core/Koin;->propertyRegistry:Ljava/lang/Object;

    .line 48
    .line 49
    new-instance v1, Lio/noties/markwon/RenderPropsImpl;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Lio/noties/markwon/RenderPropsImpl;-><init>(Lorg/koin/core/Koin;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, v0, Lorg/koin/core/Koin;->extensionManager:Ljava/lang/Object;

    .line 55
    .line 56
    new-instance v1, Lio/noties/markwon/RenderPropsImpl;

    .line 57
    .line 58
    const/4 v2, 0x5

    .line 59
    invoke-direct {v1, v2}, Lio/noties/markwon/RenderPropsImpl;-><init>(I)V

    .line 60
    .line 61
    .line 62
    iput-object v1, v0, Lorg/koin/core/Koin;->optionRegistry:Ljava/lang/Object;

    .line 63
    .line 64
    iput-object v0, p0, Lorg/koin/core/KoinApplication;->koin:Lorg/koin/core/Koin;

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lorg/koin/core/KoinApplication;->allowOverride:Z

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final modules(Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/koin/core/KoinApplication;->koin:Lorg/koin/core/Koin;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lorg/koin/core/logger/Logger;

    .line 6
    .line 7
    iget-object v1, v1, Lorg/koin/core/logger/Logger;->level:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lorg/koin/core/logger/Level;

    .line 10
    .line 11
    sget-object v2, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-boolean p0, p0, Lorg/koin/core/KoinApplication;->allowOverride:Z

    .line 18
    .line 19
    if-gtz v1, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lkotlin/time/MonotonicTimeSource;->read()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    invoke-virtual {v0, p1, p0}, Lorg/koin/core/Koin;->loadModules(Ljava/util/List;Z)V

    .line 26
    .line 27
    .line 28
    invoke-static {v3, v4}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide p0

    .line 32
    iget-object v1, v0, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lorg/jsoup/nodes/Printer;

    .line 35
    .line 36
    iget-object v1, v1, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iget-object v0, v0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lorg/koin/core/logger/Logger;

    .line 47
    .line 48
    const-string v3, "Started "

    .line 49
    .line 50
    const-string v4, " definitions in "

    .line 51
    .line 52
    invoke-static {v3, v1, v4}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    sget-object v3, Lkotlin/time/Duration;->Companion:Lokio/ByteString$Companion;

    .line 57
    .line 58
    sget-object v3, Lkotlin/time/DurationUnit;->MICROSECONDS:Lkotlin/time/DurationUnit;

    .line 59
    .line 60
    invoke-static {p0, p1, v3}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    .line 61
    .line 62
    .line 63
    move-result-wide p0

    .line 64
    long-to-double p0, p0

    .line 65
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    div-double/2addr p0, v3

    .line 71
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p0, " ms"

    .line 75
    .line 76
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v0, v2, p0}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_0
    invoke-virtual {v0, p1, p0}, Lorg/koin/core/Koin;->loadModules(Ljava/util/List;Z)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

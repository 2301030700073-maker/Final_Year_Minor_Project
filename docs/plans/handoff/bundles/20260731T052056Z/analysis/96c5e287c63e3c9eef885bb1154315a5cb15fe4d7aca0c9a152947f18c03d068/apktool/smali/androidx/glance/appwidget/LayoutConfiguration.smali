.class public final Landroidx/glance/appwidget/LayoutConfiguration;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final Companion:Landroidx/glance/appwidget/ContentReceiver$Key;


# instance fields
.field public final appWidgetId:I

.field public final context:Landroid/content/Context;

.field public final existingLayoutIds:Ljava/util/Set;

.field public final layoutConfig:Ljava/util/LinkedHashMap;

.field public nextIndex:I

.field public final usedLayoutIds:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/glance/appwidget/ContentReceiver$Key;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/glance/appwidget/LayoutConfiguration;->Companion:Landroidx/glance/appwidget/ContentReceiver$Key;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/LinkedHashMap;IILjava/util/Set;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/glance/appwidget/LayoutConfiguration;->context:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Landroidx/glance/appwidget/LayoutConfiguration;->layoutConfig:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    iput p3, p0, Landroidx/glance/appwidget/LayoutConfiguration;->nextIndex:I

    .line 14
    .line 15
    iput p4, p0, Landroidx/glance/appwidget/LayoutConfiguration;->appWidgetId:I

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/glance/appwidget/LayoutConfiguration;->usedLayoutIds:Ljava/util/LinkedHashSet;

    .line 18
    .line 19
    iput-object p5, p0, Landroidx/glance/appwidget/LayoutConfiguration;->existingLayoutIds:Ljava/util/Set;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final addLayout(Landroidx/glance/Emittable;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/glance/appwidget/LayoutConfiguration;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/ExceptionsKt;->createNode(Landroid/content/Context;Landroidx/glance/Emittable;)Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Landroidx/glance/appwidget/LayoutConfiguration;->layoutConfig:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Integer;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Landroidx/glance/appwidget/LayoutConfiguration;->usedLayoutIds:Ljava/util/LinkedHashSet;

    .line 27
    .line 28
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return p1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :try_start_1
    iget v0, p0, Landroidx/glance/appwidget/LayoutConfiguration;->nextIndex:I

    .line 36
    .line 37
    :goto_0
    iget-object v1, p0, Landroidx/glance/appwidget/LayoutConfiguration;->existingLayoutIds:Ljava/util/Set;

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    sget v1, Landroidx/glance/appwidget/LayoutSelectionKt;->TopLevelLayoutsCount:I

    .line 52
    .line 53
    rem-int/2addr v0, v1

    .line 54
    iget v1, p0, Landroidx/glance/appwidget/LayoutConfiguration;->nextIndex:I

    .line 55
    .line 56
    if-eq v0, v1, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const-string p1, "Cannot assign a valid layout index to the new layout: no free index left."

    .line 60
    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .line 68
    .line 69
    sget v2, Landroidx/glance/appwidget/LayoutSelectionKt;->TopLevelLayoutsCount:I

    .line 70
    .line 71
    rem-int/2addr v1, v2

    .line 72
    iput v1, p0, Landroidx/glance/appwidget/LayoutConfiguration;->nextIndex:I

    .line 73
    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v2, p0, Landroidx/glance/appwidget/LayoutConfiguration;->usedLayoutIds:Ljava/util/LinkedHashSet;

    .line 79
    .line 80
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget-object v2, p0, Landroidx/glance/appwidget/LayoutConfiguration;->existingLayoutIds:Ljava/util/Set;

    .line 88
    .line 89
    check-cast v2, Ljava/util/Collection;

    .line 90
    .line 91
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v2, p0, Landroidx/glance/appwidget/LayoutConfiguration;->layoutConfig:Ljava/util/LinkedHashMap;

    .line 99
    .line 100
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    monitor-exit p0

    .line 104
    return v0

    .line 105
    :goto_1
    monitor-exit p0

    .line 106
    throw p1
.end method

.method public final save(Landroidx/glance/appwidget/AppWidgetSession$processEmittableTree$1;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Landroidx/glance/state/GlanceState;->INSTANCE:Landroidx/glance/state/GlanceState;

    .line 2
    .line 3
    iget v1, p0, Landroidx/glance/appwidget/LayoutConfiguration;->appWidgetId:I

    .line 4
    .line 5
    const-string v2, "appWidgetLayout-"

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x5

    .line 15
    invoke-direct {v4, v2, p0, v1}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/glance/appwidget/LayoutConfiguration;->context:Landroid/content/Context;

    .line 19
    .line 20
    sget-object v2, Landroidx/glance/appwidget/LayoutStateDefinition;->INSTANCE:Landroidx/glance/appwidget/LayoutStateDefinition;

    .line 21
    .line 22
    move-object v5, p1

    .line 23
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/state/GlanceState;->updateValue(Landroid/content/Context;Landroidx/glance/state/GlanceStateDefinition;Ljava/lang/String;Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    if-ne p0, p1, :cond_0

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

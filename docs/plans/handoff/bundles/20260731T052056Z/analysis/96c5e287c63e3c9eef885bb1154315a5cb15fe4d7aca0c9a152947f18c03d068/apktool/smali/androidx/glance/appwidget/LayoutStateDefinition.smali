.class public final Landroidx/glance/appwidget/LayoutStateDefinition;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/glance/state/GlanceStateDefinition;


# static fields
.field public static final INSTANCE:Landroidx/glance/appwidget/LayoutStateDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/glance/appwidget/LayoutStateDefinition;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/glance/appwidget/LayoutStateDefinition;->INSTANCE:Landroidx/glance/appwidget/LayoutStateDefinition;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getDataStore(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v2, Landroidx/glance/appwidget/proto/LayoutProtoSerializer;->INSTANCE:Landroidx/glance/appwidget/proto/LayoutProtoSerializer;

    .line 2
    .line 3
    new-instance v1, Landroidx/glance/appwidget/LayoutStateDefinition$getDataStore$2;

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    invoke-direct {v1, p0, p1, p2}, Landroidx/glance/appwidget/LayoutStateDefinition$getDataStore$2;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 10
    .line 11
    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 12
    .line 13
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Landroidx/work/OperationKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lkotlinx/coroutines/AwaitKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    new-instance v4, Landroidx/collection/internal/Lock;

    .line 29
    .line 30
    const/4 p0, 0x7

    .line 31
    invoke-direct {v4, p0}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 35
    .line 36
    const/16 p1, 0x1d

    .line 37
    .line 38
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    new-instance v0, Landroidx/datastore/core/SingleProcessDataStore;

    .line 49
    .line 50
    invoke-direct/range {v0 .. v5}, Landroidx/datastore/core/SingleProcessDataStore;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/datastore/core/Serializer;Ljava/util/List;Landroidx/collection/internal/Lock;Lkotlinx/coroutines/CoroutineScope;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method public final getLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->dataStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

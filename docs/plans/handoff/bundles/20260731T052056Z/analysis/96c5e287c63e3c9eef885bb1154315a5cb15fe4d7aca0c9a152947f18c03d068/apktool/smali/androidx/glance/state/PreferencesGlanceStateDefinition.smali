.class public final Landroidx/glance/state/PreferencesGlanceStateDefinition;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/glance/state/GlanceStateDefinition;


# static fields
.field public static final INSTANCE:Landroidx/glance/state/PreferencesGlanceStateDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/glance/state/PreferencesGlanceStateDefinition;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/glance/state/PreferencesGlanceStateDefinition;->INSTANCE:Landroidx/glance/state/PreferencesGlanceStateDefinition;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getDataStore(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance p0, Landroidx/glance/appwidget/LayoutStateDefinition$getDataStore$2;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0, p1, p2}, Landroidx/glance/appwidget/LayoutStateDefinition$getDataStore$2;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 8
    .line 9
    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 10
    .line 11
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Landroidx/work/OperationKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lkotlinx/coroutines/AwaitKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    new-instance v2, Landroidx/glance/GlanceNodeKt$GlanceNode$$inlined$ComposeNode$1;

    .line 27
    .line 28
    invoke-direct {v2, v0, p0}, Landroidx/glance/GlanceNodeKt$GlanceNode$$inlined$ComposeNode$1;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Landroidx/collection/internal/Lock;

    .line 32
    .line 33
    const/4 p0, 0x7

    .line 34
    invoke-direct {v5, p0}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 35
    .line 36
    .line 37
    new-instance p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    const/16 p2, 0x1d

    .line 41
    .line 42
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 43
    .line 44
    invoke-direct {p0, p2, v0, p1}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    new-instance v1, Landroidx/datastore/core/SingleProcessDataStore;

    .line 52
    .line 53
    sget-object v3, Landroidx/datastore/preferences/core/PreferencesSerializer;->INSTANCE:Landroidx/datastore/preferences/core/PreferencesSerializer;

    .line 54
    .line 55
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/core/SingleProcessDataStore;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/datastore/core/Serializer;Ljava/util/List;Landroidx/collection/internal/Lock;Lkotlinx/coroutines/CoroutineScope;)V

    .line 56
    .line 57
    .line 58
    new-instance p0, Landroidx/datastore/preferences/core/PreferenceDataStore;

    .line 59
    .line 60
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/core/PreferenceDataStore;-><init>(Landroidx/datastore/core/SingleProcessDataStore;)V

    .line 61
    .line 62
    .line 63
    return-object p0
.end method

.method public final getLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lkotlin/ResultKt;->preferencesDataStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

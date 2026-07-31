.class public final Landroidx/camera/camera2/config/UseCaseGraphContext;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final _graph:Lkotlin/SynchronizedLazyImpl;

.field public final cameraGraphProvider:Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;

.field public final cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

.field public final graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

.field public final streamConfigMapProvider:Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;

.field public final surfaceToStreamMap$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->cameraGraphProvider:Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->streamConfigMapProvider:Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    new-instance p1, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-direct {p1, p0, p2}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/config/UseCaseGraphContext;I)V

    .line 16
    .line 17
    .line 18
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 19
    .line 20
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->_graph:Lkotlin/SynchronizedLazyImpl;

    .line 24
    .line 25
    new-instance p1, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/4 p2, 0x1

    .line 28
    invoke-direct {p1, p0, p2}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/config/UseCaseGraphContext;I)V

    .line 29
    .line 30
    .line 31
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 32
    .line 33
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->surfaceToStreamMap$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final getGraph()Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->_graph:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 11
    .line 12
    return-object p0
.end method

.method public final getStreamIdsFromSurfaces(Ljava/util/List;)Ljava/util/LinkedHashSet;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/camera/core/impl/DeferrableSurface;

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->surfaceToStreamMap$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 23
    .line 24
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroidx/camera/camera2/pipe/StreamId;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget v1, v1, Landroidx/camera/camera2/pipe/StreamId;->value:I

    .line 39
    .line 40
    new-instance v2, Landroidx/camera/camera2/pipe/StreamId;

    .line 41
    .line 42
    invoke-direct {v2, v1}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-object v0
.end method

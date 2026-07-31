.class public final synthetic Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/camera/camera2/config/UseCaseGraphContext;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/config/UseCaseGraphContext;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->streamConfigMapProvider:Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/util/Map$Entry;

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroidx/camera/core/impl/DeferrableSurface;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iget-object v4, v4, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->streamGraph:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object v4, v4, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->_streamMap:Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Landroidx/camera/camera2/pipe/CameraStream;

    .line 72
    .line 73
    if-eqz v3, :cond_0

    .line 74
    .line 75
    iget v3, v3, Landroidx/camera/camera2/pipe/CameraStream;->id:I

    .line 76
    .line 77
    new-instance v4, Landroidx/camera/camera2/pipe/StreamId;

    .line 78
    .line 79
    invoke-direct {v4, v3}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :pswitch_0
    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseGraphContext;->cameraGraphProvider:Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/camera/camera2/config/UseCaseCameraConfig$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 98
    .line 99
    return-object p0

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

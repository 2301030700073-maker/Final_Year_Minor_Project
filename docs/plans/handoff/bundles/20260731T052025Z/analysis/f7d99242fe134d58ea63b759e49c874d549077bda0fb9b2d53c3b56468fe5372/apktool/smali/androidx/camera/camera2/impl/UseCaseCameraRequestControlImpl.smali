.class public final Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;


# static fields
.field public static final canceledResult:Lkotlinx/coroutines/CompletableDeferredImpl;

.field public static final submitFailedResult:Lkotlinx/coroutines/CompletableDeferredImpl;


# instance fields
.field public final cameraXConfig:Landroidx/camera/core/CameraXConfig;

.field public final capturePipeline$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final capturePipelineProvider:Ljavax/inject/Provider;

.field public volatile closed:Z

.field public final infoBundleMap:Ljava/util/LinkedHashMap;

.field public final threads:Landroidx/camera/camera2/impl/UseCaseThreads;

.field public final useCaseCameraState$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final useCaseCameraStateProvider:Ljavax/inject/Provider;

.field public final useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

.field public final useCaseSurfaceManager$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final useCaseSurfaceManagerProvider:Ljavax/inject/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/camera/camera2/pipe/Result3A;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->submitFailedResult:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 13
    .line 14
    new-instance v0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 15
    .line 16
    invoke-direct {v0}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->canceledResult:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Landroidx/camera/camera2/config/UseCaseGraphContext;Ljavax/inject/Provider;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/core/CameraXConfig;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->capturePipelineProvider:Ljavax/inject/Provider;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseCameraStateProvider:Ljavax/inject/Provider;

    .line 22
    .line 23
    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 24
    .line 25
    iput-object p4, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseSurfaceManagerProvider:Ljavax/inject/Provider;

    .line 26
    .line 27
    iput-object p5, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 28
    .line 29
    iput-object p6, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 30
    .line 31
    const-string p1, "CXCP"

    .line 32
    .line 33
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string p3, "Configured "

    .line 42
    .line 43
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_0
    new-instance p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    invoke-direct {p1, p0, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;I)V

    .line 60
    .line 61
    .line 62
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 63
    .line 64
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 65
    .line 66
    .line 67
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->capturePipeline$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 68
    .line 69
    new-instance p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    const/4 p2, 0x1

    .line 72
    invoke-direct {p1, p0, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;I)V

    .line 73
    .line 74
    .line 75
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 76
    .line 77
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 78
    .line 79
    .line 80
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseSurfaceManager$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 81
    .line 82
    new-instance p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    const/4 p2, 0x2

    .line 85
    invoke-direct {p1, p0, p2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;I)V

    .line 86
    .line 87
    .line 88
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 89
    .line 90
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 91
    .line 92
    .line 93
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseCameraState$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 94
    .line 95
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 96
    .line 97
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->infoBundleMap:Ljava/util/LinkedHashMap;

    .line 101
    .line 102
    return-void
.end method

.method public static final access$setParametersInternal(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Ljava/util/Map;Landroidx/camera/core/impl/Config$OptionPriority;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->infoBundleMap:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    const-string v1, "CXCP"

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "UseCaseCameraRequestControlImpl#setParametersAsync: ["

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, "] values = "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, ", optionPriority = "

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x0

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    new-instance v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    .line 52
    .line 53
    const/16 v3, 0xf

    .line 54
    .line 55
    invoke-direct {v1, v2, v2, v2, v3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;-><init>(Landroidx/camera/core/Preview$Builder;Ljava/util/LinkedHashMap;Landroidx/camera/camera2/pipe/RequestTemplate;I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_1
    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    .line 62
    .line 63
    new-instance v3, Landroidx/camera/core/Preview$Builder;

    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    invoke-direct {v3, v4}, Landroidx/camera/core/Preview$Builder;-><init>(I)V

    .line 67
    .line 68
    .line 69
    iget-object v4, v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/core/Preview$Builder;

    .line 70
    .line 71
    iget-object v4, v4, Landroidx/camera/core/Preview$Builder;->mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Landroidx/camera/core/Preview$Builder;->insertAllOptions(Landroidx/camera/core/impl/Config;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_2

    .line 92
    .line 93
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Ljava/util/Map$Entry;

    .line 98
    .line 99
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 104
    .line 105
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {v5}, Landroidx/work/Data$Companion;->createCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;)Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    iget-object v6, v3, Landroidx/camera/core/Preview$Builder;->mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 114
    .line 115
    invoke-virtual {v6, v5, p3, v4}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    iget-object p2, v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    .line 120
    .line 121
    invoke-static {p2}, Lkotlin/collections/MapsKt__MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    iget-object p3, v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    .line 126
    .line 127
    check-cast p3, Ljava/lang/Iterable;

    .line 128
    .line 129
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    iget-object v1, v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    .line 134
    .line 135
    new-instance v4, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    .line 136
    .line 137
    invoke-direct {v4, v3, p2, p3, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;-><init>(Landroidx/camera/core/Preview$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->merge(Ljava/util/LinkedHashMap;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p0, p1, v2, p4}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->updateCameraStateAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Ljava/util/LinkedHashSet;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    return-object p0
.end method

.method public static merge(Ljava/util/LinkedHashMap;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;
    .locals 5

    .line 1
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    .line 2
    .line 3
    new-instance v1, Landroidx/camera/camera2/pipe/RequestTemplate;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, v2}, Landroidx/camera/camera2/pipe/RequestTemplate;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x7

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v0, v3, v3, v1, v2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;-><init>(Landroidx/camera/core/Preview$Builder;Ljava/util/LinkedHashMap;Landroidx/camera/camera2/pipe/RequestTemplate;I)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v2, Lkotlin/UIntArray$Iterator;

    .line 20
    .line 21
    const/4 v3, 0x6

    .line 22
    invoke-direct {v2, v3, v1}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v2}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    iget-object v3, v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/core/Preview$Builder;

    .line 46
    .line 47
    iget-object v3, v3, Landroidx/camera/core/Preview$Builder;->mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 48
    .line 49
    iget-object v4, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/core/Preview$Builder;

    .line 50
    .line 51
    invoke-virtual {v4, v3}, Landroidx/camera/core/Preview$Builder;->insertAllOptions(Landroidx/camera/core/impl/Config;)V

    .line 52
    .line 53
    .line 54
    iget-object v3, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    .line 55
    .line 56
    iget-object v4, v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    .line 57
    .line 58
    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 59
    .line 60
    .line 61
    iget-object v3, v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    .line 62
    .line 63
    check-cast v3, Ljava/util/Collection;

    .line 64
    .line 65
    iget-object v4, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    .line 66
    .line 67
    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 68
    .line 69
    .line 70
    iget-object v1, v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    .line 71
    .line 72
    if-eqz v1, :cond_0

    .line 73
    .line 74
    iget v1, v1, Landroidx/camera/camera2/pipe/RequestTemplate;->value:I

    .line 75
    .line 76
    new-instance v3, Landroidx/camera/camera2/pipe/RequestTemplate;

    .line 77
    .line 78
    invoke-direct {v3, v1}, Landroidx/camera/camera2/pipe/RequestTemplate;-><init>(I)V

    .line 79
    .line 80
    .line 81
    iput-object v3, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final awaitSurfaceSetup(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseSurfaceManager$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->awaitSetupCompletion$suspendImpl(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final cancelFocusAndMeteringAsync()Lkotlinx/coroutines/Deferred;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/datastore/core/FileReadScope$readData$2;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v0, p0, v1, v2}, Landroidx/datastore/core/FileReadScope$readData$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->runOnSequential(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    if-nez v1, :cond_1

    .line 17
    .line 18
    sget-object p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->submitFailedResult:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    return-object v1
.end method

.method public final close()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    .line 3
    .line 4
    const-string v0, "CXCP"

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "CXCP"

    .line 13
    .line 14
    const-string v1, "UseCaseCameraRequestControl: closed"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseCameraState$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 20
    .line 21
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Landroidx/camera/camera2/impl/UseCaseCameraState;

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    new-instance v2, Ljava/util/concurrent/CancellationException;

    .line 42
    .line 43
    const-string v3, "UseCaseCameraState closed"

    .line 44
    .line 45
    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/CompletableDeferredImpl;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 56
    .line 57
    :cond_2
    :goto_1
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignals:Lkotlin/collections/ArrayDeque;

    .line 58
    .line 59
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignals:Lkotlin/collections/ArrayDeque;

    .line 66
    .line 67
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    .line 72
    .line 73
    iget-object v1, v1, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->signal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 74
    .line 75
    new-instance v2, Ljava/util/concurrent/CancellationException;

    .line 76
    .line 77
    const-string v3, "UseCaseCameraState closed"

    .line 78
    .line 79
    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/CompletableDeferredImpl;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->pendingSignalCount:Lkotlinx/atomicfu/AtomicInt;

    .line 86
    .line 87
    invoke-virtual {v1}, Lkotlinx/atomicfu/AtomicInt;->decrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    monitor-exit v0

    .line 92
    return-void

    .line 93
    :goto_2
    monitor-exit v0

    .line 94
    throw p0
.end method

.method public final removeParametersAsync(Ljava/util/List;)Lkotlinx/coroutines/Deferred;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/datastore/core/FileReadScope$readData$2;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/datastore/core/FileReadScope$readData$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->runOnSequential(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    if-nez v1, :cond_1

    .line 17
    .line 18
    sget-object p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->canceledResult:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    return-object v1
.end method

.method public final runOnSequential(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CompletableDeferredImpl;
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->isSequentialThread:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 24
    .line 25
    :goto_0
    new-instance v1, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 26
    .line 27
    invoke-direct {v1}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 31
    .line 32
    new-instance v2, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v2, p1, v1, v4, v3}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    invoke-static {p0, v4, v0, v2, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 41
    .line 42
    .line 43
    return-object v1
.end method

.method public final setParametersAsync(Ljava/util/Map;Landroidx/camera/core/impl/Config$OptionPriority;)Lkotlinx/coroutines/Deferred;
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    .line 5
    .line 6
    const/4 v5, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroidx/compose/material3/TooltipStateImpl$show$2;

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    move-object v2, p0

    .line 13
    move-object v3, p1

    .line 14
    move-object v4, p2

    .line 15
    invoke-direct/range {v1 .. v6}, Landroidx/compose/material3/TooltipStateImpl$show$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->runOnSequential(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    :cond_0
    if-nez v5, :cond_1

    .line 23
    .line 24
    sget-object p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->canceledResult:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    return-object v5
.end method

.method public final setTorchOffAsync-MtizInI(I)Lkotlinx/coroutines/Deferred;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->runOnSequential(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    if-nez v1, :cond_1

    .line 16
    .line 17
    sget-object p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->submitFailedResult:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    return-object v1
.end method

.method public final setTorchOnAsync()Lkotlinx/coroutines/Deferred;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v0, p0, v1, v2}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->runOnSequential(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    if-nez v1, :cond_1

    .line 17
    .line 18
    sget-object p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->submitFailedResult:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    return-object v1
.end method

.method public final submitParameters(Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;)Lkotlinx/coroutines/Deferred;
    .locals 10

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->canceledResult:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/camera/camera2/impl/UseCaseThreads;->isSequentialThread:Ljava/lang/ThreadLocal;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 32
    .line 33
    iget-object v0, v0, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 34
    .line 35
    sget-object v2, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 36
    .line 37
    new-instance v3, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;

    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x2

    .line 41
    move-object v4, p0

    .line 42
    move-object v6, p1

    .line 43
    move-object v5, p2

    .line 44
    move-object v7, p3

    .line 45
    invoke-direct/range {v3 .. v9}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    invoke-static {v0, v1, v2, v3, p0}, Lkotlinx/coroutines/JobKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string p1, "Thread check failed: This method must be called from the UseCaseThreads sequential scope. Current thread: "

    .line 63
    .line 64
    invoke-static {p0, p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v1
.end method

.method public final updateCamera2ConfigAsync(Landroidx/camera/camera2/impl/Camera2ImplConfig;Ljava/util/Map;)Lkotlinx/coroutines/Deferred;
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v1, Landroidx/compose/material3/TooltipStateImpl$show$2;

    .line 7
    .line 8
    const/4 v6, 0x2

    .line 9
    move-object v2, p0

    .line 10
    move-object v3, p1

    .line 11
    move-object v4, p2

    .line 12
    invoke-direct/range {v1 .. v6}, Landroidx/compose/material3/TooltipStateImpl$show$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->runOnSequential(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    :cond_0
    if-nez v5, :cond_1

    .line 20
    .line 21
    sget-object p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->canceledResult:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    return-object v5
.end method

.method public final updateCameraStateAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Ljava/util/LinkedHashSet;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p3, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCameraStateAsync$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCameraStateAsync$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCameraStateAsync$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCameraStateAsync$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v7, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCameraStateAsync$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCameraStateAsync$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p3, v7, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCameraStateAsync$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v1, v7, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCameraStateAsync$1;->label:I

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    if-ne v1, v3, :cond_1

    .line 38
    .line 39
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-boolean p3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    .line 54
    .line 55
    if-nez p3, :cond_7

    .line 56
    .line 57
    iget-object p3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 58
    .line 59
    sget-object v1, Landroidx/camera/camera2/interop/Camera2CaptureRequestConfiguratorKt;->OPTION_CAPTURE_REQUEST_CONFIGURATOR:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 60
    .line 61
    iget-object p3, p3, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 62
    .line 63
    sget-object v1, Landroidx/camera/camera2/interop/Camera2CaptureRequestConfiguratorKt;->OPTION_CAPTURE_REQUEST_CONFIGURATOR:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 64
    .line 65
    invoke-virtual {p3, v1, v2}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    if-nez p3, :cond_6

    .line 70
    .line 71
    iget-object p3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->capturePipeline$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 72
    .line 73
    invoke-virtual {p3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    check-cast p3, Landroidx/camera/camera2/impl/CapturePipeline;

    .line 78
    .line 79
    iget-object v1, p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    iget v1, v1, Landroidx/camera/camera2/pipe/RequestTemplate;->value:I

    .line 85
    .line 86
    const/4 v2, -0x1

    .line 87
    if-eq v1, v2, :cond_3

    .line 88
    .line 89
    iget-object v1, p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iget v1, v1, Landroidx/camera/camera2/pipe/RequestTemplate;->value:I

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    move v1, v3

    .line 98
    :goto_2
    invoke-interface {p3, v1}, Landroidx/camera/camera2/impl/CapturePipeline;->setTemplate(I)V

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseCameraState$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 102
    .line 103
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    move-object v1, p0

    .line 108
    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraState;

    .line 109
    .line 110
    iget-object p0, p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/core/Preview$Builder;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/camera/core/Preview$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {p0}, Landroidx/work/Data$Companion;->toParameters(Landroidx/camera/core/impl/Config;)Ljava/util/LinkedHashMap;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    sget-object p0, Landroidx/camera/camera2/impl/TagsKt;->CAMERAX_TAG_BUNDLE:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 121
    .line 122
    invoke-static {}, Landroidx/camera/core/impl/MutableTagBundle;->create()Landroidx/camera/core/impl/MutableTagBundle;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    iget-object v4, p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    .line 127
    .line 128
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_4

    .line 141
    .line 142
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    check-cast v5, Ljava/util/Map$Entry;

    .line 147
    .line 148
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    check-cast v6, Ljava/lang/String;

    .line 153
    .line 154
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    iget-object v8, p3, Landroidx/camera/core/impl/TagBundle;->mTagMap:Landroid/util/ArrayMap;

    .line 159
    .line 160
    invoke-virtual {v8, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_4
    invoke-static {p0, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    iget-object v5, p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    .line 172
    .line 173
    iget-object v6, p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    .line 174
    .line 175
    iput v3, v7, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateCameraStateAsync$1;->label:I

    .line 176
    .line 177
    move-object v3, p0

    .line 178
    move-object v4, p2

    .line 179
    invoke-virtual/range {v1 .. v7}, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateAsync-Tp9XwKQ(Ljava/util/LinkedHashMap;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;Ljava/util/Set;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    if-ne p3, v0, :cond_5

    .line 184
    .line 185
    return-object v0

    .line 186
    :cond_5
    :goto_4
    move-object v2, p3

    .line 187
    check-cast v2, Lkotlinx/coroutines/Deferred;

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_6
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 191
    .line 192
    .line 193
    return-object v2

    .line 194
    :cond_7
    :goto_5
    if-nez v2, :cond_8

    .line 195
    .line 196
    sget-object p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->canceledResult:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 197
    .line 198
    return-object p0

    .line 199
    :cond_8
    return-object v2
.end method

.method public final updateRepeatingRequestAsync(Ljava/util/LinkedHashSet;Z)Lkotlinx/coroutines/Deferred;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->closed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p0, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$updateRepeatingRequestAsync$1$1;-><init>(Ljava/util/LinkedHashSet;ZLandroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->runOnSequential(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    if-nez v1, :cond_1

    .line 16
    .line 17
    sget-object p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->canceledResult:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    return-object v1
.end method

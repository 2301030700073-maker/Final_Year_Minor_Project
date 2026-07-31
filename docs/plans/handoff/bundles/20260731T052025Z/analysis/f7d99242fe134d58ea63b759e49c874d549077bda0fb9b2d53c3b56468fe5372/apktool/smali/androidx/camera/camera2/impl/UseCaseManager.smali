.class public final Landroidx/camera/camera2/impl/UseCaseManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public volatile _activeComponent:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

.field public activeResumeEnabled:Z

.field public final activeUseCases:Ljava/util/LinkedHashSet;

.field public final allControls:Ljava/util/Set;

.field public final attachedUseCases:Ljava/util/LinkedHashSet;

.field public final builder:Landroidx/cardview/widget/CardView$1;

.field public final cameraCoordinator:Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

.field public final cameraGraphConfigProvider:Landroidx/camera/camera2/impl/CameraGraphConfigProvider;

.field public final cameraInfoInternal:Ljavax/inject/Provider;

.field public final cameraInternal:Ljavax/inject/Provider;

.field public final cameraPipe:Landroidx/camera/camera2/pipe/CameraPipeImpl;

.field public final cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

.field public final cameraXConfig:Landroidx/camera/core/CameraXConfig;

.field public final closingCameraJobs:Ljava/util/ArrayList;

.field public final defaultCameraGraphFactory:Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

.field public final dynamicRangeResolver:Lcom/fsck/k9/mailstore/LocalFolder$12;

.field public isPrimary:Z

.field public final lock:Ljava/lang/Object;

.field public final lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

.field public final meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

.field public final pendingUseCasesToNotifyCameraControlReady:Ljava/util/LinkedHashSet;

.field public shouldCreateCameraGraphImmediately:Z

.field public final supportedSurfaceCombination:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;

.field public final zslControl:Landroidx/camera/camera2/adapter/ZslControl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraPipeImpl;Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;Landroidx/cardview/widget/CardView$1;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/impl/LowLightBoostControl;Ljava/util/Set;Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/camera/camera2/adapter/CameraStateAdapter;Lokhttp3/ConnectionPool;Ljavax/inject/Provider;Ljavax/inject/Provider;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/camera2/impl/CameraPipeCameraProperties;Landroidx/camera/core/CameraXConfig;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Landroid/content/Context;Landroidx/camera/camera2/impl/DisplayInfoManager;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraPipe:Landroidx/camera/camera2/pipe/CameraPipeImpl;

    .line 41
    .line 42
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraCoordinator:Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    .line 43
    .line 44
    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseManager;->builder:Landroidx/cardview/widget/CardView$1;

    .line 45
    .line 46
    iput-object p4, p0, Landroidx/camera/camera2/impl/UseCaseManager;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    .line 47
    .line 48
    iput-object p5, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

    .line 49
    .line 50
    iput-object p8, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 51
    .line 52
    iput-object p9, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraInternal:Ljavax/inject/Provider;

    .line 53
    .line 54
    iput-object p11, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraInfoInternal:Ljavax/inject/Provider;

    .line 55
    .line 56
    iput-object p14, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 57
    .line 58
    move-object p1, p15

    .line 59
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraGraphConfigProvider:Landroidx/camera/camera2/impl/CameraGraphConfigProvider;

    .line 60
    .line 61
    new-instance p1, Ljava/lang/Object;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    .line 67
    .line 68
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 74
    .line 75
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->activeUseCases:Ljava/util/LinkedHashSet;

    .line 81
    .line 82
    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->shouldCreateCameraGraphImmediately:Z

    .line 84
    .line 85
    iput-boolean p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->isPrimary:Z

    .line 86
    .line 87
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 88
    .line 89
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->pendingUseCasesToNotifyCameraControlReady:Ljava/util/LinkedHashSet;

    .line 93
    .line 94
    new-instance p1, Landroidx/camera/camera2/impl/MeteringRepeating;

    .line 95
    .line 96
    new-instance p2, Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;

    .line 97
    .line 98
    invoke-direct {p2}, Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;-><init>()V

    .line 99
    .line 100
    .line 101
    move-object/from16 p3, p17

    .line 102
    .line 103
    invoke-direct {p1, p13, p2, p3}, Landroidx/camera/camera2/impl/MeteringRepeating;-><init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;Landroidx/camera/camera2/impl/MeteringRepeating$MeteringRepeatingConfig;Landroidx/camera/camera2/impl/DisplayInfoManager;)V

    .line 104
    .line 105
    .line 106
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    .line 107
    .line 108
    new-instance p1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;

    .line 109
    .line 110
    iget-object p2, p13, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 111
    .line 112
    sget-object p3, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;->NO_OP_FEATURE_COMBINATION_QUERY:Landroidx/collection/internal/Lock;

    .line 113
    .line 114
    move-object/from16 p5, p16

    .line 115
    .line 116
    invoke-direct {p1, p5, p2, p12, p3}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;-><init>(Landroid/content/Context;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;)V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->supportedSurfaceCombination:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;

    .line 120
    .line 121
    new-instance p1, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 122
    .line 123
    invoke-direct {p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder$12;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;)V

    .line 124
    .line 125
    .line 126
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->dynamicRangeResolver:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 127
    .line 128
    new-instance p1, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 129
    .line 130
    const/4 p2, 0x2

    .line 131
    invoke-direct {p1, p2, p0}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->defaultCameraGraphFactory:Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 135
    .line 136
    new-instance p1, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->closingCameraJobs:Ljava/util/ArrayList;

    .line 142
    .line 143
    check-cast p6, Ljava/lang/Iterable;

    .line 144
    .line 145
    invoke-static {p6}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-interface {p1, p7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->allControls:Ljava/util/Set;

    .line 153
    .line 154
    return-void
.end method


# virtual methods
.method public final activate(Landroidx/camera/core/UseCase;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->activeUseCases:Ljava/util/LinkedHashSet;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->refreshRunningUseCases()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit v0

    .line 24
    throw p0
.end method

.method public final addOrRemoveRepeatingUseCase(Ljava/util/LinkedHashSet;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 4
    .line 5
    sget-object v1, Landroidx/camera/core/CameraXConfig;->OPTION_REPEATING_STREAM_FORCED:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 6
    .line 7
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    .line 26
    .line 27
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->isMeteringRepeatingRequired(Ljava/util/LinkedHashSet;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->addRepeatingUseCase()V

    .line 40
    .line 41
    .line 42
    return v1

    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    .line 44
    .line 45
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->isMeteringRepeatingRequired(Ljava/util/LinkedHashSet;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->activeUseCases:Ljava/util/LinkedHashSet;

    .line 66
    .line 67
    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->refreshRunningUseCases()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    :goto_1
    monitor-exit v0

    .line 80
    invoke-static {p1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->detach(Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraInternal:Ljavax/inject/Provider;

    .line 88
    .line 89
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Landroidx/camera/core/impl/CameraInternal;

    .line 94
    .line 95
    invoke-virtual {p1, p0}, Landroidx/camera/core/UseCase;->unbindFromCamera(Landroidx/camera/core/impl/CameraInternal;)V

    .line 96
    .line 97
    .line 98
    return v1

    .line 99
    :goto_2
    monitor-exit v0

    .line 100
    throw p0

    .line 101
    :cond_3
    const/4 p0, 0x0

    .line 102
    return p0
.end method

.method public final addRepeatingUseCase()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraInternal:Ljavax/inject/Provider;

    .line 2
    .line 3
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/camera/core/impl/CameraInternal;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v0, v2, v2, v2}, Landroidx/camera/core/UseCase;->bindToCamera(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Landroidx/camera/camera2/impl/MeteringRepeatingKt;->DEFAULT_PREVIEW_SIZE:Landroid/util/Size;

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/camera/core/impl/AutoValue_StreamSpec;->builder(Landroid/util/Size;)Landroidx/appcompat/widget/TooltipPopup;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroidx/appcompat/widget/TooltipPopup;->build()Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v1, v0, v2}, Landroidx/camera/core/UseCase;->updateSuggestedStreamSpec(Landroidx/camera/core/impl/AutoValue_StreamSpec;Landroidx/camera/core/impl/AutoValue_StreamSpec;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->attach(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/impl/UseCaseManager;->activate(Landroidx/camera/core/UseCase;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final attach(Ljava/util/List;)V
    .locals 6

    .line 1
    const-string v0, "Attaching "

    .line 2
    .line 3
    const-string v1, "Attach [] from "

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isWarnEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const-string p1, "CXCP"

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p0, " (Ignored)"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto/16 :goto_5

    .line 45
    .line 46
    :cond_0
    :goto_0
    monitor-exit v2

    .line 47
    return-void

    .line 48
    :cond_1
    :try_start_1
    const-string v1, "CXCP"

    .line 49
    .line 50
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    const-string v1, "CXCP"

    .line 57
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, " from "

    .line 67
    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_4

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    move-object v4, v3

    .line 101
    check-cast v4, Landroidx/camera/core/UseCase;

    .line 102
    .line 103
    iget-object v5, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 104
    .line 105
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-nez v4, :cond_3

    .line 110
    .line 111
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_5

    .line 124
    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    check-cast v3, Landroidx/camera/core/UseCase;

    .line 130
    .line 131
    invoke-virtual {v3}, Landroidx/camera/core/UseCase;->onSessionStart()V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_5
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 136
    .line 137
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_6

    .line 142
    .line 143
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 144
    .line 145
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->activeUseCases:Ljava/util/LinkedHashSet;

    .line 146
    .line 147
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->addOrRemoveRepeatingUseCase(Ljava/util/LinkedHashSet;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-nez p1, :cond_6

    .line 156
    .line 157
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->updateZslDisabledByUseCaseConfigStatus()V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

    .line 161
    .line 162
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 163
    .line 164
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {p1, v1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->onSessionConfigChanged(Ljava/util/List;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 172
    .line 173
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->refreshAttachedUseCases(Ljava/util/LinkedHashSet;)V

    .line 174
    .line 175
    .line 176
    :cond_6
    iget-boolean p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->shouldCreateCameraGraphImmediately:Z

    .line 177
    .line 178
    if-nez p1, :cond_7

    .line 179
    .line 180
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->pendingUseCasesToNotifyCameraControlReady:Ljava/util/LinkedHashSet;

    .line 181
    .line 182
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-eqz p1, :cond_8

    .line 195
    .line 196
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    check-cast p1, Landroidx/camera/core/UseCase;

    .line 201
    .line 202
    invoke-virtual {p1}, Landroidx/camera/core/UseCase;->onCameraControlReady()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_8
    :goto_4
    monitor-exit v2

    .line 207
    return-void

    .line 208
    :goto_5
    monitor-exit v2

    .line 209
    throw p0
.end method

.method public final close(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->closeCurrentUseCases()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/camera/camera2/impl/MeteringRepeating;->onUnbind()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->closingCameraJobs:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v0

    .line 19
    invoke-static {p0, p1}, Lkotlinx/coroutines/JobKt;->joinAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 24
    .line 25
    if-ne p0, p1, :cond_0

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0

    .line 33
    throw p0
.end method

.method public final closeCurrentUseCases()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getCamera()Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->_activeComponent:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraCoordinator:Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraInfoInternal:Ljavax/inject/Provider;

    .line 11
    .line 12
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Landroidx/camera/core/CameraInfo;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v4, v2, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v4

    .line 27
    :try_start_0
    iget-boolean v5, v2, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentModeOn:Z

    .line 28
    .line 29
    if-eqz v5, :cond_3

    .line 30
    .line 31
    iget-object v2, v2, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->pendingCameraIds:Ljava/util/ArrayList;

    .line 32
    .line 33
    const-class v5, Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 34
    .line 35
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-static {v3, v5}, Landroidx/sqlite/SQLite;->unwrapAs(Landroidx/camera/core/CameraInfo;Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 44
    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    check-cast v3, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 48
    .line 49
    iget-object v3, v3, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->camera:Ljava/lang/String;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move-object v3, v1

    .line 53
    :goto_0
    if-eqz v3, :cond_1

    .line 54
    .line 55
    new-instance v5, Landroidx/camera/camera2/pipe/CameraId;

    .line 56
    .line 57
    invoke-direct {v5, v3}, Landroidx/camera/camera2/pipe/CameraId;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move-object v5, v1

    .line 62
    :goto_1
    if-eqz v5, :cond_2

    .line 63
    .line 64
    iget-object v3, v5, Landroidx/camera/camera2/pipe/CameraId;->value:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_4

    .line 72
    :cond_2
    const-string p0, "Required value was null."

    .line 73
    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_3
    :goto_2
    monitor-exit v4

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    iget-object v2, v0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    .line 84
    .line 85
    invoke-virtual {v2}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    iget-object v2, v0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 92
    .line 93
    invoke-interface {v2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->close()V

    .line 94
    .line 95
    .line 96
    iget-object v2, v0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 97
    .line 98
    iget-object v2, v2, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 99
    .line 100
    new-instance v3, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 101
    .line 102
    invoke-direct {v3, v1, v0}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/UseCaseCameraImpl;)V

    .line 103
    .line 104
    .line 105
    const/4 v0, 0x3

    .line 106
    invoke-static {v2, v1, v1, v3, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    goto :goto_3

    .line 111
    :cond_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 112
    .line 113
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :goto_3
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->closingCameraJobs:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    new-instance v1, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;

    .line 123
    .line 124
    const/4 v2, 0x6

    .line 125
    invoke-direct {v1, v2, p0, v0}, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 129
    .line 130
    .line 131
    :cond_5
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getSessionProcessor$camera_camera2()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :goto_4
    monitor-exit v4

    .line 136
    throw p0
.end method

.method public final detach(Ljava/util/List;)V
    .locals 4

    .line 1
    const-string v0, "Detaching "

    .line 2
    .line 3
    const-string v1, "Detaching [] from "

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isWarnEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const-string p1, "CXCP"

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p0, " (Ignored)"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_0
    :goto_0
    monitor-exit v2

    .line 47
    return-void

    .line 48
    :cond_1
    :try_start_1
    const-string v1, "CXCP"

    .line 49
    .line 50
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    const-string v1, "CXCP"

    .line 57
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, " from "

    .line 67
    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->activeUseCases:Ljava/util/LinkedHashSet;

    .line 82
    .line 83
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 84
    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Landroidx/camera/core/UseCase;

    .line 101
    .line 102
    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 103
    .line 104
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_3

    .line 109
    .line 110
    invoke-virtual {v1}, Landroidx/camera/core/UseCase;->onSessionStop()V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 115
    .line 116
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 123
    .line 124
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->activeUseCases:Ljava/util/LinkedHashSet;

    .line 125
    .line 126
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->addOrRemoveRepeatingUseCase(Ljava/util/LinkedHashSet;)Z

    .line 131
    .line 132
    .line 133
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    monitor-exit v2

    .line 137
    return-void

    .line 138
    :cond_5
    :try_start_2
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_6

    .line 145
    .line 146
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    invoke-interface {v0, v1}, Landroidx/camera/camera2/adapter/ZslControl;->setZslDisabledByUserCaseConfig(Z)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

    .line 153
    .line 154
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->onSessionConfigChanged(Ljava/util/List;)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_6
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->updateZslDisabledByUseCaseConfigStatus()V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

    .line 164
    .line 165
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 166
    .line 167
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->onSessionConfigChanged(Ljava/util/List;)V

    .line 172
    .line 173
    .line 174
    :goto_2
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 175
    .line 176
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->refreshAttachedUseCases(Ljava/util/LinkedHashSet;)V

    .line 177
    .line 178
    .line 179
    :cond_7
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->pendingUseCasesToNotifyCameraControlReady:Ljava/util/LinkedHashSet;

    .line 180
    .line 181
    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    .line 183
    .line 184
    monitor-exit v2

    .line 185
    return-void

    .line 186
    :goto_3
    monitor-exit v2

    .line 187
    throw p0
.end method

.method public final getCamera()Landroidx/camera/camera2/impl/UseCaseCameraImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->_activeComponent:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;->useCaseCameraImplProvider:Ldagger/internal/Provider;

    .line 6
    .line 7
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public final getCameraMode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraCoordinator:Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->getCameraOperatingMode()I

    .line 7
    .line 8
    .line 9
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    const/4 v1, 0x2

    .line 11
    if-ne p0, v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0

    .line 21
    throw p0
.end method

.method public final getSessionProcessor$camera_camera2()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    monitor-exit p0

    .line 5
    return-void
.end method

.method public final isMeteringRepeatingRequired(Ljava/util/LinkedHashSet;)Z
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 6
    .line 7
    sget-object v2, Landroidx/camera/core/CameraXConfig;->OPTION_REPEATING_STREAM_FORCED:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 8
    .line 9
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_d

    .line 25
    .line 26
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    goto/16 :goto_d

    .line 33
    .line 34
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1d

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Landroidx/camera/core/UseCase;

    .line 49
    .line 50
    iget-object v4, v0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    .line 51
    .line 52
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-nez v5, :cond_2

    .line 57
    .line 58
    iget-object v3, v3, Landroidx/camera/core/UseCase;->mAttachedSessionConfig:Landroidx/camera/core/impl/SessionConfig;

    .line 59
    .line 60
    invoke-virtual {v3}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-nez v3, :cond_2

    .line 72
    .line 73
    new-instance v1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v3, v0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 79
    .line 80
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_4

    .line 89
    .line 90
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    move-object v6, v5

    .line 95
    check-cast v6, Landroidx/camera/core/UseCase;

    .line 96
    .line 97
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-nez v6, :cond_3

    .line 102
    .line 103
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_5

    .line 112
    .line 113
    goto/16 :goto_d

    .line 114
    .line 115
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_6

    .line 120
    .line 121
    goto/16 :goto_d

    .line 122
    .line 123
    :cond_6
    new-instance v3, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    .line 124
    .line 125
    invoke-direct {v3}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-eqz v6, :cond_7

    .line 137
    .line 138
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    check-cast v6, Landroidx/camera/core/UseCase;

    .line 143
    .line 144
    iget-object v6, v6, Landroidx/camera/core/UseCase;->mAttachedSessionConfig:Landroidx/camera/core/impl/SessionConfig;

    .line 145
    .line 146
    invoke-virtual {v3, v6}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->add(Landroidx/camera/core/impl/SessionConfig;)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_7
    invoke-virtual {v3}, Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    iget-object v5, v3, Landroidx/camera/core/impl/SessionConfig;->mRepeatingCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    .line 155
    .line 156
    iget-object v5, v5, Landroidx/camera/core/impl/CaptureConfig;->mSurfaces:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-static {v5}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    if-eqz v6, :cond_8

    .line 177
    .line 178
    goto/16 :goto_d

    .line 179
    .line 180
    :cond_8
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    const/4 v7, 0x1

    .line 185
    if-eqz v6, :cond_a

    .line 186
    .line 187
    :cond_9
    move v3, v7

    .line 188
    goto :goto_2

    .line 189
    :cond_a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-eqz v6, :cond_9

    .line 198
    .line 199
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    check-cast v6, Landroidx/camera/core/impl/DeferrableSurface;

    .line 204
    .line 205
    iget-object v6, v6, Landroidx/camera/core/impl/DeferrableSurface;->mContainerClass:Ljava/lang/Class;

    .line 206
    .line 207
    const-class v8, Landroid/media/MediaCodec;

    .line 208
    .line 209
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    if-nez v6, :cond_b

    .line 214
    .line 215
    move v3, v2

    .line 216
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-nez v3, :cond_c

    .line 221
    .line 222
    if-eqz v5, :cond_1d

    .line 223
    .line 224
    :cond_c
    invoke-virtual {v4}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    if-nez v3, :cond_d

    .line 229
    .line 230
    sget-object v3, Landroidx/camera/camera2/impl/MeteringRepeatingKt;->DEFAULT_PREVIEW_SIZE:Landroid/util/Size;

    .line 231
    .line 232
    invoke-static {v3}, Landroidx/camera/core/impl/AutoValue_StreamSpec;->builder(Landroid/util/Size;)Landroidx/appcompat/widget/TooltipPopup;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v3}, Landroidx/appcompat/widget/TooltipPopup;->build()Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    const/4 v5, 0x0

    .line 241
    invoke-virtual {v4, v3, v5}, Landroidx/camera/core/UseCase;->updateSuggestedStreamSpec(Landroidx/camera/core/impl/AutoValue_StreamSpec;Landroidx/camera/core/impl/AutoValue_StreamSpec;)V

    .line 242
    .line 243
    .line 244
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v6

    .line 257
    iget-object v8, v0, Landroidx/camera/camera2/impl/UseCaseManager;->supportedSurfaceCombination:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;

    .line 258
    .line 259
    const-string v9, "CXCP"

    .line 260
    .line 261
    if-eqz v6, :cond_13

    .line 262
    .line 263
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    check-cast v6, Landroidx/camera/core/UseCase;

    .line 268
    .line 269
    invoke-virtual {v6}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    .line 270
    .line 271
    .line 272
    move-result-object v13

    .line 273
    iget-object v10, v6, Landroidx/camera/core/UseCase;->mAttachedStreamSpec:Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 274
    .line 275
    if-eqz v13, :cond_11

    .line 276
    .line 277
    if-nez v10, :cond_e

    .line 278
    .line 279
    goto :goto_6

    .line 280
    :cond_e
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseManager;->getCameraMode()I

    .line 281
    .line 282
    .line 283
    move-result v9

    .line 284
    iget-object v11, v6, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 285
    .line 286
    invoke-interface {v11}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    .line 287
    .line 288
    .line 289
    move-result v11

    .line 290
    iget-object v12, v6, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 291
    .line 292
    invoke-interface {v12}, Landroidx/camera/core/impl/UseCaseConfig;->getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;

    .line 293
    .line 294
    .line 295
    move-result-object v12

    .line 296
    invoke-virtual {v8, v9, v11, v13, v12}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->transformSurfaceConfig(IILandroid/util/Size;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 297
    .line 298
    .line 299
    move-result-object v11

    .line 300
    iget-object v8, v6, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 301
    .line 302
    invoke-interface {v8}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    .line 303
    .line 304
    .line 305
    move-result v12

    .line 306
    iget-object v14, v10, Landroidx/camera/core/impl/AutoValue_StreamSpec;->dynamicRange:Landroidx/camera/core/DynamicRange;

    .line 307
    .line 308
    instance-of v8, v6, Landroidx/camera/core/streamsharing/StreamSharing;

    .line 309
    .line 310
    if-eqz v8, :cond_f

    .line 311
    .line 312
    move-object v8, v6

    .line 313
    check-cast v8, Landroidx/camera/core/streamsharing/StreamSharing;

    .line 314
    .line 315
    iget-object v8, v8, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 316
    .line 317
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    check-cast v8, Landroidx/camera/core/streamsharing/StreamSharingConfig;

    .line 321
    .line 322
    sget-object v9, Landroidx/camera/core/streamsharing/StreamSharingConfig;->OPTION_CAPTURE_TYPES:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 323
    .line 324
    invoke-static {v8, v9}, Landroidx/camera/core/impl/Config$-CC;->$default$retrieveOption(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/AutoValue_Config_Option;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    check-cast v8, Ljava/util/List;

    .line 329
    .line 330
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    :goto_4
    move-object v15, v8

    .line 334
    goto :goto_5

    .line 335
    :cond_f
    iget-object v8, v6, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 336
    .line 337
    invoke-interface {v8}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 338
    .line 339
    .line 340
    move-result-object v8

    .line 341
    invoke-static {v8}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 342
    .line 343
    .line 344
    move-result-object v8

    .line 345
    goto :goto_4

    .line 346
    :goto_5
    iget-object v8, v10, Landroidx/camera/core/impl/AutoValue_StreamSpec;->implementationOptions:Landroidx/camera/core/impl/Config;

    .line 347
    .line 348
    if-nez v8, :cond_10

    .line 349
    .line 350
    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 351
    .line 352
    .line 353
    move-result-object v8

    .line 354
    :cond_10
    move-object/from16 v16, v8

    .line 355
    .line 356
    iget v8, v10, Landroidx/camera/core/impl/AutoValue_StreamSpec;->sessionType:I

    .line 357
    .line 358
    iget-object v9, v10, Landroidx/camera/core/impl/AutoValue_StreamSpec;->expectedFrameRateRange:Landroid/util/Range;

    .line 359
    .line 360
    iget-object v10, v6, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 361
    .line 362
    invoke-interface {v10}, Landroidx/camera/core/impl/UseCaseConfig;->isStrictFrameRateRequired()Z

    .line 363
    .line 364
    .line 365
    move-result v19

    .line 366
    iget-object v6, v6, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 367
    .line 368
    invoke-interface {v6, v13}, Landroidx/camera/core/impl/UseCaseConfig;->getCustomMaxFrameRate(Landroid/util/Size;)I

    .line 369
    .line 370
    .line 371
    move-result v20

    .line 372
    new-instance v10, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;

    .line 373
    .line 374
    move/from16 v17, v8

    .line 375
    .line 376
    move-object/from16 v18, v9

    .line 377
    .line 378
    invoke-direct/range {v10 .. v20}, Landroidx/camera/core/impl/AutoValue_AttachedSurfaceInfo;-><init>(Landroidx/camera/core/impl/SurfaceConfig;ILandroid/util/Size;Landroidx/camera/core/DynamicRange;Ljava/util/List;Landroidx/camera/core/impl/Config;ILandroid/util/Range;ZI)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    goto/16 :goto_3

    .line 385
    .line 386
    :cond_11
    :goto_6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isWarnEnabled()Z

    .line 387
    .line 388
    .line 389
    move-result v5

    .line 390
    if-eqz v5, :cond_12

    .line 391
    .line 392
    const-string v5, "Invalid surface resolution or stream spec is found."

    .line 393
    .line 394
    invoke-static {v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .line 396
    .line 397
    :cond_12
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 398
    .line 399
    .line 400
    :cond_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    if-eqz v5, :cond_14

    .line 405
    .line 406
    move v0, v2

    .line 407
    goto/16 :goto_c

    .line 408
    .line 409
    :cond_14
    new-instance v5, Ljava/util/ArrayList;

    .line 410
    .line 411
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    :cond_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 419
    .line 420
    .line 421
    move-result v10

    .line 422
    if-eqz v10, :cond_16

    .line 423
    .line 424
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v10

    .line 428
    check-cast v10, Landroidx/camera/core/UseCase;

    .line 429
    .line 430
    iget-object v11, v10, Landroidx/camera/core/UseCase;->mAttachedSessionConfig:Landroidx/camera/core/impl/SessionConfig;

    .line 431
    .line 432
    invoke-virtual {v11}, Landroidx/camera/core/impl/SessionConfig;->getSurfaces()Ljava/util/List;

    .line 433
    .line 434
    .line 435
    move-result-object v11

    .line 436
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 440
    .line 441
    .line 442
    move-result-object v11

    .line 443
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 444
    .line 445
    .line 446
    move-result v12

    .line 447
    if-eqz v12, :cond_15

    .line 448
    .line 449
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v12

    .line 453
    check-cast v12, Landroidx/camera/core/impl/DeferrableSurface;

    .line 454
    .line 455
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseManager;->getCameraMode()I

    .line 456
    .line 457
    .line 458
    move-result v13

    .line 459
    iget-object v14, v10, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 460
    .line 461
    invoke-interface {v14}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    .line 462
    .line 463
    .line 464
    move-result v14

    .line 465
    iget-object v12, v12, Landroidx/camera/core/impl/DeferrableSurface;->mPrescribedSize:Landroid/util/Size;

    .line 466
    .line 467
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    iget-object v15, v10, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 471
    .line 472
    invoke-interface {v15}, Landroidx/camera/core/impl/UseCaseConfig;->getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;

    .line 473
    .line 474
    .line 475
    move-result-object v15

    .line 476
    invoke-virtual {v8, v13, v14, v12, v15}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->transformSurfaceConfig(IILandroid/util/Size;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 477
    .line 478
    .line 479
    move-result-object v12

    .line 480
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    goto :goto_7

    .line 484
    :cond_16
    new-instance v14, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;

    .line 485
    .line 486
    move-object v13, v14

    .line 487
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseManager;->getCameraMode()I

    .line 488
    .line 489
    .line 490
    move-result v14

    .line 491
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 492
    .line 493
    const/16 v10, 0x18

    .line 494
    .line 495
    if-lt v6, v10, :cond_18

    .line 496
    .line 497
    iget-object v6, v4, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 498
    .line 499
    invoke-static {v6}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 500
    .line 501
    .line 502
    move-result-object v6

    .line 503
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 504
    .line 505
    .line 506
    move-result-object v10

    .line 507
    invoke-static {v10}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 508
    .line 509
    .line 510
    move-result-object v10

    .line 511
    iget-object v11, v0, Landroidx/camera/camera2/impl/UseCaseManager;->dynamicRangeResolver:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 512
    .line 513
    invoke-virtual {v11, v3, v6, v10}, Lcom/fsck/k9/mailstore/LocalFolder$12;->resolveAndValidateDynamicRanges(Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;)Ljava/util/LinkedHashMap;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 518
    .line 519
    .line 520
    move-result-object v3

    .line 521
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 526
    .line 527
    .line 528
    move-result v6

    .line 529
    if-eqz v6, :cond_18

    .line 530
    .line 531
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v6

    .line 535
    check-cast v6, Ljava/util/Map$Entry;

    .line 536
    .line 537
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v6

    .line 541
    check-cast v6, Landroidx/camera/core/DynamicRange;

    .line 542
    .line 543
    iget v6, v6, Landroidx/camera/core/DynamicRange;->mBitDepth:I

    .line 544
    .line 545
    const/16 v10, 0xa

    .line 546
    .line 547
    if-ne v6, v10, :cond_17

    .line 548
    .line 549
    :goto_8
    move v15, v10

    .line 550
    goto :goto_9

    .line 551
    :cond_18
    const/16 v10, 0x8

    .line 552
    .line 553
    goto :goto_8

    .line 554
    :goto_9
    invoke-static {v1}, Landroidx/sqlite/SQLite;->containsVideoCapture(Ljava/util/ArrayList;)Z

    .line 555
    .line 556
    .line 557
    move-result v16

    .line 558
    new-instance v3, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;

    .line 559
    .line 560
    const/4 v6, 0x7

    .line 561
    invoke-direct {v3, v6}, Landroidx/compose/foundation/BorderKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 562
    .line 563
    .line 564
    invoke-static {v1, v3}, Landroidx/sqlite/SQLite;->getVideoStabilization(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;)Landroidx/camera/core/impl/stabilization/VideoStabilization;

    .line 565
    .line 566
    .line 567
    move-result-object v17

    .line 568
    new-instance v3, Ljava/util/ArrayList;

    .line 569
    .line 570
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    :cond_19
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 578
    .line 579
    .line 580
    move-result v6

    .line 581
    if-eqz v6, :cond_1a

    .line 582
    .line 583
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v6

    .line 587
    instance-of v10, v6, Landroidx/camera/core/ImageCapture;

    .line 588
    .line 589
    if-eqz v10, :cond_19

    .line 590
    .line 591
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    goto :goto_a

    .line 595
    :cond_1a
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    check-cast v1, Landroidx/camera/core/ImageCapture;

    .line 600
    .line 601
    if-eqz v1, :cond_1b

    .line 602
    .line 603
    iget-object v1, v1, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 604
    .line 605
    if-eqz v1, :cond_1b

    .line 606
    .line 607
    invoke-interface {v1}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    .line 608
    .line 609
    .line 610
    move-result v1

    .line 611
    const/16 v3, 0x1005

    .line 612
    .line 613
    if-ne v1, v3, :cond_1b

    .line 614
    .line 615
    move/from16 v18, v7

    .line 616
    .line 617
    goto :goto_b

    .line 618
    :cond_1b
    move/from16 v18, v2

    .line 619
    .line 620
    :goto_b
    sget-object v22, Landroidx/camera/core/impl/AutoValue_StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 621
    .line 622
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 623
    .line 624
    .line 625
    const/16 v23, 0x0

    .line 626
    .line 627
    const/16 v19, 0x0

    .line 628
    .line 629
    const/16 v20, 0x0

    .line 630
    .line 631
    const/16 v21, 0x0

    .line 632
    .line 633
    invoke-direct/range {v13 .. v23}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;-><init>(IIZLandroidx/camera/core/impl/stabilization/VideoStabilization;ZZZZLandroid/util/Range;Z)V

    .line 634
    .line 635
    .line 636
    new-instance v15, Ljava/util/ArrayList;

    .line 637
    .line 638
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 642
    .line 643
    .line 644
    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseManager;->getCameraMode()I

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    iget-object v3, v4, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 649
    .line 650
    invoke-interface {v3}, Landroidx/camera/core/impl/ImageInputConfig;->getInputFormat()I

    .line 651
    .line 652
    .line 653
    move-result v3

    .line 654
    invoke-virtual {v4}, Landroidx/camera/core/UseCase;->getAttachedSurfaceResolution()Landroid/util/Size;

    .line 655
    .line 656
    .line 657
    move-result-object v6

    .line 658
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 659
    .line 660
    .line 661
    iget-object v10, v4, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 662
    .line 663
    invoke-interface {v10}, Landroidx/camera/core/impl/UseCaseConfig;->getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;

    .line 664
    .line 665
    .line 666
    move-result-object v10

    .line 667
    invoke-virtual {v8, v1, v3, v6, v10}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->transformSurfaceConfig(IILandroid/util/Size;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    sget-object v17, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 675
    .line 676
    sget-object v16, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 677
    .line 678
    move-object v14, v13

    .line 679
    iget-object v13, v0, Landroidx/camera/camera2/impl/UseCaseManager;->supportedSurfaceCombination:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;

    .line 680
    .line 681
    move-object/from16 v18, v17

    .line 682
    .line 683
    invoke-virtual/range {v13 .. v18}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;->checkSupported(Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$FeatureSettings;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)Z

    .line 684
    .line 685
    .line 686
    move-result v0

    .line 687
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 688
    .line 689
    .line 690
    move-result v1

    .line 691
    if-eqz v1, :cond_1c

    .line 692
    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    .line 694
    .line 695
    const-string v3, "Combination of "

    .line 696
    .line 697
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    const-string v3, " + "

    .line 704
    .line 705
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    const-string v3, " is supported: "

    .line 712
    .line 713
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .line 725
    .line 726
    :cond_1c
    :goto_c
    if-eqz v0, :cond_1d

    .line 727
    .line 728
    return v7

    .line 729
    :cond_1d
    :goto_d
    return v2
.end method

.method public final refreshAttachedUseCases(Ljava/util/LinkedHashSet;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->closeCurrentUseCases()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->allControls:Ljava/util/Set;

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroidx/camera/camera2/impl/UseCaseCameraControl;

    .line 32
    .line 33
    invoke-interface {p1, v1}, Landroidx/camera/camera2/impl/UseCaseCameraControl;->setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Landroidx/camera/camera2/impl/UseCaseCameraControl;->reset()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void

    .line 41
    :cond_1
    iget-boolean v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->shouldCreateCameraGraphImmediately:Z

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->allControls:Ljava/util/Set;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Landroidx/camera/camera2/impl/UseCaseCameraControl;

    .line 62
    .line 63
    invoke-interface {v2, v1}, Landroidx/camera/camera2/impl/UseCaseCameraControl;->setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    new-instance v0, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    .line 68
    .line 69
    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 70
    .line 71
    invoke-direct {v0, v2}, Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;-><init>(Landroidx/camera/camera2/adapter/CameraStateAdapter;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getSessionProcessor$camera_camera2()V

    .line 75
    .line 76
    .line 77
    new-instance v2, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    .line 78
    .line 79
    iget-boolean v3, p0, Landroidx/camera/camera2/impl/UseCaseManager;->isPrimary:Z

    .line 80
    .line 81
    invoke-direct {v2, p1, v3}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;-><init>(Ljava/util/Collection;Z)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraGraphConfigProvider:Landroidx/camera/camera2/impl/CameraGraphConfigProvider;

    .line 85
    .line 86
    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseManager;->defaultCameraGraphFactory:Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getSessionProcessor$camera_camera2()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    new-instance v4, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    const/4 v5, 0x1

    .line 100
    invoke-direct {v4, v2, p1, v0, v5}, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 101
    .line 102
    .line 103
    new-instance p1, Lkotlin/SynchronizedLazyImpl;

    .line 104
    .line 105
    invoke-direct {p1, v4}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 106
    .line 107
    .line 108
    new-instance v4, Landroidx/camera/camera2/config/UseCaseCameraConfig;

    .line 109
    .line 110
    invoke-direct {v4, v3, v0, v2, p1}, Landroidx/camera/camera2/config/UseCaseCameraConfig;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Lkotlin/Lazy;)V

    .line 111
    .line 112
    .line 113
    iget-boolean p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->shouldCreateCameraGraphImmediately:Z

    .line 114
    .line 115
    if-nez p1, :cond_7

    .line 116
    .line 117
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraCoordinator:Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    .line 118
    .line 119
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraInfoInternal:Ljavax/inject/Provider;

    .line 120
    .line 121
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    check-cast p0, Landroidx/camera/core/CameraInfo;

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    iget-object v0, p1, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    .line 134
    .line 135
    monitor-enter v0

    .line 136
    :try_start_0
    iget-boolean v2, p1, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentModeOn:Z

    .line 137
    .line 138
    if-eqz v2, :cond_6

    .line 139
    .line 140
    iget-object v2, p1, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->pendingCameraIds:Ljava/util/ArrayList;

    .line 141
    .line 142
    const-class v3, Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 143
    .line 144
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-static {p0, v3}, Landroidx/sqlite/SQLite;->unwrapAs(Landroidx/camera/core/CameraInfo;Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    check-cast p0, Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 153
    .line 154
    if-eqz p0, :cond_3

    .line 155
    .line 156
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 157
    .line 158
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->camera:Ljava/lang/String;

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_3
    move-object p0, v1

    .line 162
    :goto_2
    if-eqz p0, :cond_4

    .line 163
    .line 164
    new-instance v1, Landroidx/camera/camera2/pipe/CameraId;

    .line 165
    .line 166
    invoke-direct {v1, p0}, Landroidx/camera/camera2/pipe/CameraId;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_4
    if-eqz v1, :cond_5

    .line 170
    .line 171
    iget-object p0, v1, Landroidx/camera/camera2/pipe/CameraId;->value:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->tryStartConcurrentGraph()V

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :catchall_0
    move-exception p0

    .line 181
    goto :goto_4

    .line 182
    :cond_5
    const-string p0, "Required value was null."

    .line 183
    .line 184
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 185
    .line 186
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_6
    :goto_3
    monitor-exit v0

    .line 191
    return-void

    .line 192
    :goto_4
    monitor-exit v0

    .line 193
    throw p0

    .line 194
    :cond_7
    const-string p1, "CXCP"

    .line 195
    .line 196
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->builder:Landroidx/cardview/widget/CardView$1;

    .line 197
    .line 198
    new-instance v2, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    .line 199
    .line 200
    iget-object v3, v0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    .line 203
    .line 204
    iget-object v0, v0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v0, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    .line 207
    .line 208
    invoke-direct {v2, v3, v0, v4}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;-><init>(Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;Landroidx/camera/camera2/config/UseCaseCameraConfig;)V

    .line 209
    .line 210
    .line 211
    iput-object v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->_activeComponent:Landroidx/camera/camera2/config/DaggerCameraAppComponent$UseCaseCameraComponentImpl;

    .line 212
    .line 213
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getCamera()Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    if-eqz v0, :cond_b

    .line 218
    .line 219
    iget-object v2, v0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 220
    .line 221
    iget-object v2, v2, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 222
    .line 223
    new-instance v3, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 224
    .line 225
    const/4 v4, 0x3

    .line 226
    invoke-direct {v3, v1, v0, v4}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Object;I)V

    .line 227
    .line 228
    .line 229
    invoke-static {v2, v1, v1, v3, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 230
    .line 231
    .line 232
    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->allControls:Ljava/util/Set;

    .line 233
    .line 234
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-eqz v3, :cond_8

    .line 243
    .line 244
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    check-cast v3, Landroidx/camera/camera2/impl/UseCaseCameraControl;

    .line 249
    .line 250
    iget-object v5, v0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 251
    .line 252
    invoke-interface {v3, v5}, Landroidx/camera/camera2/impl/UseCaseCameraControl;->setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_8
    iget-boolean v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->activeResumeEnabled:Z

    .line 257
    .line 258
    iget-object v3, v0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 259
    .line 260
    iget-object v3, v3, Landroidx/camera/camera2/impl/UseCaseThreads;->sequentialScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 261
    .line 262
    new-instance v5, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;

    .line 263
    .line 264
    invoke-direct {v5, v1, v0, v2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;-><init>(Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/UseCaseCameraImpl;Z)V

    .line 265
    .line 266
    .line 267
    invoke-static {v3, v1, v1, v5, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 268
    .line 269
    .line 270
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 271
    .line 272
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->activeUseCases:Ljava/util/LinkedHashSet;

    .line 273
    .line 274
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->updateRunningUseCases(Ljava/util/LinkedHashSet;)V

    .line 279
    .line 280
    .line 281
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_9

    .line 286
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    const-string v1, "Notifying "

    .line 290
    .line 291
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->pendingUseCasesToNotifyCameraControlReady:Ljava/util/LinkedHashSet;

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    const-string v1, " camera control ready"

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    :cond_9
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->pendingUseCasesToNotifyCameraControlReady:Ljava/util/LinkedHashSet;

    .line 312
    .line 313
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_a

    .line 322
    .line 323
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Landroidx/camera/core/UseCase;

    .line 328
    .line 329
    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->onCameraControlReady()V

    .line 330
    .line 331
    .line 332
    goto :goto_6

    .line 333
    :cond_a
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->pendingUseCasesToNotifyCameraControlReady:Ljava/util/LinkedHashSet;

    .line 334
    .line 335
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 336
    .line 337
    .line 338
    return-void

    .line 339
    :cond_b
    const-string p0, "Required value was null."

    .line 340
    .line 341
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    return-void
.end method

.method public final refreshRunningUseCases()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->activeUseCases:Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 19
    .line 20
    iget-object v1, v1, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 21
    .line 22
    sget-object v2, Landroidx/camera/core/CameraXConfig;->OPTION_REPEATING_STREAM_FORCED:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 23
    .line 24
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 40
    .line 41
    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    .line 42
    .line 43
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->isMeteringRepeatingRequired(Ljava/util/LinkedHashSet;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->addRepeatingUseCase()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    .line 60
    .line 61
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->isMeteringRepeatingRequired(Ljava/util/LinkedHashSet;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_4

    .line 72
    .line 73
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->meteringRepeating:Landroidx/camera/camera2/impl/MeteringRepeating;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->lock:Ljava/lang/Object;

    .line 79
    .line 80
    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseManager;->activeUseCases:Ljava/util/LinkedHashSet;

    .line 82
    .line 83
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->refreshRunningUseCases()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    :goto_1
    monitor-exit v1

    .line 96
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/impl/UseCaseManager;->detach(Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraInternal:Ljavax/inject/Provider;

    .line 104
    .line 105
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    check-cast p0, Landroidx/camera/core/impl/CameraInternal;

    .line 110
    .line 111
    invoke-virtual {v0, p0}, Landroidx/camera/core/UseCase;->unbindFromCamera(Landroidx/camera/core/impl/CameraInternal;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :goto_2
    monitor-exit v1

    .line 116
    throw p0

    .line 117
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->updateRunningUseCases(Ljava/util/LinkedHashSet;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "UseCaseManager<"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->cameraGraphConfigProvider:Landroidx/camera/camera2/impl/CameraGraphConfigProvider;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x3e

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final updateRunningUseCases(Ljava/util/LinkedHashSet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/UseCaseManager;->getCamera()Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->isPrimary:Z

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    .line 10
    .line 11
    invoke-interface {v0, p1, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;->updateRepeatingRequestAsync(Ljava/util/LinkedHashSet;Z)Lkotlinx/coroutines/Deferred;

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->allControls:Ljava/util/Set;

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroidx/camera/camera2/impl/UseCaseCameraControl;

    .line 31
    .line 32
    instance-of v1, v0, Landroidx/camera/camera2/impl/UseCaseManager$RunningUseCasesChangeListener;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    check-cast v0, Landroidx/camera/camera2/impl/UseCaseManager$RunningUseCasesChangeListener;

    .line 37
    .line 38
    invoke-interface {v0, p1}, Landroidx/camera/camera2/impl/UseCaseManager$RunningUseCasesChangeListener;->onRunningUseCasesChanged(Ljava/util/LinkedHashSet;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method public final updateZslDisabledByUseCaseConfigStatus()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseManager;->attachedUseCases:Ljava/util/LinkedHashSet;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroidx/camera/core/UseCase;

    .line 28
    .line 29
    iget-object v2, v2, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 30
    .line 31
    invoke-interface {v2}, Landroidx/camera/core/impl/UseCaseConfig;->isZslDisabled()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseManager;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    .line 39
    .line 40
    invoke-interface {p0, v0}, Landroidx/camera/camera2/adapter/ZslControl;->setZslDisabledByUserCaseConfig(Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

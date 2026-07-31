.class public final Landroidx/camera/camera2/impl/CameraGraphConfigProvider;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final callbackMap:Landroidx/camera/camera2/impl/CameraCallbackMap;

.field public final cameraConfig:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public final cameraInteropStateCallbackRepository:Landroidx/cardview/widget/CardView$1;

.field public final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field public final cameraQuirks:Landroidx/camera/camera2/compat/quirk/CameraQuirks;

.field public final cameraXConfig:Landroidx/camera/core/CameraXConfig;

.field public final closeCameraOnCameraGraphClose:Landroidx/biometric/BiometricPrompt;

.field public final requestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

.field public final supportedDynamicRangeProfiles:Landroid/hardware/camera2/params/DynamicRangeProfiles;

.field public final templateParamsOverride:Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

.field public final zslControl:Landroidx/camera/camera2/adapter/ZslControl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/impl/ComboRequestListener;Lcom/fsck/k9/mailstore/LocalStore$8;Landroidx/camera/camera2/compat/quirk/CameraQuirks;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/core/CameraXConfig;Landroidx/cardview/widget/CardView$1;)V
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
    iput-object p1, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->callbackMap:Landroidx/camera/camera2/impl/CameraCallbackMap;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->requestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    .line 22
    .line 23
    iput-object p3, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->cameraConfig:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 24
    .line 25
    iput-object p4, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->cameraQuirks:Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    .line 26
    .line 27
    iput-object p5, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    .line 28
    .line 29
    iput-object p6, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->templateParamsOverride:Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    .line 30
    .line 31
    iput-object p7, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 32
    .line 33
    iput-object p8, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    .line 34
    .line 35
    iput-object p9, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->cameraInteropStateCallbackRepository:Landroidx/cardview/widget/CardView$1;

    .line 36
    .line 37
    new-instance p1, Landroidx/biometric/BiometricPrompt;

    .line 38
    .line 39
    const/16 p2, 0xd

    .line 40
    .line 41
    invoke-direct {p1, p2}, Landroidx/biometric/BiometricPrompt;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->closeCameraOnCameraGraphClose:Landroidx/biometric/BiometricPrompt;

    .line 45
    .line 46
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    const/16 p3, 0x21

    .line 50
    .line 51
    if-lt p1, p3, :cond_1

    .line 52
    .line 53
    if-eqz p7, :cond_1

    .line 54
    .line 55
    invoke-static {p7}, Landroidx/compose/ui/window/Api33Impl;->fromCameraMetaData(Landroidx/camera/camera2/pipe/CameraMetadata;)Landroidx/biometric/BiometricPrompt;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    if-eqz p4, :cond_1

    .line 60
    .line 61
    if-lt p1, p3, :cond_0

    .line 62
    .line 63
    iget-object p1, p4, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;

    .line 66
    .line 67
    invoke-interface {p1}, Landroidx/camera/camera2/compat/DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;->unwrap()Landroid/hardware/camera2/params/DynamicRangeProfiles;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const-string p0, "DynamicRangesCompat can only be converted to DynamicRangeProfiles on API 33 or higher. is not supported on API "

    .line 73
    .line 74
    const-string p3, " (requires API 33)"

    .line 75
    .line 76
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    throw p2

    .line 84
    :cond_1
    :goto_0
    iput-object p2, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->supportedDynamicRangeProfiles:Landroid/hardware/camera2/params/DynamicRangeProfiles;

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final create-79VDu0o(ILandroidx/camera/core/impl/SessionConfig;ZLandroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;
    .locals 35

    move-object/from16 v0, p0

    move/from16 v8, p1

    move-object/from16 v1, p2

    sget-object v2, Landroidx/camera/camera2/pipe/MetadataTransform$1;->SURFACE:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    const/4 v3, 0x0

    .line 1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x2

    if-ne v8, v6, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v3

    .line 3
    :goto_0
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v11, v7

    .line 5
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    const-string v12, "CXCP"

    if-eqz v1, :cond_1a

    iget-object v15, v1, Landroidx/camera/core/impl/SessionConfig;->mRepeatingCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    move/from16 v16, v3

    .line 8
    iget-object v3, v0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->cameraInteropStateCallbackRepository:Landroidx/cardview/widget/CardView$1;

    if-eqz v3, :cond_1

    .line 9
    iget-object v5, v3, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast v5, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object v5, v5, Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;->callbacks:Lkotlinx/atomicfu/AtomicRef;

    .line 11
    iget-object v14, v1, Landroidx/camera/core/impl/SessionConfig;->mDeviceStateCallbacks:Ljava/util/List;

    .line 12
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v14

    .line 13
    iput-object v14, v5, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 14
    iget-object v3, v3, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    check-cast v3, Landroidx/cardview/widget/CardView$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget-object v3, v3, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/atomicfu/AtomicRef;

    .line 16
    iget-object v5, v1, Landroidx/camera/core/impl/SessionConfig;->mSessionStateCallbacks:Ljava/util/List;

    .line 17
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    .line 18
    iput-object v5, v3, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 19
    :cond_1
    iget v3, v15, Landroidx/camera/core/impl/CaptureConfig;->mTemplateType:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    .line 20
    :goto_1
    iget-object v14, v0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->templateParamsOverride:Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    .line 21
    new-instance v5, Landroidx/camera/camera2/pipe/RequestTemplate;

    invoke-direct {v5, v3}, Landroidx/camera/camera2/pipe/RequestTemplate;-><init>(I)V

    .line 22
    invoke-interface {v14, v5}, Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;->getOverrideParams-xlOpshk(Landroidx/camera/camera2/pipe/RequestTemplate;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 23
    iget-object v5, v15, Landroidx/camera/core/impl/CaptureConfig;->mImplementationOptions:Landroidx/camera/core/impl/OptionsBundle;

    .line 24
    invoke-static {v5}, Landroidx/work/Data$Companion;->toParameters(Landroidx/camera/core/impl/Config;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-ne v8, v6, :cond_3

    .line 25
    sget-object v5, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->camera2ExtensionMode:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 26
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v14, p5

    invoke-interface {v7, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_3
    new-instance v5, Landroidx/camera/camera2/impl/Camera2ImplConfig;

    .line 28
    iget-object v14, v1, Landroidx/camera/core/impl/SessionConfig;->mRepeatingCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    .line 29
    iget-object v14, v14, Landroidx/camera/core/impl/CaptureConfig;->mImplementationOptions:Landroidx/camera/core/impl/OptionsBundle;

    .line 30
    invoke-direct {v5, v14}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/camera/core/impl/Config;)V

    .line 31
    sget-object v5, Landroidx/camera/camera2/impl/Camera2ImplConfig;->SESSION_PHYSICAL_CAMERA_ID_OPTION:Landroidx/camera/core/impl/AutoValue_Config_Option;

    const/4 v15, 0x0

    invoke-interface {v14, v5, v15}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 32
    iget-object v14, v1, Landroidx/camera/core/impl/SessionConfig;->mOutputConfigs:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v15, 0x0

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_18

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v6, v18

    check-cast v6, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;

    move-object/from16 v18, v2

    .line 34
    iget-object v2, v6, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;->surface:Landroidx/camera/core/impl/DeferrableSurface;

    move/from16 v19, v3

    iget v3, v6, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;->surfaceGroupId:I

    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p5, v5

    if-nez v5, :cond_4

    const/16 v20, 0x0

    goto :goto_3

    :cond_4
    move-object/from16 v20, p5

    .line 36
    :goto_3
    iget-object v5, v6, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;->dynamicRange:Landroidx/camera/core/DynamicRange;

    .line 37
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    iget v8, v6, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;->mirrorMode:I

    move/from16 v21, v11

    .line 39
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v22, v14

    const/16 v14, 0x21

    if-lt v11, v14, :cond_7

    .line 40
    new-instance v14, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    const-wide/16 v9, 0x1

    invoke-direct {v14, v9, v10}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;-><init>(J)V

    .line 41
    iget-object v9, v0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->supportedDynamicRangeProfiles:Landroid/hardware/camera2/params/DynamicRangeProfiles;

    if-eqz v9, :cond_6

    .line 42
    invoke-static {v5, v9}, Landroidx/camera/camera2/internal/DynamicRangeConversions;->dynamicRangeToFirstSupportedProfile(Landroidx/camera/core/DynamicRange;Landroid/hardware/camera2/params/DynamicRangeProfiles;)Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 43
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 44
    new-instance v5, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    invoke-direct {v5, v9, v10}, Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;-><init>(J)V

    move-object/from16 v30, v5

    goto :goto_4

    .line 45
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isErrorEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 46
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Requested dynamic range is not supported. Defaulting to STANDARD dynamic range profile.\nRequested dynamic range:\n "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-static {v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v30, v14

    goto :goto_4

    :cond_7
    move-object/from16 v24, v9

    move-object/from16 v25, v10

    const/16 v30, 0x0

    .line 48
    :goto_4
    iget-object v5, v2, Landroidx/camera/core/impl/DeferrableSurface;->mPrescribedSize:Landroid/util/Size;

    .line 49
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    iget v9, v2, Landroidx/camera/core/impl/DeferrableSurface;->mPrescribedStreamFormat:I

    if-nez v20, :cond_8

    const/16 v34, 0x0

    goto :goto_5

    .line 51
    :cond_8
    invoke-static/range {v20 .. v20}, Landroidx/camera/camera2/pipe/CameraId;->constructor-impl(Ljava/lang/String;)V

    move-object/from16 v34, v20

    :goto_5
    if-eqz v8, :cond_a

    const/4 v10, 0x1

    if-eq v8, v10, :cond_9

    const/16 v31, 0x0

    goto :goto_7

    .line 52
    :cond_9
    new-instance v8, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    const/4 v14, 0x2

    invoke-direct {v8, v14}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;-><init>(I)V

    :goto_6
    move-object/from16 v31, v8

    goto :goto_7

    :cond_a
    const/4 v10, 0x1

    .line 53
    new-instance v8, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    invoke-direct {v8, v10}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;-><init>(I)V

    goto :goto_6

    :goto_7
    if-eqz p3, :cond_d

    .line 54
    iget-object v8, v6, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;->surface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 55
    iget-object v8, v8, Landroidx/camera/core/impl/DeferrableSurface;->mContainerClass:Ljava/lang/Class;

    .line 56
    const-class v10, Landroid/media/MediaCodec;

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    sget-object v8, Landroidx/camera/camera2/pipe/MetadataTransform$1;->MEDIA_CODEC:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    :goto_8
    move-object/from16 v29, v8

    goto :goto_9

    .line 57
    :cond_b
    const-class v10, Landroid/view/SurfaceHolder;

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    sget-object v8, Landroidx/camera/camera2/pipe/MetadataTransform$1;->SURFACE_VIEW:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    goto :goto_8

    .line 58
    :cond_c
    const-class v10, Landroid/graphics/SurfaceTexture;

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    sget-object v8, Landroidx/camera/camera2/pipe/MetadataTransform$1;->SURFACE_TEXTURE:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    goto :goto_8

    :cond_d
    move-object/from16 v29, v18

    :goto_9
    if-nez v21, :cond_11

    .line 59
    iget-object v8, v0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    move-object/from16 v10, p6

    .line 60
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    move-object/from16 v20, v8

    move/from16 v26, v9

    if-eqz v14, :cond_e

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 61
    new-instance v14, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;

    invoke-direct {v14, v8, v9}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;-><init>(J)V

    :goto_a
    const/16 v8, 0x21

    goto :goto_b

    :cond_e
    const/4 v14, 0x0

    goto :goto_a

    :goto_b
    if-lt v11, v8, :cond_f

    if-eqz v14, :cond_f

    if-eqz v20, :cond_f

    .line 62
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_USE_CASES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v9, v20

    check-cast v9, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    invoke-virtual {v9, v8}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    if-eqz v8, :cond_f

    .line 63
    iget-wide v9, v14, Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;->value:J

    .line 64
    invoke-static {v8, v9, v10}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([JJ)Z

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_f

    goto :goto_c

    .line 65
    :cond_f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 66
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Expected stream use case for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    const-string v9, " cannot be set!"

    .line 68
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 69
    invoke-static {v12, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v14, 0x0

    :goto_c
    move-object/from16 v32, v14

    goto :goto_d

    :cond_11
    move/from16 v26, v9

    const/16 v32, 0x0

    :goto_d
    if-nez v21, :cond_13

    move-object/from16 v8, p7

    .line 70
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_12

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 71
    new-instance v11, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;

    invoke-direct {v11, v9, v10}, Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;-><init>(J)V

    goto :goto_e

    :cond_12
    const/4 v11, 0x0

    :goto_e
    move-object/from16 v33, v11

    goto :goto_f

    :cond_13
    move-object/from16 v8, p7

    const/16 v33, 0x0

    :goto_f
    const/16 v27, 0x220

    move-object/from16 v28, v5

    .line 72
    invoke-static/range {v26 .. v34}, Landroidx/camera/camera2/pipe/MetadataTransform$1;->create-vBYXiEU$default(IILandroid/util/Size;Landroidx/camera/camera2/pipe/MetadataTransform$1;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/lang/String;)Landroidx/camera/camera2/pipe/OutputStream$Config;

    move-result-object v5

    .line 73
    iget-object v6, v6, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;->sharedSurfaces:Ljava/util/List;

    .line 74
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    .line 75
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/core/impl/DeferrableSurface;

    .line 76
    new-instance v10, Landroidx/camera/camera2/pipe/CameraStream$Config;

    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Landroidx/camera/camera2/pipe/CameraStream$Config;-><init>(Ljava/util/List;)V

    .line 77
    invoke-interface {v13, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, -0x1

    if-eq v3, v11, :cond_15

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v11, v24

    invoke-virtual {v11, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    if-nez v14, :cond_14

    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v20, v3

    move-object/from16 v23, v5

    const/4 v3, 0x1

    new-array v5, v3, [Landroidx/camera/camera2/pipe/CameraStream$Config;

    aput-object v10, v5, v16

    invoke-static {v5}, Landroidx/compose/ui/unit/IntOffsetKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v11, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_14
    move/from16 v20, v3

    move-object/from16 v23, v5

    .line 80
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_15
    move/from16 v20, v3

    move-object/from16 v23, v5

    move-object/from16 v11, v24

    .line 81
    :goto_11
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 82
    iget-object v3, v0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v9, v1}, Landroidx/camera/camera2/adapter/ZslControl;->isZslSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/impl/SessionConfig;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object v15, v10

    :cond_16
    move-object/from16 v24, v11

    move/from16 v3, v20

    move-object/from16 v5, v23

    goto :goto_10

    :cond_17
    move/from16 v8, p1

    move-object/from16 v5, p5

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v11, v21

    move-object/from16 v14, v22

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_18
    move/from16 v19, v3

    move-object/from16 v25, v10

    move/from16 v21, v11

    move-object v11, v9

    .line 83
    iget-object v2, v1, Landroidx/camera/core/impl/SessionConfig;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    if-eqz v2, :cond_19

    if-eqz v15, :cond_19

    .line 84
    new-instance v2, Landroidx/camera/camera2/pipe/InputStream$Config;

    .line 85
    iget-object v3, v15, Landroidx/camera/camera2/pipe/CameraStream$Config;->outputs:Ljava/util/List;

    .line 86
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/OutputStream$Config;

    .line 87
    iget v3, v3, Landroidx/camera/camera2/pipe/OutputStream$Config;->format:I

    .line 88
    invoke-direct {v2, v15, v3}, Landroidx/camera/camera2/pipe/InputStream$Config;-><init>(Landroidx/camera/camera2/pipe/CameraStream$Config;I)V

    move-object/from16 v3, v25

    .line 89
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_19
    move-object/from16 v3, v25

    :goto_12
    move/from16 v6, v19

    goto :goto_13

    :cond_1a
    move/from16 v16, v3

    move-object v3, v10

    move/from16 v21, v11

    move-object v11, v9

    const/4 v6, 0x1

    .line 90
    :goto_13
    iget-object v2, v0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->cameraQuirks:Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    .line 91
    invoke-virtual {v2}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    move-result-object v5

    const-class v8, Landroidx/camera/camera2/compat/quirk/CaptureSessionStuckQuirk;

    invoke-virtual {v5, v8}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 92
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 93
    const-string v5, "CameraPipe should be enabling CaptureSessionStuckQuirk by default"

    .line 94
    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1b
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "cph"

    move/from16 v9, v16

    .line 96
    invoke-static {v5, v8, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v25

    .line 97
    iget-object v5, v0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->closeCameraOnCameraGraphClose:Landroidx/biometric/BiometricPrompt;

    .line 98
    iget-object v5, v5, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    check-cast v5, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;

    if-eqz v5, :cond_1e

    .line 99
    sget-boolean v5, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->isXiaomiProblematicDevice:Z

    if-nez v5, :cond_1d

    .line 100
    sget-boolean v5, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->isSamsungProblematicDevice:Z

    if-eqz v5, :cond_1c

    .line 101
    sget-boolean v5, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->isSamsungExynos7570Device:Z

    if-nez v5, :cond_1c

    .line 102
    sget-boolean v5, Landroidx/camera/camera2/compat/quirk/CloseCameraDeviceOnCameraGraphCloseQuirk;->isSamsungExynos7870Device:Z

    if-nez v5, :cond_1c

    goto :goto_14

    :cond_1c
    const/16 v26, 0x1

    goto :goto_15

    :cond_1d
    :goto_14
    move/from16 v26, v21

    goto :goto_15

    :cond_1e
    const/16 v26, 0x0

    :goto_15
    if-eqz v21, :cond_20

    .line 103
    const-class v5, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopWithSessionProcessorQuirk;

    .line 104
    invoke-static {}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->getAll()Landroidx/camera/core/impl/Quirks;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroidx/camera/core/impl/Quirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v5

    if-eqz v5, :cond_20

    :cond_1f
    :goto_16
    const/16 v23, 0x0

    goto :goto_17

    .line 105
    :cond_20
    const-class v5, Landroidx/camera/camera2/compat/quirk/DisableAbortCapturesOnStopQuirk;

    .line 106
    invoke-static {}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->getAll()Landroidx/camera/core/impl/Quirks;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroidx/camera/core/impl/Quirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v5

    if-eqz v5, :cond_21

    goto :goto_16

    .line 107
    :cond_21
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1e

    if-lt v5, v8, :cond_1f

    const/16 v23, 0x1

    .line 108
    :goto_17
    invoke-virtual {v2}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    move-result-object v2

    .line 109
    const-class v5, Landroidx/camera/camera2/compat/quirk/QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk;

    .line 110
    invoke-virtual {v2, v5}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    move-result v2

    .line 111
    new-instance v5, Lnet/openid/appauth/internal/Logger;

    .line 112
    sget-object v8, Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;->AT_LEAST:Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;

    .line 113
    invoke-direct {v5, v2, v8}, Lnet/openid/appauth/internal/Logger;-><init>(ILandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;)V

    .line 114
    new-instance v22, Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    const/16 v27, 0x9

    move-object/from16 v24, v5

    invoke-direct/range {v22 .. v27}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;-><init>(ZLnet/openid/appauth/internal/Logger;IZI)V

    if-eqz v1, :cond_24

    .line 115
    iget-object v2, v1, Landroidx/camera/core/impl/SessionConfig;->mRepeatingCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    .line 116
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    iget-object v5, v2, Landroidx/camera/core/impl/CaptureConfig;->mImplementationOptions:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v8, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_PREVIEW_STABILIZATION_MODE:Landroidx/camera/core/impl/AutoValue_Config_Option;

    invoke-virtual {v5, v8, v4}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 118
    iget-object v2, v2, Landroidx/camera/core/impl/CaptureConfig;->mImplementationOptions:Landroidx/camera/core/impl/OptionsBundle;

    sget-object v8, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_VIDEO_STABILIZATION_MODE:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 119
    invoke-virtual {v2, v8, v4}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 120
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v10, 0x1

    if-eq v5, v10, :cond_25

    if-ne v2, v10, :cond_22

    goto :goto_18

    :cond_22
    const/4 v14, 0x2

    if-ne v5, v14, :cond_23

    .line 121
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_18

    :cond_23
    if-ne v2, v14, :cond_24

    .line 122
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_18

    :cond_24
    const/4 v4, 0x0

    :cond_25
    :goto_18
    if-eqz v1, :cond_26

    .line 123
    iget-object v2, v1, Landroidx/camera/core/impl/SessionConfig;->mRepeatingCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    invoke-virtual {v2}, Landroidx/camera/core/impl/CaptureConfig;->getExpectedFrameRateRange()Landroid/util/Range;

    move-result-object v2

    goto :goto_19

    :cond_26
    const/4 v2, 0x0

    .line 124
    :goto_19
    sget-object v5, Landroidx/camera/core/impl/AutoValue_StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    goto :goto_1a

    :cond_27
    const/4 v2, 0x0

    .line 125
    :goto_1a
    new-instance v5, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v5}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    if-eqz v21, :cond_28

    .line 126
    sget-object v8, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->ignore3ARequiredParameters:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 127
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v8, v9}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    if-eqz v4, :cond_29

    .line 128
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 129
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_29
    sget-object v8, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->camera2CaptureRequestTag:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 131
    const-string v9, "android.hardware.camera2.CaptureRequest.setTag.CX"

    invoke-virtual {v5, v8, v9}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_2a

    .line 132
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v8, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_2a
    invoke-virtual {v5}, Lkotlin/collections/builders/MapBuilder;->build()Lkotlin/collections/builders/MapBuilder;

    move-result-object v9

    if-eqz v2, :cond_2b

    .line 134
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v7, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    if-eqz v4, :cond_2c

    .line 135
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 136
    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    if-eqz v1, :cond_32

    .line 137
    new-instance v2, Landroidx/camera/camera2/impl/Camera2ImplConfig;

    .line 138
    iget-object v4, v1, Landroidx/camera/core/impl/SessionConfig;->mRepeatingCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    .line 139
    iget-object v4, v4, Landroidx/camera/core/impl/CaptureConfig;->mImplementationOptions:Landroidx/camera/core/impl/OptionsBundle;

    .line 140
    invoke-direct {v2, v4}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/camera/core/impl/Config;)V

    .line 141
    sget-object v2, Landroidx/camera/camera2/impl/Camera2ImplConfig;->SESSION_PHYSICAL_CAMERA_ID_OPTION:Landroidx/camera/core/impl/AutoValue_Config_Option;

    const/4 v15, 0x0

    invoke-interface {v4, v2, v15}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    .line 142
    iget-object v1, v1, Landroidx/camera/core/impl/SessionConfig;->mPostviewOutputConfig:Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;

    if-eqz v1, :cond_31

    .line 143
    iget-object v2, v1, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;->surface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 144
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v15, :cond_2d

    const/4 v15, 0x0

    .line 145
    :cond_2d
    iget v1, v1, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;->mirrorMode:I

    .line 146
    iget-object v4, v2, Landroidx/camera/core/impl/DeferrableSurface;->mPrescribedSize:Landroid/util/Size;

    .line 147
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    iget v5, v2, Landroidx/camera/core/impl/DeferrableSurface;->mPrescribedStreamFormat:I

    if-nez v15, :cond_2e

    const/16 v31, 0x0

    goto :goto_1b

    .line 149
    :cond_2e
    invoke-static {v15}, Landroidx/camera/camera2/pipe/CameraId;->constructor-impl(Ljava/lang/String;)V

    move-object/from16 v31, v15

    :goto_1b
    if-eqz v1, :cond_30

    const/4 v10, 0x1

    if-eq v1, v10, :cond_2f

    const/16 v28, 0x0

    goto :goto_1d

    .line 150
    :cond_2f
    new-instance v15, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    const/4 v14, 0x2

    invoke-direct {v15, v14}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;-><init>(I)V

    :goto_1c
    move-object/from16 v28, v15

    goto :goto_1d

    :cond_30
    const/4 v10, 0x1

    .line 151
    new-instance v15, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;

    invoke-direct {v15, v10}, Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;-><init>(I)V

    goto :goto_1c

    :goto_1d
    const/16 v30, 0x0

    const/16 v24, 0x3e8

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v25, v4

    move/from16 v23, v5

    .line 152
    invoke-static/range {v23 .. v31}, Landroidx/camera/camera2/pipe/MetadataTransform$1;->create-vBYXiEU$default(IILandroid/util/Size;Landroidx/camera/camera2/pipe/MetadataTransform$1;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/lang/String;)Landroidx/camera/camera2/pipe/OutputStream$Config;

    move-result-object v1

    .line 153
    new-instance v15, Landroidx/camera/camera2/pipe/CameraStream$Config;

    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v15, v1}, Landroidx/camera/camera2/pipe/CameraStream$Config;-><init>(Ljava/util/List;)V

    .line 154
    invoke-interface {v13, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_31
    const/4 v15, 0x0

    :goto_1e
    move-object v5, v15

    goto :goto_1f

    :cond_32
    const/4 v5, 0x0

    .line 155
    :goto_1f
    iget-object v1, v0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->cameraXConfig:Landroidx/camera/core/CameraXConfig;

    if-eqz v1, :cond_34

    .line 156
    sget-object v2, Landroidx/camera/camera2/interop/Camera2CaptureRequestConfiguratorKt;->OPTION_CAPTURE_REQUEST_CONFIGURATOR:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 157
    iget-object v1, v1, Landroidx/camera/core/CameraXConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 158
    sget-object v2, Landroidx/camera/camera2/interop/Camera2CaptureRequestConfiguratorKt;->OPTION_CAPTURE_REQUEST_CONFIGURATOR:Landroidx/camera/core/impl/AutoValue_Config_Option;

    const/4 v15, 0x0

    invoke-virtual {v1, v2, v15}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_33

    goto :goto_20

    :cond_33
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    return-object v15

    :cond_34
    const/4 v15, 0x0

    .line 159
    :goto_20
    iget-object v1, v0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->cameraConfig:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 160
    iget-object v1, v1, Lcom/fsck/k9/mailstore/LocalStore$8;->val$attachmentId:Ljava/lang/String;

    .line 161
    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 162
    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 163
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_35

    move-object v10, v15

    goto :goto_21

    :cond_35
    move-object v10, v3

    .line 164
    :goto_21
    iget-object v3, v0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->callbackMap:Landroidx/camera/camera2/impl/CameraCallbackMap;

    iget-object v0, v0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->requestListener:Landroidx/camera/camera2/impl/ComboRequestListener;

    const/4 v14, 0x2

    new-array v8, v14, [Landroidx/camera/camera2/pipe/Request$Listener;

    const/16 v16, 0x0

    aput-object v3, v8, v16

    const/16 v17, 0x1

    aput-object v0, v8, v17

    invoke-static {v8}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz p4, :cond_36

    .line 165
    invoke-static/range {p4 .. p4}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_22
    move-object v11, v3

    move-object v3, v4

    move-object v4, v10

    move-object v10, v0

    goto :goto_23

    :cond_36
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_22

    .line 166
    :goto_23
    new-instance v0, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move/from16 v8, p1

    move-object/from16 v12, v22

    invoke-direct/range {v0 .. v12}, Landroidx/camera/camera2/pipe/CameraGraph$Config;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/CameraStream$Config;ILjava/util/LinkedHashMap;ILkotlin/collections/builders/MapBuilder;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/CameraGraph$Flags;)V

    .line 167
    new-instance v1, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    .line 168
    invoke-static {v13}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 169
    invoke-direct {v1, v0, v2}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;-><init>(Landroidx/camera/camera2/pipe/CameraGraph$Config;Ljava/util/Map;)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CameraGraphConfigProvider<"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->cameraConfig:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$8;->val$attachmentId:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 p0, 0x3e

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

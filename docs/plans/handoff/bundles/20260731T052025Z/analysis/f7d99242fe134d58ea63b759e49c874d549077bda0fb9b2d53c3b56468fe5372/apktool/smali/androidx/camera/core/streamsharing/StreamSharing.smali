.class public final Landroidx/camera/core/streamsharing/StreamSharing;
.super Landroidx/camera/core/UseCase;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

.field public mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

.field public final mCompositionSettings:Landroidx/camera/core/SurfaceRequest$1;

.field public final mDefaultConfig:Landroidx/camera/core/streamsharing/StreamSharingConfig;

.field public mDualSharingNode:Lcom/fsck/k9/mailstore/LocalStore$7;

.field public mSecondaryCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

.field public final mSecondaryCompositionSettings:Landroidx/camera/core/SurfaceRequest$1;

.field public mSecondarySessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

.field public mSecondarySharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

.field public mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

.field public mSharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

.field public mSharingNode:Landroidx/core/view/MenuHostHelper;

.field public final mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/SurfaceRequest$1;Landroidx/camera/core/SurfaceRequest$1;Ljava/util/HashSet;Landroidx/camera/core/impl/UseCaseConfigFactory;)V
    .locals 1

    .line 1
    invoke-static {p5}, Landroidx/camera/core/streamsharing/StreamSharing;->getDefaultConfig(Ljava/util/HashSet;)Landroidx/camera/core/streamsharing/StreamSharingConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroidx/camera/core/UseCase;-><init>(Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p5}, Landroidx/camera/core/streamsharing/StreamSharing;->getDefaultConfig(Ljava/util/HashSet;)Landroidx/camera/core/streamsharing/StreamSharingConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mDefaultConfig:Landroidx/camera/core/streamsharing/StreamSharingConfig;

    .line 13
    .line 14
    iput-object p3, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mCompositionSettings:Landroidx/camera/core/SurfaceRequest$1;

    .line 15
    .line 16
    iput-object p4, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondaryCompositionSettings:Landroidx/camera/core/SurfaceRequest$1;

    .line 17
    .line 18
    move-object p3, p2

    .line 19
    move-object p2, p1

    .line 20
    new-instance p1, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 21
    .line 22
    move-object p4, p5

    .line 23
    move-object p5, p6

    .line 24
    new-instance p6, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-direct {p6, v0}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-direct/range {p1 .. p6}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Ljava/util/HashSet;Landroidx/camera/core/impl/UseCaseConfigFactory;Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 34
    .line 35
    invoke-virtual {p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroidx/camera/core/UseCase;

    .line 44
    .line 45
    iget-object p1, p1, Landroidx/camera/core/UseCase;->mFeatureGroup:Ljava/util/HashSet;

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    new-instance p2, Ljava/util/HashSet;

    .line 50
    .line 51
    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p2, 0x0

    .line 56
    :goto_0
    iput-object p2, p0, Landroidx/camera/core/UseCase;->mFeatureGroup:Ljava/util/HashSet;

    .line 57
    .line 58
    return-void
.end method

.method public static getDefaultConfig(Ljava/util/HashSet;)Landroidx/camera/core/streamsharing/StreamSharingConfig;
    .locals 5

    .line 1
    new-instance v0, Landroidx/camera/core/Preview$Builder;

    .line 2
    .line 3
    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-direct {v0, v1, v2}, Landroidx/camera/core/Preview$Builder;-><init>(Landroidx/camera/core/impl/MutableOptionsBundle;I)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 12
    .line 13
    const/16 v2, 0x22

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v0, v2}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroidx/camera/core/UseCase;

    .line 42
    .line 43
    iget-object v3, v2, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 44
    .line 45
    sget-object v4, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_CAPTURE_TYPE:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 46
    .line 47
    invoke-interface {v3, v4}, Landroidx/camera/core/impl/Config;->containsOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    iget-object v2, v2, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 54
    .line 55
    invoke-interface {v2}, Landroidx/camera/core/impl/UseCaseConfig;->getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-string v2, "StreamSharing"

    .line 64
    .line 65
    const-string v3, "A child does not have capture type."

    .line 66
    .line 67
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    sget-object p0, Landroidx/camera/core/streamsharing/StreamSharingConfig;->OPTION_CAPTURE_TYPES:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 72
    .line 73
    invoke-virtual {v1, p0, v0}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    sget-object p0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_MIRROR_MODE:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 77
    .line 78
    const/4 v0, 0x2

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v1, p0, v0}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    sget-object p0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_STREAM_USE_CASE:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 87
    .line 88
    sget-object v0, Landroidx/camera/core/impl/StreamUseCase;->PREVIEW_VIDEO_STILL:Landroidx/camera/core/impl/StreamUseCase;

    .line 89
    .line 90
    invoke-virtual {v1, p0, v0}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    new-instance p0, Landroidx/camera/core/streamsharing/StreamSharingConfig;

    .line 94
    .line 95
    invoke-static {v1}, Landroidx/camera/core/impl/OptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-direct {p0, v0}, Landroidx/camera/core/streamsharing/StreamSharingConfig;-><init>(Landroidx/camera/core/impl/OptionsBundle;)V

    .line 100
    .line 101
    .line 102
    return-object p0
.end method


# virtual methods
.method public final clearPipeline$3()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->close()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->close()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondaryCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->close()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondaryCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->close()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 37
    .line 38
    :cond_3
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondarySharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/camera/core/processing/SurfaceEdge;->close()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondarySharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 46
    .line 47
    :cond_4
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingNode:Landroidx/core/view/MenuHostHelper;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    iget-object v2, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v2, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->release()V

    .line 56
    .line 57
    .line 58
    new-instance v2, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    const/16 v3, 0xe

    .line 61
    .line 62
    invoke-direct {v2, v3, v0}, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Lorg/jsoup/helper/Validate;->runOnMain(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingNode:Landroidx/core/view/MenuHostHelper;

    .line 69
    .line 70
    :cond_5
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mDualSharingNode:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 71
    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v2, Landroidx/camera/core/processing/SurfaceProcessorInternal;

    .line 77
    .line 78
    invoke-interface {v2}, Landroidx/camera/core/processing/SurfaceProcessorInternal;->release()V

    .line 79
    .line 80
    .line 81
    new-instance v2, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;

    .line 82
    .line 83
    const/16 v3, 0x10

    .line 84
    .line 85
    invoke-direct {v2, v3, v0}, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v2}, Lorg/jsoup/helper/Validate;->runOnMain(Ljava/lang/Runnable;)V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mDualSharingNode:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 92
    .line 93
    :cond_6
    return-void
.end method

.method public final createPipelineAndUpdateChildrenSpecs(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/AutoValue_StreamSpec;Landroidx/camera/core/impl/AutoValue_StreamSpec;)Ljava/util/List;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p4

    .line 4
    .line 5
    move-object/from16 v3, p5

    .line 6
    .line 7
    iget-object v10, v4, Landroidx/camera/core/impl/AutoValue_StreamSpec;->dynamicRange:Landroidx/camera/core/DynamicRange;

    .line 8
    .line 9
    invoke-static {}, Lorg/jsoup/helper/Validate;->checkMainThread()V

    .line 10
    .line 11
    .line 12
    const-string v11, "   outputConfig = "

    .line 13
    .line 14
    const-string v12, "SurfaceProcessorNode"

    .line 15
    .line 16
    iget-object v6, v0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 17
    .line 18
    const/4 v14, 0x0

    .line 19
    if-nez v3, :cond_8

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    move-object/from16 v1, p1

    .line 23
    .line 24
    move-object/from16 v2, p2

    .line 25
    .line 26
    move-object/from16 v3, p3

    .line 27
    .line 28
    invoke-virtual/range {v0 .. v5}, Landroidx/camera/core/streamsharing/StreamSharing;->createPrimaryCameraInputSurface(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/AutoValue_StreamSpec;Landroidx/camera/core/impl/AutoValue_StreamSpec;)Landroidx/camera/core/processing/SurfaceEdge;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    move-object v15, v0

    .line 33
    invoke-virtual {v15}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    new-instance v7, Landroidx/core/view/MenuHostHelper;

    .line 41
    .line 42
    new-instance v1, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    .line 43
    .line 44
    invoke-direct {v1, v10}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;-><init>(Landroidx/camera/core/DynamicRange;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v7, v0, v1}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/DefaultSurfaceProcessor;)V

    .line 48
    .line 49
    .line 50
    iput-object v7, v15, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingNode:Landroidx/core/view/MenuHostHelper;

    .line 51
    .line 52
    iget-object v0, v15, Landroidx/camera/core/UseCase;->mViewPortCropRect:Landroid/graphics/Rect;

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v0, v14

    .line 59
    :goto_0
    iget-object v1, v15, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 60
    .line 61
    check-cast v1, Landroidx/camera/core/impl/ImageOutputConfig;

    .line 62
    .line 63
    invoke-interface {v1, v14}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetRotation(I)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    new-instance v8, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v1, v6, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mChildren:Ljava/util/HashSet;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_1

    .line 86
    .line 87
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroidx/camera/core/UseCase;

    .line 92
    .line 93
    iget-object v2, v6, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mResolutionsMerger:Landroidx/camera/core/streamsharing/ResolutionsMerger;

    .line 94
    .line 95
    iget-object v3, v6, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mParentCamera:Landroidx/camera/core/impl/CameraInternal;

    .line 96
    .line 97
    move-object/from16 v28, v6

    .line 98
    .line 99
    move v6, v0

    .line 100
    move-object/from16 v0, v28

    .line 101
    .line 102
    invoke-virtual/range {v0 .. v6}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->calculateOutConfig(Landroidx/camera/core/UseCase;Landroidx/camera/core/streamsharing/ResolutionsMerger;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;IZ)Landroidx/camera/core/processing/util/AutoValue_OutConfig;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iget-object v3, v0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mParentCamera:Landroidx/camera/core/impl/CameraInternal;

    .line 107
    .line 108
    iget-object v10, v1, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 109
    .line 110
    check-cast v10, Landroidx/camera/core/impl/ImageOutputConfig;

    .line 111
    .line 112
    invoke-interface {v10, v14}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetRotation(I)I

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    invoke-interface {v3}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-interface {v3, v10}, Landroidx/camera/core/CameraInfo;->getSensorRotationDegrees(I)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    iget-object v10, v0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mChildrenVirtualCameras:Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    check-cast v10, Landroidx/camera/core/streamsharing/VirtualCamera;

    .line 131
    .line 132
    invoke-static {v10}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    iget-object v10, v10, Landroidx/camera/core/streamsharing/VirtualCamera;->mVirtualCameraInfo:Landroidx/camera/core/streamsharing/VirtualCameraInfo;

    .line 136
    .line 137
    iput v3, v10, Landroidx/camera/core/streamsharing/VirtualCameraInfo;->mVirtualCameraRotationDegrees:I

    .line 138
    .line 139
    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move/from16 v28, v6

    .line 143
    .line 144
    move-object v6, v0

    .line 145
    move/from16 v0, v28

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_1
    move-object/from16 v28, v6

    .line 149
    .line 150
    move v6, v0

    .line 151
    move-object/from16 v0, v28

    .line 152
    .line 153
    new-instance v1, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 160
    .line 161
    .line 162
    if-eqz v4, :cond_7

    .line 163
    .line 164
    iget-object v2, v7, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v2, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    .line 167
    .line 168
    invoke-static {}, Lorg/jsoup/helper/Validate;->checkMainThread()V

    .line 169
    .line 170
    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v5, "[StreamSharing] SurfaceProcessorNode Transform (Processor="

    .line 174
    .line 175
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v5, "\n   inputEdge = "

    .line 182
    .line 183
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-static {v12, v3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    if-eqz v5, :cond_2

    .line 205
    .line 206
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    check-cast v5, Landroidx/camera/core/processing/util/AutoValue_OutConfig;

    .line 211
    .line 212
    new-instance v9, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_2
    new-instance v3, Landroidx/camera/core/processing/SurfaceProcessorNode$Out;

    .line 229
    .line 230
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 231
    .line 232
    .line 233
    iput-object v3, v7, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-eqz v3, :cond_4

    .line 244
    .line 245
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    check-cast v3, Landroidx/camera/core/processing/util/AutoValue_OutConfig;

    .line 250
    .line 251
    iget-object v5, v7, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v5, Landroidx/camera/core/processing/SurfaceProcessorNode$Out;

    .line 254
    .line 255
    iget-object v9, v3, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getCropRect:Landroid/graphics/Rect;

    .line 256
    .line 257
    iget v10, v3, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getRotationDegrees:I

    .line 258
    .line 259
    iget-boolean v11, v3, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->isMirroring:Z

    .line 260
    .line 261
    new-instance v12, Landroid/graphics/Matrix;

    .line 262
    .line 263
    iget-object v13, v4, Landroidx/camera/core/processing/SurfaceEdge;->mSensorToBufferTransform:Landroid/graphics/Matrix;

    .line 264
    .line 265
    invoke-direct {v12, v13}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 266
    .line 267
    .line 268
    new-instance v13, Landroid/graphics/RectF;

    .line 269
    .line 270
    invoke-direct {v13, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 271
    .line 272
    .line 273
    iget-object v14, v3, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getSize:Landroid/util/Size;

    .line 274
    .line 275
    move-object/from16 p1, v1

    .line 276
    .line 277
    invoke-static {v14}, Landroidx/camera/core/impl/utils/TransformUtils;->sizeToRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-static {v13, v1, v10, v11}, Landroidx/camera/core/impl/utils/TransformUtils;->getRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;IZ)Landroid/graphics/Matrix;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v12, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 286
    .line 287
    .line 288
    invoke-static {v9}, Landroidx/camera/core/impl/utils/TransformUtils;->rectToSize(Landroid/graphics/Rect;)Landroid/util/Size;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-static {v10, v1}, Landroidx/camera/core/impl/utils/TransformUtils;->rotateSize(ILandroid/util/Size;)Landroid/util/Size;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    const/4 v9, 0x0

    .line 297
    invoke-static {v1, v9, v14}, Landroidx/camera/core/impl/utils/TransformUtils;->isAspectRatioMatchingWithRoundingError(Landroid/util/Size;ZLandroid/util/Size;)Z

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    invoke-static {v1}, Landroidx/room/util/RelationUtil;->checkArgument(Z)V

    .line 302
    .line 303
    .line 304
    new-instance v1, Landroid/graphics/Rect;

    .line 305
    .line 306
    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    move-object/from16 p2, v8

    .line 311
    .line 312
    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    .line 313
    .line 314
    .line 315
    move-result v8

    .line 316
    invoke-direct {v1, v9, v9, v13, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 317
    .line 318
    .line 319
    iget-object v8, v4, Landroidx/camera/core/processing/SurfaceEdge;->mStreamSpec:Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 320
    .line 321
    invoke-virtual {v8}, Landroidx/camera/core/impl/AutoValue_StreamSpec;->toBuilder()Landroidx/appcompat/widget/TooltipPopup;

    .line 322
    .line 323
    .line 324
    move-result-object v8

    .line 325
    iput-object v14, v8, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    .line 326
    .line 327
    invoke-virtual {v8}, Landroidx/appcompat/widget/TooltipPopup;->build()Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 328
    .line 329
    .line 330
    move-result-object v19

    .line 331
    new-instance v16, Landroidx/camera/core/processing/SurfaceEdge;

    .line 332
    .line 333
    iget v8, v3, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getTargets:I

    .line 334
    .line 335
    iget v9, v3, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getFormat:I

    .line 336
    .line 337
    iget v13, v4, Landroidx/camera/core/processing/SurfaceEdge;->mRotationDegrees:I

    .line 338
    .line 339
    sub-int v23, v13, v10

    .line 340
    .line 341
    iget-boolean v10, v4, Landroidx/camera/core/processing/SurfaceEdge;->mMirroring:Z

    .line 342
    .line 343
    if-eq v10, v11, :cond_3

    .line 344
    .line 345
    const/16 v25, 0x1

    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_3
    const/16 v25, 0x0

    .line 349
    .line 350
    :goto_4
    const/16 v21, 0x0

    .line 351
    .line 352
    const/16 v24, -0x1

    .line 353
    .line 354
    move-object/from16 v22, v1

    .line 355
    .line 356
    move/from16 v17, v8

    .line 357
    .line 358
    move/from16 v18, v9

    .line 359
    .line 360
    move-object/from16 v20, v12

    .line 361
    .line 362
    invoke-direct/range {v16 .. v25}, Landroidx/camera/core/processing/SurfaceEdge;-><init>(IILandroidx/camera/core/impl/AutoValue_StreamSpec;Landroid/graphics/Matrix;ZLandroid/graphics/Rect;IIZ)V

    .line 363
    .line 364
    .line 365
    move-object/from16 v1, v16

    .line 366
    .line 367
    invoke-virtual {v5, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-object/from16 v1, p1

    .line 371
    .line 372
    move-object/from16 v8, p2

    .line 373
    .line 374
    const/4 v14, 0x0

    .line 375
    goto/16 :goto_3

    .line 376
    .line 377
    :cond_4
    move-object/from16 p2, v8

    .line 378
    .line 379
    iget-object v1, v7, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v1, Landroidx/camera/core/impl/CameraInternal;

    .line 382
    .line 383
    const/4 v3, 0x1

    .line 384
    invoke-virtual {v4, v1, v3}, Landroidx/camera/core/processing/SurfaceEdge;->createSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;Z)Landroidx/camera/core/SurfaceRequest;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-virtual {v2, v1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->onInputSurface(Landroidx/camera/core/SurfaceRequest;)V

    .line 389
    .line 390
    .line 391
    iget-object v1, v7, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v1, Landroidx/camera/core/processing/SurfaceProcessorNode$Out;

    .line 394
    .line 395
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    if-eqz v2, :cond_5

    .line 408
    .line 409
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    check-cast v2, Ljava/util/Map$Entry;

    .line 414
    .line 415
    invoke-virtual {v7, v4, v2}, Landroidx/core/view/MenuHostHelper;->createAndSendSurfaceOutput(Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map$Entry;)V

    .line 416
    .line 417
    .line 418
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    check-cast v3, Landroidx/camera/core/processing/SurfaceEdge;

    .line 423
    .line 424
    new-instance v5, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 425
    .line 426
    const/4 v8, 0x7

    .line 427
    invoke-direct {v5, v7, v4, v2, v8}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    invoke-static {}, Lorg/jsoup/helper/Validate;->checkMainThread()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v3}, Landroidx/camera/core/processing/SurfaceEdge;->checkNotClosed()V

    .line 437
    .line 438
    .line 439
    iget-object v2, v3, Landroidx/camera/core/processing/SurfaceEdge;->mOnInvalidatedListeners:Ljava/util/HashSet;

    .line 440
    .line 441
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    goto :goto_5

    .line 445
    :cond_5
    iget-object v1, v7, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast v1, Landroidx/camera/core/processing/SurfaceProcessorNode$Out;

    .line 448
    .line 449
    new-instance v2, Landroidx/camera/view/TextureViewImplementation$$ExternalSyntheticLambda3;

    .line 450
    .line 451
    const/4 v3, 0x1

    .line 452
    invoke-direct {v2, v3, v1}, Landroidx/camera/view/TextureViewImplementation$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    iget-object v1, v4, Landroidx/camera/core/processing/SurfaceEdge;->mTransformationUpdatesListeners:Ljava/util/ArrayList;

    .line 456
    .line 457
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    iget-object v1, v7, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    .line 461
    .line 462
    check-cast v1, Landroidx/camera/core/processing/SurfaceProcessorNode$Out;

    .line 463
    .line 464
    new-instance v2, Ljava/util/HashMap;

    .line 465
    .line 466
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 467
    .line 468
    .line 469
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 478
    .line 479
    .line 480
    move-result v5

    .line 481
    if-eqz v5, :cond_6

    .line 482
    .line 483
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v5

    .line 487
    check-cast v5, Ljava/util/Map$Entry;

    .line 488
    .line 489
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v7

    .line 493
    check-cast v7, Landroidx/camera/core/UseCase;

    .line 494
    .line 495
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v5

    .line 499
    invoke-virtual {v1, v5}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v5

    .line 503
    check-cast v5, Landroidx/camera/core/processing/SurfaceEdge;

    .line 504
    .line 505
    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    goto :goto_6

    .line 509
    :cond_6
    invoke-virtual {v0, v4, v6}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->getSelectedChildSizes(Landroidx/camera/core/processing/SurfaceEdge;Z)Ljava/util/HashMap;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    invoke-virtual {v0, v2, v1}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->setChildrenEdges(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 514
    .line 515
    .line 516
    iget-object v0, v15, Landroidx/camera/core/streamsharing/StreamSharing;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 517
    .line 518
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    const/4 v3, 0x1

    .line 523
    new-array v1, v3, [Ljava/lang/Object;

    .line 524
    .line 525
    const/16 v27, 0x0

    .line 526
    .line 527
    aput-object v0, v1, v27

    .line 528
    .line 529
    new-instance v0, Ljava/util/ArrayList;

    .line 530
    .line 531
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 532
    .line 533
    .line 534
    aget-object v1, v1, v27

    .line 535
    .line 536
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    return-object v0

    .line 547
    :cond_7
    const-string v0, "Null surfaceEdge"

    .line 548
    .line 549
    invoke-static {v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    const/4 v0, 0x0

    .line 553
    return-object v0

    .line 554
    :cond_8
    move-object v15, v0

    .line 555
    move-object v0, v6

    .line 556
    invoke-virtual/range {p0 .. p5}, Landroidx/camera/core/streamsharing/StreamSharing;->createPrimaryCameraInputSurface(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/AutoValue_StreamSpec;Landroidx/camera/core/impl/AutoValue_StreamSpec;)Landroidx/camera/core/processing/SurfaceEdge;

    .line 557
    .line 558
    .line 559
    move-result-object v13

    .line 560
    move-object v1, v0

    .line 561
    new-instance v0, Landroidx/camera/core/processing/SurfaceEdge;

    .line 562
    .line 563
    iget-object v4, v15, Landroidx/camera/core/UseCase;->mSensorToBufferTransformMatrix:Landroid/graphics/Matrix;

    .line 564
    .line 565
    invoke-virtual {v15}, Landroidx/camera/core/UseCase;->getSecondaryCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    invoke-interface {v2}, Landroidx/camera/core/impl/CameraInternal;->getHasTransform()Z

    .line 573
    .line 574
    .line 575
    move-result v5

    .line 576
    iget-object v2, v3, Landroidx/camera/core/impl/AutoValue_StreamSpec;->resolution:Landroid/util/Size;

    .line 577
    .line 578
    iget-object v6, v15, Landroidx/camera/core/UseCase;->mViewPortCropRect:Landroid/graphics/Rect;

    .line 579
    .line 580
    if-eqz v6, :cond_9

    .line 581
    .line 582
    const/4 v9, 0x0

    .line 583
    goto :goto_7

    .line 584
    :cond_9
    new-instance v6, Landroid/graphics/Rect;

    .line 585
    .line 586
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    .line 587
    .line 588
    .line 589
    move-result v7

    .line 590
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    .line 591
    .line 592
    .line 593
    move-result v2

    .line 594
    const/4 v9, 0x0

    .line 595
    invoke-direct {v6, v9, v9, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 596
    .line 597
    .line 598
    :goto_7
    invoke-virtual {v15}, Landroidx/camera/core/UseCase;->getSecondaryCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v15, v2, v9}, Landroidx/camera/core/UseCase;->getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;Z)I

    .line 606
    .line 607
    .line 608
    move-result v7

    .line 609
    invoke-virtual {v15}, Landroidx/camera/core/UseCase;->getSecondaryCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v15, v2}, Landroidx/camera/core/UseCase;->isMirroringRequired(Landroidx/camera/core/impl/CameraInternal;)Z

    .line 617
    .line 618
    .line 619
    move-result v9

    .line 620
    move-object v2, v1

    .line 621
    const/4 v1, 0x3

    .line 622
    move-object v8, v2

    .line 623
    const/16 v2, 0x22

    .line 624
    .line 625
    move-object v14, v8

    .line 626
    const/4 v8, -0x1

    .line 627
    invoke-direct/range {v0 .. v9}, Landroidx/camera/core/processing/SurfaceEdge;-><init>(IILandroidx/camera/core/impl/AutoValue_StreamSpec;Landroid/graphics/Matrix;ZLandroid/graphics/Rect;IIZ)V

    .line 628
    .line 629
    .line 630
    iput-object v0, v15, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondaryCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 631
    .line 632
    invoke-virtual {v15}, Landroidx/camera/core/UseCase;->getSecondaryCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    iput-object v0, v15, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondarySharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 640
    .line 641
    iget-object v0, v15, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondaryCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 642
    .line 643
    move-object/from16 v4, p3

    .line 644
    .line 645
    invoke-virtual {v15, v0, v4, v3}, Landroidx/camera/core/streamsharing/StreamSharing;->createSessionConfigBuilder(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/AutoValue_StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 646
    .line 647
    .line 648
    move-result-object v7

    .line 649
    iput-object v7, v15, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondarySessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 650
    .line 651
    iget-object v0, v15, Landroidx/camera/core/streamsharing/StreamSharing;->mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 652
    .line 653
    if-eqz v0, :cond_a

    .line 654
    .line 655
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->close()V

    .line 656
    .line 657
    .line 658
    :cond_a
    new-instance v8, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 659
    .line 660
    new-instance v0, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda1;

    .line 661
    .line 662
    move-object/from16 v2, p1

    .line 663
    .line 664
    move-object/from16 v5, p4

    .line 665
    .line 666
    move-object v6, v3

    .line 667
    move-object v1, v15

    .line 668
    move-object/from16 v3, p2

    .line 669
    .line 670
    invoke-direct/range {v0 .. v6}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/streamsharing/StreamSharing;Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/AutoValue_StreamSpec;Landroidx/camera/core/impl/AutoValue_StreamSpec;)V

    .line 671
    .line 672
    .line 673
    invoke-direct {v8, v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;-><init>(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)V

    .line 674
    .line 675
    .line 676
    iput-object v8, v15, Landroidx/camera/core/streamsharing/StreamSharing;->mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 677
    .line 678
    iput-object v8, v7, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 679
    .line 680
    iget-object v7, v15, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondarySharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 681
    .line 682
    invoke-virtual {v15}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-virtual {v15}, Landroidx/camera/core/UseCase;->getSecondaryCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    new-instance v2, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 691
    .line 692
    new-instance v3, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    .line 693
    .line 694
    iget-object v4, v15, Landroidx/camera/core/streamsharing/StreamSharing;->mCompositionSettings:Landroidx/camera/core/SurfaceRequest$1;

    .line 695
    .line 696
    iget-object v5, v15, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondaryCompositionSettings:Landroidx/camera/core/SurfaceRequest$1;

    .line 697
    .line 698
    invoke-direct {v3, v10, v4, v5}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;-><init>(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/SurfaceRequest$1;Landroidx/camera/core/SurfaceRequest$1;)V

    .line 699
    .line 700
    .line 701
    invoke-direct {v2, v0, v1, v3}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceProcessorInternal;)V

    .line 702
    .line 703
    .line 704
    iput-object v2, v15, Landroidx/camera/core/streamsharing/StreamSharing;->mDualSharingNode:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 705
    .line 706
    iget-object v0, v15, Landroidx/camera/core/UseCase;->mViewPortCropRect:Landroid/graphics/Rect;

    .line 707
    .line 708
    if-eqz v0, :cond_b

    .line 709
    .line 710
    const/4 v6, 0x1

    .line 711
    goto :goto_8

    .line 712
    :cond_b
    const/4 v6, 0x0

    .line 713
    :goto_8
    iget-object v0, v15, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 714
    .line 715
    check-cast v0, Landroidx/camera/core/impl/ImageOutputConfig;

    .line 716
    .line 717
    const/4 v9, 0x0

    .line 718
    invoke-interface {v0, v9}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetRotation(I)I

    .line 719
    .line 720
    .line 721
    move-result v5

    .line 722
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 723
    .line 724
    .line 725
    new-instance v8, Ljava/util/HashMap;

    .line 726
    .line 727
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 728
    .line 729
    .line 730
    iget-object v0, v14, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mChildren:Ljava/util/HashSet;

    .line 731
    .line 732
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 733
    .line 734
    .line 735
    move-result-object v9

    .line 736
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 737
    .line 738
    .line 739
    move-result v0

    .line 740
    if-eqz v0, :cond_c

    .line 741
    .line 742
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    move-object v1, v0

    .line 747
    check-cast v1, Landroidx/camera/core/UseCase;

    .line 748
    .line 749
    iget-object v2, v14, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mResolutionsMerger:Landroidx/camera/core/streamsharing/ResolutionsMerger;

    .line 750
    .line 751
    iget-object v3, v14, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mParentCamera:Landroidx/camera/core/impl/CameraInternal;

    .line 752
    .line 753
    move-object v4, v13

    .line 754
    move-object v0, v14

    .line 755
    invoke-virtual/range {v0 .. v6}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->calculateOutConfig(Landroidx/camera/core/UseCase;Landroidx/camera/core/streamsharing/ResolutionsMerger;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;IZ)Landroidx/camera/core/processing/util/AutoValue_OutConfig;

    .line 756
    .line 757
    .line 758
    move-result-object v10

    .line 759
    iget-object v2, v0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mSecondaryResolutionsMerger:Landroidx/camera/core/streamsharing/ResolutionsMerger;

    .line 760
    .line 761
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    iget-object v3, v0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mSecondaryParentCamera:Landroidx/camera/core/impl/CameraInternal;

    .line 765
    .line 766
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-object v4, v7

    .line 770
    invoke-virtual/range {v0 .. v6}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->calculateOutConfig(Landroidx/camera/core/UseCase;Landroidx/camera/core/streamsharing/ResolutionsMerger;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;IZ)Landroidx/camera/core/processing/util/AutoValue_OutConfig;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    iget-object v3, v0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mParentCamera:Landroidx/camera/core/impl/CameraInternal;

    .line 775
    .line 776
    iget-object v7, v1, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 777
    .line 778
    check-cast v7, Landroidx/camera/core/impl/ImageOutputConfig;

    .line 779
    .line 780
    const/4 v14, 0x0

    .line 781
    invoke-interface {v7, v14}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetRotation(I)I

    .line 782
    .line 783
    .line 784
    move-result v7

    .line 785
    invoke-interface {v3}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    .line 786
    .line 787
    .line 788
    move-result-object v3

    .line 789
    invoke-interface {v3, v7}, Landroidx/camera/core/CameraInfo;->getSensorRotationDegrees(I)I

    .line 790
    .line 791
    .line 792
    move-result v3

    .line 793
    iget-object v7, v0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mChildrenVirtualCameras:Ljava/util/HashMap;

    .line 794
    .line 795
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v7

    .line 799
    check-cast v7, Landroidx/camera/core/streamsharing/VirtualCamera;

    .line 800
    .line 801
    invoke-static {v7}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    iget-object v7, v7, Landroidx/camera/core/streamsharing/VirtualCamera;->mVirtualCameraInfo:Landroidx/camera/core/streamsharing/VirtualCameraInfo;

    .line 805
    .line 806
    iput v3, v7, Landroidx/camera/core/streamsharing/VirtualCameraInfo;->mVirtualCameraRotationDegrees:I

    .line 807
    .line 808
    new-instance v3, Landroidx/camera/core/processing/concurrent/AutoValue_DualOutConfig;

    .line 809
    .line 810
    invoke-direct {v3, v10, v2}, Landroidx/camera/core/processing/concurrent/AutoValue_DualOutConfig;-><init>(Landroidx/camera/core/processing/util/AutoValue_OutConfig;Landroidx/camera/core/processing/util/AutoValue_OutConfig;)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-object v14, v0

    .line 817
    move-object v7, v4

    .line 818
    goto :goto_9

    .line 819
    :cond_c
    move-object v4, v7

    .line 820
    move-object v0, v14

    .line 821
    iget-object v1, v15, Landroidx/camera/core/streamsharing/StreamSharing;->mDualSharingNode:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 822
    .line 823
    new-instance v2, Ljava/util/ArrayList;

    .line 824
    .line 825
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 826
    .line 827
    .line 828
    move-result-object v3

    .line 829
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 830
    .line 831
    .line 832
    new-instance v3, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;

    .line 833
    .line 834
    invoke-direct {v3, v13, v4, v2}, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;-><init>(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/ArrayList;)V

    .line 835
    .line 836
    .line 837
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 838
    .line 839
    .line 840
    invoke-static {}, Lorg/jsoup/helper/Validate;->checkMainThread()V

    .line 841
    .line 842
    .line 843
    new-instance v5, Ljava/lang/StringBuilder;

    .line 844
    .line 845
    const-string v7, "[StreamSharing] DualSurfaceProcessorNode Transform Processor = "

    .line 846
    .line 847
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    iget-object v7, v1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 851
    .line 852
    check-cast v7, Landroidx/camera/core/processing/SurfaceProcessorInternal;

    .line 853
    .line 854
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    const-string v9, "\n   primary input = "

    .line 858
    .line 859
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    const-string v9, "\n   secondary input = "

    .line 866
    .line 867
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v4

    .line 877
    const-string v5, "DualSurfaceProcessorNode"

    .line 878
    .line 879
    invoke-static {v5, v4}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 887
    .line 888
    .line 889
    move-result v4

    .line 890
    if-eqz v4, :cond_d

    .line 891
    .line 892
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object v4

    .line 896
    check-cast v4, Landroidx/camera/core/processing/concurrent/AutoValue_DualOutConfig;

    .line 897
    .line 898
    new-instance v5, Ljava/lang/StringBuilder;

    .line 899
    .line 900
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v4

    .line 910
    invoke-static {v12, v4}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    goto :goto_a

    .line 914
    :cond_d
    iput-object v3, v1, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 915
    .line 916
    new-instance v2, Landroidx/camera/core/processing/SurfaceProcessorNode$Out;

    .line 917
    .line 918
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 919
    .line 920
    .line 921
    iput-object v2, v1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 922
    .line 923
    iget-object v2, v1, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 924
    .line 925
    check-cast v2, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;

    .line 926
    .line 927
    iget-object v3, v2, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->primarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 928
    .line 929
    iget-object v4, v2, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->secondarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 930
    .line 931
    iget-object v2, v2, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->outConfigs:Ljava/util/ArrayList;

    .line 932
    .line 933
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 934
    .line 935
    .line 936
    move-result-object v2

    .line 937
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 938
    .line 939
    .line 940
    move-result v5

    .line 941
    if-eqz v5, :cond_f

    .line 942
    .line 943
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 944
    .line 945
    .line 946
    move-result-object v5

    .line 947
    check-cast v5, Landroidx/camera/core/processing/concurrent/AutoValue_DualOutConfig;

    .line 948
    .line 949
    iget-object v9, v1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 950
    .line 951
    check-cast v9, Landroidx/camera/core/processing/SurfaceProcessorNode$Out;

    .line 952
    .line 953
    iget-object v10, v5, Landroidx/camera/core/processing/concurrent/AutoValue_DualOutConfig;->primaryOutConfig:Landroidx/camera/core/processing/util/AutoValue_OutConfig;

    .line 954
    .line 955
    iget-object v11, v10, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getCropRect:Landroid/graphics/Rect;

    .line 956
    .line 957
    iget v12, v10, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getRotationDegrees:I

    .line 958
    .line 959
    iget-boolean v14, v10, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->isMirroring:Z

    .line 960
    .line 961
    move-object/from16 p1, v2

    .line 962
    .line 963
    new-instance v2, Landroid/graphics/Matrix;

    .line 964
    .line 965
    move-object/from16 p2, v8

    .line 966
    .line 967
    iget-object v8, v3, Landroidx/camera/core/processing/SurfaceEdge;->mSensorToBufferTransform:Landroid/graphics/Matrix;

    .line 968
    .line 969
    invoke-direct {v2, v8}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 970
    .line 971
    .line 972
    new-instance v8, Landroid/graphics/RectF;

    .line 973
    .line 974
    invoke-direct {v8, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 975
    .line 976
    .line 977
    move-object/from16 v16, v11

    .line 978
    .line 979
    iget-object v11, v10, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getSize:Landroid/util/Size;

    .line 980
    .line 981
    invoke-static {v11}, Landroidx/camera/core/impl/utils/TransformUtils;->sizeToRectF(Landroid/util/Size;)Landroid/graphics/RectF;

    .line 982
    .line 983
    .line 984
    move-result-object v15

    .line 985
    invoke-static {v8, v15, v12, v14}, Landroidx/camera/core/impl/utils/TransformUtils;->getRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;IZ)Landroid/graphics/Matrix;

    .line 986
    .line 987
    .line 988
    move-result-object v8

    .line 989
    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 990
    .line 991
    .line 992
    invoke-static/range {v16 .. v16}, Landroidx/camera/core/impl/utils/TransformUtils;->rectToSize(Landroid/graphics/Rect;)Landroid/util/Size;

    .line 993
    .line 994
    .line 995
    move-result-object v8

    .line 996
    invoke-static {v12, v8}, Landroidx/camera/core/impl/utils/TransformUtils;->rotateSize(ILandroid/util/Size;)Landroid/util/Size;

    .line 997
    .line 998
    .line 999
    move-result-object v8

    .line 1000
    const/4 v15, 0x0

    .line 1001
    invoke-static {v8, v15, v11}, Landroidx/camera/core/impl/utils/TransformUtils;->isAspectRatioMatchingWithRoundingError(Landroid/util/Size;ZLandroid/util/Size;)Z

    .line 1002
    .line 1003
    .line 1004
    move-result v8

    .line 1005
    invoke-static {v8}, Landroidx/room/util/RelationUtil;->checkArgument(Z)V

    .line 1006
    .line 1007
    .line 1008
    new-instance v8, Landroid/graphics/Rect;

    .line 1009
    .line 1010
    move-object/from16 v20, v2

    .line 1011
    .line 1012
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    .line 1013
    .line 1014
    .line 1015
    move-result v2

    .line 1016
    move/from16 v16, v12

    .line 1017
    .line 1018
    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    .line 1019
    .line 1020
    .line 1021
    move-result v12

    .line 1022
    invoke-direct {v8, v15, v15, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1023
    .line 1024
    .line 1025
    iget-object v2, v3, Landroidx/camera/core/processing/SurfaceEdge;->mStreamSpec:Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 1026
    .line 1027
    invoke-virtual {v2}, Landroidx/camera/core/impl/AutoValue_StreamSpec;->toBuilder()Landroidx/appcompat/widget/TooltipPopup;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v2

    .line 1031
    iput-object v11, v2, Landroidx/appcompat/widget/TooltipPopup;->mContext:Ljava/lang/Object;

    .line 1032
    .line 1033
    invoke-virtual {v2}, Landroidx/appcompat/widget/TooltipPopup;->build()Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v19

    .line 1037
    move/from16 v2, v16

    .line 1038
    .line 1039
    new-instance v16, Landroidx/camera/core/processing/SurfaceEdge;

    .line 1040
    .line 1041
    iget v11, v10, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getTargets:I

    .line 1042
    .line 1043
    iget v10, v10, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getFormat:I

    .line 1044
    .line 1045
    iget v12, v3, Landroidx/camera/core/processing/SurfaceEdge;->mRotationDegrees:I

    .line 1046
    .line 1047
    sub-int v23, v12, v2

    .line 1048
    .line 1049
    iget-boolean v2, v3, Landroidx/camera/core/processing/SurfaceEdge;->mMirroring:Z

    .line 1050
    .line 1051
    if-eq v2, v14, :cond_e

    .line 1052
    .line 1053
    const/16 v25, 0x1

    .line 1054
    .line 1055
    goto :goto_c

    .line 1056
    :cond_e
    const/16 v25, 0x0

    .line 1057
    .line 1058
    :goto_c
    const/16 v21, 0x0

    .line 1059
    .line 1060
    const/16 v24, -0x1

    .line 1061
    .line 1062
    move-object/from16 v22, v8

    .line 1063
    .line 1064
    move/from16 v18, v10

    .line 1065
    .line 1066
    move/from16 v17, v11

    .line 1067
    .line 1068
    invoke-direct/range {v16 .. v25}, Landroidx/camera/core/processing/SurfaceEdge;-><init>(IILandroidx/camera/core/impl/AutoValue_StreamSpec;Landroid/graphics/Matrix;ZLandroid/graphics/Rect;IIZ)V

    .line 1069
    .line 1070
    .line 1071
    move-object/from16 v2, v16

    .line 1072
    .line 1073
    invoke-virtual {v9, v5, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    .line 1075
    .line 1076
    move-object/from16 v15, p0

    .line 1077
    .line 1078
    move-object/from16 v2, p1

    .line 1079
    .line 1080
    move-object/from16 v8, p2

    .line 1081
    .line 1082
    goto/16 :goto_b

    .line 1083
    .line 1084
    :cond_f
    move-object/from16 p2, v8

    .line 1085
    .line 1086
    iget-object v2, v1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 1087
    .line 1088
    check-cast v2, Landroidx/camera/core/impl/CameraInternal;

    .line 1089
    .line 1090
    const/4 v5, 0x1

    .line 1091
    invoke-virtual {v3, v2, v5}, Landroidx/camera/core/processing/SurfaceEdge;->createSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;Z)Landroidx/camera/core/SurfaceRequest;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v2

    .line 1095
    invoke-interface {v7, v2}, Landroidx/camera/core/processing/SurfaceProcessorInternal;->onInputSurface(Landroidx/camera/core/SurfaceRequest;)V

    .line 1096
    .line 1097
    .line 1098
    iget-object v2, v1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 1099
    .line 1100
    check-cast v2, Landroidx/camera/core/impl/CameraInternal;

    .line 1101
    .line 1102
    const/4 v9, 0x0

    .line 1103
    invoke-virtual {v4, v2, v9}, Landroidx/camera/core/processing/SurfaceEdge;->createSurfaceRequest(Landroidx/camera/core/impl/CameraInternal;Z)Landroidx/camera/core/SurfaceRequest;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v2

    .line 1107
    invoke-interface {v7, v2}, Landroidx/camera/core/processing/SurfaceProcessorInternal;->onInputSurface(Landroidx/camera/core/SurfaceRequest;)V

    .line 1108
    .line 1109
    .line 1110
    iget-object v2, v1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 1111
    .line 1112
    move-object/from16 v17, v2

    .line 1113
    .line 1114
    check-cast v17, Landroidx/camera/core/impl/CameraInternal;

    .line 1115
    .line 1116
    iget-object v2, v1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 1117
    .line 1118
    move-object/from16 v18, v2

    .line 1119
    .line 1120
    check-cast v18, Landroidx/camera/core/impl/CameraInternal;

    .line 1121
    .line 1122
    iget-object v2, v1, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 1123
    .line 1124
    check-cast v2, Landroidx/camera/core/processing/SurfaceProcessorNode$Out;

    .line 1125
    .line 1126
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v2

    .line 1130
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v2

    .line 1134
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1135
    .line 1136
    .line 1137
    move-result v5

    .line 1138
    if-eqz v5, :cond_10

    .line 1139
    .line 1140
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v5

    .line 1144
    move-object/from16 v21, v5

    .line 1145
    .line 1146
    check-cast v21, Ljava/util/Map$Entry;

    .line 1147
    .line 1148
    move-object/from16 v16, v1

    .line 1149
    .line 1150
    move-object/from16 v19, v3

    .line 1151
    .line 1152
    move-object/from16 v20, v4

    .line 1153
    .line 1154
    invoke-virtual/range {v16 .. v21}, Lcom/fsck/k9/mailstore/LocalStore$7;->createAndSendSurfaceOutput(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map$Entry;)V

    .line 1155
    .line 1156
    .line 1157
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v1

    .line 1161
    check-cast v1, Landroidx/camera/core/processing/SurfaceEdge;

    .line 1162
    .line 1163
    move-object/from16 v22, v21

    .line 1164
    .line 1165
    move-object/from16 v21, v20

    .line 1166
    .line 1167
    move-object/from16 v20, v19

    .line 1168
    .line 1169
    move-object/from16 v19, v18

    .line 1170
    .line 1171
    move-object/from16 v18, v17

    .line 1172
    .line 1173
    move-object/from16 v17, v16

    .line 1174
    .line 1175
    new-instance v16, Landroidx/compose/foundation/text/BasicText_androidKt$$ExternalSyntheticLambda2;

    .line 1176
    .line 1177
    const/16 v23, 0x1

    .line 1178
    .line 1179
    invoke-direct/range {v16 .. v23}, Landroidx/compose/foundation/text/BasicText_androidKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1180
    .line 1181
    .line 1182
    move-object/from16 v4, v16

    .line 1183
    .line 1184
    move-object/from16 v3, v17

    .line 1185
    .line 1186
    move-object/from16 v17, v18

    .line 1187
    .line 1188
    move-object/from16 v18, v19

    .line 1189
    .line 1190
    move-object/from16 v19, v20

    .line 1191
    .line 1192
    move-object/from16 v20, v21

    .line 1193
    .line 1194
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1195
    .line 1196
    .line 1197
    invoke-static {}, Lorg/jsoup/helper/Validate;->checkMainThread()V

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v1}, Landroidx/camera/core/processing/SurfaceEdge;->checkNotClosed()V

    .line 1201
    .line 1202
    .line 1203
    iget-object v1, v1, Landroidx/camera/core/processing/SurfaceEdge;->mOnInvalidatedListeners:Ljava/util/HashSet;

    .line 1204
    .line 1205
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1206
    .line 1207
    .line 1208
    move-object v1, v3

    .line 1209
    move-object/from16 v3, v19

    .line 1210
    .line 1211
    move-object/from16 v4, v20

    .line 1212
    .line 1213
    goto :goto_d

    .line 1214
    :cond_10
    move-object v3, v1

    .line 1215
    iget-object v1, v3, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 1216
    .line 1217
    check-cast v1, Landroidx/camera/core/processing/SurfaceProcessorNode$Out;

    .line 1218
    .line 1219
    new-instance v2, Ljava/util/HashMap;

    .line 1220
    .line 1221
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v3

    .line 1228
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v3

    .line 1232
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1233
    .line 1234
    .line 1235
    move-result v4

    .line 1236
    if-eqz v4, :cond_11

    .line 1237
    .line 1238
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v4

    .line 1242
    check-cast v4, Ljava/util/Map$Entry;

    .line 1243
    .line 1244
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v5

    .line 1248
    check-cast v5, Landroidx/camera/core/UseCase;

    .line 1249
    .line 1250
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v4

    .line 1254
    invoke-virtual {v1, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v4

    .line 1258
    check-cast v4, Landroidx/camera/core/processing/SurfaceEdge;

    .line 1259
    .line 1260
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    .line 1262
    .line 1263
    goto :goto_e

    .line 1264
    :cond_11
    invoke-virtual {v0, v13, v6}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->getSelectedChildSizes(Landroidx/camera/core/processing/SurfaceEdge;Z)Ljava/util/HashMap;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v1

    .line 1268
    invoke-virtual {v0, v2, v1}, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->setChildrenEdges(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 1269
    .line 1270
    .line 1271
    move-object/from16 v15, p0

    .line 1272
    .line 1273
    iget-object v0, v15, Landroidx/camera/core/streamsharing/StreamSharing;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 1274
    .line 1275
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v0

    .line 1279
    iget-object v1, v15, Landroidx/camera/core/streamsharing/StreamSharing;->mSecondarySessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 1280
    .line 1281
    invoke-virtual {v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v1

    .line 1285
    const/4 v2, 0x2

    .line 1286
    new-array v3, v2, [Ljava/lang/Object;

    .line 1287
    .line 1288
    const/16 v27, 0x0

    .line 1289
    .line 1290
    aput-object v0, v3, v27

    .line 1291
    .line 1292
    const/16 v26, 0x1

    .line 1293
    .line 1294
    aput-object v1, v3, v26

    .line 1295
    .line 1296
    new-instance v0, Ljava/util/ArrayList;

    .line 1297
    .line 1298
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1299
    .line 1300
    .line 1301
    move/from16 v14, v27

    .line 1302
    .line 1303
    :goto_f
    if-ge v14, v2, :cond_12

    .line 1304
    .line 1305
    aget-object v1, v3, v14

    .line 1306
    .line 1307
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    .line 1309
    .line 1310
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    .line 1312
    .line 1313
    add-int/lit8 v14, v14, 0x1

    .line 1314
    .line 1315
    goto :goto_f

    .line 1316
    :cond_12
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v0

    .line 1320
    return-object v0
.end method

.method public final createPrimaryCameraInputSurface(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/AutoValue_StreamSpec;Landroidx/camera/core/impl/AutoValue_StreamSpec;)Landroidx/camera/core/processing/SurfaceEdge;
    .locals 10

    .line 1
    new-instance v0, Landroidx/camera/core/processing/SurfaceEdge;

    .line 2
    .line 3
    iget-object v4, p0, Landroidx/camera/core/UseCase;->mSensorToBufferTransformMatrix:Landroid/graphics/Matrix;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->getHasTransform()Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    iget-object v1, p4, Landroidx/camera/core/impl/AutoValue_StreamSpec;->resolution:Landroid/util/Size;

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/camera/core/UseCase;->mViewPortCropRect:Landroid/graphics/Rect;

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-direct {v2, v6, v6, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1, v6}, Landroidx/camera/core/UseCase;->getRelativeRotation(Landroidx/camera/core/impl/CameraInternal;Z)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroidx/camera/core/UseCase;->isMirroringRequired(Landroidx/camera/core/impl/CameraInternal;)Z

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    const/4 v1, 0x3

    .line 60
    move-object v6, v2

    .line 61
    const/16 v2, 0x22

    .line 62
    .line 63
    const/4 v8, -0x1

    .line 64
    move-object v3, p4

    .line 65
    invoke-direct/range {v0 .. v9}, Landroidx/camera/core/processing/SurfaceEdge;-><init>(IILandroidx/camera/core/impl/AutoValue_StreamSpec;Landroid/graphics/Matrix;ZLandroid/graphics/Rect;IIZ)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 78
    .line 79
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mCameraEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 80
    .line 81
    invoke-virtual {p0, v0, p3, p4}, Landroidx/camera/core/streamsharing/StreamSharing;->createSessionConfigBuilder(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/AutoValue_StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    iput-object v7, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 86
    .line 87
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 88
    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;->close()V

    .line 92
    .line 93
    .line 94
    :cond_1
    new-instance v8, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 95
    .line 96
    new-instance v0, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda1;

    .line 97
    .line 98
    move-object v1, p0

    .line 99
    move-object v2, p1

    .line 100
    move-object v3, p2

    .line 101
    move-object v4, p3

    .line 102
    move-object v5, p4

    .line 103
    move-object v6, p5

    .line 104
    invoke-direct/range {v0 .. v6}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/core/streamsharing/StreamSharing;Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/AutoValue_StreamSpec;Landroidx/camera/core/impl/AutoValue_StreamSpec;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {v8, v0}, Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;-><init>(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)V

    .line 108
    .line 109
    .line 110
    iput-object v8, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mCloseableErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 111
    .line 112
    iput-object v8, v7, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mErrorListener:Landroidx/camera/core/impl/SessionConfig$CloseableErrorListener;

    .line 113
    .line 114
    iget-object p0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSharingInputEdge:Landroidx/camera/core/processing/SurfaceEdge;

    .line 115
    .line 116
    return-object p0
.end method

.method public final createSessionConfigBuilder(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/AutoValue_StreamSpec;)Landroidx/camera/core/impl/SessionConfig$Builder;
    .locals 11

    .line 1
    iget-object v0, p3, Landroidx/camera/core/impl/AutoValue_StreamSpec;->resolution:Landroid/util/Size;

    .line 2
    .line 3
    invoke-static {p2, v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object v0, p2, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mCaptureConfigBuilder:Lorg/apache/james/mime4j/stream/RawField;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 10
    .line 11
    iget-object v2, v1, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mChildren:Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, -0x1

    .line 18
    move v4, v3

    .line 19
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Landroidx/camera/core/UseCase;

    .line 30
    .line 31
    iget-object v5, v5, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 32
    .line 33
    invoke-interface {v5}, Landroidx/camera/core/impl/UseCaseConfig;->getDefaultSessionConfig()Landroidx/camera/core/impl/SessionConfig;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v5, v5, Landroidx/camera/core/impl/SessionConfig;->mRepeatingCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    .line 38
    .line 39
    iget v5, v5, Landroidx/camera/core/impl/CaptureConfig;->mTemplateType:I

    .line 40
    .line 41
    sget-object v6, Landroidx/camera/core/impl/SessionConfig;->SUPPORTED_TEMPLATE_PRIORITY:Ljava/util/List;

    .line 42
    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-interface {v6, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-lt v7, v6, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move v4, v5

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    if-eq v4, v3, :cond_2

    .line 65
    .line 66
    iput v4, v0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 67
    .line 68
    :cond_2
    iget-object v2, p3, Landroidx/camera/core/impl/AutoValue_StreamSpec;->resolution:Landroid/util/Size;

    .line 69
    .line 70
    iget-object v4, v1, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mChildren:Ljava/util/HashSet;

    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_9

    .line 81
    .line 82
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Landroidx/camera/core/UseCase;

    .line 87
    .line 88
    iget-object v5, v5, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 89
    .line 90
    invoke-static {v5, v2}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;)Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    iget-object v6, v5, Landroidx/camera/core/impl/SessionConfig;->mRepeatingCaptureConfig:Landroidx/camera/core/impl/CaptureConfig;

    .line 99
    .line 100
    iget-object v7, v6, Landroidx/camera/core/impl/CaptureConfig;->mCameraCaptureCallbacks:Ljava/util/List;

    .line 101
    .line 102
    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/stream/RawField;->addAllCameraCaptureCallbacks(Ljava/util/Collection;)V

    .line 103
    .line 104
    .line 105
    iget-object v7, v5, Landroidx/camera/core/impl/SessionConfig;->mSingleCameraCaptureCallbacks:Ljava/util/List;

    .line 106
    .line 107
    iget-object v8, p2, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSingleCameraCaptureCallbacks:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-eqz v9, :cond_4

    .line 118
    .line 119
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    check-cast v9, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 124
    .line 125
    invoke-virtual {v0, v9}, Lorg/apache/james/mime4j/stream/RawField;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    if-nez v10, :cond_3

    .line 133
    .line 134
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    iget-object v7, v5, Landroidx/camera/core/impl/SessionConfig;->mSessionStateCallbacks:Ljava/util/List;

    .line 139
    .line 140
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    if-eqz v8, :cond_6

    .line 149
    .line 150
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    check-cast v8, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 155
    .line 156
    iget-object v9, p2, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSessionStateCallbacks:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    if-eqz v10, :cond_5

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_5
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_6
    iget-object v5, v5, Landroidx/camera/core/impl/SessionConfig;->mDeviceStateCallbacks:Ljava/util/List;

    .line 170
    .line 171
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    if-eqz v7, :cond_8

    .line 180
    .line 181
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    check-cast v7, Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 186
    .line 187
    iget-object v8, p2, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mDeviceStateCallbacks:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    if-eqz v9, :cond_7

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_7
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_8
    iget-object v5, v6, Landroidx/camera/core/impl/CaptureConfig;->mImplementationOptions:Landroidx/camera/core/impl/OptionsBundle;

    .line 201
    .line 202
    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/stream/RawField;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_1

    .line 206
    .line 207
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    invoke-static {}, Lorg/jsoup/helper/Validate;->checkMainThread()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceEdge;->checkNotClosed()V

    .line 214
    .line 215
    .line 216
    iget-boolean v2, p1, Landroidx/camera/core/processing/SurfaceEdge;->mHasConsumer:Z

    .line 217
    .line 218
    const/4 v4, 0x1

    .line 219
    xor-int/2addr v2, v4

    .line 220
    const-string v5, "Consumer can only be linked once."

    .line 221
    .line 222
    invoke-static {v5, v2}, Landroidx/room/util/RelationUtil;->checkState(Ljava/lang/String;Z)V

    .line 223
    .line 224
    .line 225
    iput-boolean v4, p1, Landroidx/camera/core/processing/SurfaceEdge;->mHasConsumer:Z

    .line 226
    .line 227
    iget-object p1, p1, Landroidx/camera/core/processing/SurfaceEdge;->mSettableSurface:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    .line 228
    .line 229
    iget-object v2, p3, Landroidx/camera/core/impl/AutoValue_StreamSpec;->dynamicRange:Landroidx/camera/core/DynamicRange;

    .line 230
    .line 231
    invoke-virtual {p2, p1, v2, v3}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/DynamicRange;I)V

    .line 232
    .line 233
    .line 234
    iget-object p1, v1, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mParentMetadataCallback:Landroidx/camera/core/MetadataImageReader$1;

    .line 235
    .line 236
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/stream/RawField;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p3, Landroidx/camera/core/impl/AutoValue_StreamSpec;->implementationOptions:Landroidx/camera/core/impl/Config;

    .line 240
    .line 241
    if-eqz p1, :cond_a

    .line 242
    .line 243
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/stream/RawField;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 244
    .line 245
    .line 246
    :cond_a
    iget p1, p3, Landroidx/camera/core/impl/AutoValue_StreamSpec;->sessionType:I

    .line 247
    .line 248
    iput p1, p2, Landroidx/camera/core/impl/SessionConfig$BaseBuilder;->mSessionType:I

    .line 249
    .line 250
    invoke-virtual {p0, p2, p3}, Landroidx/camera/core/UseCase;->applyExpectedFrameRateRange(Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/core/impl/AutoValue_StreamSpec;)V

    .line 251
    .line 252
    .line 253
    return-object p2
.end method

.method public final getDefaultConfig(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 3

    .line 103
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mDefaultConfig:Landroidx/camera/core/streamsharing/StreamSharingConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/camera/core/impl/Config$-CC;->$default$getCaptureType(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    move-result-object v1

    const/4 v2, 0x1

    .line 104
    invoke-interface {p2, v1, v2}, Landroidx/camera/core/impl/UseCaseConfigFactory;->getConfig(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;I)Landroidx/camera/core/impl/Config;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, v0, Landroidx/camera/core/streamsharing/StreamSharingConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 106
    invoke-static {p2, p1}, Landroidx/camera/core/impl/Config$-CC;->mergeConfigs(Landroidx/camera/core/impl/Config;Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/camera/core/streamsharing/StreamSharing;->getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/Preview$Builder;

    invoke-virtual {p0}, Landroidx/camera/core/Preview$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p0

    return-object p0
.end method

.method public final getSupportedDynamicRanges(Landroidx/camera/core/impl/CameraInfoInternal;)Ljava/util/Set;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mChildren:Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroidx/camera/core/UseCase;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroidx/camera/core/UseCase;->getSupportedDynamicRanges(Landroidx/camera/core/impl/CameraInfoInternal;)Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    if-nez v1, :cond_2

    .line 37
    .line 38
    new-instance v1, Ljava/util/HashSet;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    return-object v1
.end method

.method public final getSupportedEffectTargets()Ljava/util/Set;
    .locals 1

    .line 1
    new-instance p0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public final getUseCaseConfigBuilder(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/UseCaseConfig$Builder;
    .locals 1

    .line 1
    new-instance p0, Landroidx/camera/core/Preview$Builder;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/camera/core/impl/MutableOptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x6

    .line 8
    invoke-direct {p0, p1, v0}, Landroidx/camera/core/Preview$Builder;-><init>(Landroidx/camera/core/impl/MutableOptionsBundle;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final onBind()V
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mChildren:Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/camera/core/UseCase;

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mChildrenVirtualCameras:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroidx/camera/core/streamsharing/VirtualCamera;

    .line 28
    .line 29
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    iget-object v4, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mUseCaseConfigFactory:Landroidx/camera/core/impl/UseCaseConfigFactory;

    .line 34
    .line 35
    invoke-virtual {v1, v3, v4}, Landroidx/camera/core/UseCase;->getDefaultConfig(ZLandroidx/camera/core/impl/UseCaseConfigFactory;)Landroidx/camera/core/impl/UseCaseConfig;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-virtual {v1, v2, v4, v4, v3}, Landroidx/camera/core/UseCase;->bindToCamera(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public final onCameraControlReady()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mChildren:Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/camera/core/UseCase;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->onCameraControlReady()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final onMergeConfig(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/UseCaseConfig$Builder;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 16

    .line 1
    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/ExtendableBuilder;->getMutableConfig()Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 8
    .line 9
    iget-object v2, v1, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mChildrenConfigs:Ljava/util/HashSet;

    .line 10
    .line 11
    iget-object v3, v1, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mResolutionsMerger:Landroidx/camera/core/streamsharing/ResolutionsMerger;

    .line 12
    .line 13
    iget-object v4, v3, Landroidx/camera/core/streamsharing/ResolutionsMerger;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 14
    .line 15
    const/16 v5, 0x22

    .line 16
    .line 17
    invoke-interface {v4, v5}, Landroidx/camera/core/impl/CameraInfoInternal;->getSupportedResolutions(I)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-object v6, v3, Landroidx/camera/core/streamsharing/ResolutionsMerger;->mChildrenConfigs:Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-eqz v8, :cond_2

    .line 32
    .line 33
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    check-cast v8, Landroidx/camera/core/impl/UseCaseConfig;

    .line 38
    .line 39
    invoke-interface {v8}, Landroidx/camera/core/impl/UseCaseConfig;->isHighResolutionDisabled()Z

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    if-eqz v9, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    instance-of v9, v8, Landroidx/camera/core/impl/ImageOutputConfig;

    .line 47
    .line 48
    if-eqz v9, :cond_0

    .line 49
    .line 50
    check-cast v8, Landroidx/camera/core/impl/ImageOutputConfig;

    .line 51
    .line 52
    invoke-interface {v8}, Landroidx/camera/core/impl/ImageOutputConfig;->getResolutionSelector$1()Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    sget-object v7, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_SUPPORTED_RESOLUTIONS:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 57
    .line 58
    const/4 v8, 0x0

    .line 59
    invoke-virtual {v0, v7, v8}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    check-cast v7, Ljava/util/List;

    .line 64
    .line 65
    if-eqz v7, :cond_5

    .line 66
    .line 67
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_4

    .line 76
    .line 77
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Landroid/util/Pair;

    .line 82
    .line 83
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v9, Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-eqz v9, :cond_3

    .line 96
    .line 97
    iget-object v4, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v4, [Landroid/util/Size;

    .line 100
    .line 101
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    goto :goto_1

    .line 106
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    :cond_5
    :goto_1
    iget-object v5, v3, Landroidx/camera/core/streamsharing/ResolutionsMerger;->mFallbackAspectRatio:Landroid/util/Rational;

    .line 112
    .line 113
    new-instance v7, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    new-instance v9, Ljava/util/HashSet;

    .line 119
    .line 120
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    if-eqz v11, :cond_6

    .line 132
    .line 133
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    check-cast v11, Landroidx/camera/core/impl/UseCaseConfig;

    .line 138
    .line 139
    invoke-virtual {v3, v11}, Landroidx/camera/core/streamsharing/ResolutionsMerger;->getSortedChildSizes(Landroidx/camera/core/impl/UseCaseConfig;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    invoke-interface {v9, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    const/4 v11, 0x0

    .line 156
    if-eqz v10, :cond_8

    .line 157
    .line 158
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    check-cast v10, Landroid/util/Size;

    .line 163
    .line 164
    invoke-static {v5, v10}, Landroidx/camera/core/impl/utils/AspectRatioUtil;->hasMatchingAspectRatio(Landroid/util/Rational;Landroid/util/Size;)Z

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-nez v10, :cond_7

    .line 169
    .line 170
    iget-object v9, v3, Landroidx/camera/core/streamsharing/ResolutionsMerger;->mSensorAspectRatio:Landroid/util/Rational;

    .line 171
    .line 172
    invoke-virtual {v3, v9, v4, v11}, Landroidx/camera/core/streamsharing/ResolutionsMerger;->selectParentResolutionsByAspectRatio(Landroid/util/Rational;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 177
    .line 178
    .line 179
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    const/4 v12, 0x1

    .line 188
    if-eqz v10, :cond_9

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_9
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    if-eqz v10, :cond_f

    .line 200
    .line 201
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    check-cast v10, Landroidx/camera/core/impl/UseCaseConfig;

    .line 206
    .line 207
    invoke-virtual {v3, v10}, Landroidx/camera/core/streamsharing/ResolutionsMerger;->getSortedChildSizes(Landroidx/camera/core/impl/UseCaseConfig;)Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    move v13, v11

    .line 216
    move v14, v13

    .line 217
    :cond_b
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v15

    .line 221
    if-eqz v15, :cond_e

    .line 222
    .line 223
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v15

    .line 227
    check-cast v15, Landroid/util/Size;

    .line 228
    .line 229
    invoke-static {v5, v15}, Landroidx/camera/core/impl/utils/AspectRatioUtil;->hasMatchingAspectRatio(Landroid/util/Rational;Landroid/util/Size;)Z

    .line 230
    .line 231
    .line 232
    move-result v15

    .line 233
    if-eqz v15, :cond_c

    .line 234
    .line 235
    move v13, v12

    .line 236
    :cond_c
    if-eqz v14, :cond_d

    .line 237
    .line 238
    if-eqz v15, :cond_d

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_d
    if-nez v15, :cond_b

    .line 242
    .line 243
    move v14, v12

    .line 244
    goto :goto_3

    .line 245
    :cond_e
    if-nez v13, :cond_a

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_f
    move v9, v11

    .line 249
    :goto_4
    invoke-virtual {v3, v5, v4, v11}, Landroidx/camera/core/streamsharing/ResolutionsMerger;->selectParentResolutionsByAspectRatio(Landroid/util/Rational;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-virtual {v7, v9, v5}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, v4, v11}, Landroidx/camera/core/streamsharing/ResolutionsMerger;->selectOtherAspectRatioParentResolutionsWithFovPriority(Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 261
    .line 262
    .line 263
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    const-string v6, "ResolutionsMerger"

    .line 268
    .line 269
    if-eqz v5, :cond_10

    .line 270
    .line 271
    const-string v5, "Failed to find a parent resolution that does not result in double-cropping, this might due to camera not supporting 4:3 and 16:9resolutions or a strict ResolutionSelector settings. Starting resolution selection process with resolutions that might have a smaller FOV."

    .line 272
    .line 273
    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3, v4, v12}, Landroidx/camera/core/streamsharing/ResolutionsMerger;->selectOtherAspectRatioParentResolutionsWithFovPriority(Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 281
    .line 282
    .line 283
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    const-string v4, "Parent resolutions: "

    .line 286
    .line 287
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-static {v6, v3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    sget-object v3, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_CUSTOM_ORDERED_RESOLUTIONS:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 301
    .line 302
    invoke-virtual {v0, v3, v7}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    sget-object v3, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_SURFACE_OCCUPANCY_PRIORITY:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 306
    .line 307
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    move v5, v11

    .line 312
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 313
    .line 314
    .line 315
    move-result v6

    .line 316
    if-eqz v6, :cond_11

    .line 317
    .line 318
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v6

    .line 322
    check-cast v6, Landroidx/camera/core/impl/UseCaseConfig;

    .line 323
    .line 324
    invoke-interface {v6}, Landroidx/camera/core/impl/UseCaseConfig;->getSurfaceOccupancyPriority()I

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    goto :goto_5

    .line 333
    :cond_11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-virtual {v0, v3, v4}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    new-instance v3, Ljava/util/ArrayList;

    .line 341
    .line 342
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    if-eqz v5, :cond_12

    .line 354
    .line 355
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    check-cast v5, Landroidx/camera/core/impl/UseCaseConfig;

    .line 360
    .line 361
    invoke-interface {v5}, Landroidx/camera/core/impl/ImageInputConfig;->getDynamicRange()Landroidx/camera/core/DynamicRange;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    goto :goto_6

    .line 369
    :cond_12
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 374
    .line 375
    .line 376
    move-result v5

    .line 377
    if-eqz v5, :cond_13

    .line 378
    .line 379
    goto/16 :goto_b

    .line 380
    .line 381
    :cond_13
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    check-cast v5, Landroidx/camera/core/DynamicRange;

    .line 386
    .line 387
    iget v6, v5, Landroidx/camera/core/DynamicRange;->mEncoding:I

    .line 388
    .line 389
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 390
    .line 391
    .line 392
    move-result-object v6

    .line 393
    iget v5, v5, Landroidx/camera/core/DynamicRange;->mBitDepth:I

    .line 394
    .line 395
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    move v7, v12

    .line 400
    :goto_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 401
    .line 402
    .line 403
    move-result v9

    .line 404
    if-ge v7, v9, :cond_1e

    .line 405
    .line 406
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v9

    .line 410
    check-cast v9, Landroidx/camera/core/DynamicRange;

    .line 411
    .line 412
    iget v10, v9, Landroidx/camera/core/DynamicRange;->mEncoding:I

    .line 413
    .line 414
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 415
    .line 416
    .line 417
    move-result-object v10

    .line 418
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 419
    .line 420
    .line 421
    move-result-object v11

    .line 422
    const/4 v13, 0x2

    .line 423
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v13

    .line 427
    invoke-virtual {v6, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v14

    .line 431
    if-eqz v14, :cond_14

    .line 432
    .line 433
    :goto_8
    move-object v6, v10

    .line 434
    goto :goto_9

    .line 435
    :cond_14
    invoke-virtual {v10, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v14

    .line 439
    if-eqz v14, :cond_15

    .line 440
    .line 441
    goto :goto_9

    .line 442
    :cond_15
    invoke-virtual {v6, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v14

    .line 446
    if-eqz v14, :cond_16

    .line 447
    .line 448
    invoke-virtual {v10, v11}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v14

    .line 452
    if-nez v14, :cond_16

    .line 453
    .line 454
    goto :goto_8

    .line 455
    :cond_16
    invoke-virtual {v10, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v13

    .line 459
    if-eqz v13, :cond_17

    .line 460
    .line 461
    invoke-virtual {v6, v11}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v11

    .line 465
    if-nez v11, :cond_17

    .line 466
    .line 467
    goto :goto_9

    .line 468
    :cond_17
    invoke-virtual {v6, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v10

    .line 472
    if-eqz v10, :cond_18

    .line 473
    .line 474
    goto :goto_9

    .line 475
    :cond_18
    move-object v6, v8

    .line 476
    :goto_9
    iget v9, v9, Landroidx/camera/core/DynamicRange;->mBitDepth:I

    .line 477
    .line 478
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 479
    .line 480
    .line 481
    move-result-object v9

    .line 482
    invoke-virtual {v5, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result v10

    .line 486
    if-eqz v10, :cond_19

    .line 487
    .line 488
    move-object v5, v9

    .line 489
    goto :goto_a

    .line 490
    :cond_19
    invoke-virtual {v9, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v10

    .line 494
    if-eqz v10, :cond_1a

    .line 495
    .line 496
    goto :goto_a

    .line 497
    :cond_1a
    invoke-virtual {v5, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v9

    .line 501
    if-eqz v9, :cond_1b

    .line 502
    .line 503
    goto :goto_a

    .line 504
    :cond_1b
    move-object v5, v8

    .line 505
    :goto_a
    if-eqz v6, :cond_1d

    .line 506
    .line 507
    if-nez v5, :cond_1c

    .line 508
    .line 509
    goto :goto_b

    .line 510
    :cond_1c
    add-int/lit8 v7, v7, 0x1

    .line 511
    .line 512
    goto :goto_7

    .line 513
    :cond_1d
    :goto_b
    move-object v3, v8

    .line 514
    goto :goto_c

    .line 515
    :cond_1e
    new-instance v3, Landroidx/camera/core/DynamicRange;

    .line 516
    .line 517
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 518
    .line 519
    .line 520
    move-result v4

    .line 521
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 522
    .line 523
    .line 524
    move-result v5

    .line 525
    invoke-direct {v3, v4, v5}, Landroidx/camera/core/DynamicRange;-><init>(II)V

    .line 526
    .line 527
    .line 528
    :goto_c
    if-eqz v3, :cond_24

    .line 529
    .line 530
    sget-object v4, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_DYNAMIC_RANGE:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 531
    .line 532
    invoke-virtual {v0, v4, v3}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    sget-object v3, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_TARGET_FRAME_RATE:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 536
    .line 537
    sget-object v4, Landroidx/camera/core/impl/AutoValue_StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 538
    .line 539
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 544
    .line 545
    .line 546
    move-result v5

    .line 547
    if-eqz v5, :cond_20

    .line 548
    .line 549
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v5

    .line 553
    check-cast v5, Landroidx/camera/core/impl/UseCaseConfig;

    .line 554
    .line 555
    invoke-interface {v5, v4}, Landroidx/camera/core/impl/UseCaseConfig;->getTargetFrameRate(Landroid/util/Range;)Landroid/util/Range;

    .line 556
    .line 557
    .line 558
    move-result-object v5

    .line 559
    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    sget-object v6, Landroidx/camera/core/impl/AutoValue_StreamSpec;->FRAME_RATE_RANGE_UNSPECIFIED:Landroid/util/Range;

    .line 563
    .line 564
    invoke-virtual {v6, v4}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v6

    .line 568
    if-eqz v6, :cond_1f

    .line 569
    .line 570
    move-object v4, v5

    .line 571
    goto :goto_d

    .line 572
    :cond_1f
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 573
    .line 574
    .line 575
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    goto :goto_d

    .line 577
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    const-string v6, "No intersected frame rate can be found from the target frame rate settings of the UseCases! Resolved: "

    .line 580
    .line 581
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    const-string v6, " <<>> "

    .line 588
    .line 589
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v2

    .line 599
    const-string v6, "VirtualCameraAdapter"

    .line 600
    .line 601
    invoke-static {v6, v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v4, v5}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    .line 605
    .line 606
    .line 607
    move-result-object v4

    .line 608
    :cond_20
    invoke-virtual {v0, v3, v4}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 609
    .line 610
    .line 611
    iget-object v2, v1, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mChildren:Ljava/util/HashSet;

    .line 612
    .line 613
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    :cond_21
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    if-eqz v3, :cond_23

    .line 622
    .line 623
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    check-cast v3, Landroidx/camera/core/UseCase;

    .line 628
    .line 629
    iget-object v4, v1, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mChildrenConfigsMap:Ljava/util/HashMap;

    .line 630
    .line 631
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    check-cast v3, Landroidx/camera/core/impl/UseCaseConfig;

    .line 636
    .line 637
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    invoke-interface {v3}, Landroidx/camera/core/impl/UseCaseConfig;->getVideoStabilizationMode()I

    .line 641
    .line 642
    .line 643
    move-result v4

    .line 644
    if-eqz v4, :cond_22

    .line 645
    .line 646
    sget-object v4, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_VIDEO_STABILIZATION_MODE:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 647
    .line 648
    invoke-interface {v3}, Landroidx/camera/core/impl/UseCaseConfig;->getVideoStabilizationMode()I

    .line 649
    .line 650
    .line 651
    move-result v5

    .line 652
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 653
    .line 654
    .line 655
    move-result-object v5

    .line 656
    invoke-virtual {v0, v4, v5}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 657
    .line 658
    .line 659
    :cond_22
    invoke-interface {v3}, Landroidx/camera/core/impl/UseCaseConfig;->getPreviewStabilizationMode()I

    .line 660
    .line 661
    .line 662
    move-result v4

    .line 663
    if-eqz v4, :cond_21

    .line 664
    .line 665
    sget-object v4, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_PREVIEW_STABILIZATION_MODE:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 666
    .line 667
    invoke-interface {v3}, Landroidx/camera/core/impl/UseCaseConfig;->getPreviewStabilizationMode()I

    .line 668
    .line 669
    .line 670
    move-result v3

    .line 671
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 672
    .line 673
    .line 674
    move-result-object v3

    .line 675
    invoke-virtual {v0, v4, v3}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)V

    .line 676
    .line 677
    .line 678
    goto :goto_e

    .line 679
    :cond_23
    invoke-interface/range {p2 .. p2}, Landroidx/camera/core/impl/UseCaseConfig$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    return-object v0

    .line 684
    :cond_24
    const-string v0, "Failed to merge child dynamic ranges, can not find a dynamic range that satisfies all children."

    .line 685
    .line 686
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    return-object v8
.end method

.method public final onSessionStart()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mChildren:Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/camera/core/UseCase;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->onSessionStart()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final onSessionStop()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mChildren:Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/camera/core/UseCase;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/camera/core/UseCase;->onSessionStop()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final onSuggestedStreamSpecImplementationOptionsUpdated(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/AutoValue_StreamSpec;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mSessionConfigBuilder:Landroidx/camera/core/impl/SessionConfig$Builder;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v2, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v0, v2, v3

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    aget-object v1, v2, v3

    .line 24
    .line 25
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Landroidx/camera/core/UseCase;->updateSessionConfig(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Landroidx/camera/core/UseCase;->mAttachedStreamSpec:Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/camera/core/impl/AutoValue_StreamSpec;->toBuilder()Landroidx/appcompat/widget/TooltipPopup;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    iput-object p1, p0, Landroidx/appcompat/widget/TooltipPopup;->mTmpAnchorPos:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/appcompat/widget/TooltipPopup;->build()Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public final onSuggestedStreamSpecUpdated(Landroidx/camera/core/impl/AutoValue_StreamSpec;Landroidx/camera/core/impl/AutoValue_StreamSpec;)Landroidx/camera/core/impl/AutoValue_StreamSpec;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "onSuggestedStreamSpecUpdated: primaryStreamSpec = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", secondaryStreamSpec "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "StreamSharing"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getCameraId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getSecondaryCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    :goto_0
    move-object v4, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/core/UseCase;->getSecondaryCamera()Landroidx/camera/core/impl/CameraInternal;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_0

    .line 54
    :goto_1
    iget-object v5, p0, Landroidx/camera/core/UseCase;->mCurrentConfig:Landroidx/camera/core/impl/UseCaseConfig;

    .line 55
    .line 56
    move-object v2, p0

    .line 57
    move-object v6, p1

    .line 58
    move-object v7, p2

    .line 59
    invoke-virtual/range {v2 .. v7}, Landroidx/camera/core/streamsharing/StreamSharing;->createPipelineAndUpdateChildrenSpecs(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/AutoValue_StreamSpec;Landroidx/camera/core/impl/AutoValue_StreamSpec;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v2, p0}, Landroidx/camera/core/UseCase;->updateSessionConfig(Ljava/util/List;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Landroidx/camera/core/UseCase;->notifyActive()V

    .line 67
    .line 68
    .line 69
    return-object v6
.end method

.method public final onUnbind()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/streamsharing/StreamSharing;->clearPipeline$3()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/camera/core/streamsharing/StreamSharing;->mVirtualCameraAdapter:Landroidx/camera/core/streamsharing/VirtualCameraAdapter;

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mChildren:Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/camera/core/UseCase;

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/camera/core/streamsharing/VirtualCameraAdapter;->mChildrenVirtualCameras:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroidx/camera/core/streamsharing/VirtualCamera;

    .line 31
    .line 32
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroidx/camera/core/UseCase;->unbindFromCamera(Landroidx/camera/core/impl/CameraInternal;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.class public final Landroidx/camera/core/impl/PreviewConfig;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/impl/UseCaseConfig;
.implements Landroidx/camera/core/impl/ImageOutputConfig;
.implements Landroidx/camera/core/internal/ThreadConfig;


# instance fields
.field public final mConfig:Landroidx/camera/core/impl/OptionsBundle;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/OptionsBundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/core/impl/PreviewConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic containsOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->$default$containsOption(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/AutoValue_Config_Option;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final synthetic findOptions(Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->$default$findOptions(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic getAppTargetRotation()I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/ImageOutputConfig$-CC;->$default$getAppTargetRotation(Landroidx/camera/core/impl/ImageOutputConfig;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final synthetic getCaptureType()Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/Config$-CC;->$default$getCaptureType(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getConfig()Landroidx/camera/core/impl/Config;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/impl/PreviewConfig;->mConfig:Landroidx/camera/core/impl/OptionsBundle;

    .line 2
    .line 3
    return-object p0
.end method

.method public final synthetic getCustomMaxFrameRate(Landroid/util/Size;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->$default$getCustomMaxFrameRate(Landroidx/camera/core/impl/UseCaseConfig;Landroid/util/Size;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final synthetic getCustomOrderedResolutions()Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/ImageOutputConfig$-CC;->$default$getCustomOrderedResolutions(Landroidx/camera/core/impl/ImageOutputConfig;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getDefaultCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_DEFAULT_CAPTURE_CONFIG:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 3
    .line 4
    invoke-virtual {p0, v1, v0}, Landroidx/camera/core/impl/PreviewConfig;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroidx/camera/core/impl/CaptureConfig;

    .line 9
    .line 10
    return-object p0
.end method

.method public final getDefaultResolution()Landroid/util/Size;
    .locals 2

    .line 1
    sget v0, Landroidx/camera/core/impl/ImageOutputConfig$-CC;->$r8$clinit:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_DEFAULT_RESOLUTION:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Landroidx/camera/core/impl/PreviewConfig;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/util/Size;

    .line 11
    .line 12
    return-object p0
.end method

.method public final getDefaultSessionConfig()Landroidx/camera/core/impl/SessionConfig;
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_DEFAULT_SESSION_CONFIG:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/PreviewConfig;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/camera/core/impl/SessionConfig;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getDefaultSessionConfig$1()Landroidx/camera/core/impl/SessionConfig;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_DEFAULT_SESSION_CONFIG:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 3
    .line 4
    invoke-virtual {p0, v1, v0}, Landroidx/camera/core/impl/PreviewConfig;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroidx/camera/core/impl/SessionConfig;

    .line 9
    .line 10
    return-object p0
.end method

.method public final synthetic getDynamicRange()Landroidx/camera/core/DynamicRange;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/Config$-CC;->$default$getDynamicRange(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/DynamicRange;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getInputFormat()I
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_FORMAT:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/camera/core/impl/Config$-CC;->$default$retrieveOption(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/AutoValue_Config_Option;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getMaxResolution()Landroid/util/Size;
    .locals 2

    .line 1
    sget v0, Landroidx/camera/core/impl/ImageOutputConfig$-CC;->$r8$clinit:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_MAX_RESOLUTION:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Landroidx/camera/core/impl/PreviewConfig;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/util/Size;

    .line 11
    .line 12
    return-object p0
.end method

.method public final synthetic getMirrorMode()I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/ImageOutputConfig$-CC;->$default$getMirrorMode(Landroidx/camera/core/impl/ImageOutputConfig;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final synthetic getOptionPriority(Landroidx/camera/core/impl/AutoValue_Config_Option;)Landroidx/camera/core/impl/Config$OptionPriority;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->$default$getOptionPriority(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/AutoValue_Config_Option;)Landroidx/camera/core/impl/Config$OptionPriority;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final synthetic getPreviewStabilizationMode()I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/Config$-CC;->$default$getPreviewStabilizationMode(Landroidx/camera/core/impl/UseCaseConfig;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final synthetic getPriorities(Landroidx/camera/core/impl/AutoValue_Config_Option;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->$default$getPriorities(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/AutoValue_Config_Option;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getResolutionSelector()Landroidx/camera/core/resolutionselector/ResolutionSelector;
    .locals 1

    .line 1
    sget v0, Landroidx/camera/core/impl/ImageOutputConfig$-CC;->$r8$clinit:I

    .line 2
    .line 3
    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_RESOLUTION_SELECTOR:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/PreviewConfig;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getResolutionSelector$1()Landroidx/camera/core/resolutionselector/ResolutionSelector;
    .locals 2

    .line 1
    sget v0, Landroidx/camera/core/impl/ImageOutputConfig$-CC;->$r8$clinit:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_RESOLUTION_SELECTOR:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Landroidx/camera/core/impl/PreviewConfig;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroidx/camera/core/resolutionselector/ResolutionSelector;

    .line 11
    .line 12
    return-object p0
.end method

.method public final getSessionOptionUnpacker()Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultSessionOptionsUnpacker;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_SESSION_CONFIG_UNPACKER:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 3
    .line 4
    invoke-virtual {p0, v1, v0}, Landroidx/camera/core/impl/PreviewConfig;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultSessionOptionsUnpacker;

    .line 9
    .line 10
    return-object p0
.end method

.method public final synthetic getSessionType()I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/Config$-CC;->$default$getSessionType(Landroidx/camera/core/impl/UseCaseConfig;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final synthetic getStreamUseCase()Landroidx/camera/core/impl/StreamUseCase;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/Config$-CC;->$default$getStreamUseCase(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/StreamUseCase;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getSupportedResolutions()Ljava/util/List;
    .locals 2

    .line 1
    sget v0, Landroidx/camera/core/impl/ImageOutputConfig$-CC;->$r8$clinit:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_SUPPORTED_RESOLUTIONS:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Landroidx/camera/core/impl/PreviewConfig;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/util/List;

    .line 11
    .line 12
    return-object p0
.end method

.method public final synthetic getSurfaceOccupancyPriority()I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/Config$-CC;->$default$getSurfaceOccupancyPriority(Landroidx/camera/core/impl/UseCaseConfig;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final synthetic getTakePictureManagerProvider()Landroidx/camera/core/impl/UseCaseConfig$1;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/Config$-CC;->$default$getTakePictureManagerProvider(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/UseCaseConfig$1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getTargetAspectRatio()I
    .locals 1

    .line 1
    sget v0, Landroidx/camera/core/impl/ImageOutputConfig$-CC;->$r8$clinit:I

    .line 2
    .line 3
    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ASPECT_RATIO:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/PreviewConfig;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getTargetFrameRate(Landroid/util/Range;)Landroid/util/Range;
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_TARGET_FRAME_RATE:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroidx/camera/core/impl/PreviewConfig;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/util/Range;

    .line 8
    .line 9
    return-object p0
.end method

.method public final synthetic getTargetName()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/Config$-CC;->$default$getTargetName(Landroidx/camera/core/impl/UseCaseConfig;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final synthetic getTargetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->$default$getTargetName(Landroidx/camera/core/impl/UseCaseConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTargetResolution()Landroid/util/Size;
    .locals 2

    .line 1
    sget v0, Landroidx/camera/core/impl/ImageOutputConfig$-CC;->$r8$clinit:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sget-object v1, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_RESOLUTION:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Landroidx/camera/core/impl/PreviewConfig;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/util/Size;

    .line 11
    .line 12
    return-object p0
.end method

.method public final synthetic getTargetRotation(I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/core/impl/ImageOutputConfig$-CC;->$default$getTargetRotation(Landroidx/camera/core/impl/ImageOutputConfig;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final synthetic getVideoStabilizationMode()I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/Config$-CC;->$default$getVideoStabilizationMode(Landroidx/camera/core/impl/UseCaseConfig;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final hasDynamicRange()Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/core/impl/ImageInputConfig;->OPTION_INPUT_DYNAMIC_RANGE:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/PreviewConfig;->containsOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final hasTargetAspectRatio()Z
    .locals 1

    .line 1
    sget v0, Landroidx/camera/core/impl/ImageOutputConfig$-CC;->$r8$clinit:I

    .line 2
    .line 3
    sget-object v0, Landroidx/camera/core/impl/ImageOutputConfig;->OPTION_TARGET_ASPECT_RATIO:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/PreviewConfig;->containsOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final hasTargetFrameRate()Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/camera/core/impl/UseCaseConfig;->OPTION_TARGET_FRAME_RATE:Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/PreviewConfig;->containsOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final synthetic isHighResolutionDisabled()Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/Config$-CC;->$default$isHighResolutionDisabled(Landroidx/camera/core/impl/UseCaseConfig;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final synthetic isStrictFrameRateRequired()Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/Config$-CC;->$default$isStrictFrameRateRequired(Landroidx/camera/core/impl/UseCaseConfig;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final synthetic isZslDisabled()Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/Config$-CC;->$default$isZslDisabled(Landroidx/camera/core/impl/UseCaseConfig;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final synthetic listOptions()Ljava/util/Set;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/impl/Config$-CC;->$default$listOptions(Landroidx/camera/core/impl/ReadableConfig;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final synthetic retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/camera/core/impl/Config$-CC;->$default$retrieveOption(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/AutoValue_Config_Option;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final synthetic retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/Config$-CC;->$default$retrieveOption(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic retrieveOptionWithPriority(Landroidx/camera/core/impl/AutoValue_Config_Option;Landroidx/camera/core/impl/Config$OptionPriority;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/Config$-CC;->$default$retrieveOptionWithPriority(Landroidx/camera/core/impl/ReadableConfig;Landroidx/camera/core/impl/AutoValue_Config_Option;Landroidx/camera/core/impl/Config$OptionPriority;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

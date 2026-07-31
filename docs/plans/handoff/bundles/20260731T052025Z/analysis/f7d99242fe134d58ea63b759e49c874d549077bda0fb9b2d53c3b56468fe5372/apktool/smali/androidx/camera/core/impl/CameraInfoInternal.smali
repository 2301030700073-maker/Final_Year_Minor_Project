.class public interface abstract Landroidx/camera/core/impl/CameraInfoInternal;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/CameraInfo;


# virtual methods
.method public abstract addSessionCaptureCallback(Ljava/util/concurrent/Executor;Landroidx/camera/view/PreviewStreamStateObserver$2;)V
.end method

.method public abstract getAvailableCapabilities()Ljava/util/Set;
.end method

.method public abstract getCameraCharacteristics()Ljava/lang/Object;
.end method

.method public abstract getCameraId()Ljava/lang/String;
.end method

.method public abstract getCameraQuirks()Landroidx/camera/core/impl/Quirks;
.end method

.method public abstract getImplementation()Landroidx/camera/core/impl/CameraInfoInternal;
.end method

.method public abstract getSensorRect()Landroid/graphics/Rect;
.end method

.method public abstract getSupportedDynamicRanges()Ljava/util/Set;
.end method

.method public abstract getSupportedOutputFormats()Ljava/util/Set;
.end method

.method public abstract getSupportedResolutions(I)Ljava/util/List;
.end method

.method public abstract isPreviewStabilizationSupported()Z
.end method

.method public abstract isResolvedFeatureGroupSupported(Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;Landroidx/camera/core/LegacySessionConfig;)Z
.end method

.method public abstract isVideoStabilizationSupported()Z
.end method

.method public abstract removeSessionCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V
.end method

.method public abstract setCameraUseCaseAdapterProvider(Lokhttp3/Dispatcher;)V
.end method

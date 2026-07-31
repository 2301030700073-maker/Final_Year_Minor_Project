.class public interface abstract Landroidx/camera/core/impl/CameraInternal;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/Camera;
.implements Landroidx/camera/core/UseCase$StateChangeCallback;


# virtual methods
.method public abstract attachUseCases(Ljava/util/Collection;)V
.end method

.method public abstract detachUseCases(Ljava/util/ArrayList;)V
.end method

.method public abstract getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;
.end method

.method public abstract getCameraInfo()Landroidx/camera/core/CameraInfo;
.end method

.method public abstract getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;
.end method

.method public abstract getCameraState()Landroidx/camera/core/impl/Observable;
.end method

.method public abstract getExtendedConfig()Landroidx/camera/core/impl/CameraConfig;
.end method

.method public abstract getHasTransform()Z
.end method

.method public abstract isFrontFacing()Z
.end method

.method public abstract isRemoved()Z
.end method

.method public abstract onRemoved()V
.end method

.method public abstract release()Lcom/google/common/util/concurrent/ListenableFuture;
.end method

.method public abstract setActiveResumingMode(Z)V
.end method

.method public abstract setExtendedConfig(Landroidx/camera/core/impl/CameraConfig;)V
.end method

.method public abstract setPrimary(Z)V
.end method

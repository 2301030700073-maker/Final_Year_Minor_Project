.class public interface abstract Landroidx/camera/core/impl/CameraControlInternal;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DEFAULT_EMPTY_INSTANCE:Landroidx/camera/core/impl/CameraControlInternal$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/core/impl/CameraControlInternal$2;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/camera/core/impl/CameraControlInternal;->DEFAULT_EMPTY_INSTANCE:Landroidx/camera/core/impl/CameraControlInternal$2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract addInteropConfig(Landroidx/camera/core/impl/Config;)V
.end method

.method public abstract addZslConfig(Landroidx/camera/core/impl/SessionConfig$Builder;)V
.end method

.method public abstract clearInteropConfig()V
.end method

.method public abstract clearZslConfig()V
.end method

.method public abstract getInteropConfig()Landroidx/camera/core/impl/Config;
.end method

.method public abstract setFlashMode(I)V
.end method

.method public abstract setScreenFlash(Landroidx/camera/core/ImageCapture$ScreenFlash;)V
.end method

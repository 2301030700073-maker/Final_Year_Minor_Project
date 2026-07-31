.class public abstract Landroidx/camera/core/impl/CameraConfigs;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DEFAULT_CAMERA_CONFIG:Landroidx/biometric/BiometricPrompt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/biometric/BiometricPrompt;

    .line 2
    .line 3
    const/16 v1, 0x1b

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/biometric/BiometricPrompt;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/camera/core/impl/CameraConfigs;->DEFAULT_CAMERA_CONFIG:Landroidx/biometric/BiometricPrompt;

    .line 9
    .line 10
    return-void
.end method

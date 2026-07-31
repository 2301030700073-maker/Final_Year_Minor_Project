.class public final Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;
.super Ljava/lang/Exception;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final availableCameraCount:I


# direct methods
.method public constructor <init>(ILjava/lang/RuntimeException;)V
    .locals 1

    .line 1
    const-string v0, "Expected camera missing from device."

    .line 2
    .line 3
    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    iput p1, p0, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;->availableCameraCount:I

    .line 7
    .line 8
    return-void
.end method

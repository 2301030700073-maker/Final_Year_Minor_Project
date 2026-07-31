.class public interface abstract Landroidx/camera/core/RetryPolicy;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DEFAULT:Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;

    .line 2
    .line 3
    sget v1, Landroidx/camera/core/RetryPolicy$-CC;->$r8$clinit:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const-wide/16 v2, 0x1770

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;-><init>(IJ)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroidx/camera/core/RetryPolicy;->DEFAULT:Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;

    .line 12
    .line 13
    new-instance v0, Landroidx/camera/core/impl/TimeoutRetryPolicy;

    .line 14
    .line 15
    new-instance v1, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy$1;

    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy$1;-><init>(J)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v2, v3, v1}, Landroidx/camera/core/impl/TimeoutRetryPolicy;-><init>(JLandroidx/camera/core/RetryPolicy;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public abstract getTimeoutInMillis()J
.end method

.method public abstract onRetryDecisionRequested(Landroidx/camera/core/impl/CameraProviderExecutionState;)Landroidx/camera/core/RetryPolicy$RetryConfig;
.end method

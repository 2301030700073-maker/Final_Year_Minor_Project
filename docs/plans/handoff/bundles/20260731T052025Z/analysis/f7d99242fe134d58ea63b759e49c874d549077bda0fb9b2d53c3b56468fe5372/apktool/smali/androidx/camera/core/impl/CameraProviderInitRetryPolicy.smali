.class public final Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/RetryPolicy;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mDelegatePolicy:Landroidx/camera/core/RetryPolicy;


# direct methods
.method public constructor <init>(IJ)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Landroidx/camera/core/impl/TimeoutRetryPolicy;

    .line 10
    .line 11
    new-instance v0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy$1;

    .line 12
    .line 13
    invoke-direct {v0, p2, p3}, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy$1;-><init>(J)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2, p3, v0}, Landroidx/camera/core/impl/TimeoutRetryPolicy;-><init>(JLandroidx/camera/core/RetryPolicy;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;->mDelegatePolicy:Landroidx/camera/core/RetryPolicy;

    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance p1, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p1, v0, p2, p3}, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;-><init>(IJ)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;->mDelegatePolicy:Landroidx/camera/core/RetryPolicy;

    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getTimeoutInMillis()J
    .locals 2

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;->mDelegatePolicy:Landroidx/camera/core/RetryPolicy;

    .line 7
    .line 8
    check-cast p0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;->mDelegatePolicy:Landroidx/camera/core/RetryPolicy;

    .line 11
    .line 12
    check-cast p0, Landroidx/camera/core/impl/TimeoutRetryPolicy;

    .line 13
    .line 14
    iget-wide v0, p0, Landroidx/camera/core/impl/TimeoutRetryPolicy;->mTimeoutInMillis:J

    .line 15
    .line 16
    return-wide v0

    .line 17
    :pswitch_0
    iget-object p0, p0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;->mDelegatePolicy:Landroidx/camera/core/RetryPolicy;

    .line 18
    .line 19
    check-cast p0, Landroidx/camera/core/impl/TimeoutRetryPolicy;

    .line 20
    .line 21
    iget-wide v0, p0, Landroidx/camera/core/impl/TimeoutRetryPolicy;->mTimeoutInMillis:J

    .line 22
    .line 23
    return-wide v0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onRetryDecisionRequested(Landroidx/camera/core/impl/CameraProviderExecutionState;)Landroidx/camera/core/RetryPolicy$RetryConfig;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;->mDelegatePolicy:Landroidx/camera/core/RetryPolicy;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/camera/core/impl/CameraProviderInitRetryPolicy;->mDelegatePolicy:Landroidx/camera/core/RetryPolicy;

    .line 11
    .line 12
    check-cast p0, Landroidx/camera/core/impl/TimeoutRetryPolicy;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/TimeoutRetryPolicy;->onRetryDecisionRequested(Landroidx/camera/core/impl/CameraProviderExecutionState;)Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-boolean p0, p0, Landroidx/camera/core/RetryPolicy$RetryConfig;->mShouldRetry:Z

    .line 19
    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    iget-object p0, p1, Landroidx/camera/core/impl/CameraProviderExecutionState;->mCause:Ljava/lang/Throwable;

    .line 23
    .line 24
    instance-of p1, p0, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const-string p1, "CameraX"

    .line 29
    .line 30
    const-string v0, "The device might underreport the amount of the cameras. Finish the initialize task since we are already reaching the maximum number of retries."

    .line 31
    .line 32
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast p0, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;

    .line 36
    .line 37
    iget p0, p0, Landroidx/camera/core/impl/CameraValidator$CameraIdListIncorrectException;->availableCameraCount:I

    .line 38
    .line 39
    if-lez p0, :cond_0

    .line 40
    .line 41
    sget-object p0, Landroidx/camera/core/RetryPolicy$RetryConfig;->COMPLETE_WITHOUT_FAILURE:Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget-object p0, Landroidx/camera/core/RetryPolicy$RetryConfig;->NOT_RETRY:Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    sget-object p0, Landroidx/camera/core/RetryPolicy$RetryConfig;->DEFAULT_DELAY_RETRY:Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 48
    .line 49
    :goto_0
    return-object p0

    .line 50
    :pswitch_0
    check-cast p0, Landroidx/camera/core/impl/TimeoutRetryPolicy;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/TimeoutRetryPolicy;->onRetryDecisionRequested(Landroidx/camera/core/impl/CameraProviderExecutionState;)Landroidx/camera/core/RetryPolicy$RetryConfig;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

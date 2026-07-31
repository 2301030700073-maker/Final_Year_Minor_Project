.class public final Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/RequestFailure;


# instance fields
.field public final captureFailure:Landroid/hardware/camera2/CaptureFailure;

.field public final reason:I

.field public final wasImageCaptured:Z


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/RequestMetadata;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->captureFailure:Landroid/hardware/camera2/CaptureFailure;

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->reason:I

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureFailure;->wasImageCaptured()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->wasImageCaptured:Z

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final getReason()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->reason:I

    .line 2
    .line 3
    return p0
.end method

.method public final getWasImageCaptured()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->wasImageCaptured:Z

    .line 2
    .line 3
    return p0
.end method

.method public final unwrapAs(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Landroid/hardware/camera2/CaptureFailure;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lkotlin/jvm/internal/ClassReference;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidCaptureFailure;->captureFailure:Landroid/hardware/camera2/CaptureFailure;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

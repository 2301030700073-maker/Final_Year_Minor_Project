.class public final Landroidx/camera/camera2/pipe/OutputStatus;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final value:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/camera/camera2/pipe/OutputStatus;->value:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/camera/camera2/pipe/OutputStatus;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Landroidx/camera/camera2/pipe/OutputStatus;

    .line 7
    .line 8
    iget p1, p1, Landroidx/camera/camera2/pipe/OutputStatus;->value:I

    .line 9
    .line 10
    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStatus;->value:I

    .line 11
    .line 12
    if-eq p0, p1, :cond_1

    .line 13
    .line 14
    :goto_0
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStatus;->value:I

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget p0, p0, Landroidx/camera/camera2/pipe/OutputStatus;->value:I

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p0, v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    const-string v0, "OutputStatus(value="

    .line 15
    .line 16
    const/16 v1, 0x29

    .line 17
    .line 18
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;IC)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    const-string p0, "ERROR_OUTPUT_DROPPED"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_1
    const-string p0, "ERROR_OUTPUT_MISSING"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_2
    const-string p0, "ERROR_OUTPUT_ABORTED"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_3
    const-string p0, "ERROR_OUTPUT_FAILED"

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_0
    const-string p0, "UNAVAILABLE"

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    const-string p0, "AVAILABLE"

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_2
    const-string p0, "PENDING"

    .line 42
    .line 43
    return-object p0

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

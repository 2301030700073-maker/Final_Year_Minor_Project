.class public final Landroidx/camera/camera2/pipe/FlashMode;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroidx/camera/camera2/pipe/FlashMode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/FlashMode;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Landroidx/camera/camera2/pipe/FlashMode;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v2, v3}, Landroidx/camera/camera2/pipe/FlashMode;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v4, Landroidx/camera/camera2/pipe/FlashMode;

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    invoke-direct {v4, v5}, Landroidx/camera/camera2/pipe/FlashMode;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const/4 v6, 0x3

    .line 20
    new-array v6, v6, [Landroidx/camera/camera2/pipe/FlashMode;

    .line 21
    .line 22
    aput-object v0, v6, v1

    .line 23
    .line 24
    aput-object v2, v6, v3

    .line 25
    .line 26
    aput-object v4, v6, v5

    .line 27
    .line 28
    invoke-static {v6}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/camera/camera2/pipe/FlashMode;->value:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/camera/camera2/pipe/FlashMode;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Landroidx/camera/camera2/pipe/FlashMode;

    .line 7
    .line 8
    iget p1, p1, Landroidx/camera/camera2/pipe/FlashMode;->value:I

    .line 9
    .line 10
    iget p0, p0, Landroidx/camera/camera2/pipe/FlashMode;->value:I

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
    iget p0, p0, Landroidx/camera/camera2/pipe/FlashMode;->value:I

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "FlashMode(value="

    .line 2
    .line 3
    const/16 v1, 0x29

    .line 4
    .line 5
    iget p0, p0, Landroidx/camera/camera2/pipe/FlashMode;->value:I

    .line 6
    .line 7
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;IC)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

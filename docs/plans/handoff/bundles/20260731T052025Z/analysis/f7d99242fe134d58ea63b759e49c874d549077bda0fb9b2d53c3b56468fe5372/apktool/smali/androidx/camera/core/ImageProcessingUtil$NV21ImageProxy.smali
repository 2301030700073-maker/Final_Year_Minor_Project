.class public final Landroidx/camera/core/ImageProcessingUtil$NV21ImageProxy;
.super Landroidx/camera/core/ForwardingImageProxy;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mHeight:I

.field public final mPlanes:[Landroidx/camera/core/ImageProxy$PlaneProxy;

.field public final mWidth:I


# direct methods
.method public constructor <init>(Landroidx/camera/core/ImageProxy;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/camera/core/ForwardingImageProxy;-><init>(Landroidx/camera/core/ImageProxy;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;

    .line 5
    .line 6
    invoke-direct {p1, p5, p2}, Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;-><init>(ILjava/nio/ByteBuffer;)V

    .line 7
    .line 8
    .line 9
    new-instance p2, Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;

    .line 10
    .line 11
    invoke-direct {p2, p3, p5}, Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 12
    .line 13
    .line 14
    new-instance p3, Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;

    .line 15
    .line 16
    invoke-direct {p3, p4, p5}, Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 17
    .line 18
    .line 19
    const/4 p4, 0x3

    .line 20
    new-array p4, p4, [Landroidx/camera/core/ImageProxy$PlaneProxy;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    aput-object p1, p4, v0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    aput-object p2, p4, p1

    .line 27
    .line 28
    const/4 p1, 0x2

    .line 29
    aput-object p3, p4, p1

    .line 30
    .line 31
    iput-object p4, p0, Landroidx/camera/core/ImageProcessingUtil$NV21ImageProxy;->mPlanes:[Landroidx/camera/core/ImageProxy$PlaneProxy;

    .line 32
    .line 33
    iput p5, p0, Landroidx/camera/core/ImageProcessingUtil$NV21ImageProxy;->mWidth:I

    .line 34
    .line 35
    iput p6, p0, Landroidx/camera/core/ImageProcessingUtil$NV21ImageProxy;->mHeight:I

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/camera/core/ImageProcessingUtil$NV21ImageProxy;->mHeight:I

    .line 2
    .line 3
    return p0
.end method

.method public final getPlanes()[Landroidx/camera/core/ImageProxy$PlaneProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/core/ImageProcessingUtil$NV21ImageProxy;->mPlanes:[Landroidx/camera/core/ImageProxy$PlaneProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getWidth()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/camera/core/ImageProcessingUtil$NV21ImageProxy;->mWidth:I

    .line 2
    .line 3
    return p0
.end method

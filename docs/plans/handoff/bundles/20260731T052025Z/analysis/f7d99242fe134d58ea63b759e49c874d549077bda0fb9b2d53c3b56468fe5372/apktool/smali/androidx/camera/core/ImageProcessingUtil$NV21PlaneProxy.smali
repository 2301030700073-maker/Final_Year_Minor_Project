.class public final Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/ImageProxy$PlaneProxy;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mByteBuffer:Ljava/nio/ByteBuffer;

.field public final mRowStride:I


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;->mRowStride:I

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;->$r8$classId:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 14
    iput p2, p0, Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;->mRowStride:I

    return-void
.end method


# virtual methods
.method public final getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    iget-object p0, p0, Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    return-object p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getPixelStride()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x2

    .line 9
    return p0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getRowStride()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget p0, p0, Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;->mRowStride:I

    .line 7
    .line 8
    return p0

    .line 9
    :pswitch_0
    iget p0, p0, Landroidx/camera/core/ImageProcessingUtil$NV21PlaneProxy;->mRowStride:I

    .line 10
    .line 11
    return p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

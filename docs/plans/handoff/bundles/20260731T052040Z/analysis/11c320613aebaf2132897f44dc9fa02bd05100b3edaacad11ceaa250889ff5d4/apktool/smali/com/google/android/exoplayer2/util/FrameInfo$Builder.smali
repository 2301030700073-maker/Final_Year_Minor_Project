.class public final Lcom/google/android/exoplayer2/util/FrameInfo$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/FrameInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private height:I

.field private offsetToAddUs:J

.field private pixelWidthHeightRatio:F

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->width:I

    .line 23
    iput p2, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->height:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 24
    iput p1, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->pixelWidthHeightRatio:F

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/util/FrameInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/google/android/exoplayer2/util/FrameInfo;->width:I

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->width:I

    .line 7
    .line 8
    iget v0, p1, Lcom/google/android/exoplayer2/util/FrameInfo;->height:I

    .line 9
    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->height:I

    .line 11
    .line 12
    iget v0, p1, Lcom/google/android/exoplayer2/util/FrameInfo;->pixelWidthHeightRatio:F

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->pixelWidthHeightRatio:F

    .line 15
    .line 16
    iget-wide v0, p1, Lcom/google/android/exoplayer2/util/FrameInfo;->offsetToAddUs:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->offsetToAddUs:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/util/FrameInfo;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/util/FrameInfo;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->width:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->height:I

    .line 6
    .line 7
    iget v3, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->pixelWidthHeightRatio:F

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->offsetToAddUs:J

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/util/FrameInfo;-><init>(IIFJLcom/google/android/exoplayer2/util/FrameInfo$1;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public setHeight(I)Lcom/google/android/exoplayer2/util/FrameInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->height:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setOffsetToAddUs(J)Lcom/google/android/exoplayer2/util/FrameInfo$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->offsetToAddUs:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/util/FrameInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->pixelWidthHeightRatio:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setWidth(I)Lcom/google/android/exoplayer2/util/FrameInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/util/FrameInfo$Builder;->width:I

    .line 2
    .line 3
    return-object p0
.end method

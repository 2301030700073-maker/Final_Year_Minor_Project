.class public final Lcom/google/android/exoplayer2/video/ColorInfo$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/ColorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private colorRange:I

.field private colorSpace:I

.field private colorTransfer:I

.field private hdrStaticInfo:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorSpace:I

    .line 23
    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorRange:I

    .line 24
    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorTransfer:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/video/ColorInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorSpace:I

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorSpace:I

    .line 7
    .line 8
    iget v0, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorRange:I

    .line 9
    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorRange:I

    .line 11
    .line 12
    iget v0, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->colorTransfer:I

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorTransfer:I

    .line 15
    .line 16
    iget-object p1, p1, Lcom/google/android/exoplayer2/video/ColorInfo;->hdrStaticInfo:[B

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->hdrStaticInfo:[B

    .line 19
    .line 20
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/video/ColorInfo$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;-><init>(Lcom/google/android/exoplayer2/video/ColorInfo;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/video/ColorInfo;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorSpace:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorRange:I

    .line 6
    .line 7
    iget v3, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorTransfer:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->hdrStaticInfo:[B

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public setColorRange(I)Lcom/google/android/exoplayer2/video/ColorInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorRange:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setColorSpace(I)Lcom/google/android/exoplayer2/video/ColorInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorSpace:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setColorTransfer(I)Lcom/google/android/exoplayer2/video/ColorInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->colorTransfer:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setHdrStaticInfo([B)Lcom/google/android/exoplayer2/video/ColorInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/ColorInfo$Builder;->hdrStaticInfo:[B

    .line 2
    .line 3
    return-object p0
.end method

.class public final synthetic Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Bitmap;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Lorg/schabi/newpipe/extractor/stream/Frameset;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;[ILorg/schabi/newpipe/extractor/stream/Frameset;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda2;->f$1:[I

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda2;->f$2:Lorg/schabi/newpipe/extractor/stream/Frameset;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda2;->f$1:[I

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    aget v4, v2, v3

    .line 20
    .line 21
    iget-object p0, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda2;->f$2:Lorg/schabi/newpipe/extractor/stream/Frameset;

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameWidth()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    add-int/2addr v5, v4

    .line 28
    if-ge v1, v5, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameWidth()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    sub-int/2addr v1, v4

    .line 39
    aput v1, v2, v3

    .line 40
    .line 41
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v4, 0x2

    .line 46
    aget v5, v2, v4

    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameHeight()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    add-int/2addr v6, v5

    .line 53
    if-ge v1, v6, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameHeight()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    sub-int/2addr v1, v5

    .line 64
    aput v1, v2, v4

    .line 65
    .line 66
    :cond_2
    aget v1, v2, v3

    .line 67
    .line 68
    aget v2, v2, v4

    .line 69
    .line 70
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameWidth()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Frameset;->getFrameHeight()I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    invoke-static {v0, v1, v2, v4, p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    if-ne p0, v0, :cond_3

    .line 83
    .line 84
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 85
    .line 86
    invoke-virtual {p0, v0, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    :cond_3
    return-object p0

    .line 91
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 92
    return-object p0
.end method

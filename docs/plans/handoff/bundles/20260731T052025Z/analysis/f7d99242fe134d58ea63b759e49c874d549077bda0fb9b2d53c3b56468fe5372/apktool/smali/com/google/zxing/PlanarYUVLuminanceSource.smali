.class public final Lcom/google/zxing/PlanarYUVLuminanceSource;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public dataHeight:I

.field public dataWidth:I

.field public height:I

.field public width:I

.field public final yuvData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:Ljava/lang/Object;

    .line 118
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    const/4 v0, 0x4

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->width:I

    .line 119
    iput v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->height:I

    const/4 p1, -0x3

    .line 120
    iput p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    const/4 p1, -0x1

    .line 121
    iput p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;J)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 8
    .line 9
    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v1, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    iput v0, v1, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 18
    .line 19
    iput v0, v1, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 20
    .line 21
    iput-object v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->width:I

    .line 28
    .line 29
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->height:I

    .line 34
    .line 35
    iput v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 36
    .line 37
    iput v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    .line 38
    .line 39
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    const/4 p3, 0x0

    .line 48
    const-string v0, ") offset is outside of text region "

    .line 49
    .line 50
    if-ltz p0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-gt p0, v1, :cond_2

    .line 57
    .line 58
    if-ltz p2, :cond_1

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-gt p2, v1, :cond_1

    .line 65
    .line 66
    if-gt p0, p2, :cond_0

    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    const-string p1, "Do not set reversed range: "

    .line 70
    .line 71
    const-string v0, " > "

    .line 72
    .line 73
    invoke-static {p0, p2, p1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p3

    .line 81
    :cond_1
    const-string p0, "end ("

    .line 82
    .line 83
    invoke-static {p2, p0, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-static {p1, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(ILjava/lang/StringBuilder;)V

    .line 92
    .line 93
    .line 94
    throw p3

    .line 95
    :cond_2
    const-string p2, "start ("

    .line 96
    .line 97
    invoke-static {p0, p2, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-static {p1, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(ILjava/lang/StringBuilder;)V

    .line 106
    .line 107
    .line 108
    throw p3
.end method

.method public constructor <init>([BIIII)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->$r8$classId:I

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p4, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->width:I

    .line 111
    iput p5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->height:I

    if-gt p4, p2, :cond_0

    if-gt p5, p3, :cond_0

    .line 112
    iput-object p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:Ljava/lang/Object;

    .line 113
    iput p2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 114
    iput p3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    return-void

    .line 115
    :cond_0
    const-string p0, "Crop rectangle does not fit within image data."

    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public delete$ui_text(II)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 8
    .line 9
    const-string v3, ""

    .line 10
    .line 11
    invoke-virtual {v2, p1, v3, p2}, Lcom/fsck/k9/message/html/EmailSection$Builder;->replace(ILjava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    iget p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->width:I

    .line 15
    .line 16
    iget p2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->height:I

    .line 17
    .line 18
    invoke-static {p1, p2}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    invoke-static {p1, p2, v0, v1}, Landroidx/core/util/DebugUtils;->updateRangeAfterDelete-pWDy79M(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {p0, v2}, Lcom/google/zxing/PlanarYUVLuminanceSource;->setSelectionStart(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/zxing/PlanarYUVLuminanceSource;->setSelectionEnd(I)V

    .line 38
    .line 39
    .line 40
    iget p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 41
    .line 42
    const/4 p2, -0x1

    .line 43
    if-eq p1, p2, :cond_1

    .line 44
    .line 45
    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    .line 46
    .line 47
    invoke-static {p1, v2}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    invoke-static {v2, v3, v0, v1}, Landroidx/core/util/DebugUtils;->updateRangeAfterDelete-pWDy79M(JJ)J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_0

    .line 60
    .line 61
    iput p2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 62
    .line 63
    iput p2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 71
    .line 72
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method public get$ui_text(I)C
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/collection/CircularArray;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    iget v1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 21
    .line 22
    if-ge p1, v1, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_1
    iget v1, v0, Landroidx/collection/CircularArray;->head:I

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/collection/CircularArray;->gapLength()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    sub-int/2addr v1, v2

    .line 40
    iget v2, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 41
    .line 42
    add-int v3, v1, v2

    .line 43
    .line 44
    if-ge p1, v3, :cond_3

    .line 45
    .line 46
    sub-int/2addr p1, v2

    .line 47
    iget p0, v0, Landroidx/collection/CircularArray;->tail:I

    .line 48
    .line 49
    iget-object v1, v0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, [C

    .line 52
    .line 53
    if-ge p1, p0, :cond_2

    .line 54
    .line 55
    aget-char p0, v1, p1

    .line 56
    .line 57
    return p0

    .line 58
    :cond_2
    sub-int/2addr p1, p0

    .line 59
    iget p0, v0, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 60
    .line 61
    add-int/2addr p1, p0

    .line 62
    aget-char p0, v1, p1

    .line 63
    .line 64
    return p0

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Ljava/lang/String;

    .line 68
    .line 69
    iget p0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 70
    .line 71
    sub-int/2addr v1, p0

    .line 72
    add-int/2addr v1, v2

    .line 73
    sub-int/2addr p1, v1

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    return p0
.end method

.method public getComposition-MzsxiRA$ui_text()Landroidx/compose/ui/text/TextRange;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget p0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    .line 7
    .line 8
    invoke-static {v0, p0}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    new-instance p0, Landroidx/compose/ui/text/TextRange;

    .line 13
    .line 14
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public getMatrix()[B
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    iget v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->width:I

    .line 6
    .line 7
    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->height:I

    .line 8
    .line 9
    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    iget p0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    .line 14
    .line 15
    if-ne v2, p0, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    mul-int p0, v1, v2

    .line 19
    .line 20
    new-array v4, p0, [B

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    if-ne v1, v3, :cond_1

    .line 24
    .line 25
    invoke-static {v0, v5, v4, v5, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    return-object v4

    .line 29
    :cond_1
    move p0, v5

    .line 30
    :goto_0
    if-ge v5, v2, :cond_2

    .line 31
    .line 32
    mul-int v6, v5, v1

    .line 33
    .line 34
    invoke-static {v0, p0, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    add-int/2addr p0, v3

    .line 38
    add-int/lit8 v5, v5, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-object v4
.end method

.method public getRow(I[B)[B
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->height:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->width:I

    .line 8
    .line 9
    array-length v1, p2

    .line 10
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    new-array p2, v0, [B

    .line 13
    .line 14
    :cond_0
    iget v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 15
    .line 16
    mul-int/2addr p1, v1

    .line 17
    iget-object p0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, [B

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    return-object p2

    .line 26
    :cond_1
    const-string p0, "Requested row is outside the image: "

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public replace$ui_text(ILjava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 4
    .line 5
    const-string v1, ") offset is outside of text region "

    .line 6
    .line 7
    if-ltz p1, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->getLength()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-gt p1, v2, :cond_2

    .line 14
    .line 15
    if-ltz p3, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->getLength()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-gt p3, v2, :cond_1

    .line 22
    .line 23
    if-gt p1, p3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p1, p2, p3}, Lcom/fsck/k9/message/html/EmailSection$Builder;->replace(ILjava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    add-int/2addr p3, p1

    .line 33
    invoke-virtual {p0, p3}, Lcom/google/zxing/PlanarYUVLuminanceSource;->setSelectionStart(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    add-int/2addr p2, p1

    .line 41
    invoke-virtual {p0, p2}, Lcom/google/zxing/PlanarYUVLuminanceSource;->setSelectionEnd(I)V

    .line 42
    .line 43
    .line 44
    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 46
    .line 47
    iput p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    const-string p0, "Do not set reversed range: "

    .line 51
    .line 52
    const-string p2, " > "

    .line 53
    .line 54
    invoke-static {p1, p3, p0, p2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    const-string p0, "end ("

    .line 63
    .line 64
    invoke-static {p3, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->getLength()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-static {p1, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(ILjava/lang/StringBuilder;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    const-string p0, "start ("

    .line 77
    .line 78
    invoke-static {p1, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->getLength()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-static {p1, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(ILjava/lang/StringBuilder;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public setComposition$ui_text(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 4
    .line 5
    const-string v1, ") offset is outside of text region "

    .line 6
    .line 7
    if-ltz p1, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->getLength()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-gt p1, v2, :cond_2

    .line 14
    .line 15
    if-ltz p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->getLength()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-gt p2, v2, :cond_1

    .line 22
    .line 23
    if-ge p1, p2, :cond_0

    .line 24
    .line 25
    iput p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 26
    .line 27
    iput p2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const-string p0, "Do not set reversed or empty range: "

    .line 31
    .line 32
    const-string v0, " > "

    .line 33
    .line 34
    invoke-static {p1, p2, p0, v0}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    const-string p0, "end ("

    .line 43
    .line 44
    invoke-static {p2, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->getLength()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-static {p1, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(ILjava/lang/StringBuilder;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    const-string p0, "start ("

    .line 57
    .line 58
    invoke-static {p1, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->getLength()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-static {p1, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(ILjava/lang/StringBuilder;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public setSelection$ui_text(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 4
    .line 5
    const-string v1, ") offset is outside of text region "

    .line 6
    .line 7
    if-ltz p1, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->getLength()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-gt p1, v2, :cond_2

    .line 14
    .line 15
    if-ltz p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->getLength()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-gt p2, v2, :cond_1

    .line 22
    .line 23
    if-gt p1, p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/google/zxing/PlanarYUVLuminanceSource;->setSelectionStart(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/google/zxing/PlanarYUVLuminanceSource;->setSelectionEnd(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const-string p0, "Do not set reversed range: "

    .line 33
    .line 34
    const-string v0, " > "

    .line 35
    .line 36
    invoke-static {p1, p2, p0, v0}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    const-string p0, "end ("

    .line 45
    .line 46
    invoke-static {p2, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->getLength()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-static {p1, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(ILjava/lang/StringBuilder;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    const-string p0, "start ("

    .line 59
    .line 60
    invoke-static {p1, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->getLength()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-static {p1, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(ILjava/lang/StringBuilder;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public setSelectionEnd(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Cannot set selectionEnd to a negative value: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iput p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->height:I

    .line 26
    .line 27
    return-void
.end method

.method public setSelectionStart(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Cannot set selectionStart to a negative value: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iput p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->width:I

    .line 26
    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_1
    iget-object p0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lcom/fsck/k9/message/html/EmailSection$Builder;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :pswitch_2
    iget v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->width:I

    .line 21
    .line 22
    new-array v1, v0, [B

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->height:I

    .line 27
    .line 28
    add-int/lit8 v4, v0, 0x1

    .line 29
    .line 30
    mul-int/2addr v4, v3

    .line 31
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    move v5, v4

    .line 36
    :goto_0
    if-ge v5, v3, :cond_4

    .line 37
    .line 38
    invoke-virtual {p0, v5, v1}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getRow(I[B)[B

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    move v6, v4

    .line 43
    :goto_1
    if-ge v6, v0, :cond_3

    .line 44
    .line 45
    aget-byte v7, v1, v6

    .line 46
    .line 47
    and-int/lit16 v7, v7, 0xff

    .line 48
    .line 49
    const/16 v8, 0x40

    .line 50
    .line 51
    if-ge v7, v8, :cond_0

    .line 52
    .line 53
    const/16 v7, 0x23

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_0
    const/16 v8, 0x80

    .line 57
    .line 58
    if-ge v7, v8, :cond_1

    .line 59
    .line 60
    const/16 v7, 0x2b

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_1
    const/16 v8, 0xc0

    .line 64
    .line 65
    if-ge v7, v8, :cond_2

    .line 66
    .line 67
    const/16 v7, 0x2e

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    const/16 v7, 0x20

    .line 71
    .line 72
    :goto_2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    add-int/lit8 v6, v6, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const/16 v6, 0xa

    .line 79
    .line 80
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    add-int/lit8 v5, v5, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

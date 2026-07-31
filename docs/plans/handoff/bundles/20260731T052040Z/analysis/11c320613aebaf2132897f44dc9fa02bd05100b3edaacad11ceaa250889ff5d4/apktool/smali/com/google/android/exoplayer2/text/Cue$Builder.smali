.class public final Lcom/google/android/exoplayer2/text/Cue$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/Cue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapHeight:F

.field private line:F

.field private lineAnchor:I

.field private lineType:I

.field private multiRowAlignment:Landroid/text/Layout$Alignment;

.field private position:F

.field private positionAnchor:I

.field private shearDegrees:F

.field private size:F

.field private text:Ljava/lang/CharSequence;

.field private textAlignment:Landroid/text/Layout$Alignment;

.field private textSize:F

.field private textSizeType:I

.field private verticalType:I

.field private windowColor:I

.field private windowColorSet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 75
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 76
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 77
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    .line 78
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    const/high16 v1, -0x80000000

    .line 79
    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    .line 80
    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    .line 81
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    .line 82
    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->positionAnchor:I

    .line 83
    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    .line 84
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    .line 85
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->size:F

    .line 86
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmapHeight:F

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    const/high16 v0, -0x1000000

    .line 88
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColor:I

    .line 89
    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->verticalType:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/text/Cue;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 19
    .line 20
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->line:F

    .line 21
    .line 22
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    .line 23
    .line 24
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    .line 25
    .line 26
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    .line 27
    .line 28
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    .line 29
    .line 30
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    .line 31
    .line 32
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->position:F

    .line 33
    .line 34
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    .line 35
    .line 36
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    .line 37
    .line 38
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->positionAnchor:I

    .line 39
    .line 40
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->textSizeType:I

    .line 41
    .line 42
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    .line 43
    .line 44
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->textSize:F

    .line 45
    .line 46
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    .line 47
    .line 48
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->size:F

    .line 49
    .line 50
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->size:F

    .line 51
    .line 52
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->bitmapHeight:F

    .line 53
    .line 54
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmapHeight:F

    .line 55
    .line 56
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/text/Cue;->windowColorSet:Z

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    .line 59
    .line 60
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->windowColor:I

    .line 61
    .line 62
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColor:I

    .line 63
    .line 64
    iget v0, p1, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    .line 65
    .line 66
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->verticalType:I

    .line 67
    .line 68
    iget p1, p1, Lcom/google/android/exoplayer2/text/Cue;->shearDegrees:F

    .line 69
    .line 70
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->shearDegrees:F

    .line 71
    .line 72
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/text/Cue;Lcom/google/android/exoplayer2/text/Cue$1;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>(Lcom/google/android/exoplayer2/text/Cue;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/text/Cue;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/text/Cue;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 10
    .line 11
    move-object v4, v3

    .line 12
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 13
    .line 14
    move-object v5, v4

    .line 15
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    move-object v6, v5

    .line 18
    iget v5, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    .line 19
    .line 20
    move-object v7, v6

    .line 21
    iget v6, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    .line 22
    .line 23
    move-object v8, v7

    .line 24
    iget v7, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    .line 25
    .line 26
    move-object v9, v8

    .line 27
    iget v8, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    .line 28
    .line 29
    move-object v10, v9

    .line 30
    iget v9, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->positionAnchor:I

    .line 31
    .line 32
    move-object v11, v10

    .line 33
    iget v10, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    .line 34
    .line 35
    move-object v12, v11

    .line 36
    iget v11, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    .line 37
    .line 38
    move-object v13, v12

    .line 39
    iget v12, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->size:F

    .line 40
    .line 41
    move-object v14, v13

    .line 42
    iget v13, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmapHeight:F

    .line 43
    .line 44
    move-object v15, v14

    .line 45
    iget-boolean v14, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    .line 46
    .line 47
    move-object/from16 v16, v15

    .line 48
    .line 49
    iget v15, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColor:I

    .line 50
    .line 51
    move-object/from16 v17, v1

    .line 52
    .line 53
    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->verticalType:I

    .line 54
    .line 55
    iget v0, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->shearDegrees:F

    .line 56
    .line 57
    const/16 v18, 0x0

    .line 58
    .line 59
    move-object/from16 v19, v17

    .line 60
    .line 61
    move/from16 v17, v0

    .line 62
    .line 63
    move-object/from16 v0, v16

    .line 64
    .line 65
    move/from16 v16, v1

    .line 66
    .line 67
    move-object/from16 v1, v19

    .line 68
    .line 69
    invoke-direct/range {v0 .. v18}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/google/android/exoplayer2/text/Cue$1;)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method

.method public clearWindowColor()Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method

.method public getBitmapHeight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmapHeight:F

    .line 2
    .line 3
    return p0
.end method

.method public getLine()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    .line 2
    .line 3
    return p0
.end method

.method public getLineAnchor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    .line 2
    .line 3
    return p0
.end method

.method public getLineType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    .line 2
    .line 3
    return p0
.end method

.method public getPosition()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    .line 2
    .line 3
    return p0
.end method

.method public getPositionAnchor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->positionAnchor:I

    .line 2
    .line 3
    return p0
.end method

.method public getSize()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->size:F

    .line 2
    .line 3
    return p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTextAlignment()Landroid/text/Layout$Alignment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTextSize()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    .line 2
    .line 3
    return p0
.end method

.method public getTextSizeType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    .line 2
    .line 3
    return p0
.end method

.method public getVerticalType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->verticalType:I

    .line 2
    .line 3
    return p0
.end method

.method public getWindowColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColor:I

    .line 2
    .line 3
    return p0
.end method

.method public isWindowColorSet()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    .line 2
    .line 3
    return p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method

.method public setBitmapHeight(F)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmapHeight:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    .line 2
    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    .line 4
    .line 5
    return-object p0
.end method

.method public setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setMultiRowAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPosition(F)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setPositionAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->positionAnchor:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setShearDegrees(F)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->shearDegrees:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setSize(F)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->size:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTextAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTextSize(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    .line 2
    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    .line 4
    .line 5
    return-object p0
.end method

.method public setVerticalType(I)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->verticalType:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setWindowColor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColor:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    .line 5
    .line 6
    return-object p0
.end method

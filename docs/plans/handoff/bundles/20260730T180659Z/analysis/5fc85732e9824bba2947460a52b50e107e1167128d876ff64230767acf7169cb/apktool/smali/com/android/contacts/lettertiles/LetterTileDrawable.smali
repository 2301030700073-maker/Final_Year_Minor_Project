.class public Lcom/android/contacts/lettertiles/LetterTileDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LetterTileDrawable.java"


# static fields
.field private static DEFAULT_BUSINESS_AVATAR:Landroid/graphics/Bitmap;

.field private static DEFAULT_PERSON_AVATAR:Landroid/graphics/Bitmap;

.field private static DEFAULT_VOICEMAIL_AVATAR:Landroid/graphics/Bitmap;

.field private static sColors:Landroid/content/res/TypedArray;

.field private static sDefaultColor:I

.field private static final sFirstChar:[C

.field private static sLetterToTileRatio:F

.field private static final sPaint:Landroid/graphics/Paint;

.field private static final sRect:Landroid/graphics/Rect;

.field private static sTileFontColor:I


# instance fields
.field private mColor:I

.field private mContactType:I

.field private mIsCircle:Z

.field private mLetter:Ljava/lang/Character;

.field private mOffset:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    new-array v0, v0, [C

    .line 59
    sput-object v0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sFirstChar:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 4

    .line 78
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 43
    const-class v0, Lcom/android/contacts/lettertiles/LetterTileDrawable;

    const/4 v0, 0x1

    .line 70
    iput v0, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mContactType:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 71
    iput v1, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mScale:F

    const/4 v1, 0x0

    .line 72
    iput v1, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mOffset:F

    const/4 v1, 0x0

    .line 73
    iput-boolean v1, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mIsCircle:Z

    const/4 v2, 0x0

    .line 76
    iput-object v2, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    .line 79
    sget-object v2, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    if-nez v2, :cond_0

    const/high16 v2, 0x7f030000

    .line 80
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    sput-object v2, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    const v2, 0x7f060098

    .line 81
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sDefaultColor:I

    const v2, 0x7f060099

    .line 82
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sTileFontColor:I

    const v2, 0x7f07013a

    .line 83
    invoke-virtual {p1, v2, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    sput v2, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sLetterToTileRatio:F

    const v2, 0x7f080082

    .line 84
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/contacts/lettertiles/LetterTileDrawable;->DEFAULT_PERSON_AVATAR:Landroid/graphics/Bitmap;

    const v2, 0x7f080079

    .line 86
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/contacts/lettertiles/LetterTileDrawable;->DEFAULT_BUSINESS_AVATAR:Landroid/graphics/Bitmap;

    const v2, 0x7f080084

    .line 88
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/contacts/lettertiles/LetterTileDrawable;->DEFAULT_VOICEMAIL_AVATAR:Landroid/graphics/Bitmap;

    .line 90
    sget-object v2, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    const v3, 0x7f10016e

    .line 91
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 92
    sget-object p1, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 93
    sget-object p1, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    .line 96
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 97
    iget-object p1, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 98
    sget p1, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sDefaultColor:I

    iput p1, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mColor:I

    return-void
.end method

.method private drawBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V
    .locals 7

    .line 118
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 121
    iget v1, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mScale:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 123
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v2, v1

    .line 124
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mOffset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 125
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/2addr v4, v1

    .line 126
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v1, v5

    iget v5, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mOffset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    add-float/2addr v1, v5

    float-to-int v1, v1

    .line 123
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 129
    sget-object v1, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 131
    sget-object p2, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 132
    sget-object p2, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    sget-object p2, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    const/16 p3, 0x8a

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 135
    sget-object p2, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    sget-object p3, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, p2, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawLetterTile(Landroid/graphics/Canvas;)V
    .locals 10

    .line 140
    sget-object v0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    sget-object v0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 143
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 146
    iget-boolean v2, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mIsCircle:Z

    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    sget-object v5, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 149
    :cond_0
    sget-object v2, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 154
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    if-eqz v2, :cond_1

    .line 156
    sget-object v3, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sFirstChar:[C

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    const/4 v4, 0x0

    aput-char v2, v3, v4

    .line 159
    sget-object v2, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mScale:F

    sget v5, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sLetterToTileRatio:F

    mul-float v3, v3, v5

    int-to-float v1, v1

    mul-float v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 160
    sget-object v1, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sFirstChar:[C

    const/4 v3, 0x1

    sget-object v5, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 161
    sget-object v1, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    const-string v2, "sans-serif"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 162
    sget-object v1, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sTileFontColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    sget-object v1, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    const/16 v2, 0x8a

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 167
    sget-object v4, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sFirstChar:[C

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v7, v1

    .line 168
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mOffset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    sget-object v0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    sub-float v8, v1, v0

    sget-object v9, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    move-object v3, p1

    .line 167
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 172
    :cond_1
    iget v0, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mContactType:I

    invoke-static {v0}, Lcom/android/contacts/lettertiles/LetterTileDrawable;->getBitmapForContactType(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/contacts/lettertiles/LetterTileDrawable;->drawBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method public static getAdaptiveIconScale()F
    .locals 2

    .line 293
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    div-float/2addr v1, v0

    return v1
.end method

.method private static getBitmapForContactType(I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 205
    sget-object p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->DEFAULT_PERSON_AVATAR:Landroid/graphics/Bitmap;

    return-object p0

    .line 203
    :cond_0
    sget-object p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->DEFAULT_VOICEMAIL_AVATAR:Landroid/graphics/Bitmap;

    return-object p0

    .line 201
    :cond_1
    sget-object p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->DEFAULT_BUSINESS_AVATAR:Landroid/graphics/Bitmap;

    return-object p0

    .line 199
    :cond_2
    sget-object p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->DEFAULT_PERSON_AVATAR:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private static isEnglishLetter(C)Z
    .locals 1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private pickColor(Ljava/lang/String;)I
    .locals 2

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mContactType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sget-object v0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    rem-int/2addr p1, v0

    .line 193
    sget-object v0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    sget v1, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sDefaultColor:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    return p1

    .line 187
    :cond_1
    :goto_0
    sget p1, Lcom/android/contacts/lettertiles/LetterTileDrawable;->sDefaultColor:I

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 103
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/lettertiles/LetterTileDrawable;->drawLetterTile(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getColor()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mColor:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setContactType(I)Lcom/android/contacts/lettertiles/LetterTileDrawable;
    .locals 0

    .line 280
    iput p1, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mContactType:I

    return-object p0
.end method

.method public setIsCircular(Z)Lcom/android/contacts/lettertiles/LetterTileDrawable;
    .locals 0

    .line 285
    iput-boolean p1, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mIsCircle:Z

    return-object p0
.end method

.method public setLetterAndColorFromContactDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/lettertiles/LetterTileDrawable;
    .locals 2

    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/contacts/lettertiles/LetterTileDrawable;->isEnglishLetter(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 273
    iput-object p1, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    .line 275
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/contacts/lettertiles/LetterTileDrawable;->pickColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mColor:I

    return-object p0
.end method

.method public setOffset(F)Lcom/android/contacts/lettertiles/LetterTileDrawable;
    .locals 1

    const/high16 v0, -0x41000000    # -0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 252
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 253
    iput p1, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mOffset:F

    return-object p0
.end method

.method public setScale(F)Lcom/android/contacts/lettertiles/LetterTileDrawable;
    .locals 0

    .line 235
    iput p1, p0, Lcom/android/contacts/lettertiles/LetterTileDrawable;->mScale:F

    return-object p0
.end method

.class public final Lcom/takisoft/colorpicker/ColorStateDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mColor:I


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/takisoft/colorpicker/ColorStateDrawable;->mColor:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isStateful()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onStateChange([I)Z
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/takisoft/colorpicker/ColorStateDrawable;->mColor:I

    .line 4
    .line 5
    if-ge v1, v0, :cond_2

    .line 6
    .line 7
    aget v3, p1, v1

    .line 8
    .line 9
    const v4, 0x10100a7

    .line 10
    .line 11
    .line 12
    if-eq v3, v4, :cond_1

    .line 13
    .line 14
    const v4, 0x101009c

    .line 15
    .line 16
    .line 17
    if-ne v3, v4, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    const/4 v0, 0x3

    .line 24
    new-array v0, v0, [F

    .line 25
    .line 26
    invoke-static {v2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    aget v2, v0, v1

    .line 31
    .line 32
    const v3, 0x3f333333    # 0.7f

    .line 33
    .line 34
    .line 35
    mul-float/2addr v2, v3

    .line 36
    aput v2, v0, v1

    .line 37
    .line 38
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 43
    .line 44
    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 49
    .line 50
    invoke-virtual {p0, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 51
    .line 52
    .line 53
    :goto_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0
.end method

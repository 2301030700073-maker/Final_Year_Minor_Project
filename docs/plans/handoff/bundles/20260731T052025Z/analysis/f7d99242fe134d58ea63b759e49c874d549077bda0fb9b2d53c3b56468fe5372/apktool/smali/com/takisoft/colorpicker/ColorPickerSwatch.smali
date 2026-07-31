.class public final Lcom/takisoft/colorpicker/ColorPickerSwatch;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mCheckmarkImage:Landroid/widget/ImageView;

.field public mColor:I

.field public mOnColorSelectedListener:Lcom/takisoft/colorpicker/OnColorSelectedListener;

.field public mSwatchImage:Landroid/widget/ImageView;


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/takisoft/colorpicker/ColorPickerSwatch;->mOnColorSelectedListener:Lcom/takisoft/colorpicker/OnColorSelectedListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/takisoft/colorpicker/ColorPickerSwatch;->mColor:I

    .line 6
    .line 7
    invoke-interface {p1, p0}, Lcom/takisoft/colorpicker/OnColorSelectedListener;->onColorSelected(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/takisoft/colorpicker/ColorPickerSwatch;->mCheckmarkImage:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 p1, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setColor(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f08008b

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/takisoft/colorpicker/ColorPickerSwatch;->mSwatchImage:Landroid/widget/ImageView;

    .line 23
    .line 24
    new-instance v2, Lcom/takisoft/colorpicker/ColorStateDrawable;

    .line 25
    .line 26
    invoke-direct {v2, v1, p1}, Lcom/takisoft/colorpicker/ColorStateDrawable;-><init>([Landroid/graphics/drawable/Drawable;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    .line 31
    .line 32
    iput p1, p0, Lcom/takisoft/colorpicker/ColorPickerSwatch;->mColor:I

    .line 33
    .line 34
    return-void
.end method

.method public setOnColorSelectedListener(Lcom/takisoft/colorpicker/OnColorSelectedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/takisoft/colorpicker/ColorPickerSwatch;->mOnColorSelectedListener:Lcom/takisoft/colorpicker/OnColorSelectedListener;

    .line 2
    .line 3
    return-void
.end method

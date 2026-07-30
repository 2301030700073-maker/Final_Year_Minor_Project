.class public Lcom/android/contacts/widget/QuickContactImageView;
.super Landroid/widget/ImageView;
.source "QuickContactImageView.java"


# instance fields
.field private mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mIsBusiness:Z

.field private mOriginalDrawable:Landroid/graphics/drawable/Drawable;

.field private mTintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/widget/QuickContactImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/widget/QuickContactImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/contacts/widget/QuickContactImageView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isBasedOffLetterTile()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/contacts/widget/QuickContactImageView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/contacts/lettertiles/LetterTileDrawable;

    return v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 65
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    instance-of v0, p1, Lcom/android/contacts/lettertiles/LetterTileDrawable;

    if-eqz v0, :cond_2

    .line 68
    iget-boolean v0, p0, Lcom/android/contacts/widget/QuickContactImageView;->mIsBusiness:Z

    if-nez v0, :cond_1

    .line 69
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Does not support this type of drawable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_3
    :goto_0
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 79
    :goto_1
    iput-object p1, p0, Lcom/android/contacts/widget/QuickContactImageView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    iput-object v0, p0, Lcom/android/contacts/widget/QuickContactImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 81
    iget p1, p0, Lcom/android/contacts/widget/QuickContactImageView;->mTintColor:I

    invoke-virtual {p0, p1}, Lcom/android/contacts/widget/QuickContactImageView;->setTint(I)V

    .line 82
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIsBusiness(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/android/contacts/widget/QuickContactImageView;->mIsBusiness:Z

    return-void
.end method

.method public setTint(I)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/contacts/widget/QuickContactImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/widget/QuickContactImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 43
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 48
    :goto_1
    iput p1, p0, Lcom/android/contacts/widget/QuickContactImageView;->mTintColor:I

    .line 49
    invoke-virtual {p0}, Landroid/widget/ImageView;->postInvalidate()V

    return-void
.end method

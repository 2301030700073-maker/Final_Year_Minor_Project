.class public Lcom/android/contacts/util/ImageViewDrawableSetter;
.super Ljava/lang/Object;
.source "ImageViewDrawableSetter.java"


# instance fields
.field private mCompressed:[B

.field private mContact:Lcom/android/contacts/model/Contact;

.field private mDurationInMillis:I

.field private mPreviousDrawable:Landroid/graphics/drawable/Drawable;

.field private mTarget:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    return-void
.end method

.method private decodedBitmapDrawable([B)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    .line 167
    array-length v3, p1

    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 174
    invoke-static {p1, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 176
    :cond_2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private defaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 144
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContact:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->isDisplayNameFromOrganization()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 152
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContact:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 153
    new-instance v3, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContact:Lcom/android/contacts/model/Contact;

    invoke-virtual {v6}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6, v1, v4}, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_1

    .line 156
    :cond_1
    new-instance v3, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    iget-object v5, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContact:Lcom/android/contacts/model/Contact;

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContact:Lcom/android/contacts/model/Contact;

    invoke-virtual {v6}, Lcom/android/contacts/model/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6, v1, v4}, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 159
    :goto_1
    invoke-static {v0, v2, v3}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarDrawableForContact(Landroid/content/res/Resources;ZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private previousBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    instance-of v2, v0, Lcom/android/contacts/lettertiles/LetterTileDrawable;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1
.end method


# virtual methods
.method protected setCompressedImage([B)Landroid/graphics/Bitmap;
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 90
    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    .line 92
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 100
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/contacts/util/ImageViewDrawableSetter;->decodedBitmapDrawable([B)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 102
    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->defaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    :cond_2
    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    if-nez v0, :cond_3

    .line 109
    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 111
    :cond_3
    iget-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    iget v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    .line 119
    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_2

    .line 113
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :goto_2
    iput-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    .line 128
    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected setTarget(Landroid/widget/ImageView;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    if-eq v0, p1, :cond_0

    .line 76
    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    .line 78
    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setupContactPhoto(Lcom/android/contacts/model/Contact;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContact:Lcom/android/contacts/model/Contact;

    .line 57
    invoke-virtual {p0, p2}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setTarget(Landroid/widget/ImageView;)V

    .line 58
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getPhotoBinaryData()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setCompressedImage([B)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

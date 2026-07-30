.class Lcom/android/contacts/ContactPhotoManager$LetterTileDefaultImageProvider;
.super Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LetterTileDefaultImageProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 385
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ContactPhotoManager$1;)V
    .locals 0

    .line 385
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManager$LetterTileDefaultImageProvider;-><init>()V

    return-void
.end method

.method public static getDefaultImageForContact(Landroid/content/res/Resources;Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 396
    new-instance v0, Lcom/android/contacts/lettertiles/LetterTileDrawable;

    invoke-direct {v0, p0}, Lcom/android/contacts/lettertiles/LetterTileDrawable;-><init>(Landroid/content/res/Resources;)V

    if-eqz p1, :cond_1

    .line 402
    iget-object p0, p1, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 403
    iget-object v1, p1, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->displayName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/lettertiles/LetterTileDrawable;->setLetterAndColorFromContactDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/lettertiles/LetterTileDrawable;

    goto :goto_0

    .line 406
    :cond_0
    iget-object p0, p1, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->displayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/lettertiles/LetterTileDrawable;->setLetterAndColorFromContactDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/lettertiles/LetterTileDrawable;

    .line 409
    :goto_0
    iget p0, p1, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->contactType:I

    invoke-virtual {v0, p0}, Lcom/android/contacts/lettertiles/LetterTileDrawable;->setContactType(I)Lcom/android/contacts/lettertiles/LetterTileDrawable;

    .line 410
    iget p0, p1, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->scale:F

    invoke-virtual {v0, p0}, Lcom/android/contacts/lettertiles/LetterTileDrawable;->setScale(F)Lcom/android/contacts/lettertiles/LetterTileDrawable;

    .line 411
    iget p0, p1, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->offset:F

    invoke-virtual {v0, p0}, Lcom/android/contacts/lettertiles/LetterTileDrawable;->setOffset(F)Lcom/android/contacts/lettertiles/LetterTileDrawable;

    .line 412
    iget-boolean p0, p1, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    invoke-virtual {v0, p0}, Lcom/android/contacts/lettertiles/LetterTileDrawable;->setIsCircular(Z)Lcom/android/contacts/lettertiles/LetterTileDrawable;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;IZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V
    .locals 0

    .line 389
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/android/contacts/ContactPhotoManager$LetterTileDefaultImageProvider;->getDefaultImageForContact(Landroid/content/res/Resources;Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 391
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

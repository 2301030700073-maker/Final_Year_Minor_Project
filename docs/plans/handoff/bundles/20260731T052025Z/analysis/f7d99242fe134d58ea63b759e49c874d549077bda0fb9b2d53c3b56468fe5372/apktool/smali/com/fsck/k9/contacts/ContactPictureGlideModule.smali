.class public Lcom/fsck/k9/contacts/ContactPictureGlideModule;
.super Lorg/jsoup/helper/Validate;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 1

    .line 1
    new-instance p0, Landroidx/transition/Transition$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class p1, Lcom/fsck/k9/contacts/ContactImage;

    .line 7
    .line 8
    invoke-virtual {p3, p1, p1, p0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 9
    .line 10
    .line 11
    const-class p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoderFactory;

    .line 12
    .line 13
    invoke-static {p0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoderFactory;

    .line 18
    .line 19
    iget-object p2, p2, Lcom/bumptech/glide/Glide;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/fsck/k9/contacts/ContactImageBitmapDecoderFactory;->contactPhotoLoader:Lcom/fsck/k9/contacts/ContactPhotoLoader;

    .line 27
    .line 28
    invoke-direct {v0, p0, p2}, Lcom/fsck/k9/contacts/ContactImageBitmapDecoder;-><init>(Lcom/fsck/k9/contacts/ContactPhotoLoader;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 29
    .line 30
    .line 31
    const-string p0, "legacy_append"

    .line 32
    .line 33
    const-class p2, Landroid/graphics/Bitmap;

    .line 34
    .line 35
    invoke-virtual {p3, p0, p1, p2, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 36
    .line 37
    .line 38
    const-class p0, Lcom/fsck/k9/ui/account/AccountImageModelLoaderFactory;

    .line 39
    .line 40
    invoke-static {p0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lcom/fsck/k9/ui/account/AccountImageModelLoaderFactory;

    .line 45
    .line 46
    const-class p1, Lnet/thunderbird/core/ui/account/AccountImage;

    .line 47
    .line 48
    invoke-virtual {p3, p1, p2, p0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

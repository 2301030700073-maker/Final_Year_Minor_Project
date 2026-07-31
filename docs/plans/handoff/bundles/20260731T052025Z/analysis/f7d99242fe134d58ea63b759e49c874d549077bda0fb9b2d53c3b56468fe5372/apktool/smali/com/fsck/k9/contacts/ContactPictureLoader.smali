.class public final Lcom/fsck/k9/contacts/ContactPictureLoader;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final backgroundCacheId:Ljava/lang/String;

.field public final contactLetterBitmapCreator:Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;

.field public final context:Landroid/content/Context;

.field public final pictureSizeInPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/contacts/ContactPictureLoader;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/contacts/ContactPictureLoader;->contactLetterBitmapCreator:Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 17
    .line 18
    const/high16 v0, 0x42200000    # 40.0f

    .line 19
    .line 20
    mul-float/2addr v0, p1

    .line 21
    float-to-int p1, v0

    .line 22
    iput p1, p0, Lcom/fsck/k9/contacts/ContactPictureLoader;->pictureSizeInPx:I

    .line 23
    .line 24
    iget-object p1, p2, Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;->config:Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;

    .line 25
    .line 26
    iget-boolean p2, p1, Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;->hasDefaultBackgroundColor:Z

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    iget p1, p1, Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;->defaultBackgroundColor:I

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string p1, "*"

    .line 38
    .line 39
    :goto_0
    iput-object p1, p0, Lcom/fsck/k9/contacts/ContactPictureLoader;->backgroundCacheId:Ljava/lang/String;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final setContactPicture(Landroid/widget/ImageView;Lcom/fsck/k9/mail/Address;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/fsck/k9/contacts/ContactImage;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/fsck/k9/contacts/ContactPictureLoader;->backgroundCacheId:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/fsck/k9/contacts/ContactPictureLoader;->contactLetterBitmapCreator:Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v1, v3, v2, p0, p2}, Lcom/fsck/k9/contacts/ContactImage;-><init>(ZLjava/lang/String;Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;Lcom/fsck/k9/mail/Address;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Lcom/fsck/k9/contacts/ContactImage;)Lcom/bumptech/glide/RequestBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.class public final Lcom/fsck/k9/glide/GlideRequest;
.super Lcom/bumptech/glide/RequestBuilder;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public final addListener(Lcom/bumptech/glide/request/RequestFutureTarget;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestFutureTarget;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public final apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public final apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    return-object p0
.end method

.method public final centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public final clone()Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public final clone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 8
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    return-object p0
.end method

.method public final decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public final diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy$2;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public final dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public final downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$None;->OPTION:Lcom/bumptech/glide/load/Option;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/fsck/k9/glide/GlideRequest;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 8
    .line 9
    return-object p0
.end method

.method public final error()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->error()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public final load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    return-object p0
.end method

.method public final load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 10
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    return-object p0
.end method

.method public final load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public final lock()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->isLocked:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public final optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public final optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public final override(II)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public final placeholder()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public final priority()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public final set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public final signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public final skipMemoryCache()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public final theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

.method public final transform$1(Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 7
    .line 8
    return-object p0
.end method

.method public final useAnimationPool()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->useAnimationPool()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/fsck/k9/glide/GlideRequest;

    .line 6
    .line 7
    return-object p0
.end method

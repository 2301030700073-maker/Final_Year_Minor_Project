.class public final Landroidx/media/AudioAttributesImplApi26$Builder;
.super Lcoil3/memory/MemoryCacheService;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# virtual methods
.method public final build()Landroidx/media/AudioAttributesImpl;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media/AudioAttributesImplApi26;

    .line 2
    .line 3
    iget-object p0, p0, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/media/AudioAttributes$Builder;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Landroidx/media/AudioAttributesImplApi21;-><init>(Landroid/media/AudioAttributes;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final setUsage()Lcoil3/memory/MemoryCacheService;
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/AudioAttributes$Builder;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public final setUsage$1()Lcoil3/memory/MemoryCacheService;
    .locals 2

    .line 1
    iget-object v0, p0, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/AudioAttributes$Builder;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

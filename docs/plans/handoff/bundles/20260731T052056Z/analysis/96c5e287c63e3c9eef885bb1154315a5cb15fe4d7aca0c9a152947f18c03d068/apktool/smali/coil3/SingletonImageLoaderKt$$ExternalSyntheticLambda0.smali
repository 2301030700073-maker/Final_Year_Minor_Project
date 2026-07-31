.class public final synthetic Lcoil3/SingletonImageLoaderKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcoil3/SingletonImageLoader$Factory;


# virtual methods
.method public final newImageLoader(Landroid/content/Context;)Lcoil3/RealImageLoader;
    .locals 2

    .line 1
    new-instance p0, Lcoil3/ImageLoader$Builder;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcoil3/ImageLoader$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcoil3/Extras$Builder;

    .line 9
    .line 10
    sget-object v0, Lcoil3/SingletonImageLoaderKt;->DefaultSingletonImageLoaderKey:Lcoil3/Extras$Key;

    .line 11
    .line 12
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    iget-object p1, p1, Lcoil3/Extras$Builder;->data:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcoil3/ImageLoader$Builder;->build()Lcoil3/RealImageLoader;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

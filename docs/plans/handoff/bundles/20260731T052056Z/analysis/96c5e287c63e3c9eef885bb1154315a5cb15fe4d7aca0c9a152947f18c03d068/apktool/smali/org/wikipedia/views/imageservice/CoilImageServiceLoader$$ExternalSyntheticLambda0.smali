.class public final synthetic Lorg/wikipedia/views/imageservice/CoilImageServiceLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcoil3/SingletonImageLoader$Factory;


# virtual methods
.method public final newImageLoader(Landroid/content/Context;)Lcoil3/RealImageLoader;
    .locals 14

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lcoil3/ImageLoader$Builder;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcoil3/ImageLoader$Builder;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v3, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v4, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    const/16 v5, 0x16

    .line 37
    .line 38
    invoke-direct {v4, v5}, Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;-><init>(I)V

    .line 39
    .line 40
    .line 41
    new-instance v5, Lcoil3/network/NetworkFetcher$Factory;

    .line 42
    .line 43
    new-instance v6, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    invoke-direct {v6, v4}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/search/SearchResult$$ExternalSyntheticLambda0;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v5, v6}, Lcoil3/network/NetworkFetcher$Factory;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 49
    .line 50
    .line 51
    const-class v4, Lcoil3/Uri;

    .line 52
    .line 53
    sget-object v6, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 54
    .line 55
    invoke-virtual {v6, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    new-instance v6, Lkotlin/text/Regex$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    const/4 v7, 0x1

    .line 62
    invoke-direct {v6, v7, v5, v4}, Lkotlin/text/Regex$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    new-instance v8, Lcoil3/ComponentRegistry;

    .line 69
    .line 70
    invoke-static {p1}, Lkotlin/ExceptionsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    invoke-static {v0}, Lkotlin/ExceptionsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    invoke-static {v1}, Lkotlin/ExceptionsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    invoke-static {v2}, Lkotlin/ExceptionsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    invoke-static {v3}, Lkotlin/ExceptionsKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    invoke-direct/range {v8 .. v13}, Lcoil3/ComponentRegistry;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    iput-object v8, p0, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 94
    .line 95
    sget-object p1, Lcoil3/request/ImageRequests_androidKt;->transitionFactoryKey:Lcoil3/Extras$Key;

    .line 96
    .line 97
    iget-object p1, p0, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Lcoil3/Extras$Builder;

    .line 100
    .line 101
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->allowRgb565Key:Lcoil3/Extras$Key;

    .line 102
    .line 103
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 104
    .line 105
    iget-object p1, p1, Lcoil3/Extras$Builder;->data:Ljava/util/LinkedHashMap;

    .line 106
    .line 107
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcoil3/ImageLoader$Builder;->build()Lcoil3/RealImageLoader;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0
.end method

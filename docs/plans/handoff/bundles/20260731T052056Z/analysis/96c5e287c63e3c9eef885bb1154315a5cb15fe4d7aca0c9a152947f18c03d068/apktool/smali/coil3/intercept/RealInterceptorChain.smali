.class public final Lcoil3/intercept/RealInterceptorChain;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final eventListener:Ljava/lang/Object;

.field public index:I

.field public final initialRequest:Ljava/lang/Object;

.field public final interceptors:Ljava/util/List;

.field public final isPlaceholderCached:Z

.field public final request:Ljava/lang/Object;

.field public size:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcoil3/request/ImageRequest;Ljava/util/List;ILcoil3/request/ImageRequest;Lcoil3/size/Size;Lcoil3/EventListener$Companion$NONE$1;Z)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcoil3/intercept/RealInterceptorChain;->initialRequest:Ljava/lang/Object;

    .line 88
    iput-object p2, p0, Lcoil3/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 89
    iput p3, p0, Lcoil3/intercept/RealInterceptorChain;->index:I

    .line 90
    iput-object p4, p0, Lcoil3/intercept/RealInterceptorChain;->request:Ljava/lang/Object;

    .line 91
    iput-object p5, p0, Lcoil3/intercept/RealInterceptorChain;->size:Ljava/lang/Object;

    .line 92
    iput-object p6, p0, Lcoil3/intercept/RealInterceptorChain;->eventListener:Ljava/lang/Object;

    .line 93
    iput-boolean p7, p0, Lcoil3/intercept/RealInterceptorChain;->isPlaceholderCached:Z

    return-void
.end method

.method public constructor <init>(Lokhttp3/Address;Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealCall;Z)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcoil3/intercept/RealInterceptorChain;->initialRequest:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lcoil3/intercept/RealInterceptorChain;->request:Ljava/lang/Object;

    .line 10
    .line 11
    iput-boolean p4, p0, Lcoil3/intercept/RealInterceptorChain;->isPlaceholderCached:Z

    .line 12
    .line 13
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 14
    .line 15
    iput-object p2, p0, Lcoil3/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 16
    .line 17
    iput-object p2, p0, Lcoil3/intercept/RealInterceptorChain;->size:Ljava/lang/Object;

    .line 18
    .line 19
    new-instance p2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcoil3/intercept/RealInterceptorChain;->eventListener:Ljava/lang/Object;

    .line 25
    .line 26
    iget-object p2, p1, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 27
    .line 28
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    const/4 p4, 0x1

    .line 37
    const/4 v0, 0x0

    .line 38
    if-nez p3, :cond_0

    .line 39
    .line 40
    new-array p1, p4, [Ljava/net/Proxy;

    .line 41
    .line 42
    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 43
    .line 44
    aput-object p2, p1, v0

    .line 45
    .line 46
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt;->toImmutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    iget-object p1, p1, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    new-array p1, p4, [Ljava/net/Proxy;

    .line 72
    .line 73
    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 74
    .line 75
    aput-object p2, p1, v0

    .line 76
    .line 77
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt;->toImmutableList([Ljava/lang/Object;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    :goto_1
    iput-object p1, p0, Lcoil3/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 82
    .line 83
    iput v0, p0, Lcoil3/intercept/RealInterceptorChain;->index:I

    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcoil3/intercept/RealInterceptorChain;->index:I

    .line 2
    .line 3
    iget-object v1, p0, Lcoil3/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcoil3/intercept/RealInterceptorChain;->eventListener:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public proceed(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lcoil3/intercept/RealInterceptorChain;->initialRequest:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v2, v0

    .line 4
    check-cast v2, Lcoil3/request/ImageRequest;

    .line 5
    .line 6
    iget v0, p0, Lcoil3/intercept/RealInterceptorChain;->index:I

    .line 7
    .line 8
    instance-of v1, p1, Lcoil3/intercept/RealInterceptorChain$proceed$1;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    move-object v1, p1

    .line 13
    check-cast v1, Lcoil3/intercept/RealInterceptorChain$proceed$1;

    .line 14
    .line 15
    iget v3, v1, Lcoil3/intercept/RealInterceptorChain$proceed$1;->label:I

    .line 16
    .line 17
    const/high16 v4, -0x80000000

    .line 18
    .line 19
    and-int v5, v3, v4

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    sub-int/2addr v3, v4

    .line 24
    iput v3, v1, Lcoil3/intercept/RealInterceptorChain$proceed$1;->label:I

    .line 25
    .line 26
    :goto_0
    move-object p1, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    new-instance v1, Lcoil3/intercept/RealInterceptorChain$proceed$1;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1}, Lcoil3/intercept/RealInterceptorChain$proceed$1;-><init>(Lcoil3/intercept/RealInterceptorChain;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :goto_1
    iget-object v1, p1, Lcoil3/intercept/RealInterceptorChain$proceed$1;->result:Ljava/lang/Object;

    .line 35
    .line 36
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 37
    .line 38
    iget v3, p1, Lcoil3/intercept/RealInterceptorChain$proceed$1;->label:I

    .line 39
    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v11, 0x1

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    if-ne v3, v11, :cond_1

    .line 45
    .line 46
    iget-object p0, p1, Lcoil3/intercept/RealInterceptorChain$proceed$1;->L$0:Lcoil3/intercept/EngineInterceptor;

    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v10

    .line 58
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcoil3/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    move-object v12, v1

    .line 68
    check-cast v12, Lcoil3/intercept/EngineInterceptor;

    .line 69
    .line 70
    add-int/lit8 v4, v0, 0x1

    .line 71
    .line 72
    iget-object v0, p0, Lcoil3/intercept/RealInterceptorChain;->request:Ljava/lang/Object;

    .line 73
    .line 74
    move-object v5, v0

    .line 75
    check-cast v5, Lcoil3/request/ImageRequest;

    .line 76
    .line 77
    iget-object v0, p0, Lcoil3/intercept/RealInterceptorChain;->size:Ljava/lang/Object;

    .line 78
    .line 79
    move-object v6, v0

    .line 80
    check-cast v6, Lcoil3/size/Size;

    .line 81
    .line 82
    new-instance v1, Lcoil3/intercept/RealInterceptorChain;

    .line 83
    .line 84
    iget-object v0, p0, Lcoil3/intercept/RealInterceptorChain;->eventListener:Ljava/lang/Object;

    .line 85
    .line 86
    move-object v7, v0

    .line 87
    check-cast v7, Lcoil3/EventListener$Companion$NONE$1;

    .line 88
    .line 89
    iget-boolean v8, p0, Lcoil3/intercept/RealInterceptorChain;->isPlaceholderCached:Z

    .line 90
    .line 91
    iget-object v3, p0, Lcoil3/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 92
    .line 93
    invoke-direct/range {v1 .. v8}, Lcoil3/intercept/RealInterceptorChain;-><init>(Lcoil3/request/ImageRequest;Ljava/util/List;ILcoil3/request/ImageRequest;Lcoil3/size/Size;Lcoil3/EventListener$Companion$NONE$1;Z)V

    .line 94
    .line 95
    .line 96
    iput-object v12, p1, Lcoil3/intercept/RealInterceptorChain$proceed$1;->L$0:Lcoil3/intercept/EngineInterceptor;

    .line 97
    .line 98
    iput v11, p1, Lcoil3/intercept/RealInterceptorChain$proceed$1;->label:I

    .line 99
    .line 100
    invoke-virtual {v12, v1, p1}, Lcoil3/intercept/EngineInterceptor;->intercept(Lcoil3/intercept/RealInterceptorChain;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-ne v1, v9, :cond_3

    .line 105
    .line 106
    return-object v9

    .line 107
    :cond_3
    move-object p0, v12

    .line 108
    :goto_2
    check-cast v1, Lcoil3/request/ImageResult;

    .line 109
    .line 110
    invoke-interface {v1}, Lcoil3/request/ImageResult;->getRequest()Lcoil3/request/ImageRequest;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object v0, p1, Lcoil3/request/ImageRequest;->context:Landroid/content/Context;

    .line 115
    .line 116
    iget-object v3, v2, Lcoil3/request/ImageRequest;->context:Landroid/content/Context;

    .line 117
    .line 118
    const-string v4, "Interceptor \'"

    .line 119
    .line 120
    if-ne v0, v3, :cond_7

    .line 121
    .line 122
    iget-object v0, p1, Lcoil3/request/ImageRequest;->data:Ljava/lang/Object;

    .line 123
    .line 124
    sget-object v3, Lcoil3/request/NullRequestData;->INSTANCE:Lcoil3/request/NullRequestData;

    .line 125
    .line 126
    if-eq v0, v3, :cond_6

    .line 127
    .line 128
    iget-object v0, p1, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 129
    .line 130
    iget-object v3, v2, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 131
    .line 132
    if-ne v0, v3, :cond_5

    .line 133
    .line 134
    iget-object p1, p1, Lcoil3/request/ImageRequest;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 135
    .line 136
    iget-object v0, v2, Lcoil3/request/ImageRequest;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 137
    .line 138
    if-ne p1, v0, :cond_4

    .line 139
    .line 140
    return-object v1

    .line 141
    :cond_4
    const-string p1, "\' cannot modify the request\'s size resolver. Use `Interceptor.Chain.withSize` instead."

    .line 142
    .line 143
    invoke-static {p0, p1, v4}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-object v10

    .line 147
    :cond_5
    const-string p1, "\' cannot modify the request\'s target."

    .line 148
    .line 149
    invoke-static {p0, p1, v4}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-object v10

    .line 153
    :cond_6
    const-string p1, "\' cannot set the request\'s data to null."

    .line 154
    .line 155
    invoke-static {p0, p1, v4}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-object v10

    .line 159
    :cond_7
    const-string p1, "\' cannot modify the request\'s context."

    .line 160
    .line 161
    invoke-static {p0, p1, v4}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-object v10
.end method

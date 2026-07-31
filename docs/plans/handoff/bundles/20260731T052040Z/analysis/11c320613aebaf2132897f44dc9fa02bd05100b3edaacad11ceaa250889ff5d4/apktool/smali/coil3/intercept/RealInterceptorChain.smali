.class public final Lcoil3/intercept/RealInterceptorChain;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcoil3/intercept/Interceptor$Chain;


# instance fields
.field public final eventListener:Lcoil3/EventListener;

.field public final index:I

.field public final initialRequest:Lcoil3/request/ImageRequest;

.field public final interceptors:Ljava/util/List;

.field public final isPlaceholderCached:Z

.field public final request:Lcoil3/request/ImageRequest;

.field public final size:Lcoil3/size/Size;


# direct methods
.method public constructor <init>(Lcoil3/request/ImageRequest;Ljava/util/List;ILcoil3/request/ImageRequest;Lcoil3/size/Size;Lcoil3/EventListener;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/intercept/RealInterceptorChain;->initialRequest:Lcoil3/request/ImageRequest;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 7
    .line 8
    iput p3, p0, Lcoil3/intercept/RealInterceptorChain;->index:I

    .line 9
    .line 10
    iput-object p4, p0, Lcoil3/intercept/RealInterceptorChain;->request:Lcoil3/request/ImageRequest;

    .line 11
    .line 12
    iput-object p5, p0, Lcoil3/intercept/RealInterceptorChain;->size:Lcoil3/size/Size;

    .line 13
    .line 14
    iput-object p6, p0, Lcoil3/intercept/RealInterceptorChain;->eventListener:Lcoil3/EventListener;

    .line 15
    .line 16
    iput-boolean p7, p0, Lcoil3/intercept/RealInterceptorChain;->isPlaceholderCached:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final proceed(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p1, Lcoil3/intercept/RealInterceptorChain$proceed$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;

    .line 7
    .line 8
    iget v1, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcoil3/intercept/RealInterceptorChain$proceed$1;-><init>(Lcoil3/intercept/RealInterceptorChain;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    iget-object v1, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->L$1:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lcoil3/intercept/RealInterceptorChain;

    .line 38
    .line 39
    iget-object v0, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lcoil3/intercept/EngineInterceptor;

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v2

    .line 53
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcoil3/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 57
    .line 58
    iget v1, p0, Lcoil3/intercept/RealInterceptorChain;->index:I

    .line 59
    .line 60
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcoil3/intercept/EngineInterceptor;

    .line 65
    .line 66
    add-int/lit8 v7, v1, 0x1

    .line 67
    .line 68
    new-instance v4, Lcoil3/intercept/RealInterceptorChain;

    .line 69
    .line 70
    iget-object v10, p0, Lcoil3/intercept/RealInterceptorChain;->eventListener:Lcoil3/EventListener;

    .line 71
    .line 72
    iget-boolean v11, p0, Lcoil3/intercept/RealInterceptorChain;->isPlaceholderCached:Z

    .line 73
    .line 74
    iget-object v5, p0, Lcoil3/intercept/RealInterceptorChain;->initialRequest:Lcoil3/request/ImageRequest;

    .line 75
    .line 76
    iget-object v6, p0, Lcoil3/intercept/RealInterceptorChain;->interceptors:Ljava/util/List;

    .line 77
    .line 78
    iget-object v8, p0, Lcoil3/intercept/RealInterceptorChain;->request:Lcoil3/request/ImageRequest;

    .line 79
    .line 80
    iget-object v9, p0, Lcoil3/intercept/RealInterceptorChain;->size:Lcoil3/size/Size;

    .line 81
    .line 82
    invoke-direct/range {v4 .. v11}, Lcoil3/intercept/RealInterceptorChain;-><init>(Lcoil3/request/ImageRequest;Ljava/util/List;ILcoil3/request/ImageRequest;Lcoil3/size/Size;Lcoil3/EventListener;Z)V

    .line 83
    .line 84
    .line 85
    iput-object p1, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->L$0:Ljava/lang/Object;

    .line 86
    .line 87
    iput-object v2, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->L$1:Ljava/lang/Object;

    .line 88
    .line 89
    iput v3, v0, Lcoil3/intercept/RealInterceptorChain$proceed$1;->label:I

    .line 90
    .line 91
    invoke-virtual {p1, v4, v0}, Lcoil3/intercept/EngineInterceptor;->intercept(Lcoil3/intercept/RealInterceptorChain;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 96
    .line 97
    if-ne v0, v1, :cond_3

    .line 98
    .line 99
    return-object v1

    .line 100
    :cond_3
    move-object v12, v0

    .line 101
    move-object v0, p1

    .line 102
    move-object p1, v12

    .line 103
    :goto_1
    check-cast p1, Lcoil3/request/ImageResult;

    .line 104
    .line 105
    invoke-interface {p1}, Lcoil3/request/ImageResult;->getRequest()Lcoil3/request/ImageRequest;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iget-object v3, v1, Lcoil3/request/ImageRequest;->context:Landroid/content/Context;

    .line 110
    .line 111
    iget-object p0, p0, Lcoil3/intercept/RealInterceptorChain;->initialRequest:Lcoil3/request/ImageRequest;

    .line 112
    .line 113
    iget-object v4, p0, Lcoil3/request/ImageRequest;->context:Landroid/content/Context;

    .line 114
    .line 115
    const-string v5, "Interceptor \'"

    .line 116
    .line 117
    if-ne v3, v4, :cond_7

    .line 118
    .line 119
    iget-object v3, v1, Lcoil3/request/ImageRequest;->data:Ljava/lang/Object;

    .line 120
    .line 121
    sget-object v4, Lcoil3/request/NullRequestData;->INSTANCE:Lcoil3/request/NullRequestData;

    .line 122
    .line 123
    if-eq v3, v4, :cond_6

    .line 124
    .line 125
    iget-object v3, v1, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 126
    .line 127
    iget-object v4, p0, Lcoil3/request/ImageRequest;->target:Lcoil3/target/Target;

    .line 128
    .line 129
    if-ne v3, v4, :cond_5

    .line 130
    .line 131
    iget-object v1, v1, Lcoil3/request/ImageRequest;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 132
    .line 133
    iget-object p0, p0, Lcoil3/request/ImageRequest;->sizeResolver:Lcoil3/size/SizeResolver;

    .line 134
    .line 135
    if-ne v1, p0, :cond_4

    .line 136
    .line 137
    return-object p1

    .line 138
    :cond_4
    const-string p0, "\' cannot modify the request\'s size resolver. Use `Interceptor.Chain.withSize` instead."

    .line 139
    .line 140
    invoke-static {v0, p0, v5}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-object v2

    .line 144
    :cond_5
    const-string p0, "\' cannot modify the request\'s target."

    .line 145
    .line 146
    invoke-static {v0, p0, v5}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-object v2

    .line 150
    :cond_6
    const-string p0, "\' cannot set the request\'s data to null."

    .line 151
    .line 152
    invoke-static {v0, p0, v5}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-object v2

    .line 156
    :cond_7
    const-string p0, "\' cannot modify the request\'s context."

    .line 157
    .line 158
    invoke-static {v0, p0, v5}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return-object v2
.end method

.class public final Lokhttp3/internal/http/RealInterceptorChain;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final call:Lokhttp3/internal/connection/RealCall;

.field public calls:I

.field public final connectTimeoutMillis:I

.field public final exchange:Landroidx/compose/runtime/Latch;

.field public final index:I

.field public final interceptors:Ljava/util/ArrayList;

.field public final readTimeoutMillis:I

.field public final request:Lokhttp3/Request;

.field public final writeTimeoutMillis:I


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealCall;Ljava/util/ArrayList;ILandroidx/compose/runtime/Latch;Lokhttp3/Request;III)V
    .locals 0

    .line 1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->call:Lokhttp3/internal/connection/RealCall;

    .line 8
    .line 9
    iput-object p2, p0, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput p3, p0, Lokhttp3/internal/http/RealInterceptorChain;->index:I

    .line 12
    .line 13
    iput-object p4, p0, Lokhttp3/internal/http/RealInterceptorChain;->exchange:Landroidx/compose/runtime/Latch;

    .line 14
    .line 15
    iput-object p5, p0, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 16
    .line 17
    iput p6, p0, Lokhttp3/internal/http/RealInterceptorChain;->connectTimeoutMillis:I

    .line 18
    .line 19
    iput p7, p0, Lokhttp3/internal/http/RealInterceptorChain;->readTimeoutMillis:I

    .line 20
    .line 21
    iput p8, p0, Lokhttp3/internal/http/RealInterceptorChain;->writeTimeoutMillis:I

    .line 22
    .line 23
    return-void
.end method

.method public static copy$okhttp$default(Lokhttp3/internal/http/RealInterceptorChain;ILandroidx/compose/runtime/Latch;Lokhttp3/Request;I)Lokhttp3/internal/http/RealInterceptorChain;
    .locals 9

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->index:I

    .line 6
    .line 7
    :cond_0
    move v3, p1

    .line 8
    and-int/lit8 p1, p4, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lokhttp3/internal/http/RealInterceptorChain;->exchange:Landroidx/compose/runtime/Latch;

    .line 13
    .line 14
    :cond_1
    move-object v4, p2

    .line 15
    and-int/lit8 p1, p4, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p3, p0, Lokhttp3/internal/http/RealInterceptorChain;->request:Lokhttp3/Request;

    .line 20
    .line 21
    :cond_2
    move-object v5, p3

    .line 22
    iget v6, p0, Lokhttp3/internal/http/RealInterceptorChain;->connectTimeoutMillis:I

    .line 23
    .line 24
    iget v7, p0, Lokhttp3/internal/http/RealInterceptorChain;->readTimeoutMillis:I

    .line 25
    .line 26
    iget v8, p0, Lokhttp3/internal/http/RealInterceptorChain;->writeTimeoutMillis:I

    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v0, Lokhttp3/internal/http/RealInterceptorChain;

    .line 32
    .line 33
    iget-object v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->call:Lokhttp3/internal/connection/RealCall;

    .line 34
    .line 35
    iget-object v2, p0, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct/range {v0 .. v8}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Lokhttp3/internal/connection/RealCall;Ljava/util/ArrayList;ILandroidx/compose/runtime/Latch;Lokhttp3/Request;III)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method


# virtual methods
.method public final proceed(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lokhttp3/internal/http/RealInterceptorChain;->interceptors:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    iget v3, p0, Lokhttp3/internal/http/RealInterceptorChain;->index:I

    .line 12
    .line 13
    if-ge v3, v1, :cond_6

    .line 14
    .line 15
    iget v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    add-int/2addr v1, v4

    .line 19
    iput v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    .line 20
    .line 21
    const-string v1, " must call proceed() exactly once"

    .line 22
    .line 23
    iget-object v5, p0, Lokhttp3/internal/http/RealInterceptorChain;->exchange:Landroidx/compose/runtime/Latch;

    .line 24
    .line 25
    const-string v6, "network interceptor "

    .line 26
    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    iget-object v7, v5, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v7, Lokhttp3/internal/connection/ExchangeFinder;

    .line 32
    .line 33
    invoke-interface {v7}, Lokhttp3/internal/connection/ExchangeFinder;->getRoutePlanner()Lokhttp3/internal/connection/RealRoutePlanner;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    iget-object v8, p1, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 38
    .line 39
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object v7, v7, Lokhttp3/internal/connection/RealRoutePlanner;->address:Lokhttp3/Address;

    .line 46
    .line 47
    iget-object v7, v7, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 48
    .line 49
    iget v9, v8, Lokhttp3/HttpUrl;->port:I

    .line 50
    .line 51
    iget v10, v7, Lokhttp3/HttpUrl;->port:I

    .line 52
    .line 53
    if-ne v9, v10, :cond_1

    .line 54
    .line 55
    iget-object v8, v8, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v7, v7, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-eqz v7, :cond_1

    .line 64
    .line 65
    iget v7, p0, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    .line 66
    .line 67
    if-ne v7, v4, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    sub-int/2addr v3, v4

    .line 71
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {p0, v1, v6}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v2

    .line 79
    :cond_1
    sub-int/2addr v3, v4

    .line 80
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const-string p1, " must retain the same host and port"

    .line 85
    .line 86
    invoke-static {p0, p1, v6}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-object v2

    .line 90
    :cond_2
    :goto_0
    add-int/lit8 v7, v3, 0x1

    .line 91
    .line 92
    const/16 v8, 0x3a

    .line 93
    .line 94
    invoke-static {p0, v7, v2, p1, v8}, Lokhttp3/internal/http/RealInterceptorChain;->copy$okhttp$default(Lokhttp3/internal/http/RealInterceptorChain;ILandroidx/compose/runtime/Latch;Lokhttp3/Request;I)Lokhttp3/internal/http/RealInterceptorChain;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lokhttp3/Interceptor;

    .line 103
    .line 104
    invoke-interface {p1, p0}, Lokhttp3/Interceptor;->intercept(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    if-eqz v3, :cond_5

    .line 109
    .line 110
    if-eqz v5, :cond_4

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-ge v7, v0, :cond_4

    .line 117
    .line 118
    iget p0, p0, Lokhttp3/internal/http/RealInterceptorChain;->calls:I

    .line 119
    .line 120
    if-ne p0, v4, :cond_3

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    invoke-static {p1, v1, v6}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-object v2

    .line 127
    :cond_4
    :goto_1
    return-object v3

    .line 128
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    .line 129
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v1, "interceptor "

    .line 133
    .line 134
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p1, " returned null"

    .line 141
    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p0

    .line 153
    :cond_6
    const-string p0, "Check failed."

    .line 154
    .line 155
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-object v2
.end method

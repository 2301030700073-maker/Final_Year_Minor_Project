.class public final Lretrofit2/Retrofit$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final emptyArgs:[Ljava/lang/Object;

.field public final synthetic this$0:Lretrofit2/Retrofit;

.field public final synthetic val$service:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lretrofit2/Retrofit;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lretrofit2/Retrofit$1;->this$0:Lretrofit2/Retrofit;

    .line 5
    .line 6
    iput-object p2, p0, Lretrofit2/Retrofit$1;->val$service:Ljava/lang/Class;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lretrofit2/Retrofit$1;->emptyArgs:[Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lretrofit2/Retrofit$1;->val$service:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-class v2, Ljava/lang/Object;

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    if-eqz p3, :cond_1

    .line 17
    .line 18
    :goto_0
    move-object v4, p3

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget-object p3, p0, Lretrofit2/Retrofit$1;->emptyArgs:[Ljava/lang/Object;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :goto_1
    sget-object p3, Lretrofit2/Platform;->reflection:Lretrofit2/Reflection;

    .line 24
    .line 25
    invoke-virtual {p3, p2}, Lretrofit2/Reflection;->isDefaultMethod(Ljava/lang/reflect/Method;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p3, p2, v0, p1, v4}, Lretrofit2/Reflection;->invokeDefaultMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_2
    iget-object p0, p0, Lretrofit2/Retrofit$1;->this$0:Lretrofit2/Retrofit;

    .line 37
    .line 38
    :goto_2
    iget-object p3, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p3, Lj$/util/concurrent/ConcurrentHashMap;

    .line 41
    .line 42
    invoke-virtual {p3, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    instance-of v1, p3, Lretrofit2/HttpServiceMethod;

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    check-cast p3, Lretrofit2/HttpServiceMethod;

    .line 51
    .line 52
    goto :goto_5

    .line 53
    :cond_3
    if-nez p3, :cond_5

    .line 54
    .line 55
    new-instance v1, Ljava/lang/Object;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    monitor-enter v1

    .line 61
    :try_start_0
    iget-object p3, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p3, Lj$/util/concurrent/ConcurrentHashMap;

    .line 64
    .line 65
    invoke-virtual {p3, p2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    if-nez p3, :cond_4

    .line 70
    .line 71
    :try_start_1
    invoke-static {p0, v0, p2}, Lretrofit2/HttpServiceMethod;->parseAnnotations(Lretrofit2/Retrofit;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lretrofit2/HttpServiceMethod;

    .line 72
    .line 73
    .line 74
    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    :try_start_2
    iget-object p0, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 78
    .line 79
    invoke-virtual {p0, p2, p3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    monitor-exit v1

    .line 83
    goto :goto_5

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    move-object p0, v0

    .line 86
    goto :goto_3

    .line 87
    :catchall_1
    move-exception v0

    .line 88
    move-object p1, v0

    .line 89
    iget-object p0, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 92
    .line 93
    invoke-virtual {p0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_4
    monitor-exit v1

    .line 98
    goto :goto_4

    .line 99
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    throw p0

    .line 101
    :cond_5
    :goto_4
    monitor-enter p3

    .line 102
    :try_start_3
    iget-object v1, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 105
    .line 106
    invoke-virtual {v1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-nez v1, :cond_6

    .line 111
    .line 112
    monitor-exit p3

    .line 113
    goto :goto_2

    .line 114
    :catchall_2
    move-exception v0

    .line 115
    move-object p0, v0

    .line 116
    goto :goto_6

    .line 117
    :cond_6
    move-object p0, v1

    .line 118
    check-cast p0, Lretrofit2/HttpServiceMethod;

    .line 119
    .line 120
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 121
    move-object p3, p0

    .line 122
    :goto_5
    new-instance v1, Lretrofit2/OkHttpCall;

    .line 123
    .line 124
    iget-object v2, p3, Lretrofit2/HttpServiceMethod;->requestFactory:Lretrofit2/RequestFactory;

    .line 125
    .line 126
    iget-object v5, p3, Lretrofit2/HttpServiceMethod;->callFactory:Lokhttp3/OkHttpClient;

    .line 127
    .line 128
    iget-object v6, p3, Lretrofit2/HttpServiceMethod;->responseConverter:Lretrofit2/Converter;

    .line 129
    .line 130
    move-object v3, p1

    .line 131
    invoke-direct/range {v1 .. v6}, Lretrofit2/OkHttpCall;-><init>(Lretrofit2/RequestFactory;Ljava/lang/Object;[Ljava/lang/Object;Lokhttp3/OkHttpClient;Lretrofit2/Converter;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, v1, v4}, Lretrofit2/HttpServiceMethod;->adapt(Lretrofit2/OkHttpCall;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    :goto_6
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 140
    throw p0
.end method

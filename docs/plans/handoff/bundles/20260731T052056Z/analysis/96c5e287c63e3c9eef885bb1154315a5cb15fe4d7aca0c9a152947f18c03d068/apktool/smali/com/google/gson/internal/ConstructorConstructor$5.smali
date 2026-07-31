.class public final Lcom/google/gson/internal/ConstructorConstructor$5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;
.implements Lretrofit2/CallAdapter;


# instance fields
.field public final synthetic $r8$classId:I

.field public final val$type:Ljava/lang/reflect/Type;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/reflect/Type;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/gson/internal/ConstructorConstructor$5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/gson/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public adapt(Lretrofit2/OkHttpCall;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget p0, p0, Lcom/google/gson/internal/ConstructorConstructor$5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Lretrofit2/CompletableFutureCallAdapterFactory$CallCancelCompletableFuture;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lretrofit2/CompletableFutureCallAdapterFactory$CallCancelCompletableFuture;-><init>(Lretrofit2/OkHttpCall;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$BodyCallback;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, p0, v1}, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$BodyCallback;-><init>(Lretrofit2/CompletableFutureCallAdapterFactory$CallCancelCompletableFuture;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lretrofit2/OkHttpCall;->enqueue(Lretrofit2/Callback;)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_0
    new-instance p0, Lretrofit2/CompletableFutureCallAdapterFactory$CallCancelCompletableFuture;

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lretrofit2/CompletableFutureCallAdapterFactory$CallCancelCompletableFuture;-><init>(Lretrofit2/OkHttpCall;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$BodyCallback;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, p0, v1}, Lretrofit2/CompletableFutureCallAdapterFactory$BodyCallAdapter$BodyCallback;-><init>(Lretrofit2/CompletableFutureCallAdapterFactory$CallCancelCompletableFuture;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lretrofit2/OkHttpCall;->enqueue(Lretrofit2/Callback;)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public construct()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/gson/internal/ConstructorConstructor$5;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/google/gson/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 11
    .line 12
    const-string v3, "Invalid EnumMap type: "

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    move-object v0, p0

    .line 17
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    aget-object v0, v0, v1

    .line 24
    .line 25
    instance-of v1, v0, Ljava/lang/Class;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    new-instance v2, Ljava/util/EnumMap;

    .line 30
    .line 31
    check-cast v0, Ljava/lang/Class;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {v3, p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {v3, p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-object v2

    .line 45
    :pswitch_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 46
    .line 47
    const-string v3, "Invalid EnumSet type: "

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    move-object v0, p0

    .line 52
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    aget-object v0, v0, v1

    .line 59
    .line 60
    instance-of v1, v0, Ljava/lang/Class;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    check-cast v0, Ljava/lang/Class;

    .line 65
    .line 66
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-static {v3, p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    invoke-static {v3, p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-object v2

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/gson/internal/ConstructorConstructor$5;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/gson/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;

    .line 4
    .line 5
    return-object p0
.end method

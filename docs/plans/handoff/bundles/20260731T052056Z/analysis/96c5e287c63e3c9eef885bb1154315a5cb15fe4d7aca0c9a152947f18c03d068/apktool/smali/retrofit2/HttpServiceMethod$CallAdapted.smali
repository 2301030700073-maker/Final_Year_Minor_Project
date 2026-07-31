.class public final Lretrofit2/HttpServiceMethod$CallAdapted;
.super Lretrofit2/HttpServiceMethod;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final callAdapter:Lretrofit2/CallAdapter;


# direct methods
.method public synthetic constructor <init>(Lretrofit2/RequestFactory;Lokhttp3/OkHttpClient;Lretrofit2/Converter;Lretrofit2/CallAdapter;I)V
    .locals 0

    .line 1
    iput p5, p0, Lretrofit2/HttpServiceMethod$CallAdapted;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lretrofit2/HttpServiceMethod;-><init>(Lretrofit2/RequestFactory;Lokhttp3/OkHttpClient;Lretrofit2/Converter;)V

    .line 4
    .line 5
    .line 6
    iput-object p4, p0, Lretrofit2/HttpServiceMethod$CallAdapted;->callAdapter:Lretrofit2/CallAdapter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final adapt(Lretrofit2/OkHttpCall;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lretrofit2/HttpServiceMethod$CallAdapted;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lretrofit2/HttpServiceMethod$CallAdapted;->callAdapter:Lretrofit2/CallAdapter;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, p1}, Lretrofit2/CallAdapter;->adapt(Lretrofit2/OkHttpCall;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lretrofit2/Call;

    .line 13
    .line 14
    array-length p1, p2

    .line 15
    const/4 v0, 0x1

    .line 16
    sub-int/2addr p1, v0

    .line 17
    aget-object p1, p2, p1

    .line 18
    .line 19
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 20
    .line 21
    :try_start_0
    new-instance p2, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/ExceptionsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {p2, v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lretrofit2/KotlinExtensions$await$2$1;

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    invoke-direct {v0, p0, v1}, Lretrofit2/KotlinExtensions$await$2$1;-><init>(Lretrofit2/Call;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lretrofit2/KotlinExtensions$await$2$2;

    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    invoke-direct {v0, p2, v1}, Lretrofit2/KotlinExtensions$await$2$2;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p0, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    invoke-static {p0, p1}, Lretrofit2/Utils;->suspendAndThrow(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :goto_0
    return-object p0

    .line 62
    :pswitch_0
    invoke-interface {p0, p1}, Lretrofit2/CallAdapter;->adapt(Lretrofit2/OkHttpCall;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

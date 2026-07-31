.class public final synthetic Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/foundation/pager/DefaultPagerState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    iput p1, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$1:I

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/internal/http2/Http2Connection;ILokhttp3/internal/http2/ErrorCode;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput p2, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$1:I

    .line 6
    .line 7
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 15
    .line 16
    check-cast v3, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 17
    .line 18
    new-instance v0, Lnet/newpipe/app/screen/about/AboutScreenKt$AboutScreenContent$3$1$2$1$1$1$1;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-direct {v0, v3, v2, v4}, Lnet/newpipe/app/screen/about/AboutScreenKt$AboutScreenContent$3$1$2$1$1$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;ILkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    invoke-static {p0, v4, v4, v0, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :pswitch_0
    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    .line 30
    .line 31
    check-cast v3, Lokhttp3/internal/http2/ErrorCode;

    .line 32
    .line 33
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 41
    .line 42
    invoke-virtual {p0, v2, v2, v0}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-object v1

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

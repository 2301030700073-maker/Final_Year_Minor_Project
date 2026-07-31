.class public final Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $processor:Lorg/apache/james/mime4j/stream/RawField;

.field public final synthetic $r8$classId:I

.field public label:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/james/mime4j/stream/RawField;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;->$processor:Lorg/apache/james/mime4j/stream/RawField;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;->$processor:Lorg/apache/james/mime4j/stream/RawField;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;-><init>(Lorg/apache/james/mime4j/stream/RawField;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;->$processor:Lorg/apache/james/mime4j/stream/RawField;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;-><init>(Lorg/apache/james/mime4j/stream/RawField;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;->$processor:Lorg/apache/james/mime4j/stream/RawField;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 7
    .line 8
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;->label:I

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    if-ne v0, v5, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput v5, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;->label:I

    .line 34
    .line 35
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/RawField;->shutdown$camera_camera2_pipe()Lkotlin/Unit;

    .line 36
    .line 37
    .line 38
    if-ne v6, v4, :cond_2

    .line 39
    .line 40
    move-object v2, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    :goto_0
    move-object v2, v6

    .line 43
    :goto_1
    return-object v2

    .line 44
    :pswitch_0
    iget v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;->label:I

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    if-ne v0, v5, :cond_3

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iput v5, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;->label:I

    .line 62
    .line 63
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/RawField;->shutdown$camera_camera2_pipe()Lkotlin/Unit;

    .line 64
    .line 65
    .line 66
    if-ne v6, v4, :cond_5

    .line 67
    .line 68
    move-object v2, v4

    .line 69
    goto :goto_3

    .line 70
    :cond_5
    :goto_2
    move-object v2, v6

    .line 71
    :goto_3
    return-object v2

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

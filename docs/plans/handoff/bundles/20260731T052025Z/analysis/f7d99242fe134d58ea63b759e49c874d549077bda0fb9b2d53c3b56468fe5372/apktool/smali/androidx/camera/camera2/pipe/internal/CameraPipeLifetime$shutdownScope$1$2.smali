.class public final Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;->this$0:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

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
    iget p1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;->this$0:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;-><init>(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;-><init>(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 6

    .line 1
    iget v0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;->this$0:Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget v0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;->label:I

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    if-ne v0, v5, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object v3, v4

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "CXCP"

    .line 33
    .line 34
    const-string v0, "Cancelling CameraPipe root Job..."

    .line 35
    .line 36
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object p1, v1, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->cameraPipeJob:Lkotlinx/coroutines/Job;

    .line 40
    .line 41
    iput v5, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;->label:I

    .line 42
    .line 43
    invoke-static {p1, p0}, Lkotlinx/coroutines/JobKt;->cancelAndJoin(Lkotlinx/coroutines/Job;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    if-ne p0, v3, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :goto_0
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 51
    .line 52
    :goto_1
    return-object v3

    .line 53
    :pswitch_0
    iget v0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;->label:I

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    if-ne v0, v5, :cond_3

    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    move-object p1, v4

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    new-instance p1, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;

    .line 72
    .line 73
    invoke-direct {p1, v1, v4, v5}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;-><init>(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Lkotlin/coroutines/Continuation;I)V

    .line 74
    .line 75
    .line 76
    iput v5, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$shutdownScope$1$2;->label:I

    .line 77
    .line 78
    const-wide/16 v0, 0xbb8

    .line 79
    .line 80
    invoke-static {v0, v1, p1, p0}, Lkotlinx/coroutines/JobKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v3, :cond_5

    .line 85
    .line 86
    move-object p1, v3

    .line 87
    :cond_5
    :goto_2
    return-object p1

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

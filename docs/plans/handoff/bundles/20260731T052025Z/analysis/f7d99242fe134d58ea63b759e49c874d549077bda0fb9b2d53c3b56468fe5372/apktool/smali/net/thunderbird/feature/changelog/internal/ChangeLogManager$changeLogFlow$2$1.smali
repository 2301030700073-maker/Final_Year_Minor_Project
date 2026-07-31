.class public final Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;->this$0:Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;

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
    iget p1, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;->this$0:Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;-><init>(Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;-><init>(Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;Lkotlin/coroutines/Continuation;I)V

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
    iget v0, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    iget-object v5, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;->this$0:Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget-object v0, v5, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;->changeLog$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 17
    .line 18
    iget v7, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;->label:I

    .line 19
    .line 20
    if-eqz v7, :cond_1

    .line 21
    .line 22
    if-ne v7, v4, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v1, v6

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    check-cast p1, Lde/cketti/changelog/ChangeLog;

    .line 44
    .line 45
    iget v2, p1, Lde/cketti/changelog/ChangeLog;->currentVersionCode:I

    .line 46
    .line 47
    iput v2, p1, Lde/cketti/changelog/ChangeLog;->lastVersionCode:I

    .line 48
    .line 49
    iget-object v2, p1, Lde/cketti/changelog/ChangeLog;->preferences:Landroid/content/SharedPreferences;

    .line 50
    .line 51
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string v6, "ckChangeLog_last_version_code"

    .line 56
    .line 57
    iget p1, p1, Lde/cketti/changelog/ChangeLog;->currentVersionCode:I

    .line 58
    .line 59
    invoke-interface {v2, v6, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 60
    .line 61
    .line 62
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    .line 64
    .line 65
    iget-object p1, v5, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;->mutableChangeLogFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 66
    .line 67
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    check-cast v0, Lde/cketti/changelog/ChangeLog;

    .line 75
    .line 76
    iput v4, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;->label:I

    .line 77
    .line 78
    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    if-ne p0, v3, :cond_2

    .line 83
    .line 84
    move-object v1, v3

    .line 85
    :cond_2
    :goto_0
    return-object v1

    .line 86
    :pswitch_0
    iget v0, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;->label:I

    .line 87
    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    if-ne v0, v4, :cond_3

    .line 91
    .line 92
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    move-object v1, v6

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, v5, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 105
    .line 106
    new-instance v0, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;

    .line 107
    .line 108
    const/16 v2, 0x10

    .line 109
    .line 110
    invoke-direct {v0, v5, v6, v2}, Landroidx/camera/camera2/pipe/core/WakeLock$release$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 111
    .line 112
    .line 113
    iput v4, p0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager$changeLogFlow$2$1;->label:I

    .line 114
    .line 115
    invoke-static {p1, v0, p0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    if-ne p0, v3, :cond_5

    .line 120
    .line 121
    move-object v1, v3

    .line 122
    :cond_5
    :goto_1
    return-object v1

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

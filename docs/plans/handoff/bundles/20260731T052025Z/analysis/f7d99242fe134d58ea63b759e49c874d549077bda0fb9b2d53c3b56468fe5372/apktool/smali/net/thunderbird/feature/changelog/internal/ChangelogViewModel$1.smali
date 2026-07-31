.class public final Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;->this$0:Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;

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
    iget p1, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;->this$0:Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;-><init>(Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;-><init>(Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;Lkotlin/coroutines/Continuation;I)V

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
    iget v0, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;->this$0:Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;

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
    iget v0, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;->label:I

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    if-eq v0, v5, :cond_0

    .line 19
    .line 20
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-object v3, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/Object;)Lorg/jsoup/SerializationException;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    throw p0

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, v1, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 34
    .line 35
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation$registerRoutes$lambda$0$0$$inlined$observe$2$1;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput v5, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;->label:I

    .line 41
    .line 42
    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :goto_0
    return-object v3

    .line 46
    :pswitch_0
    iget v0, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;->label:I

    .line 47
    .line 48
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    if-ne v0, v5, :cond_2

    .line 53
    .line 54
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    move-object v3, v4

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iput v5, p0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel$1;->label:I

    .line 67
    .line 68
    iget-object p1, v1, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 69
    .line 70
    check-cast p1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->generalSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 73
    .line 74
    iget-object v0, v1, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;->changeLogManager:Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;

    .line 75
    .line 76
    iget-object v0, v0, Lnet/thunderbird/feature/changelog/internal/ChangeLogManager;->changeLogFlow$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 77
    .line 78
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 83
    .line 84
    new-instance v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;

    .line 85
    .line 86
    const/4 v7, 0x3

    .line 87
    const/16 v8, 0xc

    .line 88
    .line 89
    invoke-direct {v2, v7, v4, v8}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager$generalSettings$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 90
    .line 91
    .line 92
    new-instance v7, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 93
    .line 94
    invoke-direct {v7, v8, v1}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    const/4 v1, 0x2

    .line 98
    new-array v1, v1, [Lkotlinx/coroutines/flow/Flow;

    .line 99
    .line 100
    const/4 v8, 0x0

    .line 101
    aput-object p1, v1, v8

    .line 102
    .line 103
    aput-object v0, v1, v5

    .line 104
    .line 105
    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;

    .line 106
    .line 107
    invoke-direct {p1, v2, v4, v8}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;-><init>(Lkotlin/Function;Lkotlin/coroutines/Continuation;I)V

    .line 108
    .line 109
    .line 110
    sget-object v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$nullArrayFactory$1;->INSTANCE:Lkotlinx/coroutines/flow/FlowKt__ZipKt$nullArrayFactory$1;

    .line 111
    .line 112
    invoke-static {p0, v0, p1, v7, v1}, Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-ne p0, v3, :cond_4

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    move-object p0, v6

    .line 120
    :goto_1
    if-ne p0, v3, :cond_5

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_5
    :goto_2
    move-object v3, v6

    .line 124
    :goto_3
    return-object v3

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

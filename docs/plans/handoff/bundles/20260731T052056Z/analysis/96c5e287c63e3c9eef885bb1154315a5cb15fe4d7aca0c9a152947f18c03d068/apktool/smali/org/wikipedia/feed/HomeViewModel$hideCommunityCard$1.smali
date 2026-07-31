.class public final Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $card:Lorg/wikipedia/feed/model/Card;

.field public final synthetic $r8$classId:I

.field public label:I


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/model/Card;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;->$card:Lorg/wikipedia/feed/model/Card;

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
    iget p1, p0, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;->$card:Lorg/wikipedia/feed/model/Card;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;-><init>(Lorg/wikipedia/feed/model/Card;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;

    .line 16
    .line 17
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;->$card:Lorg/wikipedia/feed/model/Card;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;-><init>(Lorg/wikipedia/feed/model/Card;Lkotlin/coroutines/Continuation;I)V

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
    iget v0, p0, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    iget-object v2, p0, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;->$card:Lorg/wikipedia/feed/model/Card;

    .line 5
    .line 6
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 16
    .line 17
    iget v7, p0, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;->label:I

    .line 18
    .line 19
    if-eqz v7, :cond_1

    .line 20
    .line 21
    if-ne v7, v4, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    move-object v5, v6

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lorg/wikipedia/settings/SettingsRepository;->INSTANCE:Lorg/wikipedia/settings/SettingsRepository;

    .line 36
    .line 37
    invoke-virtual {v2}, Lorg/wikipedia/feed/model/Card;->getHideKey()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput v4, p0, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;->label:I

    .line 42
    .line 43
    sget-object v2, Lorg/wikipedia/settings/SettingsRepository;->dataStore:Landroidx/datastore/core/DataStore;

    .line 44
    .line 45
    new-instance v3, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;

    .line 46
    .line 47
    const/4 v4, 0x2

    .line 48
    invoke-direct {v3, p1, v4, v6}, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Landroidx/paging/SimpleChannelFlowKt$simpleChannelFlow$1;

    .line 52
    .line 53
    invoke-direct {p1, v3, v6, v1}, Landroidx/paging/SimpleChannelFlowKt$simpleChannelFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v2, p1, p0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-ne p0, v0, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move-object p0, v5

    .line 64
    :goto_0
    if-ne p0, v0, :cond_3

    .line 65
    .line 66
    move-object v5, v0

    .line 67
    :cond_3
    :goto_1
    return-object v5

    .line 68
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 69
    .line 70
    iget v7, p0, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;->label:I

    .line 71
    .line 72
    if-eqz v7, :cond_5

    .line 73
    .line 74
    if-ne v7, v4, :cond_4

    .line 75
    .line 76
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    move-object v5, v6

    .line 84
    goto :goto_3

    .line 85
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sget-object p1, Lorg/wikipedia/settings/SettingsRepository;->INSTANCE:Lorg/wikipedia/settings/SettingsRepository;

    .line 89
    .line 90
    invoke-virtual {v2}, Lorg/wikipedia/feed/model/Card;->getHideKey()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput v4, p0, Lorg/wikipedia/feed/HomeViewModel$hideCommunityCard$1;->label:I

    .line 95
    .line 96
    sget-object v2, Lorg/wikipedia/settings/SettingsRepository;->dataStore:Landroidx/datastore/core/DataStore;

    .line 97
    .line 98
    new-instance v3, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;

    .line 99
    .line 100
    const/4 v4, 0x0

    .line 101
    invoke-direct {v3, p1, v4, v6}, Lorg/wikipedia/settings/SettingsRepository$addHiddenCard$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 102
    .line 103
    .line 104
    new-instance p1, Landroidx/paging/SimpleChannelFlowKt$simpleChannelFlow$1;

    .line 105
    .line 106
    invoke-direct {p1, v3, v6, v1}, Landroidx/paging/SimpleChannelFlowKt$simpleChannelFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;I)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v2, p1, p0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    if-ne p0, v0, :cond_6

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_6
    move-object p0, v5

    .line 117
    :goto_2
    if-ne p0, v0, :cond_7

    .line 118
    .line 119
    move-object v5, v0

    .line 120
    :cond_7
    :goto_3
    return-object v5

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

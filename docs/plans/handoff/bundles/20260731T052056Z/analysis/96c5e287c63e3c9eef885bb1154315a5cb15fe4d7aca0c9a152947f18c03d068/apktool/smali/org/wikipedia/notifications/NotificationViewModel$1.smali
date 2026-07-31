.class public final Lorg/wikipedia/notifications/NotificationViewModel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public L$0:Lorg/wikipedia/notifications/NotificationViewModel;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/notifications/NotificationViewModel;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/notifications/NotificationViewModel;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/notifications/NotificationViewModel$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationViewModel$1;->this$0:Lorg/wikipedia/notifications/NotificationViewModel;

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
    iget p1, p0, Lorg/wikipedia/notifications/NotificationViewModel$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationViewModel$1;->this$0:Lorg/wikipedia/notifications/NotificationViewModel;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/notifications/NotificationViewModel$1;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/notifications/NotificationViewModel$1;-><init>(Lorg/wikipedia/notifications/NotificationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/notifications/NotificationViewModel$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/notifications/NotificationViewModel$1;-><init>(Lorg/wikipedia/notifications/NotificationViewModel;Lkotlin/coroutines/Continuation;I)V

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
    iget v0, p0, Lorg/wikipedia/notifications/NotificationViewModel$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/notifications/NotificationViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/notifications/NotificationViewModel$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/notifications/NotificationViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/notifications/NotificationViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/notifications/NotificationViewModel$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/notifications/NotificationViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lorg/wikipedia/notifications/NotificationViewModel$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, p0, Lorg/wikipedia/notifications/NotificationViewModel$1;->this$0:Lorg/wikipedia/notifications/NotificationViewModel;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 15
    .line 16
    iget v6, p0, Lorg/wikipedia/notifications/NotificationViewModel$1;->label:I

    .line 17
    .line 18
    const/4 v7, 0x2

    .line 19
    if-eqz v6, :cond_2

    .line 20
    .line 21
    if-eq v6, v3, :cond_1

    .line 22
    .line 23
    if-ne v6, v7, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move-object v1, v5

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    iget-object v2, p0, Lorg/wikipedia/notifications/NotificationViewModel$1;->L$0:Lorg/wikipedia/notifications/NotificationViewModel;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 44
    .line 45
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    iget-object p1, v4, Lorg/wikipedia/notifications/NotificationViewModel;->notificationRepository:Lorg/wikipedia/media/AvPlayer;

    .line 56
    .line 57
    iget-object v2, v4, Lorg/wikipedia/notifications/NotificationViewModel;->currentContinueStr:Ljava/lang/String;

    .line 58
    .line 59
    iput-object v4, p0, Lorg/wikipedia/notifications/NotificationViewModel$1;->L$0:Lorg/wikipedia/notifications/NotificationViewModel;

    .line 60
    .line 61
    iput v3, p0, Lorg/wikipedia/notifications/NotificationViewModel$1;->label:I

    .line 62
    .line 63
    const-string v3, "read|!read"

    .line 64
    .line 65
    invoke-virtual {p1, v3, v2, p0}, Lorg/wikipedia/media/AvPlayer;->fetchAndSave(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v0, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move-object v2, v4

    .line 73
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 74
    .line 75
    iput-object p1, v2, Lorg/wikipedia/notifications/NotificationViewModel;->currentContinueStr:Ljava/lang/String;

    .line 76
    .line 77
    :cond_4
    iput-object v5, p0, Lorg/wikipedia/notifications/NotificationViewModel$1;->L$0:Lorg/wikipedia/notifications/NotificationViewModel;

    .line 78
    .line 79
    iput v7, p0, Lorg/wikipedia/notifications/NotificationViewModel$1;->label:I

    .line 80
    .line 81
    invoke-virtual {v4, p0}, Lorg/wikipedia/notifications/NotificationViewModel;->filterAndPostNotifications(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-ne p0, v0, :cond_5

    .line 86
    .line 87
    :goto_1
    move-object v1, v0

    .line 88
    :cond_5
    :goto_2
    return-object v1

    .line 89
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 90
    .line 91
    iget v6, p0, Lorg/wikipedia/notifications/NotificationViewModel$1;->label:I

    .line 92
    .line 93
    if-eqz v6, :cond_7

    .line 94
    .line 95
    if-ne v6, v3, :cond_6

    .line 96
    .line 97
    iget-object v4, p0, Lorg/wikipedia/notifications/NotificationViewModel$1;->L$0:Lorg/wikipedia/notifications/NotificationViewModel;

    .line 98
    .line 99
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_6
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    move-object v1, v5

    .line 107
    goto :goto_4

    .line 108
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, v4, Lorg/wikipedia/notifications/NotificationViewModel;->notificationRepository:Lorg/wikipedia/media/AvPlayer;

    .line 112
    .line 113
    iput-object v4, p0, Lorg/wikipedia/notifications/NotificationViewModel$1;->L$0:Lorg/wikipedia/notifications/NotificationViewModel;

    .line 114
    .line 115
    iput v3, p0, Lorg/wikipedia/notifications/NotificationViewModel$1;->label:I

    .line 116
    .line 117
    invoke-virtual {p1, p0}, Lorg/wikipedia/media/AvPlayer;->fetchUnreadWikiDbNames(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-ne p1, v0, :cond_8

    .line 122
    .line 123
    move-object v1, v0

    .line 124
    goto :goto_4

    .line 125
    :cond_8
    :goto_3
    check-cast p1, Ljava/util/Map;

    .line 126
    .line 127
    iput-object p1, v4, Lorg/wikipedia/notifications/NotificationViewModel;->dbNameMap:Ljava/util/Map;

    .line 128
    .line 129
    :goto_4
    return-object v1

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $notifications:Ljava/util/List;

.field public final synthetic $unread:Z

.field public final synthetic $wiki:Lorg/wikipedia/dataclient/WikiSite;

.field public I$0:I

.field public L$0:Ljava/lang/String;

.field public L$2:Lorg/wikipedia/dataclient/WikiSite;

.field public L$3:Ljava/util/Iterator;

.field public Z$0:Z

.field public label:I


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->$wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->$notifications:Ljava/util/List;

    .line 4
    .line 5
    iput-boolean p3, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->$unread:Z

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->$notifications:Ljava/util/List;

    .line 4
    .line 5
    iget-boolean v1, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->$unread:Z

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->$wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;ZLkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    iget v2, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->label:I

    .line 6
    .line 7
    iget-object v3, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->$wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    if-eq v2, v5, :cond_1

    .line 15
    .line 16
    if-ne v2, v4, :cond_0

    .line 17
    .line 18
    iget v2, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->I$0:I

    .line 19
    .line 20
    iget-boolean v3, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->Z$0:Z

    .line 21
    .line 22
    iget-object v5, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->L$3:Ljava/util/Iterator;

    .line 23
    .line 24
    iget-object v7, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->L$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 25
    .line 26
    iget-object v8, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->L$0:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    move-object/from16 v16, v8

    .line 32
    .line 33
    move v8, v3

    .line 34
    move-object v3, v7

    .line 35
    move-object/from16 v7, v16

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v6

    .line 44
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    move-object/from16 v2, p1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object v2, Lorg/wikipedia/csrf/CsrfTokenClient;->INSTANCE:Lorg/wikipedia/csrf/CsrfTokenClient;

    .line 54
    .line 55
    iput v5, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->label:I

    .line 56
    .line 57
    invoke-static {v3, v0}, Lorg/wikipedia/csrf/CsrfTokenClient;->getToken$default(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-ne v2, v1, :cond_3

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_3
    :goto_0
    check-cast v2, Ljava/lang/String;

    .line 65
    .line 66
    iget-object v7, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->$notifications:Ljava/util/List;

    .line 67
    .line 68
    const/16 v8, 0x32

    .line 69
    .line 70
    invoke-static {v7, v8, v5}, Lkotlin/collections/CollectionsKt;->windowed(Ljava/lang/Iterable;II)Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    const/4 v7, 0x0

    .line 79
    iget-boolean v8, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->$unread:Z

    .line 80
    .line 81
    move/from16 v16, v7

    .line 82
    .line 83
    move-object v7, v2

    .line 84
    move/from16 v2, v16

    .line 85
    .line 86
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-eqz v9, :cond_7

    .line 91
    .line 92
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    move-object v10, v9

    .line 97
    check-cast v10, Ljava/util/List;

    .line 98
    .line 99
    const/4 v14, 0x0

    .line 100
    const/16 v15, 0x3e

    .line 101
    .line 102
    const-string/jumbo v11, "|"

    .line 103
    .line 104
    .line 105
    const/4 v12, 0x0

    .line 106
    const/4 v13, 0x0

    .line 107
    invoke-static/range {v10 .. v15}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    sget-object v10, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 112
    .line 113
    invoke-static {v3}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    if-eqz v8, :cond_5

    .line 118
    .line 119
    move-object v11, v6

    .line 120
    goto :goto_2

    .line 121
    :cond_5
    move-object v11, v9

    .line 122
    :goto_2
    if-eqz v8, :cond_6

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_6
    move-object v9, v6

    .line 126
    :goto_3
    iput-object v7, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->L$0:Ljava/lang/String;

    .line 127
    .line 128
    iput-object v3, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->L$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 129
    .line 130
    iput-object v5, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->L$3:Ljava/util/Iterator;

    .line 131
    .line 132
    iput-boolean v8, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->Z$0:Z

    .line 133
    .line 134
    iput v2, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->I$0:I

    .line 135
    .line 136
    iput v4, v0, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;->label:I

    .line 137
    .line 138
    invoke-interface {v10, v7, v11, v9, v0}, Lorg/wikipedia/dataclient/Service;->markRead(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    if-ne v9, v1, :cond_4

    .line 143
    .line 144
    :goto_4
    return-object v1

    .line 145
    :cond_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 146
    .line 147
    return-object v0
.end method

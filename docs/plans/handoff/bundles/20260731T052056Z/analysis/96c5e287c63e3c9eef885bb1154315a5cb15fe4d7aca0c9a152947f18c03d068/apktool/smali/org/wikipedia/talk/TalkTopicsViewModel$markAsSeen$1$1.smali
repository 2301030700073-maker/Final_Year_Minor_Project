.class public final Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $action:Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

.field public final synthetic $force:Z

.field public final synthetic $it:Ljava/lang/String;

.field public final synthetic $threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/talk/TalkTopicsViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/talk/TalkTopicsViewModel;Lorg/wikipedia/dataclient/discussiontools/ThreadItem;ZLjava/lang/String;Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->this$0:Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->$threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 4
    .line 5
    iput-boolean p3, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->$force:Z

    .line 6
    .line 7
    iput-object p4, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->$it:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->$action:Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;

    .line 2
    .line 3
    iget-object v4, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->$it:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v5, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->$action:Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->this$0:Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->$threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 10
    .line 11
    iget-boolean v3, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->$force:Z

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;-><init>(Lorg/wikipedia/talk/TalkTopicsViewModel;Lorg/wikipedia/dataclient/discussiontools/ThreadItem;ZLjava/lang/String;Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->label:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    iget-object v5, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->$it:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->this$0:Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    if-eq v1, v4, :cond_1

    .line 16
    .line 17
    if-ne v1, v3, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_4

    .line 23
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->$threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 38
    .line 39
    invoke-virtual {v6, p1}, Lorg/wikipedia/talk/TalkTopicsViewModel;->topicSeen(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget-object v1, v6, Lorg/wikipedia/talk/TalkTopicsViewModel;->talkPageDao:Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl;

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    if-eqz p1, :cond_5

    .line 47
    .line 48
    iget-boolean p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->$force:Z

    .line 49
    .line 50
    if-nez p1, :cond_5

    .line 51
    .line 52
    iput v4, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->label:I

    .line 53
    .line 54
    iget-object p1, v1, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 55
    .line 56
    new-instance v1, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl$$ExternalSyntheticLambda3;

    .line 57
    .line 58
    invoke-direct {v1, v5}, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v7, v4, v1, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v0, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    move-object p1, v2

    .line 69
    :goto_0
    if-ne p1, v0, :cond_4

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    :goto_1
    iget-object p1, v6, Lorg/wikipedia/talk/TalkTopicsViewModel;->seenThreadItemsSha:Ljava/util/LinkedHashSet;

    .line 73
    .line 74
    invoke-interface {p1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_5

    .line 78
    :cond_5
    new-instance p1, Lorg/wikipedia/talk/db/TalkPageSeen;

    .line 79
    .line 80
    invoke-direct {p1, v5}, Lorg/wikipedia/talk/db/TalkPageSeen;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iput v3, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->label:I

    .line 84
    .line 85
    iget-object v3, v1, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 86
    .line 87
    new-instance v8, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;

    .line 88
    .line 89
    const/16 v9, 0xa

    .line 90
    .line 91
    invoke-direct {v8, v9, v1, p1}, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v3, v7, v4, v8, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-ne p1, v0, :cond_6

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    move-object p1, v2

    .line 102
    :goto_2
    if-ne p1, v0, :cond_7

    .line 103
    .line 104
    :goto_3
    return-object v0

    .line 105
    :cond_7
    :goto_4
    iget-object p1, v6, Lorg/wikipedia/talk/TalkTopicsViewModel;->seenThreadItemsSha:Ljava/util/LinkedHashSet;

    .line 106
    .line 107
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    :goto_5
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$markAsSeen$1$1;->$action:Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    invoke-virtual {p0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    return-object v2
.end method

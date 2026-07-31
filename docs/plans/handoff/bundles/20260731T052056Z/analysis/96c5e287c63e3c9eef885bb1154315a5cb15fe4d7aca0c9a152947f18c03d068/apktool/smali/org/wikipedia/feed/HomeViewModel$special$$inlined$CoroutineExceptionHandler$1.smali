.class public final Lorg/wikipedia/feed/HomeViewModel$special$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/feed/HomeViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/HomeViewModel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$CoroutineExceptionHandler$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/feed/HomeViewModel;

    .line 9
    .line 10
    invoke-direct {p0, p2}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    sget-object p2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 15
    .line 16
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/feed/HomeViewModel;

    .line 17
    .line 18
    invoke-direct {p0, p2}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final handleException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V
    .locals 10

    .line 1
    iget p2, p0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$CoroutineExceptionHandler$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$special$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/feed/HomeViewModel;

    .line 5
    .line 6
    packed-switch p2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel;->_forYouState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 10
    .line 11
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    move-object v1, p2

    .line 16
    check-cast v1, Lorg/wikipedia/feed/ForYouContentState;

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const/16 v9, 0xe3

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    move-object v6, p1

    .line 27
    invoke-static/range {v1 .. v9}, Lorg/wikipedia/feed/ForYouContentState;->copy$default(Lorg/wikipedia/feed/ForYouContentState;Ljava/util/ArrayList;Lorg/wikipedia/dataclient/WikiSite;ZZLjava/lang/Throwable;ZLorg/wikipedia/feed/FeedEmptyState;I)Lorg/wikipedia/feed/ForYouContentState;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    move-object v6, p1

    .line 36
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel;->_communityState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 37
    .line 38
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    move-object v1, p1

    .line 43
    check-cast v1, Lorg/wikipedia/feed/CommunityContentState;

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    const/16 v8, 0x63

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-static/range {v1 .. v8}, Lorg/wikipedia/feed/CommunityContentState;->copy$default(Lorg/wikipedia/feed/CommunityContentState;Ljava/util/ArrayList;Lorg/wikipedia/dataclient/WikiSite;ZZLjava/lang/Throwable;Lorg/wikipedia/feed/FeedEmptyState;I)Lorg/wikipedia/feed/CommunityContentState;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

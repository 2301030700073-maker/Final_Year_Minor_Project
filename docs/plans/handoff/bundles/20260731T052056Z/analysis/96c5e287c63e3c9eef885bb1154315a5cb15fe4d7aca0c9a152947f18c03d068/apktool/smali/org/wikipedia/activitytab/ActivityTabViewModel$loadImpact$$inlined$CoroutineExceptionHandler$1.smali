.class public final Lorg/wikipedia/activitytab/ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/activitytab/ActivityTabViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/activitytab/ActivityTabViewModel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/activitytab/ActivityTabViewModel;

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
    iput-object p1, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 17
    .line 18
    invoke-direct {p0, p2}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    sget-object p2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 23
    .line 24
    iput-object p1, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 25
    .line 26
    invoke-direct {p0, p2}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final handleException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    .line 1
    iget p2, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel$loadImpact$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 5
    .line 6
    packed-switch p2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->_wikiGamesUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 10
    .line 11
    new-instance p2, Lorg/wikipedia/util/UiState$Error;

    .line 12
    .line 13
    invoke-direct {p2, p1}, Lorg/wikipedia/util/UiState$Error;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->_readingHistoryState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 24
    .line 25
    new-instance p2, Lorg/wikipedia/util/UiState$Error;

    .line 26
    .line 27
    invoke-direct {p2, p1}, Lorg/wikipedia/util/UiState$Error;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_1
    iget-object p0, p0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->_impactUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 38
    .line 39
    new-instance p2, Lorg/wikipedia/util/UiState$Error;

    .line 40
    .line 41
    invoke-direct {p2, p1}, Lorg/wikipedia/util/UiState$Error;-><init>(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

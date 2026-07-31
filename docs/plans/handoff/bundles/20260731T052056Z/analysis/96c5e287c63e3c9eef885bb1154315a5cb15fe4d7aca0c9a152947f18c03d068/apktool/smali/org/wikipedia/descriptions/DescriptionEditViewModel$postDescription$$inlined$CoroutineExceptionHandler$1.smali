.class public final Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescription$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/descriptions/DescriptionEditViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditViewModel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescription$$inlined$CoroutineExceptionHandler$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescription$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditViewModel;

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
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescription$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditViewModel;

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
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescription$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditViewModel;

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
    iget p2, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescription$$inlined$CoroutineExceptionHandler$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescription$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 5
    .line 6
    packed-switch p2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->_waitForRevisionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 13
    .line 14
    invoke-static {p1, p0, v0}, Lorg/wikipedia/dataclient/Service$-CC;->m(Ljava/lang/Throwable;Lkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->_requestSuggestionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 22
    .line 23
    invoke-static {p1, p0, v0}, Lorg/wikipedia/dataclient/Service$-CC;->m(Ljava/lang/Throwable;Lkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_1
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->_postDescriptionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 31
    .line 32
    invoke-static {p1, p0, v0}, Lorg/wikipedia/dataclient/Service$-CC;->m(Ljava/lang/Throwable;Lkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

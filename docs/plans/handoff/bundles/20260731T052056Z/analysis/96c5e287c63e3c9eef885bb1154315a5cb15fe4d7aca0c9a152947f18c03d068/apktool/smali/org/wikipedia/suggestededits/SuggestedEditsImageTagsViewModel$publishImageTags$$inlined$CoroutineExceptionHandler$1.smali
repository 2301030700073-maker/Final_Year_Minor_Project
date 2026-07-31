.class public final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel$publishImageTags$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel$publishImageTags$$inlined$CoroutineExceptionHandler$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel$publishImageTags$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;

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
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel$publishImageTags$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;

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
    .locals 1

    .line 1
    iget p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel$publishImageTags$$inlined$CoroutineExceptionHandler$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel$publishImageTags$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;

    .line 5
    .line 6
    packed-switch p2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 10
    .line 11
    invoke-static {p1, p0, v0}, Lorg/wikipedia/dataclient/Service$-CC;->m(Ljava/lang/Throwable;Lkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsViewModel;->_actionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 16
    .line 17
    invoke-static {p1, p0, v0}, Lorg/wikipedia/dataclient/Service$-CC;->m(Ljava/lang/Throwable;Lkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

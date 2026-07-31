.class public final Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

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
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

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
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 25
    .line 26
    invoke-direct {p0, p2}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    sget-object p2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 31
    .line 32
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 33
    .line 34
    invoke-direct {p0, p2}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_3
    sget-object p2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 39
    .line 40
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 41
    .line 42
    invoke-direct {p0, p2}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final handleException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V
    .locals 4

    .line 1
    iget p2, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    packed-switch p2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;

    .line 15
    .line 16
    invoke-direct {v2, p0, p1, v0, v1}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {p2, v0, v0, v2, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    invoke-direct {v2, p0, p1, v0, v3}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;I)V

    .line 31
    .line 32
    .line 33
    invoke-static {p2, v0, v0, v2, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    new-instance v2, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 42
    .line 43
    const/16 v3, 0x16

    .line 44
    .line 45
    invoke-direct {v2, p0, p1, v0, v3}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 46
    .line 47
    .line 48
    invoke-static {p2, v0, v0, v2, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_2
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;

    .line 57
    .line 58
    const/4 v3, 0x1

    .line 59
    invoke-direct {v2, p0, p1, v0, v3}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;I)V

    .line 60
    .line 61
    .line 62
    invoke-static {p2, v0, v0, v2, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_3
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    invoke-direct {v2, p0, p1, v0, v3}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;I)V

    .line 74
    .line 75
    .line 76
    invoke-static {p2, v0, v0, v2, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

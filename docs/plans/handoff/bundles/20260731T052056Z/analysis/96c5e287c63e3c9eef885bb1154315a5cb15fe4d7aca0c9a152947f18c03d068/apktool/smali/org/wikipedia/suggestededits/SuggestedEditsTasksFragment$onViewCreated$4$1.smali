.class public final Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

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
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 21
    .line 22
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4$1;->L$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    instance-of p0, p0, Lorg/wikipedia/events/LoggedOutEvent;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->refreshContents$1()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object v1

    .line 23
    :pswitch_0
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-direct {p1, v2, v3, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    invoke-static {p0, v3, v3, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 37
    .line 38
    .line 39
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;

    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    invoke-direct {p1, v2, v3, v4}, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment$onViewCreated$4;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Lkotlin/coroutines/Continuation;I)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v3, v3, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 46
    .line 47
    .line 48
    return-object v1

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

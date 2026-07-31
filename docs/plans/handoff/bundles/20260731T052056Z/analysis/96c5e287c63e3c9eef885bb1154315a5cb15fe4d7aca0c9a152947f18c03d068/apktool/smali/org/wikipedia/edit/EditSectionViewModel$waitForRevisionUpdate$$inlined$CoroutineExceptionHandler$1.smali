.class public final Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# instance fields
.field public final synthetic $newRevision$inlined:J

.field public final synthetic this$0:Lorg/wikipedia/edit/EditSectionViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/edit/EditSectionViewModel;J)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/edit/EditSectionViewModel;

    .line 4
    .line 5
    iput-wide p2, p0, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$$inlined$CoroutineExceptionHandler$1;->$newRevision$inlined:J

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final handleException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$$inlined$CoroutineExceptionHandler$1;->this$0:Lorg/wikipedia/edit/EditSectionViewModel;

    .line 5
    .line 6
    iget-object p1, p1, Lorg/wikipedia/edit/EditSectionViewModel;->_waitForRevisionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 7
    .line 8
    new-instance p2, Lorg/wikipedia/util/Resource$Success;

    .line 9
    .line 10
    iget-wide v0, p0, Lorg/wikipedia/edit/EditSectionViewModel$waitForRevisionUpdate$$inlined$CoroutineExceptionHandler$1;->$newRevision$inlined:J

    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {p2, p0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.class public final Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public I$0:I

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/fsck/k9/mailstore/LocalStore$7;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalStore$7;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->this$0:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->this$0:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 11
    .line 12
    invoke-static {p1, p0}, Lcom/fsck/k9/mailstore/LocalStore$7;->access$processingLoop(Lcom/fsck/k9/mailstore/LocalStore$7;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 16
    .line 17
    return-object p0
.end method

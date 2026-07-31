.class public final Lcom/fsck/k9/helper/SingleLiveEvent$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/helper/SingleLiveEvent;

.field public final synthetic val$observer:Landroidx/lifecycle/Observer;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/helper/SingleLiveEvent;Landroidx/lifecycle/Observer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/helper/SingleLiveEvent$1;->this$0:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/helper/SingleLiveEvent$1;->val$observer:Landroidx/lifecycle/Observer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/helper/SingleLiveEvent$1;->this$0:Lcom/fsck/k9/helper/SingleLiveEvent;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/helper/SingleLiveEvent;->pending:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/fsck/k9/helper/SingleLiveEvent$1;->val$observer:Landroidx/lifecycle/Observer;

    .line 16
    .line 17
    invoke-interface {p0, p1}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

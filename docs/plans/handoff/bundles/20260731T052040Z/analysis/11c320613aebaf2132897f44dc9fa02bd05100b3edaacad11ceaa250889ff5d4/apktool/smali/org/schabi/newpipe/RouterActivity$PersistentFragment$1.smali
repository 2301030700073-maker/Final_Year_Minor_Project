.class public final Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

.field public final synthetic val$runnable:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;->this$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;->val$runnable:Ljava/util/function/Consumer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;->this$0:Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;->getActivityContext()Lj$/util/Optional;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;

    .line 15
    .line 16
    const/16 v1, 0xa

    .line 17
    .line 18
    iget-object v2, p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;->val$runnable:Ljava/util/function/Consumer;

    .line 19
    .line 20
    invoke-direct {v0, p0, v2, v1}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    const/16 v2, 0x19

    .line 26
    .line 27
    invoke-direct {v1, p0, v2}, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lj$/util/Optional;->ifPresentOrElse(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    return-void
.end method

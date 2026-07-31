.class public abstract Lorg/wikipedia/games/onthisday/OnThisDayGameBaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\'\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/games/onthisday/OnThisDayGameBaseFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public onThisDayGameArchiveCalendarHelper:Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract onArchiveDateSelected(Lj$/time/LocalDate;)V
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameBaseFragment;->onThisDayGameArchiveCalendarHelper:Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->fragment:Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->fragmentLifecycleCallbacks:Lleakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerImpl;->unregisterFragmentLifecycleCallbacks(Landroidx/work/OperationKt;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameBaseFragment;->onThisDayGameArchiveCalendarHelper:Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 21
    .line 22
    return-void
.end method

.method public final prepareAndOpenArchiveCalendar(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameBaseFragment;->onThisDayGameArchiveCalendarHelper:Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->fragment:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->fragmentLifecycleCallbacks:Lleakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerImpl;->unregisterFragmentLifecycleCallbacks(Landroidx/work/OperationKt;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;

    .line 20
    .line 21
    new-instance v1, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 22
    .line 23
    const/16 v2, 0xd

    .line 24
    .line 25
    invoke-direct {v1, v2, p0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0, p1, v1}, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;->fragmentLifecycleCallbacks:Lleakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->registerFragmentLifecycleCallbacks(Landroidx/work/OperationKt;Z)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v1, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/random/RandomActivity$onSaveClick$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;Lkotlin/coroutines/Continuation;)V

    .line 49
    .line 50
    .line 51
    const/4 v3, 0x3

    .line 52
    invoke-static {p1, v2, v2, v1, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameBaseFragment;->onThisDayGameArchiveCalendarHelper:Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;

    .line 56
    .line 57
    return-void
.end method

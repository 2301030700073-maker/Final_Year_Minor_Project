.class public final Lnet/newpipe/app/ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $windowController$inlined:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/newpipe/app/ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/newpipe/app/ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;->$windowController$inlined:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 3

    .line 1
    iget v0, p0, Lnet/newpipe/app/ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lnet/newpipe/app/ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;->$windowController$inlined:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    instance-of v0, p0, Ljava/lang/AutoCloseable;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$$ExternalSyntheticLambda1;->close()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    check-cast p0, Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    invoke-static {p0}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m(Ljava/util/concurrent/ExecutorService;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1()V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :pswitch_0
    check-cast p0, Landroidx/compose/ui/window/DialogWrapper;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Landroidx/compose/ui/window/DialogWrapper;->dialogLayout:Landroidx/compose/ui/window/DialogLayout;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->disposeComposition()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_1
    check-cast p0, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;

    .line 46
    .line 47
    iget-object p0, p0, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;->onDispose:Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1;->invoke()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItem;->isDisposed:Z

    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->prefetchHandleProvider:Landroidx/compose/runtime/Latch;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iput-boolean v1, v0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 66
    .line 67
    :cond_2
    iput-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->prefetchHandleProvider:Landroidx/compose/runtime/Latch;

    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;

    .line 71
    .line 72
    iput-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;->_content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_5
    check-cast p0, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 76
    .line 77
    invoke-virtual {p0, v2}, Landroidx/compose/animation/core/SeekableTransitionState;->setSnapshotStateObserver$animation_core(Landroidx/preference/PreferenceManager;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_6
    check-cast p0, Lcoil3/memory/MemoryCacheService;

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Lcoil3/memory/MemoryCacheService;->setAppearanceLightStatusBars(Z)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/talk/TalkTopicsActivity;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/CharSequence;

.field public final synthetic f$3:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/TalkTopicsActivity;JLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda11;->f$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda11;->f$1:J

    .line 7
    .line 8
    iput-object p4, p0, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda11;->f$2:Ljava/lang/CharSequence;

    .line 9
    .line 10
    iput-object p5, p0, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda11;->f$3:Ljava/lang/CharSequence;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda11;->f$0:Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "binding"

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 25
    .line 26
    const/high16 v4, 0x3f000000    # 0.5f

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p1, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Landroid/widget/ProgressBar;

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p1, Lorg/wikipedia/talk/TalkTopicsActivity;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Landroid/widget/FrameLayout;

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lorg/wikipedia/talk/TalkTopicsActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v5}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v0, v5, Lorg/wikipedia/talk/TalkTopicsViewModel;->actionHandler:Lorg/wikipedia/talk/TalkTopicsViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 62
    .line 63
    new-instance v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 64
    .line 65
    const/4 v10, 0x0

    .line 66
    const/4 v11, 0x0

    .line 67
    iget-wide v6, p0, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda11;->f$1:J

    .line 68
    .line 69
    iget-object v8, p0, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda11;->f$2:Ljava/lang/CharSequence;

    .line 70
    .line 71
    iget-object v9, p0, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda11;->f$3:Ljava/lang/CharSequence;

    .line 72
    .line 73
    invoke-direct/range {v4 .. v11}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;-><init>(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 74
    .line 75
    .line 76
    const/4 p0, 0x2

    .line 77
    invoke-static {p1, v0, v1, v4, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v1

    .line 85
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v1

    .line 89
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v1

    .line 93
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v1
.end method

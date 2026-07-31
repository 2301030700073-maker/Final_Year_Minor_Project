.class public final Lorg/wikipedia/edit/EditSectionActivity$showFindInEditor$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/edit/EditSectionActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/edit/EditSectionActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity$showFindInEditor$1;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionActivity$showFindInEditor$1;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    .line 8
    .line 9
    iput-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->actionMode:Landroid/view/ActionMode;

    .line 10
    .line 11
    const p1, 0x7f1201b0

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, p1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance p2, Lorg/wikipedia/edit/FindInEditorActionProvider;

    .line 19
    .line 20
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    const-string v2, "binding"

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v3, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginCreateAccountButton:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Landroid/widget/ScrollView;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 36
    .line 37
    iget-object v2, p0, Lorg/wikipedia/edit/EditSectionActivity;->syntaxHighlighter:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionActivity;->actionMode:Landroid/view/ActionMode;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-direct {p2, v3, v0, v2, p0}, Lorg/wikipedia/edit/FindInEditorActionProvider;-><init>(Landroid/view/View;Lorg/wikipedia/edit/SyntaxHighlightableEditText;Lorg/wikipedia/edit/richtext/SyntaxHighlighter;Landroid/view/ActionMode;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x1

    .line 56
    return p0

    .line 57
    :cond_0
    const-string p0, "syntaxHighlighter"

    .line 58
    .line 59
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v1

    .line 63
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1

    .line 67
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v1
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionActivity$showFindInEditor$1;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    .line 5
    .line 6
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->syntaxHighlighter:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iput-object v0, p1, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->searchQueryPositions:Ljava/util/List;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput v1, p1, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->searchQueryLength:I

    .line 15
    .line 16
    iput v1, p1, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->searchQueryPositionIndex:I

    .line 17
    .line 18
    iget-object v1, p1, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->activity:Landroidx/activity/ComponentActivity;

    .line 19
    .line 20
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1$1;

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    invoke-direct {v2, p1, v0, v3}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1$1;-><init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;Lkotlin/coroutines/Continuation;I)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x3

    .line 31
    invoke-static {v1, v0, v0, v2, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 35
    .line 36
    const-string v1, "binding"

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 49
    .line 50
    if-eqz p0, :cond_0

    .line 51
    .line 52
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    invoke-virtual {p1, v2, p0}, Landroid/widget/EditText;->setSelection(II)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_2
    const-string p0, "syntaxHighlighter"

    .line 73
    .line 74
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string p0, "actionModeFindInEditor"

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/view/ActionMode;->setTag(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0
.end method

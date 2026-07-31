.class public final Lorg/wikipedia/edit/FindInEditorActionProvider;
.super Lorg/wikipedia/views/FindInPageActionProvider;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;


# instance fields
.field public currentResultIndex:I

.field public final resultPositions:Ljava/util/ArrayList;

.field public final scrollView:Landroid/view/View;

.field public searchQuery:Ljava/lang/String;

.field public final syntaxHighlighter:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

.field public final textView:Lorg/wikipedia/edit/SyntaxHighlightableEditText;


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/wikipedia/edit/SyntaxHighlightableEditText;Lorg/wikipedia/edit/richtext/SyntaxHighlighter;Landroid/view/ActionMode;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p4}, Lorg/wikipedia/views/FindInPageActionProvider;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->scrollView:Landroid/view/View;

    .line 18
    .line 19
    iput-object p2, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->textView:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 20
    .line 21
    iput-object p3, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->syntaxHighlighter:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->resultPositions:Ljava/util/ArrayList;

    .line 29
    .line 30
    iput-object p0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->listener:Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->textView:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    .line 21
    iget-object p0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lorg/wikipedia/views/CabSearchView;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v0, "input_method"

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 48
    .line 49
    invoke-virtual {p0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 50
    .line 51
    .line 52
    :cond_0
    return-object p1
.end method

.method public final onFindNextClicked()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->currentResultIndex:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->resultPositions:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->currentResultIndex:I

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    iput v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->currentResultIndex:I

    .line 20
    .line 21
    :goto_0
    iput v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->currentResultIndex:I

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/wikipedia/edit/FindInEditorActionProvider;->scrollToCurrentResult()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onFindNextLongClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->resultPositions:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    iput v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->currentResultIndex:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/edit/FindInEditorActionProvider;->scrollToCurrentResult()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onFindPrevClicked()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->currentResultIndex:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->resultPositions:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    iput v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->currentResultIndex:I

    .line 17
    .line 18
    :goto_0
    iput v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->currentResultIndex:I

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/wikipedia/edit/FindInEditorActionProvider;->scrollToCurrentResult()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onFindPrevLongClicked()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->currentResultIndex:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/edit/FindInEditorActionProvider;->scrollToCurrentResult()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onSearchTextChanged(Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    move-object p1, v0

    .line 11
    :cond_0
    move-object v0, p1

    .line 12
    :cond_1
    iput-object v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->searchQuery:Ljava/lang/String;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->currentResultIndex:I

    .line 16
    .line 17
    iget-object v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->resultPositions:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->searchQuery:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    iget-object v2, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->textView:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 27
    .line 28
    invoke-virtual {v2}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :cond_2
    :goto_0
    if-ltz p1, :cond_3

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-ge p1, v3, :cond_3

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    invoke-static {v2, v1, p1, v3}, Lkotlin/text/StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-ltz p1, :cond_2

    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    add-int/2addr p1, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p0}, Lorg/wikipedia/edit/FindInEditorActionProvider;->scrollToCurrentResult()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final scrollToCurrentResult()V
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->currentResultIndex:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->resultPositions:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p0, v0, v2}, Lorg/wikipedia/views/FindInPageActionProvider;->setMatchesResults(II)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->searchQuery:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v2, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->currentResultIndex:I

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-ltz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ge v2, v4, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    move v0, v3

    .line 43
    :goto_0
    check-cast v2, Ljava/lang/Number;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    add-int v4, v2, v0

    .line 50
    .line 51
    iget-object v5, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->textView:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 52
    .line 53
    invoke-virtual {v5, v2, v4}, Landroid/widget/EditText;->setSelection(II)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Landroid/graphics/Rect;

    .line 57
    .line 58
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 62
    .line 63
    .line 64
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 65
    .line 66
    const/high16 v4, 0x42000000    # 32.0f

    .line 67
    .line 68
    invoke-static {v4}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    sub-int/2addr v2, v4

    .line 73
    iget-object v4, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->scrollView:Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {v4, v3, v2}, Landroid/view/View;->scrollTo(II)V

    .line 76
    .line 77
    .line 78
    iget v2, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->currentResultIndex:I

    .line 79
    .line 80
    iget-object p0, p0, Lorg/wikipedia/edit/FindInEditorActionProvider;->syntaxHighlighter:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 81
    .line 82
    iput-object v1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->searchQueryPositions:Ljava/util/List;

    .line 83
    .line 84
    iput v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->searchQueryLength:I

    .line 85
    .line 86
    iput v2, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->searchQueryPositionIndex:I

    .line 87
    .line 88
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->activity:Landroidx/activity/ComponentActivity;

    .line 89
    .line 90
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v1, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1$1;

    .line 95
    .line 96
    const/4 v2, 0x2

    .line 97
    const/4 v3, 0x0

    .line 98
    invoke-direct {v1, p0, v3, v2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$1$1;-><init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;Lkotlin/coroutines/Continuation;I)V

    .line 99
    .line 100
    .line 101
    const/4 p0, 0x3

    .line 102
    invoke-static {v0, v3, v3, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 103
    .line 104
    .line 105
    return-void
.end method

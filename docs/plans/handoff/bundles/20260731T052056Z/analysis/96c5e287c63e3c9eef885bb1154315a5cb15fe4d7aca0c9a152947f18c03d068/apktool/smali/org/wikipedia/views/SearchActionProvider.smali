.class public final Lorg/wikipedia/views/SearchActionProvider;
.super Landroidx/core/view/ActionProvider;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lretrofit2/OkHttpCall$1;

.field public final callback:Lorg/wikipedia/views/SearchActionProvider$Callback;

.field public final searchHintString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/wikipedia/views/SearchActionProvider$Callback;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/core/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lorg/wikipedia/views/SearchActionProvider;->searchHintString:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p3, p0, Lorg/wikipedia/views/SearchActionProvider;->callback:Lorg/wikipedia/views/SearchActionProvider$Callback;

    .line 13
    .line 14
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const p2, 0x7f0c02e6

    .line 19
    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    move-object p2, p1

    .line 28
    check-cast p2, Landroid/widget/LinearLayout;

    .line 29
    .line 30
    const p3, 0x7f0905c9

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lorg/wikipedia/views/CabSearchView;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    new-instance p1, Lretrofit2/OkHttpCall$1;

    .line 42
    .line 43
    const/16 p3, 0x9

    .line 44
    .line 45
    invoke-direct {p1, p3, p2, v1}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lorg/wikipedia/views/SearchActionProvider;->binding:Lretrofit2/OkHttpCall$1;

    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string p1, "Missing required view with ID: "

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0
.end method


# virtual methods
.method public final onCreateActionView()Landroid/view/View;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/SearchActionProvider;->binding:Lretrofit2/OkHttpCall$1;

    .line 2
    .line 3
    iget-object v1, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lorg/wikipedia/views/CabSearchView;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 13
    .line 14
    .line 15
    const v4, 0x7fffffff

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setInputType(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v4, p0, Lorg/wikipedia/views/SearchActionProvider;->searchHintString:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    iget-object v4, p0, Landroidx/core/view/ActionProvider;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v4}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const v6, 0x7f04054f

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v6, v5, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/4 v6, 0x0

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-object v5, v6

    .line 54
    :goto_0
    if-eqz v5, :cond_1

    .line 55
    .line 56
    iget v4, v5, Landroid/util/TypedValue;->data:I

    .line 57
    .line 58
    invoke-virtual {v1, v4}, Lorg/wikipedia/views/CabSearchView;->setSearchHintTextColor(I)V

    .line 59
    .line 60
    .line 61
    new-instance v4, Lorg/wikipedia/media/AvPlayer;

    .line 62
    .line 63
    const/16 v5, 0x1b

    .line 64
    .line 65
    invoke-direct {v4, v5, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 69
    .line 70
    .line 71
    new-instance v4, Lorg/wikipedia/views/SearchActionProvider$$ExternalSyntheticLambda0;

    .line 72
    .line 73
    invoke-direct {v4, p0, v3}, Lorg/wikipedia/views/SearchActionProvider$$ExternalSyntheticLambda0;-><init>(Landroidx/core/view/ActionProvider;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 77
    .line 78
    .line 79
    const p0, 0x7f0905d0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    const-string v3, "input_method"

    .line 94
    .line 95
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 103
    .line 104
    invoke-virtual {p0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 105
    .line 106
    .line 107
    iget-object p0, v0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p0, Landroid/widget/LinearLayout;

    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    return-object p0

    .line 115
    :cond_1
    const-string p0, "Attribute not found; ID=2130969935"

    .line 116
    .line 117
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-object v6
.end method

.method public final overridesItemVisibility()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

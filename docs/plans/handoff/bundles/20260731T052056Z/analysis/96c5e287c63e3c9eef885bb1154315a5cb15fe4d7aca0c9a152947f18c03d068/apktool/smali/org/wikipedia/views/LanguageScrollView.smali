.class public final Lorg/wikipedia/views/LanguageScrollView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000cB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u000b\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/wikipedia/views/LanguageScrollView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "getSelectedPosition",
        "()I",
        "selectedPosition",
        "org/wikipedia/search/SearchFragment",
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


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public allowSelect:Z

.field public final binding:Lokhttp3/ConnectionPool;

.field public callback:Lorg/wikipedia/search/SearchFragment;

.field public languageCodes:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const p2, 0x7f0c05d1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    const p1, 0x7f0902ae

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    const p1, 0x7f090419

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/Button;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    new-instance p1, Lokhttp3/ConnectionPool;

    .line 40
    .line 41
    invoke-direct {p1, p0, p2, v0}, Lokhttp3/ConnectionPool;-><init>(Lorg/wikipedia/views/LanguageScrollView;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/Button;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lorg/wikipedia/views/LanguageScrollView;->binding:Lokhttp3/ConnectionPool;

    .line 45
    .line 46
    new-instance p1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lorg/wikipedia/views/LanguageScrollView;->languageCodes:Ljava/util/List;

    .line 52
    .line 53
    new-instance p1, Lorg/wikipedia/views/LanguageScrollView$1;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-direct {p1, v1, p0}, Lorg/wikipedia/views/LanguageScrollView$1;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    const/4 p2, 0x1

    .line 65
    invoke-direct {p1, p2, p0}, Lorg/wikipedia/views/ViewUtil$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string p1, "Missing required view with ID: "

    .line 81
    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/4 p0, 0x0

    .line 90
    throw p0
.end method

.method public static updateTabLanguageCode$default(Lorg/wikipedia/views/LanguageScrollView;Landroid/view/View;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 1

    .line 1
    and-int/lit8 p0, p5, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p0, p5, 0x4

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    and-int/lit8 p0, p5, 0x8

    .line 13
    .line 14
    if-eqz p0, :cond_2

    .line 15
    .line 16
    move-object p4, v0

    .line 17
    :cond_2
    and-int/lit8 p0, p5, 0x10

    .line 18
    .line 19
    if-eqz p0, :cond_3

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_3
    const/4 p0, 0x1

    .line 24
    :goto_0
    const p5, 0x7f090320

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lorg/wikipedia/views/LangCodeView;

    .line 32
    .line 33
    if-eqz p2, :cond_4

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lorg/wikipedia/views/LangCodeView;->setLangCode(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_4
    iget-object p2, p1, Lorg/wikipedia/views/LangCodeView;->binding:Lorg/wikipedia/databinding/ViewLangCodeBinding;

    .line 39
    .line 40
    iget-object p2, p2, Lorg/wikipedia/databinding/ViewLangCodeBinding;->langCodeText:Landroid/widget/TextView;

    .line 41
    .line 42
    if-eqz p0, :cond_5

    .line 43
    .line 44
    const p0, 0x7f080303

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_5
    const p0, 0x7f080302

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 52
    .line 53
    .line 54
    if-eqz p3, :cond_6

    .line 55
    .line 56
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    invoke-virtual {p1, p0}, Lorg/wikipedia/views/LangCodeView;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    :cond_6
    if-eqz p4, :cond_7

    .line 64
    .line 65
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-virtual {p1, p0}, Lorg/wikipedia/views/LangCodeView;->setBackgroundTint(I)V

    .line 70
    .line 71
    .line 72
    :cond_7
    return-void
.end method

.method public static updateTabLanguageLabel$default(Lorg/wikipedia/views/LanguageScrollView;Landroid/view/View;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 1

    .line 1
    and-int/lit8 p0, p4, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p0, p4, 0x4

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    const p0, 0x7f090321

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz p2, :cond_3

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 31
    .line 32
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, p2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 48
    .line 49
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    :cond_4
    return-void
.end method


# virtual methods
.method public final getSelectedPosition()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/LanguageScrollView;->binding:Lokhttp3/ConnectionPool;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/google/android/material/tabs/TabLayout;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final updateTabView(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V
    .locals 9

    .line 1
    iget-object v1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->customView:Landroid/view/View;

    .line 2
    .line 3
    const/4 v6, 0x1

    .line 4
    const/4 v7, 0x2

    .line 5
    const/4 v8, 0x0

    .line 6
    if-eqz p2, :cond_3

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f040520

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v0}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const v2, 0x7f0404e7

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v2}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const/4 v5, 0x2

    .line 47
    const/4 v2, 0x0

    .line 48
    move-object v0, p0

    .line 49
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/views/LanguageScrollView;->updateTabLanguageCode$default(Lorg/wikipedia/views/LanguageScrollView;Landroid/view/View;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v0, v1, v8, p0, v7}, Lorg/wikipedia/views/LanguageScrollView;->updateTabLanguageLabel$default(Lorg/wikipedia/views/LanguageScrollView;Landroid/view/View;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move-object v0, p0

    .line 61
    :goto_0
    iget-boolean p0, v0, Lorg/wikipedia/views/LanguageScrollView;->allowSelect:Z

    .line 62
    .line 63
    if-eqz p0, :cond_6

    .line 64
    .line 65
    iget-object p0, v0, Lorg/wikipedia/views/LanguageScrollView;->callback:Lorg/wikipedia/search/SearchFragment;

    .line 66
    .line 67
    if-eqz p0, :cond_6

    .line 68
    .line 69
    iget-object p2, v0, Lorg/wikipedia/views/LanguageScrollView;->languageCodes:Ljava/util/List;

    .line 70
    .line 71
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    .line 72
    .line 73
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    iget-boolean p2, p0, Lorg/wikipedia/search/SearchFragment;->langBtnClicked:Z

    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    if-eqz p2, :cond_1

    .line 86
    .line 87
    iput-boolean v0, p0, Lorg/wikipedia/search/SearchFragment;->langBtnClicked:Z

    .line 88
    .line 89
    :cond_1
    iput-object p1, p0, Lorg/wikipedia/search/SearchFragment;->searchLanguageCode:Ljava/lang/String;

    .line 90
    .line 91
    iget-object p1, p0, Lorg/wikipedia/search/SearchFragment;->recentSearchesFragment:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 92
    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    iget-object v1, p1, Lorg/wikipedia/search/RecentSearchesFragment;->coroutineExceptionHandler:Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 100
    .line 101
    new-instance v2, Lorg/wikipedia/search/RecentSearchesFragment$onCreateView$1$1$1;

    .line 102
    .line 103
    invoke-direct {v2, p1, v8, v6}, Lorg/wikipedia/search/RecentSearchesFragment$onCreateView$1$1$1;-><init>(Lorg/wikipedia/search/RecentSearchesFragment;Lkotlin/coroutines/Continuation;I)V

    .line 104
    .line 105
    .line 106
    invoke-static {p2, v1, v8, v2, v7}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lorg/wikipedia/search/SearchFragment;->query:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p0, p1, v0, v0}, Lorg/wikipedia/search/SearchFragment;->startSearch(Ljava/lang/String;ZZ)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_2
    const-string p0, "recentSearchesFragment"

    .line 116
    .line 117
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v8

    .line 121
    :cond_3
    move-object v0, p0

    .line 122
    if-eqz v1, :cond_6

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {p0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    const p2, 0x7f0404fb

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p2, p1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-eqz p0, :cond_4

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    move-object p1, v8

    .line 147
    :goto_1
    if-eqz p1, :cond_5

    .line 148
    .line 149
    iget p0, p1, Landroid/util/TypedValue;->data:I

    .line 150
    .line 151
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {v0, v1, v8, p1, v7}, Lorg/wikipedia/views/LanguageScrollView;->updateTabLanguageLabel$default(Lorg/wikipedia/views/LanguageScrollView;Landroid/view/View;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 156
    .line 157
    .line 158
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    const/16 v5, 0x12

    .line 167
    .line 168
    const/4 v2, 0x0

    .line 169
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/views/LanguageScrollView;->updateTabLanguageCode$default(Lorg/wikipedia/views/LanguageScrollView;Landroid/view/View;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_5
    const-string p0, "Attribute not found; ID=2130969851"

    .line 174
    .line 175
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_6
    return-void
.end method

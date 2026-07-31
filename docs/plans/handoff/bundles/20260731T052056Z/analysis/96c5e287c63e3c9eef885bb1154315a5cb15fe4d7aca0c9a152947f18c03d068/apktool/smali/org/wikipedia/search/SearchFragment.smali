.class public final Lorg/wikipedia/search/SearchFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/search/SearchFragment;",
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
.field public _binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

.field public final app:Lorg/wikipedia/WikipediaApp;

.field public articleTitle:Ljava/lang/String;

.field public initialLanguageList:Ljava/lang/String;

.field public initiateHybridSearch:Z

.field public invokeSource:Lorg/wikipedia/Constants$InvokeSource;

.field public isSearchActive:Z

.field public langBtnClicked:Z

.field public query:Ljava/lang/String;

.field public recentSearchesFragment:Lorg/wikipedia/search/RecentSearchesFragment;

.field public final requestAddLanguageLauncher:Landroidx/fragment/app/Fragment$10;

.field public returnLink:Z

.field public final searchCloseListener:Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda0;

.field public searchLanguageCode:Ljava/lang/String;

.field public final searchQueryListener:Lorg/wikipedia/search/SearchResultLongPressHandler;

.field public searchResultsFragment:Lorg/wikipedia/search/SearchResultsFragment;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 5
    .line 6
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lorg/wikipedia/search/SearchFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lorg/wikipedia/search/SearchFragment;->searchLanguageCode:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/search/SearchFragment;I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/wikipedia/search/SearchFragment;->searchCloseListener:Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    new-instance v0, Lorg/wikipedia/search/SearchResultLongPressHandler;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lorg/wikipedia/search/SearchResultLongPressHandler;-><init>(Lorg/wikipedia/search/SearchFragment;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lorg/wikipedia/search/SearchFragment;->searchQueryListener:Lorg/wikipedia/search/SearchResultLongPressHandler;

    .line 36
    .line 37
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 38
    .line 39
    const/4 v2, 0x3

    .line 40
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    invoke-direct {v2, v1, p0}, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 53
    .line 54
    iput-object v0, p0, Lorg/wikipedia/search/SearchFragment;->requestAddLanguageLauncher:Landroidx/fragment/app/Fragment$10;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final closeSearch$1()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/wikipedia/search/SearchFragment;->isSearchActive:Z

    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->query:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 20
    .line 21
    new-instance v3, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 22
    .line 23
    const/16 v4, 0xa

    .line 24
    .line 25
    invoke-direct {v3, v2, v4}, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 29
    .line 30
    const/16 v4, 0x1d

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-direct {v2, v0, p0, v5, v4}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x2

    .line 37
    invoke-static {v1, v3, v5, v2, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public final navigateToTitle(Lorg/wikipedia/page/PageTitle;ZLandroid/location/Location;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean v0, p0, Lorg/wikipedia/search/SearchFragment;->returnLink:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->PLACES:Lorg/wikipedia/Constants$InvokeSource;

    .line 22
    .line 23
    if-ne v0, v3, :cond_1

    .line 24
    .line 25
    if-eqz p3, :cond_4

    .line 26
    .line 27
    :cond_1
    if-ne v0, v3, :cond_2

    .line 28
    .line 29
    sget-object p2, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 30
    .line 31
    new-instance v2, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 32
    .line 33
    sget-object p2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 34
    .line 35
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    sget-object p2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 40
    .line 41
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const-string v8, "app_places_interaction"

    .line 46
    .line 47
    const-string v3, "search_result_click"

    .line 48
    .line 49
    const-string v4, "search_view"

    .line 50
    .line 51
    const-string v5, ""

    .line 52
    .line 53
    invoke-direct/range {v2 .. v8}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    new-instance p2, Landroid/content/Intent;

    .line 60
    .line 61
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v0, "returnLinkTitle"

    .line 65
    .line 66
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "location"

    .line 71
    .line 72
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    const/16 p3, 0x61

    .line 84
    .line 85
    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    const-string p0, "invokeSource"

    .line 97
    .line 98
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v2

    .line 102
    :cond_4
    new-instance p3, Lorg/wikipedia/history/HistoryEntry;

    .line 103
    .line 104
    const/4 v0, 0x1

    .line 105
    invoke-direct {p3, v0, p1}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 106
    .line 107
    .line 108
    if-eqz p2, :cond_5

    .line 109
    .line 110
    sget p1, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p3}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-static {p1, p3, p2}, Lorg/wikipedia/login/LoginClient;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    goto :goto_0

    .line 125
    :cond_5
    sget p1, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 126
    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p3}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-static {p1, p3, p2, v1}, Lorg/wikipedia/login/LoginClient;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    :goto_0
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 140
    .line 141
    .line 142
    :goto_1
    invoke-virtual {p0}, Lorg/wikipedia/search/SearchFragment;->closeSearch$1()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    const-string p2, "input_method"

    .line 154
    .line 155
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p1, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "lastQuery"

    .line 5
    .line 6
    const-string v1, "invokeSource"

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v2, "android.intent.action.SEND"

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const-string v3, "text/plain"

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "android.intent.extra.TEXT"

    .line 50
    .line 51
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->INTENT_SHARE:Lorg/wikipedia/Constants$InvokeSource;

    .line 63
    .line 64
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const-string v2, "android.intent.action.PROCESS_TEXT"

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const-string v3, "android.intent.extra.PROCESS_TEXT"

    .line 95
    .line 96
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->INTENT_PROCESS_TEXT:Lorg/wikipedia/Constants$InvokeSource;

    .line 108
    .line 109
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    check-cast p1, Lorg/wikipedia/Constants$InvokeSource;

    .line 124
    .line 125
    iput-object p1, p0, Lorg/wikipedia/search/SearchFragment;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 126
    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Lorg/wikipedia/search/SearchFragment;->query:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const-string v0, "articleTitle"

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iput-object p1, p0, Lorg/wikipedia/search/SearchFragment;->articleTitle:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    const-string v0, "returnLink"

    .line 154
    .line 155
    const/4 v1, 0x0

    .line 156
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    iput-boolean p1, p0, Lorg/wikipedia/search/SearchFragment;->returnLink:Z

    .line 161
    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const-string v0, "showHybridSearch"

    .line 167
    .line 168
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    iput-boolean p1, p0, Lorg/wikipedia/search/SearchFragment;->initiateHybridSearch:Z

    .line 173
    .line 174
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p3, 0x7f0c01a8

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const p2, 0x7f090276

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    check-cast p3, Landroidx/fragment/app/FragmentContainerView;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz p3, :cond_11

    .line 23
    .line 24
    const p3, 0x7f0905bd

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    move-object v5, v0

    .line 32
    check-cast v5, Lorg/wikipedia/views/CabSearchView;

    .line 33
    .line 34
    if-eqz v5, :cond_10

    .line 35
    .line 36
    move-object v4, p1

    .line 37
    check-cast v4, Landroid/widget/LinearLayout;

    .line 38
    .line 39
    const p3, 0x7f0905ca

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    move-object v7, v0

    .line 47
    check-cast v7, Lorg/wikipedia/views/LangCodeView;

    .line 48
    .line 49
    if-eqz v7, :cond_10

    .line 50
    .line 51
    const p3, 0x7f0905cb

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/LinearLayout;

    .line 59
    .line 60
    if-eqz v0, :cond_10

    .line 61
    .line 62
    const p3, 0x7f0905cc

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    move-object v8, v0

    .line 70
    check-cast v8, Lorg/wikipedia/views/LanguageScrollView;

    .line 71
    .line 72
    if-eqz v8, :cond_10

    .line 73
    .line 74
    const p3, 0x7f0905cd

    .line 75
    .line 76
    .line 77
    invoke-static {p1, p3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    move-object v9, v0

    .line 82
    check-cast v9, Landroid/widget/LinearLayout;

    .line 83
    .line 84
    if-eqz v9, :cond_10

    .line 85
    .line 86
    const p3, 0x7f0905cf

    .line 87
    .line 88
    .line 89
    invoke-static {p1, p3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Landroidx/fragment/app/FragmentContainerView;

    .line 94
    .line 95
    if-eqz v0, :cond_10

    .line 96
    .line 97
    const v0, 0x7f0905d1

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    move-object v10, v3

    .line 105
    check-cast v10, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 106
    .line 107
    if-eqz v10, :cond_f

    .line 108
    .line 109
    const v0, 0x7f0905d4

    .line 110
    .line 111
    .line 112
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    move-object v11, v3

    .line 117
    check-cast v11, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 118
    .line 119
    if-eqz v11, :cond_f

    .line 120
    .line 121
    new-instance v3, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 122
    .line 123
    move-object v6, v4

    .line 124
    invoke-direct/range {v3 .. v11}, Lorg/wikipedia/databinding/FragmentNewsBinding;-><init>(Landroid/widget/LinearLayout;Lorg/wikipedia/views/CabSearchView;Landroid/widget/LinearLayout;Lorg/wikipedia/views/LangCodeView;Lorg/wikipedia/views/LanguageScrollView;Landroid/widget/LinearLayout;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lcom/google/android/material/appbar/MaterialToolbar;)V

    .line 125
    .line 126
    .line 127
    iput-object v3, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 128
    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    check-cast p3, Lorg/wikipedia/search/RecentSearchesFragment;

    .line 144
    .line 145
    iput-object p3, p0, Lorg/wikipedia/search/SearchFragment;->recentSearchesFragment:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 146
    .line 147
    iput-object p0, p3, Lorg/wikipedia/search/RecentSearchesFragment;->callback:Lorg/wikipedia/search/SearchFragment;

    .line 148
    .line 149
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    check-cast p1, Lorg/wikipedia/search/SearchResultsFragment;

    .line 157
    .line 158
    iput-object p1, p0, Lorg/wikipedia/search/SearchFragment;->searchResultsFragment:Lorg/wikipedia/search/SearchResultsFragment;

    .line 159
    .line 160
    iget-object p2, p0, Lorg/wikipedia/search/SearchFragment;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 161
    .line 162
    const-string p3, "invokeSource"

    .line 163
    .line 164
    if-eqz p2, :cond_e

    .line 165
    .line 166
    invoke-virtual {p1}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iput-object p2, p1, Lorg/wikipedia/search/SearchResultsViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 171
    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {p1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    if-eqz p2, :cond_0

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_0
    move-object p1, v2

    .line 184
    :goto_0
    if-eqz p1, :cond_1

    .line 185
    .line 186
    iget-object p2, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 187
    .line 188
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    iget-object p2, p2, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast p2, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 194
    .line 195
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 196
    .line 197
    .line 198
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 206
    .line 207
    new-instance p2, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda0;

    .line 208
    .line 209
    const/4 v3, 0x1

    .line 210
    invoke-direct {p2, p0, v3}, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/search/SearchFragment;I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    sget-object p1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 217
    .line 218
    iget-object p1, p0, Lorg/wikipedia/search/SearchFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 219
    .line 220
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-virtual {p2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    :try_start_0
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    new-instance v4, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 234
    .line 235
    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 236
    .line 237
    invoke-direct {v4, v5, v3}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v4, p2}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    goto :goto_1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    move-object p2, v0

    .line 247
    invoke-static {p2}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 248
    .line 249
    .line 250
    move-object p2, v2

    .line 251
    :goto_1
    if-nez p2, :cond_2

    .line 252
    .line 253
    const-string p2, ""

    .line 254
    .line 255
    :cond_2
    iput-object p2, p0, Lorg/wikipedia/search/SearchFragment;->initialLanguageList:Ljava/lang/String;

    .line 256
    .line 257
    iget-object p2, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 258
    .line 259
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    iget-object p2, p2, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast p2, Landroid/widget/LinearLayout;

    .line 265
    .line 266
    new-instance v0, Lorg/wikipedia/util/FeedbackUtil$$ExternalSyntheticLambda0;

    .line 267
    .line 268
    invoke-direct {v0, p0}, Lorg/wikipedia/util/FeedbackUtil$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/search/SearchFragment;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    .line 273
    .line 274
    iget-object p2, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 275
    .line 276
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    iget-object p2, p2, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast p2, Lorg/wikipedia/views/LangCodeView;

    .line 282
    .line 283
    new-instance v0, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda0;

    .line 284
    .line 285
    const/4 v4, 0x2

    .line 286
    invoke-direct {v0, p0, v4}, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/search/SearchFragment;I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    .line 291
    .line 292
    iget-object p2, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 293
    .line 294
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    iget-object p2, p2, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast p2, Lorg/wikipedia/views/CabSearchView;

    .line 300
    .line 301
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->searchQueryListener:Lorg/wikipedia/search/SearchResultLongPressHandler;

    .line 302
    .line 303
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 304
    .line 305
    .line 306
    iget-object p2, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 307
    .line 308
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    iget-object p2, p2, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast p2, Lorg/wikipedia/views/CabSearchView;

    .line 314
    .line 315
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->searchCloseListener:Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda0;

    .line 316
    .line 317
    invoke-virtual {p2, v0}, Lorg/wikipedia/views/CabSearchView;->setCloseButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    .line 319
    .line 320
    iget-object p2, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 321
    .line 322
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    iget-object p2, p2, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast p2, Lorg/wikipedia/views/CabSearchView;

    .line 328
    .line 329
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    new-instance v4, Landroid/util/TypedValue;

    .line 334
    .line 335
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    const v5, 0x7f04054f

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v5, v4, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-eqz v0, :cond_3

    .line 350
    .line 351
    goto :goto_2

    .line 352
    :cond_3
    move-object v4, v2

    .line 353
    :goto_2
    if-eqz v4, :cond_d

    .line 354
    .line 355
    iget v0, v4, Landroid/util/TypedValue;->data:I

    .line 356
    .line 357
    invoke-virtual {p2, v0}, Lorg/wikipedia/views/CabSearchView;->setSearchHintTextColor(I)V

    .line 358
    .line 359
    .line 360
    iget-object p2, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 361
    .line 362
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    iget-object p2, p2, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 366
    .line 367
    check-cast p2, Lorg/wikipedia/views/CabSearchView;

    .line 368
    .line 369
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 370
    .line 371
    if-eqz v0, :cond_c

    .line 372
    .line 373
    sget-object v4, Lorg/wikipedia/Constants$InvokeSource;->PLACES:Lorg/wikipedia/Constants$InvokeSource;

    .line 374
    .line 375
    if-ne v0, v4, :cond_4

    .line 376
    .line 377
    const v0, 0x7f1205b1

    .line 378
    .line 379
    .line 380
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    goto :goto_4

    .line 385
    :cond_4
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 386
    .line 387
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isHybridSearchOnboardingShown()Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-eqz v0, :cond_7

    .line 392
    .line 393
    new-instance v0, Lorg/wikipedia/search/HybridSearchAbCTest;

    .line 394
    .line 395
    invoke-direct {v0}, Lorg/wikipedia/search/HybridSearchAbCTest;-><init>()V

    .line 396
    .line 397
    .line 398
    sget-object v5, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 399
    .line 400
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 401
    .line 402
    .line 403
    move-result-object v5

    .line 404
    invoke-virtual {v5}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    invoke-virtual {v5}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    invoke-virtual {v0, v5}, Lorg/wikipedia/search/HybridSearchAbCTest;->isHybridSearchEnabled(Ljava/lang/String;)Z

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    if-eqz v0, :cond_7

    .line 417
    .line 418
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->articleTitle:Ljava/lang/String;

    .line 419
    .line 420
    if-eqz v0, :cond_6

    .line 421
    .line 422
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-nez v0, :cond_5

    .line 427
    .line 428
    goto :goto_3

    .line 429
    :cond_5
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 430
    .line 431
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->articleTitle:Ljava/lang/String;

    .line 432
    .line 433
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    new-array v3, v3, [Ljava/lang/Object;

    .line 438
    .line 439
    aput-object v0, v3, v1

    .line 440
    .line 441
    const v0, 0x7f1202bb

    .line 442
    .line 443
    .line 444
    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    goto :goto_4

    .line 449
    :cond_6
    :goto_3
    const v0, 0x7f1202e7

    .line 450
    .line 451
    .line 452
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    goto :goto_4

    .line 457
    :cond_7
    const v0, 0x7f120844

    .line 458
    .line 459
    .line 460
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    :goto_4
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 465
    .line 466
    .line 467
    iget-object p2, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 468
    .line 469
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    .line 471
    .line 472
    iget-object p2, p2, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 473
    .line 474
    check-cast p2, Lorg/wikipedia/views/CabSearchView;

    .line 475
    .line 476
    const v0, 0x7f0905d0

    .line 477
    .line 478
    .line 479
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 480
    .line 481
    .line 482
    move-result-object p2

    .line 483
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 484
    .line 485
    .line 486
    iget-object p2, p0, Lorg/wikipedia/search/SearchFragment;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 487
    .line 488
    if-eqz p2, :cond_b

    .line 489
    .line 490
    if-ne p2, v4, :cond_8

    .line 491
    .line 492
    sget-object p2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 493
    .line 494
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 499
    .line 500
    .line 501
    move-result-object p1

    .line 502
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object p2

    .line 506
    check-cast p1, Ljava/util/ArrayList;

    .line 507
    .line 508
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 509
    .line 510
    .line 511
    move-result p1

    .line 512
    const p2, 0x7f12067b

    .line 513
    .line 514
    .line 515
    invoke-static {p2, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 516
    .line 517
    .line 518
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 519
    .line 520
    new-instance v3, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 521
    .line 522
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 523
    .line 524
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v7

    .line 528
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v8

    .line 532
    const-string v9, "app_places_interaction"

    .line 533
    .line 534
    const-string v4, "impression"

    .line 535
    .line 536
    const-string v5, "search_view"

    .line 537
    .line 538
    const-string v6, ""

    .line 539
    .line 540
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-static {v3}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 544
    .line 545
    .line 546
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 547
    .line 548
    .line 549
    move-result-object p1

    .line 550
    invoke-static {p1}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    if-eqz v3, :cond_a

    .line 555
    .line 556
    iget-object p1, p0, Lorg/wikipedia/search/SearchFragment;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 557
    .line 558
    if-eqz p1, :cond_9

    .line 559
    .line 560
    invoke-virtual {p1}, Lorg/wikipedia/Constants$InvokeSource;->getValue()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v5

    .line 564
    const/4 v9, 0x0

    .line 565
    const/16 v10, 0xfc

    .line 566
    .line 567
    const-string v4, "search_impression"

    .line 568
    .line 569
    const/4 v6, 0x0

    .line 570
    const/4 v7, 0x0

    .line 571
    const/4 v8, 0x0

    .line 572
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 573
    .line 574
    .line 575
    goto :goto_5

    .line 576
    :cond_9
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    throw v2

    .line 580
    :cond_a
    :goto_5
    iget-object p0, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 581
    .line 582
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 583
    .line 584
    .line 585
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 586
    .line 587
    check-cast p0, Landroid/widget/LinearLayout;

    .line 588
    .line 589
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 590
    .line 591
    .line 592
    return-object p0

    .line 593
    :cond_b
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    throw v2

    .line 597
    :cond_c
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    throw v2

    .line 601
    :cond_d
    const-string p0, "Attribute not found; ID=2130969935"

    .line 602
    .line 603
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    return-object v2

    .line 607
    :cond_e
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    throw v2

    .line 611
    :cond_f
    move p2, v0

    .line 612
    goto :goto_6

    .line 613
    :cond_10
    move p2, p3

    .line 614
    :cond_11
    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 615
    .line 616
    .line 617
    move-result-object p0

    .line 618
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object p0

    .line 622
    const-string p1, "Missing required view with ID: "

    .line 623
    .line 624
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object p0

    .line 628
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    return-object v2
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnCloseListener(Landroidx/appcompat/widget/SearchView$OnCloseListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 30
    .line 31
    return-void
.end method

.method public final onLangButtonClick()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/wikipedia/search/SearchFragment;->langBtnClicked:Z

    .line 3
    .line 4
    sget v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesActivity;->$r8$clinit:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->SEARCH:Lorg/wikipedia/Constants$InvokeSource;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lokhttp3/Cache$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/Constants$InvokeSource;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    iget-object p0, p0, Lorg/wikipedia/search/SearchFragment;->requestAddLanguageLauncher:Landroidx/fragment/app/Fragment$10;

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onPause()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lorg/wikipedia/views/LanguageScrollView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/wikipedia/views/LanguageScrollView;->getSelectedPosition()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const v1, 0x7f12067b

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->searchResultsFragment:Lorg/wikipedia/search/SearchResultsFragment;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    const-string v2, "searchResultsFragment"

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Lorg/wikipedia/search/SearchResultsFragment;->getShowHybridSearch()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Lorg/wikipedia/search/HybridSearchAbCTest;

    .line 39
    .line 40
    invoke-direct {v0}, Lorg/wikipedia/search/HybridSearchAbCTest;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Lorg/wikipedia/search/SearchFragment;->searchLanguageCode:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Lorg/wikipedia/search/HybridSearchAbCTest;->isHybridSearchEnabled(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    iget-object p0, p0, Lorg/wikipedia/search/SearchFragment;->searchResultsFragment:Lorg/wikipedia/search/SearchResultsFragment;

    .line 52
    .line 53
    if-eqz p0, :cond_0

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Lorg/wikipedia/search/SearchResultsFragment;->setShowHybridSearch(Z)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v1

    .line 64
    :cond_1
    return-void

    .line 65
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v1
.end method

.method public final onStart()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lorg/wikipedia/search/SearchFragment;->initiateHybridSearch:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lorg/wikipedia/search/HybridSearchAbCTest;

    .line 10
    .line 11
    invoke-direct {v1}, Lorg/wikipedia/search/HybridSearchAbCTest;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lorg/wikipedia/search/SearchFragment;->searchLanguageCode:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Lorg/wikipedia/search/HybridSearchAbCTest;->isHybridSearchEnabled(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    move v1, v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v2

    .line 25
    :goto_0
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v3, p0, Lorg/wikipedia/search/SearchFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 28
    .line 29
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 53
    .line 54
    const v3, 0x7f12067b

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    :goto_1
    invoke-virtual {p0, v3}, Lorg/wikipedia/search/SearchFragment;->setUpLanguageScroll(I)V

    .line 62
    .line 63
    .line 64
    iget-object v3, p0, Lorg/wikipedia/search/SearchFragment;->query:Ljava/lang/String;

    .line 65
    .line 66
    iget-boolean v4, p0, Lorg/wikipedia/search/SearchFragment;->langBtnClicked:Z

    .line 67
    .line 68
    invoke-virtual {p0, v3, v4, v2}, Lorg/wikipedia/search/SearchFragment;->startSearch(Ljava/lang/String;ZZ)V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    iget-object v3, v3, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v3, Lorg/wikipedia/views/CabSearchView;

    .line 79
    .line 80
    iget-object v4, p0, Lorg/wikipedia/search/SearchFragment;->query:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Lorg/wikipedia/views/CabSearchView;->setCloseButtonVisibility(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lorg/wikipedia/search/SearchFragment;->recentSearchesFragment:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    if-eqz v3, :cond_8

    .line 89
    .line 90
    iget-object v3, v3, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v3, Landroid/widget/LinearLayout;

    .line 98
    .line 99
    iget-object v5, p0, Lorg/wikipedia/search/SearchFragment;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 100
    .line 101
    if-eqz v5, :cond_7

    .line 102
    .line 103
    sget-object v6, Lorg/wikipedia/Constants$InvokeSource;->PLACES:Lorg/wikipedia/Constants$InvokeSource;

    .line 104
    .line 105
    if-eq v5, v6, :cond_2

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    const/16 v2, 0x8

    .line 109
    .line 110
    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    iget-object v2, p0, Lorg/wikipedia/search/SearchFragment;->query:Ljava/lang/String;

    .line 114
    .line 115
    if-eqz v2, :cond_4

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-nez v2, :cond_3

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_3
    invoke-virtual {p0, v0}, Lorg/wikipedia/search/SearchFragment;->showPanel(I)V

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_3
    if-eqz v1, :cond_6

    .line 128
    .line 129
    iget-object p0, p0, Lorg/wikipedia/search/SearchFragment;->searchResultsFragment:Lorg/wikipedia/search/SearchResultsFragment;

    .line 130
    .line 131
    if-eqz p0, :cond_5

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Lorg/wikipedia/search/SearchResultsFragment;->setShowHybridSearch(Z)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_5
    const-string p0, "searchResultsFragment"

    .line 138
    .line 139
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v4

    .line 143
    :cond_6
    return-void

    .line 144
    :cond_7
    const-string p0, "invokeSource"

    .line 145
    .line 146
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v4

    .line 150
    :cond_8
    const-string p0, "recentSearchesFragment"

    .line 151
    .line 152
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v4
.end method

.method public final setUpLanguageScroll(I)V
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lorg/wikipedia/search/SearchFragment;->searchLanguageCode:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    const/16 v3, 0x8

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x1

    .line 32
    if-le v1, v5, :cond_5

    .line 33
    .line 34
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-le v1, p1, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move p1, v4

    .line 52
    :goto_0
    iget-object v1, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Landroid/widget/LinearLayout;

    .line 60
    .line 61
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 70
    .line 71
    move-object v6, v1

    .line 72
    check-cast v6, Lorg/wikipedia/views/LanguageScrollView;

    .line 73
    .line 74
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object p0, v6, Lorg/wikipedia/views/LanguageScrollView;->callback:Lorg/wikipedia/search/SearchFragment;

    .line 83
    .line 84
    iput-object v0, v6, Lorg/wikipedia/views/LanguageScrollView;->languageCodes:Ljava/util/List;

    .line 85
    .line 86
    iput-boolean v4, v6, Lorg/wikipedia/views/LanguageScrollView;->allowSelect:Z

    .line 87
    .line 88
    iget-object v1, v6, Lorg/wikipedia/views/LanguageScrollView;->binding:Lokhttp3/ConnectionPool;

    .line 89
    .line 90
    iget-object v1, v1, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_1

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    .line 101
    .line 102
    .line 103
    :cond_1
    check-cast v0, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    if-eqz v7, :cond_4

    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    move-object v8, v7

    .line 120
    check-cast v8, Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    const v9, 0x7f0c05bd

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7, v9, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    const/4 v10, 0x0

    .line 145
    const/16 v11, 0x1c

    .line 146
    .line 147
    const/4 v9, 0x0

    .line 148
    invoke-static/range {v6 .. v11}, Lorg/wikipedia/views/LanguageScrollView;->updateTabLanguageCode$default(Lorg/wikipedia/views/LanguageScrollView;Landroid/view/View;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 149
    .line 150
    .line 151
    const/4 v9, 0x4

    .line 152
    invoke-static {v6, v7, v8, v2, v9}, Lorg/wikipedia/views/LanguageScrollView;->updateTabLanguageLabel$default(Lorg/wikipedia/views/LanguageScrollView;Landroid/view/View;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 153
    .line 154
    .line 155
    iput-object v7, v12, Lcom/google/android/material/tabs/TabLayout$Tab;->customView:Landroid/view/View;

    .line 156
    .line 157
    invoke-virtual {v12}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    .line 158
    .line 159
    .line 160
    iget-object v7, v1, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    invoke-virtual {v1, v12, v7}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 167
    .line 168
    .line 169
    iget-object v7, v12, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    .line 170
    .line 171
    if-eqz v7, :cond_3

    .line 172
    .line 173
    invoke-virtual {v7}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    const/4 v8, -0x1

    .line 178
    if-eq v7, v8, :cond_2

    .line 179
    .line 180
    iget v8, v12, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    .line 181
    .line 182
    if-ne v7, v8, :cond_2

    .line 183
    .line 184
    move v7, v5

    .line 185
    goto :goto_2

    .line 186
    :cond_2
    move v7, v4

    .line 187
    :goto_2
    invoke-virtual {v6, v12, v7}, Lorg/wikipedia/views/LanguageScrollView;->updateTabView(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_3
    const-string p0, "Tab not attached to a TabLayout"

    .line 192
    .line 193
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_4
    iput-boolean v5, v6, Lorg/wikipedia/views/LanguageScrollView;->allowSelect:Z

    .line 198
    .line 199
    new-instance v0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda10;

    .line 200
    .line 201
    const/4 v2, 0x7

    .line 202
    invoke-direct {v0, p1, v2, v6}, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda10;-><init>(IILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 206
    .line 207
    .line 208
    iget-object p0, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 209
    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast p0, Lorg/wikipedia/views/LangCodeView;

    .line 216
    .line 217
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_5
    iget-object p1, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast p1, Landroid/widget/LinearLayout;

    .line 229
    .line 230
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 231
    .line 232
    .line 233
    iget-object p1, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 234
    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast p1, Lorg/wikipedia/views/LangCodeView;

    .line 241
    .line 242
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    iget-object p1, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 246
    .line 247
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast p1, Lorg/wikipedia/views/LangCodeView;

    .line 253
    .line 254
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCode()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v0}, Lorg/wikipedia/views/LangCodeView;->setLangCode(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object p1, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 278
    .line 279
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast p1, Lorg/wikipedia/views/LangCodeView;

    .line 285
    .line 286
    new-array v0, v5, [Landroid/view/View;

    .line 287
    .line 288
    aput-object p1, v0, v4

    .line 289
    .line 290
    aget-object p1, v0, v4

    .line 291
    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-static {p1, v0}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 297
    .line 298
    .line 299
    iget-object p0, p0, Lorg/wikipedia/search/SearchFragment;->recentSearchesFragment:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 300
    .line 301
    if-eqz p0, :cond_6

    .line 302
    .line 303
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    iget-object v0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->coroutineExceptionHandler:Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 308
    .line 309
    new-instance v1, Lorg/wikipedia/search/RecentSearchesFragment$onCreateView$1$1$1;

    .line 310
    .line 311
    invoke-direct {v1, p0, v2, v5}, Lorg/wikipedia/search/RecentSearchesFragment$onCreateView$1$1$1;-><init>(Lorg/wikipedia/search/RecentSearchesFragment;Lkotlin/coroutines/Continuation;I)V

    .line 312
    .line 313
    .line 314
    const/4 p0, 0x2

    .line 315
    invoke-static {p1, v0, v2, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 316
    .line 317
    .line 318
    return-void

    .line 319
    :cond_6
    const-string p0, "recentSearchesFragment"

    .line 320
    .line 321
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    throw v2
.end method

.method public final showPanel(I)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "searchResultsFragment"

    .line 4
    .line 5
    const/16 v3, 0x8

    .line 6
    .line 7
    const-string v4, "recentSearchesFragment"

    .line 8
    .line 9
    if-eqz p1, :cond_4

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-eq p1, v5, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/search/SearchFragment;->recentSearchesFragment:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 16
    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    iget-object p1, p1, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 27
    .line 28
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lorg/wikipedia/search/SearchFragment;->searchResultsFragment:Lorg/wikipedia/search/SearchResultsFragment;

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsFragment;->composeView:Landroidx/compose/ui/platform/ComposeView;

    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void

    .line 43
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_4
    iget-object p1, p0, Lorg/wikipedia/search/SearchFragment;->searchResultsFragment:Lorg/wikipedia/search/SearchResultsFragment;

    .line 52
    .line 53
    if-eqz p1, :cond_7

    .line 54
    .line 55
    iget-object p1, p1, Lorg/wikipedia/search/SearchResultsFragment;->composeView:Landroidx/compose/ui/platform/ComposeView;

    .line 56
    .line 57
    if-eqz p1, :cond_5

    .line 58
    .line 59
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    :cond_5
    iget-object p0, p0, Lorg/wikipedia/search/SearchFragment;->recentSearchesFragment:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 63
    .line 64
    if-eqz p0, :cond_6

    .line 65
    .line 66
    iget-object p0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public final startSearch(Ljava/lang/String;ZZ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/search/SearchFragment;->isSearchActive:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iput-boolean v2, p0, Lorg/wikipedia/search/SearchFragment;->isSearchActive:Z

    .line 8
    .line 9
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->query:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 40
    .line 41
    iget-object v3, p0, Lorg/wikipedia/search/SearchFragment;->query:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/wikipedia/search/SearchFragment;->initiateHybridSearch:Z

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 60
    .line 61
    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    if-eqz p1, :cond_6

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    iget-object v1, p0, Lorg/wikipedia/search/SearchFragment;->searchResultsFragment:Lorg/wikipedia/search/SearchResultsFragment;

    .line 73
    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    iget-object v1, v1, Lorg/wikipedia/search/SearchResultsFragment;->composeView:Landroidx/compose/ui/platform/ComposeView;

    .line 77
    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    invoke-virtual {p0, v2}, Lorg/wikipedia/search/SearchFragment;->showPanel(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    const-string p0, "searchResultsFragment"

    .line 92
    .line 93
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_6
    :goto_1
    invoke-virtual {p0, v1}, Lorg/wikipedia/search/SearchFragment;->showPanel(I)V

    .line 98
    .line 99
    .line 100
    :goto_2
    iput-object p1, p0, Lorg/wikipedia/search/SearchFragment;->query:Ljava/lang/String;

    .line 101
    .line 102
    if-eqz p1, :cond_7

    .line 103
    .line 104
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_8

    .line 109
    .line 110
    :cond_7
    if-nez p2, :cond_8

    .line 111
    .line 112
    return-void

    .line 113
    :cond_8
    iget-object v1, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    iget-object v1, v1, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v1, Landroid/widget/LinearLayout;

    .line 121
    .line 122
    new-instance v2, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda2;

    .line 123
    .line 124
    invoke-direct {v2, p0, p1, p2, p3}, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/search/SearchFragment;Ljava/lang/String;ZZ)V

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Lorg/wikipedia/search/SearchFragment;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 128
    .line 129
    if-eqz p0, :cond_b

    .line 130
    .line 131
    sget-object p1, Lorg/wikipedia/Constants$InvokeSource;->PLACES:Lorg/wikipedia/Constants$InvokeSource;

    .line 132
    .line 133
    if-eq p0, p1, :cond_a

    .line 134
    .line 135
    sget-object p1, Lorg/wikipedia/Constants$InvokeSource;->VOICE:Lorg/wikipedia/Constants$InvokeSource;

    .line 136
    .line 137
    if-eq p0, p1, :cond_a

    .line 138
    .line 139
    sget-object p1, Lorg/wikipedia/Constants$InvokeSource;->INTENT_SHARE:Lorg/wikipedia/Constants$InvokeSource;

    .line 140
    .line 141
    if-eq p0, p1, :cond_a

    .line 142
    .line 143
    sget-object p1, Lorg/wikipedia/Constants$InvokeSource;->INTENT_PROCESS_TEXT:Lorg/wikipedia/Constants$InvokeSource;

    .line 144
    .line 145
    if-ne p0, p1, :cond_9

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_9
    const-wide/16 p0, 0x0

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_a
    :goto_3
    const-wide/16 p0, 0x1f4

    .line 152
    .line 153
    :goto_4
    invoke-virtual {v1, v2, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_b
    const-string p0, "invokeSource"

    .line 158
    .line 159
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v0
.end method

.method public final switchToSearch(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lorg/wikipedia/search/SearchFragment;->startSearch(Ljava/lang/String;ZZ)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 42
    .line 43
    iget-object v1, p0, Lorg/wikipedia/search/SearchFragment;->searchQueryListener:Lorg/wikipedia/search/SearchResultLongPressHandler;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lorg/wikipedia/search/SearchFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Lorg/wikipedia/views/CabSearchView;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lorg/wikipedia/views/CabSearchView;->setCloseButtonVisibility(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

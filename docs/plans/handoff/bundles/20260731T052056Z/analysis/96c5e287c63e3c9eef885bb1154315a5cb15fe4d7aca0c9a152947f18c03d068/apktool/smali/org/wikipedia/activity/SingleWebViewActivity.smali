.class public final Lorg/wikipedia/activity/SingleWebViewActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/wikipedia/activity/SingleWebViewActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "<init>",
        "()V",
        "SingleWebViewLinkHandler",
        "org/wikipedia/login/LoginClient",
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
.field public binding:Lokio/internal/DefaultSocket;

.field public blankLinkHandler:Lorg/wikipedia/activity/SingleWebViewActivity$SingleWebViewLinkHandler;

.field public final blankModel:Lorg/wikipedia/page/PageViewModel;

.field public currentUrl:Ljava/lang/String;

.field public isWebForm:Z

.field public pageTitleToLoadOnBackPress:Lorg/wikipedia/page/PageTitle;

.field public showBackButton:Z

.field public targetUrl:Ljava/lang/String;

.field public wasFormSubmitted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/page/PageViewModel;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->blankModel:Lorg/wikipedia/page/PageViewModel;

    .line 10
    .line 11
    return-void
.end method

.method public static setCookies(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    new-instance v1, Lcoil3/network/NetworkHeaders$Builder;

    .line 10
    .line 11
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 12
    .line 13
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getCookies()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v3}, Lcoil3/network/NetworkHeaders$Builder;-><init>(Ljava/util/LinkedHashMap;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    invoke-static {v1}, Lorg/wikipedia/util/log/L;->logRemoteErrorIfProd(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    sget-object v1, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    new-instance v1, Lcoil3/network/NetworkHeaders$Builder;

    .line 37
    .line 38
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2}, Lcoil3/network/NetworkHeaders$Builder;-><init>(Ljava/util/LinkedHashMap;)V

    .line 44
    .line 45
    .line 46
    sput-object v1, Lcoil3/network/NetworkHeaders$Builder;->INSTANCE:Lcoil3/network/NetworkHeaders$Builder;

    .line 47
    .line 48
    :cond_1
    monitor-enter v1

    .line 49
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance v2, Lokhttp3/HttpUrl$Builder;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-direct {v2, v3}, Lokhttp3/HttpUrl$Builder;-><init>(I)V

    .line 56
    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-virtual {v2, v3, p0}, Lokhttp3/HttpUrl$Builder;->parse$okhttp(Lokhttp3/HttpUrl;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Lcoil3/network/NetworkHeaders$Builder;->loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    monitor-exit v1

    .line 71
    check-cast v2, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lokhttp3/Cookie;

    .line 88
    .line 89
    invoke-virtual {v2}, Lokhttp3/Cookie;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v0, p0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    return-void

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    throw p0
.end method


# virtual methods
.method public final goBack()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pageContentInfo"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "donorExperience"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const-string/jumbo v0, "webpay_processed"

    .line 37
    .line 38
    .line 39
    const/16 v1, 0xc

    .line 40
    .line 41
    const-string v2, "article_return_click"

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-static {v1, v2, v0, v3, v3}, Lokhttp3/Cache$Companion;->logAction$default(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string/jumbo v1, "yearInReview"

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    sget-object v4, Lorg/wikipedia/yearinreview/YearInReviewViewModel;->currentCampaignId:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    const/16 v1, 0xe6

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    const-string v3, "article_return_click"

    .line 66
    .line 67
    const-string/jumbo v5, "webpay_processed"

    .line 68
    .line 69
    .line 70
    invoke-static/range {v1 .. v6}, Lorg/wikipedia/util/UriUtil;->submit$default(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->pageTitleToLoadOnBackPress:Lorg/wikipedia/page/PageTitle;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    .line 78
    .line 79
    const/16 v2, 0x28

    .line 80
    .line 81
    invoke-direct {v1, v2, v0}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v2, Landroid/content/Intent;

    .line 89
    .line 90
    const-string v3, "org.wikipedia.load_from_existing_tab"

    .line 91
    .line 92
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-class v3, Lorg/wikipedia/page/PageActivity;

    .line 96
    .line 97
    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const-string v3, "org.wikipedia.history.historyentry"

    .line 102
    .line 103
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v2, "title"

    .line 108
    .line 109
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0c002f

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f090090

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    move-object v7, v4

    .line 25
    check-cast v7, Landroid/widget/Button;

    .line 26
    .line 27
    if-eqz v7, :cond_d

    .line 28
    .line 29
    const v1, 0x7f090513

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    move-object v8, v4

    .line 37
    check-cast v8, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 38
    .line 39
    if-eqz v8, :cond_d

    .line 40
    .line 41
    const v1, 0x7f0906cb

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    move-object v9, v4

    .line 49
    check-cast v9, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 50
    .line 51
    if-eqz v9, :cond_d

    .line 52
    .line 53
    const v1, 0x7f090768

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    move-object v10, v4

    .line 61
    check-cast v10, Lorg/wikipedia/views/ObservableWebView;

    .line 62
    .line 63
    if-eqz v10, :cond_d

    .line 64
    .line 65
    new-instance v5, Lokio/internal/DefaultSocket;

    .line 66
    .line 67
    move-object v6, v0

    .line 68
    check-cast v6, Landroid/widget/FrameLayout;

    .line 69
    .line 70
    const/16 v11, 0xa

    .line 71
    .line 72
    invoke-direct/range {v5 .. v11}, Lokio/internal/DefaultSocket;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 73
    .line 74
    .line 75
    iput-object v5, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->binding:Lokio/internal/DefaultSocket;

    .line 76
    .line 77
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->binding:Lokio/internal/DefaultSocket;

    .line 81
    .line 82
    const-string v1, "binding"

    .line 83
    .line 84
    if-eqz v0, :cond_c

    .line 85
    .line 86
    iget-object v0, v0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    .line 99
    const-string v4, ""

    .line 100
    .line 101
    invoke-virtual {v0, v4}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string/jumbo v4, "url"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->targetUrl:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string v4, "goBack"

    .line 125
    .line 126
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    iput-boolean v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->showBackButton:Z

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const-string v4, "isWebForm"

    .line 137
    .line 138
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    iput-boolean v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->isWebForm:Z

    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    const-string v4, "title"

    .line 152
    .line 153
    const-class v5, Lorg/wikipedia/page/PageTitle;

    .line 154
    .line 155
    invoke-static {v0, v4, v5}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Landroid/os/Parcelable;

    .line 160
    .line 161
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 162
    .line 163
    iput-object v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->pageTitleToLoadOnBackPress:Lorg/wikipedia/page/PageTitle;

    .line 164
    .line 165
    new-instance v0, Lorg/wikipedia/activity/SingleWebViewActivity$SingleWebViewLinkHandler;

    .line 166
    .line 167
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 168
    .line 169
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-direct {v0, p0}, Lorg/wikipedia/page/LinkHandler;-><init>(Landroid/content/Context;)V

    .line 178
    .line 179
    .line 180
    iput-object v4, v0, Lorg/wikipedia/activity/SingleWebViewActivity$SingleWebViewLinkHandler;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 181
    .line 182
    iput-object v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->blankLinkHandler:Lorg/wikipedia/activity/SingleWebViewActivity$SingleWebViewLinkHandler;

    .line 183
    .line 184
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    new-instance v4, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 189
    .line 190
    const/4 v5, 0x1

    .line 191
    invoke-direct {v4, v5, p0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v0, p0, v4}, Landroidx/compose/ui/unit/DpKt;->addCallback$default(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->binding:Lokio/internal/DefaultSocket;

    .line 198
    .line 199
    if-eqz v0, :cond_b

    .line 200
    .line 201
    iget-object v0, v0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v0, Landroid/widget/Button;

    .line 204
    .line 205
    iget-boolean v4, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->showBackButton:Z

    .line 206
    .line 207
    if-eqz v4, :cond_1

    .line 208
    .line 209
    move v4, v3

    .line 210
    goto :goto_0

    .line 211
    :cond_1
    const/16 v4, 0x8

    .line 212
    .line 213
    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->binding:Lokio/internal/DefaultSocket;

    .line 217
    .line 218
    if-eqz v0, :cond_a

    .line 219
    .line 220
    iget-object v0, v0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v0, Landroid/widget/Button;

    .line 223
    .line 224
    new-instance v4, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;

    .line 225
    .line 226
    const/4 v6, 0x4

    .line 227
    invoke-direct {v4, v6, p0}, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->binding:Lokio/internal/DefaultSocket;

    .line 234
    .line 235
    if-eqz v0, :cond_9

    .line 236
    .line 237
    iget-object v0, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v0, Lorg/wikipedia/views/ObservableWebView;

    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->binding:Lokio/internal/DefaultSocket;

    .line 249
    .line 250
    if-eqz v0, :cond_8

    .line 251
    .line 252
    iget-object v0, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v0, Lorg/wikipedia/views/ObservableWebView;

    .line 255
    .line 256
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 261
    .line 262
    .line 263
    iget-object v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->binding:Lokio/internal/DefaultSocket;

    .line 264
    .line 265
    if-eqz v0, :cond_7

    .line 266
    .line 267
    iget-object v0, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v0, Lorg/wikipedia/views/ObservableWebView;

    .line 270
    .line 271
    new-instance v4, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$3;

    .line 272
    .line 273
    invoke-direct {v4, p0}, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$3;-><init>(Lorg/wikipedia/activity/SingleWebViewActivity;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->binding:Lokio/internal/DefaultSocket;

    .line 280
    .line 281
    if-eqz v0, :cond_6

    .line 282
    .line 283
    iget-object v0, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v0, Lorg/wikipedia/views/ObservableWebView;

    .line 286
    .line 287
    new-instance v4, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$4;

    .line 288
    .line 289
    invoke-direct {v4, v3, p0}, Lorg/wikipedia/activity/SingleWebViewActivity$onCreate$4;-><init>(ILjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->targetUrl:Ljava/lang/String;

    .line 296
    .line 297
    const-string v3, "targetUrl"

    .line 298
    .line 299
    if-eqz v0, :cond_5

    .line 300
    .line 301
    invoke-static {v0}, Lorg/wikipedia/activity/SingleWebViewActivity;->setCookies(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    if-nez p1, :cond_4

    .line 305
    .line 306
    iget-object p1, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->binding:Lokio/internal/DefaultSocket;

    .line 307
    .line 308
    if-eqz p1, :cond_3

    .line 309
    .line 310
    iget-object p1, p1, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast p1, Lorg/wikipedia/views/ObservableWebView;

    .line 313
    .line 314
    iget-object p0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->targetUrl:Ljava/lang/String;

    .line 315
    .line 316
    if-eqz p0, :cond_2

    .line 317
    .line 318
    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw v2

    .line 326
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw v2

    .line 330
    :cond_4
    return-void

    .line 331
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    throw v2

    .line 335
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    throw v2

    .line 339
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    throw v2

    .line 343
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw v2

    .line 347
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw v2

    .line 351
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw v2

    .line 355
    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw v2

    .line 359
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw v2

    .line 363
    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 364
    .line 365
    .line 366
    move-result-object p0

    .line 367
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p0

    .line 371
    const-string p1, "Missing required view with ID: "

    .line 372
    .line 373
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p0

    .line 377
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const v0, 0x7f0e0021

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->binding:Lokio/internal/DefaultSocket;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "binding"

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lorg/wikipedia/views/ObservableWebView;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/wikipedia/views/ObservableWebView;->clearAllListeners()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->binding:Lokio/internal/DefaultSocket;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lorg/wikipedia/views/ObservableWebView;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    check-cast v0, Landroid/view/ViewGroup;

    .line 31
    .line 32
    iget-object v3, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->binding:Lokio/internal/DefaultSocket;

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    iget-object v1, v3, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lorg/wikipedia/views/ObservableWebView;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onDestroy()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v1

    .line 51
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v1

    .line 55
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const v1, 0x7f0903b8

    .line 12
    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->currentUrl:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_1
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0903b5

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    iget-object v1, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->binding:Lokio/internal/DefaultSocket;

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    iget-object v1, v1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/activity/SingleWebViewActivity;->currentUrl:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 42
    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    const-string p0, "binding"

    .line 47
    .line 48
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    throw p0

    .line 53
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0
.end method

.class public final Lorg/wikipedia/search/SearchActivity;
.super Lorg/wikipedia/activity/SingleFragmentActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/activity/SingleFragmentActivity;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/wikipedia/search/SearchActivity;",
        "Lorg/wikipedia/activity/SingleFragmentActivity;",
        "Lorg/wikipedia/search/SearchFragment;",
        "<init>",
        "()V",
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
.field public final onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/fragment/app/FragmentManager$1;

    .line 5
    .line 6
    const/16 v1, 0xb

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/FragmentManager$1;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/wikipedia/search/SearchActivity;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final createFragment()Landroidx/fragment/app/Fragment;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "invokeSource"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/wikipedia/Constants$InvokeSource;

    .line 12
    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "android.intent.action.SEND"

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->INTENT_SHARE:Lorg/wikipedia/Constants$InvokeSource;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v2, "android.intent.action.PROCESS_TEXT"

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->INTENT_PROCESS_TEXT:Lorg/wikipedia/Constants$InvokeSource;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->INTENT_UNKNOWN:Lorg/wikipedia/Constants$InvokeSource;

    .line 54
    .line 55
    new-instance v2, Ljava/lang/RuntimeException;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-nez v3, :cond_2

    .line 66
    .line 67
    const-string v3, ""

    .line 68
    .line 69
    :cond_2
    const-string v4, "Unknown intent when launching SearchActivity: "

    .line 70
    .line 71
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v2}, Lorg/wikipedia/util/log/L;->logRemoteErrorIfProd(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-string v3, "query"

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const-string v4, "returnLink"

    .line 96
    .line 97
    const/4 v5, 0x0

    .line 98
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    const-string v7, "articleTitle"

    .line 107
    .line 108
    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    const-string v8, "showHybridSearch"

    .line 117
    .line 118
    invoke-virtual {p0, v8, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    new-instance v9, Lorg/wikipedia/search/SearchFragment;

    .line 126
    .line 127
    invoke-direct {v9}, Lorg/wikipedia/search/SearchFragment;-><init>()V

    .line 128
    .line 129
    .line 130
    new-instance v10, Lkotlin/Pair;

    .line 131
    .line 132
    invoke-direct {v10, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    new-instance v0, Lkotlin/Pair;

    .line 136
    .line 137
    const-string v1, "lastQuery"

    .line 138
    .line 139
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    new-instance v2, Lkotlin/Pair;

    .line 147
    .line 148
    invoke-direct {v2, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    new-instance v1, Lkotlin/Pair;

    .line 152
    .line 153
    invoke-direct {v1, v7, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    new-instance v3, Lkotlin/Pair;

    .line 161
    .line 162
    invoke-direct {v3, v8, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    const/4 p0, 0x5

    .line 166
    new-array p0, p0, [Lkotlin/Pair;

    .line 167
    .line 168
    aput-object v10, p0, v5

    .line 169
    .line 170
    const/4 v4, 0x1

    .line 171
    aput-object v0, p0, v4

    .line 172
    .line 173
    const/4 v0, 0x2

    .line 174
    aput-object v2, p0, v0

    .line 175
    .line 176
    const/4 v0, 0x3

    .line 177
    aput-object v1, p0, v0

    .line 178
    .line 179
    const/4 v0, 0x4

    .line 180
    aput-object v3, p0, v0

    .line 181
    .line 182
    invoke-static {p0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {v9, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 187
    .line 188
    .line 189
    return-object v9
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/activity/SingleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "showSnackbarMessage"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lorg/wikipedia/search/SearchActivity;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 42
    .line 43
    invoke-virtual {p1, v0, p0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/fragment/app/FragmentManager$1;Landroidx/lifecycle/LifecycleOwner;)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 47
    .line 48
    sget-object p1, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 54
    .line 55
    const-string v1, "apps-search"

    .line 56
    .line 57
    invoke-direct {v0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 58
    .line 59
    .line 60
    const-string p1, "search"

    .line 61
    .line 62
    iput-object p1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->startFunnel(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance p1, Lorg/wikipedia/search/HybridSearchAbCTest;

    .line 68
    .line 69
    invoke-direct {p1}, Lorg/wikipedia/search/HybridSearchAbCTest;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lokhttp3/Request$Builder;

    .line 73
    .line 74
    invoke-virtual {p1}, Lorg/wikipedia/search/HybridSearchAbCTest;->getGroupName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 79
    .line 80
    const v3, 0x7f120649

    .line 81
    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    invoke-static {v3, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    new-instance v4, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 89
    .line 90
    invoke-direct {v4, p1}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/search/HybridSearchAbCTest;)V

    .line 91
    .line 92
    .line 93
    const-string p1, "apps_hybridsearch"

    .line 94
    .line 95
    invoke-direct {v1, p1, v2, v3, v4}, Lokhttp3/Request$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;)V

    .line 96
    .line 97
    .line 98
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 99
    .line 100
    iput-object v0, p0, Lorg/wikipedia/activity/BaseActivity;->_instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 101
    .line 102
    return-void
.end method

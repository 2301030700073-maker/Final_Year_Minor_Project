.class public final Lorg/wikipedia/search/HybridSearchOnboardingActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/search/HybridSearchOnboardingActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
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


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/activity/EdgeToEdge;->enable$default(Landroidx/activity/ComponentActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v3, Landroidx/paging/HintHandler;

    .line 22
    .line 23
    invoke-direct {v3, v2}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v4, 0x23

    .line 29
    .line 30
    if-lt v2, v4, :cond_0

    .line 31
    .line 32
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 33
    .line 34
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/16 v4, 0x1e

    .line 39
    .line 40
    if-lt v2, v4, :cond_1

    .line 41
    .line 42
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 43
    .line 44
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/16 v4, 0x1a

    .line 49
    .line 50
    if-lt v2, v4, :cond_2

    .line 51
    .line 52
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 53
    .line 54
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 59
    .line 60
    invoke-direct {v2, v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 64
    .line 65
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v1, v1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 70
    .line 71
    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const/4 v3, 0x1

    .line 76
    xor-int/2addr v1, v3

    .line 77
    invoke-virtual {v2, v1}, Lcoil3/util/UtilsKt;->setAppearanceLightStatusBars(Z)V

    .line 78
    .line 79
    .line 80
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 81
    .line 82
    const v1, 0x7f12060f

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string v2, "invokeSource"

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    instance-of v2, v1, Lorg/wikipedia/Constants$InvokeSource;

    .line 99
    .line 100
    const/4 v4, 0x0

    .line 101
    if-eqz v2, :cond_3

    .line 102
    .line 103
    check-cast v1, Lorg/wikipedia/Constants$InvokeSource;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    move-object v1, v4

    .line 107
    :goto_1
    sget-object v2, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 108
    .line 109
    sget-object v2, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 115
    .line 116
    const-string v6, "apps-search"

    .line 117
    .line 118
    invoke-direct {v5, v6, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 119
    .line 120
    .line 121
    const-string v2, "hybrid_search_onboarding"

    .line 122
    .line 123
    iput-object v2, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 124
    .line 125
    invoke-virtual {v5, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->startFunnel(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance v2, Lorg/wikipedia/search/HybridSearchAbCTest;

    .line 129
    .line 130
    invoke-direct {v2}, Lorg/wikipedia/search/HybridSearchAbCTest;-><init>()V

    .line 131
    .line 132
    .line 133
    new-instance v6, Lokhttp3/Request$Builder;

    .line 134
    .line 135
    invoke-virtual {v2}, Lorg/wikipedia/search/HybridSearchAbCTest;->getGroupName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    const v8, 0x7f120649

    .line 140
    .line 141
    .line 142
    invoke-static {v8, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    new-instance v8, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;

    .line 147
    .line 148
    invoke-direct {v8, v2}, Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/search/HybridSearchAbCTest;)V

    .line 149
    .line 150
    .line 151
    const-string v2, "apps_hybridsearch"

    .line 152
    .line 153
    invoke-direct {v6, v2, v7, v4, v8}, Lokhttp3/Request$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/WikipediaApp$$ExternalSyntheticLambda2;)V

    .line 154
    .line 155
    .line 156
    iput-object v6, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 157
    .line 158
    iput-object v5, v0, Lorg/wikipedia/activity/BaseActivity;->_instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 159
    .line 160
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    if-eqz v9, :cond_4

    .line 165
    .line 166
    const/4 v15, 0x0

    .line 167
    const/16 v16, 0xfe

    .line 168
    .line 169
    const-string v10, "impression"

    .line 170
    .line 171
    const/4 v11, 0x0

    .line 172
    const/4 v12, 0x0

    .line 173
    const/4 v13, 0x0

    .line 174
    const/4 v14, 0x0

    .line 175
    invoke-static/range {v9 .. v16}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 176
    .line 177
    .line 178
    :cond_4
    new-instance v2, Lorg/wikipedia/search/HybridSearchOnboardingActivity$$ExternalSyntheticLambda0;

    .line 179
    .line 180
    const/4 v4, 0x0

    .line 181
    invoke-direct {v2, v0, v1, v4}, Lorg/wikipedia/search/HybridSearchOnboardingActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/search/HybridSearchOnboardingActivity;Lorg/wikipedia/Constants$InvokeSource;I)V

    .line 182
    .line 183
    .line 184
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 185
    .line 186
    const v4, 0x64bdcdf9

    .line 187
    .line 188
    .line 189
    invoke-direct {v1, v2, v3, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 190
    .line 191
    .line 192
    invoke-static {v0, v1}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 193
    .line 194
    .line 195
    return-void
.end method

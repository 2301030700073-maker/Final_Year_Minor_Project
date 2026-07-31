.class public final Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity;",
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
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroidx/activity/EdgeToEdge;->enable$default(Landroidx/activity/ComponentActivity;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Landroidx/paging/HintHandler;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v2, 0x23

    .line 27
    .line 28
    if-lt v0, v2, :cond_0

    .line 29
    .line 30
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 31
    .line 32
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/16 v2, 0x1e

    .line 37
    .line 38
    if-lt v0, v2, :cond_1

    .line 39
    .line 40
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 41
    .line 42
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/16 v2, 0x1a

    .line 47
    .line 48
    if-lt v0, v2, :cond_2

    .line 49
    .line 50
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 51
    .line 52
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 57
    .line 58
    invoke-direct {v0, p1, v1}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 62
    .line 63
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p1, p1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 68
    .line 69
    invoke-virtual {p1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const/4 v1, 0x1

    .line 74
    xor-int/2addr p1, v1

    .line 75
    invoke-virtual {v0, p1}, Lcoil3/util/UtilsKt;->setAppearanceLightStatusBars(Z)V

    .line 76
    .line 77
    .line 78
    new-instance p1, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    invoke-direct {p1, p0, v0}, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity;I)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 85
    .line 86
    const v2, -0x3a6b1f15

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, p1, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 90
    .line 91
    .line 92
    invoke-static {p0, v0}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final onPause()V
    .locals 14

    .line 1
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 5
    .line 6
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getActivityTabModules()Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-boolean v0, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimeSpentEnabled:Z

    .line 11
    .line 12
    invoke-static {v0}, Lorg/wikipedia/activitytab/ImpactModuleKt;->toOnOffString(Z)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    iget-boolean v0, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isReadingInsightsEnabled:Z

    .line 17
    .line 18
    invoke-static {v0}, Lorg/wikipedia/activitytab/ImpactModuleKt;->toOnOffString(Z)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    iget-boolean v0, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isEditingInsightsEnabled:Z

    .line 23
    .line 24
    invoke-static {v0}, Lorg/wikipedia/activitytab/ImpactModuleKt;->toOnOffString(Z)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    iget-boolean v0, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isImpactEnabled:Z

    .line 29
    .line 30
    invoke-static {v0}, Lorg/wikipedia/activitytab/ImpactModuleKt;->toOnOffString(Z)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    iget-boolean v0, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isGamesEnabled:Z

    .line 35
    .line 36
    invoke-static {v0}, Lorg/wikipedia/activitytab/ImpactModuleKt;->toOnOffString(Z)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationResults()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v1, 0x0

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    iget-boolean v0, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isDonationsEnabled:Z

    .line 52
    .line 53
    invoke-static {v0}, Lorg/wikipedia/activitytab/ImpactModuleKt;->toOnOffString(Z)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    move-object v10, v0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move-object v10, v1

    .line 60
    :goto_0
    iget-boolean v0, p0, Lorg/wikipedia/activitytab/ActivityTabModules;->isTimelineEnabled:Z

    .line 61
    .line 62
    invoke-static {v0}, Lorg/wikipedia/activitytab/ImpactModuleKt;->toOnOffString(Z)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationResults()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    xor-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    sget-object v2, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 77
    .line 78
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 79
    .line 80
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    iget-object v3, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 89
    .line 90
    filled-new-array {v3}, [Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v2, v3}, Lorg/wikipedia/games/WikiGames;->isLangSupported([Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-virtual {p0, v0, v2}, Lorg/wikipedia/activitytab/ActivityTabModules;->noModulesVisible(ZZ)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    .line 104
    const-string v1, "off"

    .line 105
    .line 106
    :goto_1
    move-object v12, v1

    .line 107
    goto :goto_3

    .line 108
    :cond_1
    invoke-static {}, Lorg/wikipedia/activitytab/ModuleType;->getEntries()Lkotlin/enums/EnumEntries;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_2

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_4

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Lorg/wikipedia/activitytab/ModuleType;

    .line 136
    .line 137
    invoke-virtual {p0, v2}, Lorg/wikipedia/activitytab/ActivityTabModules;->isModuleEnabled(Lorg/wikipedia/activitytab/ModuleType;)Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-nez v2, :cond_3

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_4
    :goto_2
    const-string v1, "on"

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :goto_3
    const/16 v13, 0x201c

    .line 148
    .line 149
    const-string v1, "activity_tab_customize"

    .line 150
    .line 151
    const-string v2, "customize_click"

    .line 152
    .line 153
    const/4 v3, 0x0

    .line 154
    const/4 v4, 0x0

    .line 155
    invoke-static/range {v1 .. v13}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    return-void
.end method

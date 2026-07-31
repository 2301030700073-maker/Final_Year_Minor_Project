.class public final synthetic Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda5;->f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "fromSettings"

    .line 6
    .line 7
    const-string v3, "startFromSourceSelection"

    .line 8
    .line 9
    const-class v4, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListOnboardingActivity;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    iget-object v0, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity$$ExternalSyntheticLambda5;->f$0:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    sget v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->$r8$clinit:I

    .line 21
    .line 22
    const/4 v15, 0x0

    .line 23
    const/16 v16, 0x1fc

    .line 24
    .line 25
    const-string v8, "interests_click"

    .line 26
    .line 27
    const-string v9, "discover_settings"

    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    const/4 v12, 0x0

    .line 32
    const/4 v13, 0x0

    .line 33
    const/4 v14, 0x0

    .line 34
    invoke-static/range {v8 .. v16}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->recommendedReadingListInterestsLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 38
    .line 39
    new-instance v8, Landroid/content/Intent;

    .line 40
    .line 41
    invoke-direct {v8, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {v8, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v8, v6}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 52
    .line 53
    .line 54
    return-object v7

    .line 55
    :pswitch_0
    sget v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->$r8$clinit:I

    .line 56
    .line 57
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 58
    .line 59
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListSource()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;->getEventString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v14

    .line 67
    const/4 v15, 0x0

    .line 68
    const/16 v16, 0x1bc

    .line 69
    .line 70
    const-string v8, "built_click"

    .line 71
    .line 72
    const-string v9, "discover_settings"

    .line 73
    .line 74
    const/4 v10, 0x0

    .line 75
    const/4 v11, 0x0

    .line 76
    const/4 v12, 0x0

    .line 77
    const/4 v13, 0x0

    .line 78
    invoke-static/range {v8 .. v16}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListSource()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput-object v1, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->currentRecommendedReadingListSource:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;

    .line 86
    .line 87
    iget-object v1, v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->recommendedReadingListSourceLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 88
    .line 89
    new-instance v8, Landroid/content/Intent;

    .line 90
    .line 91
    invoke-direct {v8, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v8, v6}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 101
    .line 102
    .line 103
    return-object v7

    .line 104
    :pswitch_1
    sget v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->$r8$clinit:I

    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 111
    .line 112
    .line 113
    return-object v7

    .line 114
    :pswitch_2
    sget v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->$r8$clinit:I

    .line 115
    .line 116
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 121
    .line 122
    .line 123
    return-object v7

    .line 124
    :pswitch_3
    sget v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->$r8$clinit:I

    .line 125
    .line 126
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsActivity;->getViewModel()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    new-instance v2, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 135
    .line 136
    invoke-direct {v2, v0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;)V

    .line 137
    .line 138
    .line 139
    new-instance v3, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 140
    .line 141
    const/16 v4, 0xc

    .line 142
    .line 143
    invoke-direct {v3, v4, v0, v6}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 144
    .line 145
    .line 146
    const/4 v0, 0x2

    .line 147
    invoke-static {v1, v2, v6, v3, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 148
    .line 149
    .line 150
    return-object v7

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

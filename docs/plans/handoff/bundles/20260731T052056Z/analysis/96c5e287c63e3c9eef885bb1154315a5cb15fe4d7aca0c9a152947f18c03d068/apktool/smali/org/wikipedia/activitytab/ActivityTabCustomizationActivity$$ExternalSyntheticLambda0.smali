.class public final synthetic Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    iget-object p0, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object v10, p1

    .line 14
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    check-cast p2, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    sget p2, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity;->$r8$clinit:I

    .line 23
    .line 24
    and-int/lit8 p2, p1, 0x3

    .line 25
    .line 26
    if-eq p2, v3, :cond_0

    .line 27
    .line 28
    move v2, v4

    .line 29
    :cond_0
    and-int/2addr p1, v4

    .line 30
    invoke-virtual {v10, p1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 47
    .line 48
    if-ne p2, p1, :cond_2

    .line 49
    .line 50
    :cond_1
    new-instance p2, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    const/16 p1, 0x1c

    .line 53
    .line 54
    invoke-direct {p2, p1, p0}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v10, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    move-object v6, p2

    .line 61
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 62
    .line 63
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 64
    .line 65
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getActivityTabModules()Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationResults()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    xor-int/lit8 v8, p0, 0x1

    .line 78
    .line 79
    sget-object p0, Lorg/wikipedia/games/WikiGames;->WHICH_CAME_FIRST:Lorg/wikipedia/games/WikiGames;

    .line 80
    .line 81
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 82
    .line 83
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object p1, p1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 92
    .line 93
    filled-new-array {p1}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Lorg/wikipedia/games/WikiGames;->isLangSupported([Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    const/4 v11, 0x0

    .line 102
    const/4 v12, 0x1

    .line 103
    const/4 v5, 0x0

    .line 104
    invoke-static/range {v5 .. v12}, Lorg/wikipedia/activitytab/ImpactModuleKt;->CustomizationScreen(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lorg/wikipedia/activitytab/ActivityTabModules;ZZLandroidx/compose/runtime/GapComposer;II)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 109
    .line 110
    .line 111
    :goto_0
    return-object v1

    .line 112
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 113
    .line 114
    check-cast p2, Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    sget v0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity;->$r8$clinit:I

    .line 121
    .line 122
    and-int/lit8 v0, p2, 0x3

    .line 123
    .line 124
    if-eq v0, v3, :cond_4

    .line 125
    .line 126
    move v2, v4

    .line 127
    :cond_4
    and-int/2addr p2, v4

    .line 128
    invoke-virtual {p1, p2, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-eqz p2, :cond_5

    .line 133
    .line 134
    new-instance p2, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity$$ExternalSyntheticLambda0;

    .line 135
    .line 136
    invoke-direct {p2, p0, v4}, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity;I)V

    .line 137
    .line 138
    .line 139
    const p0, -0xe4de1c1

    .line 140
    .line 141
    .line 142
    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    const/16 p2, 0x30

    .line 147
    .line 148
    const/4 v0, 0x0

    .line 149
    invoke-static {v0, p0, p1, p2, v4}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 154
    .line 155
    .line 156
    :goto_1
    return-object v1

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

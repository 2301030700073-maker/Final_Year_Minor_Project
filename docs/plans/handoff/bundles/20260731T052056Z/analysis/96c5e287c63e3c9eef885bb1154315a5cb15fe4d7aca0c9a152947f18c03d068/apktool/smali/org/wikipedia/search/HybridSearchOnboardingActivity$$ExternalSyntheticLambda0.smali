.class public final synthetic Lorg/wikipedia/search/HybridSearchOnboardingActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/search/HybridSearchOnboardingActivity;

.field public final synthetic f$1:Lorg/wikipedia/Constants$InvokeSource;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/search/HybridSearchOnboardingActivity;Lorg/wikipedia/Constants$InvokeSource;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/search/HybridSearchOnboardingActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/search/HybridSearchOnboardingActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/search/HybridSearchOnboardingActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/search/HybridSearchOnboardingActivity$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/Constants$InvokeSource;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lorg/wikipedia/search/HybridSearchOnboardingActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    iget-object v4, p0, Lorg/wikipedia/search/HybridSearchOnboardingActivity$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/Constants$InvokeSource;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/search/HybridSearchOnboardingActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/search/HybridSearchOnboardingActivity;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object v12, p1

    .line 16
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    move-object/from16 v0, p2

    .line 19
    .line 20
    check-cast v0, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sget v6, Lorg/wikipedia/search/HybridSearchOnboardingActivity;->$r8$clinit:I

    .line 27
    .line 28
    and-int/lit8 v6, v0, 0x3

    .line 29
    .line 30
    if-eq v6, v3, :cond_0

    .line 31
    .line 32
    move v2, v5

    .line 33
    :cond_0
    and-int/2addr v0, v5

    .line 34
    invoke-virtual {v12, v0, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_a

    .line 39
    .line 40
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 41
    .line 42
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    sget-object v0, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt;->suggestedQueriesPerLanguage:Ljava/util/Map;

    .line 51
    .line 52
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/util/List;

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    sget-object v0, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt;->defaultSuggestedQueries:Ljava/util/List;

    .line 69
    .line 70
    :cond_1
    move-object v8, v0

    .line 71
    invoke-virtual {v12, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v2, -0x1

    .line 76
    if-nez v4, :cond_2

    .line 77
    .line 78
    move v3, v2

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    :goto_0
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    or-int/2addr v0, v3

    .line 89
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 94
    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    if-ne v3, v6, :cond_4

    .line 98
    .line 99
    :cond_3
    new-instance v3, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;

    .line 100
    .line 101
    invoke-direct {v3, v5, p0, v4}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    move-object v9, v3

    .line 108
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 109
    .line 110
    invoke-virtual {v12, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v4, :cond_5

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    :goto_1
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    or-int/2addr v0, v2

    .line 126
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    if-nez v0, :cond_6

    .line 131
    .line 132
    if-ne v2, v6, :cond_7

    .line 133
    .line 134
    :cond_6
    new-instance v2, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;

    .line 135
    .line 136
    const/4 v0, 0x5

    .line 137
    invoke-direct {v2, v0, p0, v4}, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_7
    move-object v10, v2

    .line 144
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 145
    .line 146
    invoke-virtual {v12, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    if-nez v0, :cond_8

    .line 155
    .line 156
    if-ne v2, v6, :cond_9

    .line 157
    .line 158
    :cond_8
    new-instance v2, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 159
    .line 160
    const/16 v0, 0x17

    .line 161
    .line 162
    invoke-direct {v2, v0, p0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    :cond_9
    move-object v11, v2

    .line 169
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 170
    .line 171
    const/4 v13, 0x0

    .line 172
    const/4 v6, 0x0

    .line 173
    invoke-static/range {v6 .. v13}, Lorg/wikipedia/search/HybridSearchOnboardingActivityKt;->HybridSearchOnboardingScreen(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_a
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 178
    .line 179
    .line 180
    :goto_2
    return-object v1

    .line 181
    :pswitch_0
    move-object v0, p1

    .line 182
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 183
    .line 184
    move-object/from16 v6, p2

    .line 185
    .line 186
    check-cast v6, Ljava/lang/Integer;

    .line 187
    .line 188
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    sget v7, Lorg/wikipedia/search/HybridSearchOnboardingActivity;->$r8$clinit:I

    .line 193
    .line 194
    and-int/lit8 v7, v6, 0x3

    .line 195
    .line 196
    if-eq v7, v3, :cond_b

    .line 197
    .line 198
    move v2, v5

    .line 199
    :cond_b
    and-int/lit8 v3, v6, 0x1

    .line 200
    .line 201
    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_c

    .line 206
    .line 207
    new-instance v2, Lorg/wikipedia/search/HybridSearchOnboardingActivity$$ExternalSyntheticLambda0;

    .line 208
    .line 209
    invoke-direct {v2, p0, v4, v5}, Lorg/wikipedia/search/HybridSearchOnboardingActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/search/HybridSearchOnboardingActivity;Lorg/wikipedia/Constants$InvokeSource;I)V

    .line 210
    .line 211
    .line 212
    const p0, -0x29b57ddb

    .line 213
    .line 214
    .line 215
    invoke-static {p0, v2, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    const/16 v2, 0x30

    .line 220
    .line 221
    const/4 v3, 0x0

    .line 222
    invoke-static {v3, p0, v0, v2, v5}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 227
    .line 228
    .line 229
    :goto_3
    return-object v1

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

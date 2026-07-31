.class public final synthetic Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/language/LangLinksActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/language/LangLinksActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/language/LangLinksActivity;

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
    .locals 14

    .line 1
    iget v0, p0, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/language/LangLinksActivity;

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object v12, p1

    .line 15
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    move-object/from16 v0, p2

    .line 18
    .line 19
    check-cast v0, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sget v6, Lorg/wikipedia/language/LangLinksActivity;->$r8$clinit:I

    .line 26
    .line 27
    and-int/lit8 v6, v0, 0x3

    .line 28
    .line 29
    if-eq v6, v3, :cond_0

    .line 30
    .line 31
    move v6, v5

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v6, v4

    .line 34
    :goto_0
    and-int/2addr v0, v5

    .line 35
    invoke-virtual {v12, v0, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_b

    .line 40
    .line 41
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 42
    .line 43
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lorg/wikipedia/language/LangLinksViewModel;

    .line 48
    .line 49
    iget-object v0, v0, Lorg/wikipedia/language/LangLinksViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 50
    .line 51
    invoke-static {v0, v12}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 56
    .line 57
    invoke-static {v6}, Landroidx/compose/foundation/layout/OffsetKt;->safeDrawingPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-static {v6}, Landroidx/compose/foundation/layout/OffsetKt;->imePadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    move-object v7, v0

    .line 70
    check-cast v7, Lorg/wikipedia/util/UiState;

    .line 71
    .line 72
    invoke-virtual {v12, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 81
    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    if-ne v8, v9, :cond_2

    .line 85
    .line 86
    :cond_1
    new-instance v8, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda2;

    .line 87
    .line 88
    invoke-direct {v8, p0, v4}, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/language/LangLinksActivity;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 95
    .line 96
    invoke-virtual {v12, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    if-nez v0, :cond_3

    .line 105
    .line 106
    if-ne v10, v9, :cond_4

    .line 107
    .line 108
    :cond_3
    new-instance v10, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda2;

    .line 109
    .line 110
    invoke-direct {v10, p0, v5}, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/language/LangLinksActivity;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 117
    .line 118
    new-instance v0, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;

    .line 119
    .line 120
    const/16 v11, 0xc

    .line 121
    .line 122
    invoke-direct {v0, v8, v10, v2, v11}, Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v12, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    if-nez v2, :cond_5

    .line 134
    .line 135
    if-ne v8, v9, :cond_6

    .line 136
    .line 137
    :cond_5
    new-instance v8, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda4;

    .line 138
    .line 139
    invoke-direct {v8, p0, v4}, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/language/LangLinksActivity;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_6
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 146
    .line 147
    invoke-virtual {v12, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    if-nez v2, :cond_7

    .line 156
    .line 157
    if-ne v4, v9, :cond_8

    .line 158
    .line 159
    :cond_7
    new-instance v4, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda2;

    .line 160
    .line 161
    invoke-direct {v4, p0, v3}, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/language/LangLinksActivity;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_8
    move-object v10, v4

    .line 168
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 169
    .line 170
    invoke-virtual {v12, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    if-nez v2, :cond_9

    .line 179
    .line 180
    if-ne v3, v9, :cond_a

    .line 181
    .line 182
    :cond_9
    new-instance v3, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda4;

    .line 183
    .line 184
    invoke-direct {v3, p0, v5}, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/language/LangLinksActivity;I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_a
    move-object v11, v3

    .line 191
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 192
    .line 193
    const/4 v13, 0x0

    .line 194
    move-object v9, v0

    .line 195
    invoke-static/range {v6 .. v13}, Lorg/wikipedia/util/TabUtil;->ComposeLangLinksScreen(Landroidx/compose/ui/Modifier;Lorg/wikipedia/util/UiState;Lkotlin/jvm/functions/Function1;Lorg/wikipedia/compose/components/error/WikiErrorClickEvents;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 200
    .line 201
    .line 202
    :goto_1
    return-object v1

    .line 203
    :pswitch_0
    move-object v0, p1

    .line 204
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 205
    .line 206
    move-object/from16 v6, p2

    .line 207
    .line 208
    check-cast v6, Ljava/lang/Integer;

    .line 209
    .line 210
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    sget v7, Lorg/wikipedia/language/LangLinksActivity;->$r8$clinit:I

    .line 215
    .line 216
    and-int/lit8 v7, v6, 0x3

    .line 217
    .line 218
    if-eq v7, v3, :cond_c

    .line 219
    .line 220
    move v4, v5

    .line 221
    :cond_c
    and-int/lit8 v3, v6, 0x1

    .line 222
    .line 223
    invoke-virtual {v0, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    if-eqz v3, :cond_d

    .line 228
    .line 229
    new-instance v3, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda0;

    .line 230
    .line 231
    invoke-direct {v3, p0, v5}, Lorg/wikipedia/language/LangLinksActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/language/LangLinksActivity;I)V

    .line 232
    .line 233
    .line 234
    const p0, -0x12085109

    .line 235
    .line 236
    .line 237
    invoke-static {p0, v3, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    const/16 v3, 0x30

    .line 242
    .line 243
    invoke-static {v2, p0, v0, v3, v5}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 244
    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_d
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 248
    .line 249
    .line 250
    :goto_2
    return-object v1

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

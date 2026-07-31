.class public final synthetic Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v0, p1

    .line 9
    .line 10
    check-cast v0, Landroidx/compose/animation/AnimatedContentScopeImpl;

    .line 11
    .line 12
    move-object/from16 v1, p2

    .line 13
    .line 14
    check-cast v1, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/MessageState;

    .line 15
    .line 16
    move-object/from16 v2, p3

    .line 17
    .line 18
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 19
    .line 20
    move-object/from16 v3, p4

    .line 21
    .line 22
    check-cast v3, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    and-int/lit8 v0, v3, 0x30

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    and-int/lit8 v0, v3, 0x40

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    move-object v0, v2

    .line 40
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v0, v2

    .line 48
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :goto_0
    if-eqz v0, :cond_1

    .line 55
    .line 56
    const/16 v0, 0x20

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/16 v0, 0x10

    .line 60
    .line 61
    :goto_1
    or-int/2addr v3, v0

    .line 62
    :cond_2
    and-int/lit16 v0, v3, 0x91

    .line 63
    .line 64
    const/16 v4, 0x90

    .line 65
    .line 66
    const/4 v5, 0x1

    .line 67
    const/4 v6, 0x0

    .line 68
    if-eq v0, v4, :cond_3

    .line 69
    .line 70
    move v0, v5

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    move v0, v6

    .line 73
    :goto_2
    and-int/2addr v3, v5

    .line 74
    move-object v14, v2

    .line 75
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 76
    .line 77
    invoke-virtual {v14, v3, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    if-eqz v1, :cond_6

    .line 84
    .line 85
    const v0, 0x78e736e9

    .line 86
    .line 87
    .line 88
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 89
    .line 90
    .line 91
    instance-of v0, v1, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/MessageState$Error;

    .line 92
    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    const v0, 0x3572dc13

    .line 96
    .line 97
    .line 98
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 99
    .line 100
    .line 101
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 102
    .line 103
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 108
    .line 109
    iget-wide v2, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->error:J

    .line 110
    .line 111
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 112
    .line 113
    .line 114
    :goto_3
    move-wide v9, v2

    .line 115
    goto :goto_4

    .line 116
    :cond_4
    instance-of v0, v1, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/MessageState$Warning;

    .line 117
    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    const v0, 0x3572e4d5

    .line 121
    .line 122
    .line 123
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 124
    .line 125
    .line 126
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorSchemeKt;->LocalThemeColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 127
    .line 128
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 133
    .line 134
    iget-wide v2, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;->warning:J

    .line 135
    .line 136
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :goto_4
    invoke-interface {v1}, Lapp/k9mail/core/ui/compose/designsystem/molecule/input/MessageState;->getText()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 145
    .line 146
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    const/16 v19, 0x0

    .line 165
    .line 166
    const/16 v20, 0xc

    .line 167
    .line 168
    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 169
    .line 170
    const/high16 v16, 0x41800000    # 16.0f

    .line 171
    .line 172
    const/high16 v17, 0x40800000    # 4.0f

    .line 173
    .line 174
    const/16 v18, 0x0

    .line 175
    .line 176
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    const/4 v15, 0x0

    .line 181
    const/16 v16, 0x38

    .line 182
    .line 183
    const/4 v11, 0x0

    .line 184
    const/4 v12, 0x0

    .line 185
    const/4 v13, 0x0

    .line 186
    invoke-static/range {v7 .. v16}, Lkotlin/math/MathKt;->TextBodySmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 190
    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_5
    const v0, 0x3572d2dc

    .line 194
    .line 195
    .line 196
    invoke-static {v14, v0, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    throw v0

    .line 201
    :cond_6
    const v0, 0x78edf1f4

    .line 202
    .line 203
    .line 204
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 208
    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_7
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 212
    .line 213
    .line 214
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 215
    .line 216
    return-object v0

    .line 217
    :pswitch_0
    move-object/from16 v0, p1

    .line 218
    .line 219
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 220
    .line 221
    move-object/from16 v1, p2

    .line 222
    .line 223
    check-cast v1, Landroid/content/Context;

    .line 224
    .line 225
    move-object/from16 v2, p3

    .line 226
    .line 227
    check-cast v2, Landroidx/compose/foundation/text/selection/SelectedTextType;

    .line 228
    .line 229
    move-object/from16 v3, p4

    .line 230
    .line 231
    check-cast v3, Landroidx/compose/ui/text/intl/LocaleList;

    .line 232
    .line 233
    new-instance v4, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 234
    .line 235
    invoke-direct {v4, v0, v1, v2, v3}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;-><init>(Lkotlin/coroutines/CoroutineContext;Landroid/content/Context;Landroidx/compose/foundation/text/selection/SelectedTextType;Landroidx/compose/ui/text/intl/LocaleList;)V

    .line 236
    .line 237
    .line 238
    return-object v4

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

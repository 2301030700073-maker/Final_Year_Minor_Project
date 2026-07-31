.class public final synthetic Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundActivityKt$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundActivityKt$$ExternalSyntheticLambda27;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundActivityKt$$ExternalSyntheticLambda27;->f$0:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundActivityKt$$ExternalSyntheticLambda27;->f$1:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundActivityKt$$ExternalSyntheticLambda27;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 6
    .line 7
    const/16 v3, 0x10

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    iget-object v6, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundActivityKt$$ExternalSyntheticLambda27;->f$1:Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundActivityKt$$ExternalSyntheticLambda27;->f$0:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 16
    .line 17
    move-object v11, p2

    .line 18
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    move-object/from16 v0, p3

    .line 24
    .line 25
    check-cast v0, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    and-int/lit8 p1, v0, 0x11

    .line 35
    .line 36
    if-eq p1, v3, :cond_0

    .line 37
    .line 38
    move p1, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move p1, v5

    .line 41
    :goto_0
    and-int/2addr v0, v4

    .line 42
    invoke-virtual {v11, v0, p1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_4

    .line 47
    .line 48
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lorg/wikipedia/settings/dev/playground/Option;

    .line 53
    .line 54
    sget-object v0, Lorg/wikipedia/settings/dev/playground/Option;->DELETE:Lorg/wikipedia/settings/dev/playground/Option;

    .line 55
    .line 56
    if-ne p1, v0, :cond_1

    .line 57
    .line 58
    move v10, v4

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v10, v5

    .line 61
    :goto_1
    invoke-virtual {v11, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    if-ne v0, v2, :cond_3

    .line 72
    .line 73
    :cond_2
    new-instance v0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    const/16 p1, 0x8

    .line 76
    .line 77
    invoke-direct {v0, p0, v6, p1}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    move-object v8, v0

    .line 84
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 85
    .line 86
    const/4 v9, 0x0

    .line 87
    const/4 v12, 0x6

    .line 88
    const-string v7, "Delete"

    .line 89
    .line 90
    invoke-static/range {v7 .. v12}, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->ChipButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/GapComposer;I)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 95
    .line 96
    .line 97
    :goto_2
    return-object v1

    .line 98
    :pswitch_0
    move-object/from16 v0, p3

    .line 99
    .line 100
    check-cast v0, Ljava/lang/Integer;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    and-int/lit8 p1, v0, 0x11

    .line 110
    .line 111
    if-eq p1, v3, :cond_5

    .line 112
    .line 113
    move p1, v4

    .line 114
    goto :goto_3

    .line 115
    :cond_5
    move p1, v5

    .line 116
    :goto_3
    and-int/2addr v0, v4

    .line 117
    invoke-virtual {v11, v0, p1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_9

    .line 122
    .line 123
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lorg/wikipedia/settings/dev/playground/Option;

    .line 128
    .line 129
    sget-object v0, Lorg/wikipedia/settings/dev/playground/Option;->FILTER:Lorg/wikipedia/settings/dev/playground/Option;

    .line 130
    .line 131
    if-ne p1, v0, :cond_6

    .line 132
    .line 133
    move v10, v4

    .line 134
    goto :goto_4

    .line 135
    :cond_6
    move v10, v5

    .line 136
    :goto_4
    invoke-virtual {v11, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-nez p1, :cond_7

    .line 145
    .line 146
    if-ne v0, v2, :cond_8

    .line 147
    .line 148
    :cond_7
    new-instance v0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda0;

    .line 149
    .line 150
    const/16 p1, 0xa

    .line 151
    .line 152
    invoke-direct {v0, p0, v6, p1}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_8
    move-object v8, v0

    .line 159
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 160
    .line 161
    const/4 v9, 0x0

    .line 162
    const/4 v12, 0x6

    .line 163
    const-string v7, "Filter"

    .line 164
    .line 165
    invoke-static/range {v7 .. v12}, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->ChipButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/GapComposer;I)V

    .line 166
    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_9
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 170
    .line 171
    .line 172
    :goto_5
    return-object v1

    .line 173
    :pswitch_1
    move-object/from16 v0, p3

    .line 174
    .line 175
    check-cast v0, Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    and-int/lit8 p1, v0, 0x11

    .line 185
    .line 186
    if-eq p1, v3, :cond_a

    .line 187
    .line 188
    move p1, v4

    .line 189
    goto :goto_6

    .line 190
    :cond_a
    move p1, v5

    .line 191
    :goto_6
    and-int/2addr v0, v4

    .line 192
    invoke-virtual {v11, v0, p1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-eqz p1, :cond_e

    .line 197
    .line 198
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, Lorg/wikipedia/settings/dev/playground/Option;

    .line 203
    .line 204
    sget-object v0, Lorg/wikipedia/settings/dev/playground/Option;->ENTRY:Lorg/wikipedia/settings/dev/playground/Option;

    .line 205
    .line 206
    if-ne p1, v0, :cond_b

    .line 207
    .line 208
    move v10, v4

    .line 209
    goto :goto_7

    .line 210
    :cond_b
    move v10, v5

    .line 211
    :goto_7
    invoke-virtual {v11, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-nez p1, :cond_c

    .line 220
    .line 221
    if-ne v0, v2, :cond_d

    .line 222
    .line 223
    :cond_c
    new-instance v0, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda0;

    .line 224
    .line 225
    const/16 p1, 0x9

    .line 226
    .line 227
    invoke-direct {v0, p0, v6, p1}, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    :cond_d
    move-object v8, v0

    .line 234
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 235
    .line 236
    const/4 v9, 0x0

    .line 237
    const/4 v12, 0x6

    .line 238
    const-string v7, "Entry"

    .line 239
    .line 240
    invoke-static/range {v7 .. v12}, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlaygroundDialogKt;->ChipButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/GapComposer;I)V

    .line 241
    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_e
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 245
    .line 246
    .line 247
    :goto_8
    return-object v1

    .line 248
    nop

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $dispatchEvent:Lkotlin/jvm/functions/Function1;

.field public final synthetic $message:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

.field public final synthetic $preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

.field public final synthetic $showAccountIndicator:Z


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;ZLnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1;->$message:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 5
    .line 6
    iput-boolean p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1;->$showAccountIndicator:Z

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1;->$preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1;->$dispatchEvent:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityState;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    move-object/from16 v3, p3

    .line 12
    .line 13
    check-cast v3, Ljava/lang/Number;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    and-int/lit8 v4, v3, 0x6

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    const/4 v6, 0x4

    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    move-object v4, v2

    .line 29
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 30
    .line 31
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    move v4, v6

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v4, v5

    .line 40
    :goto_0
    or-int/2addr v3, v4

    .line 41
    :cond_1
    and-int/lit8 v4, v3, 0x13

    .line 42
    .line 43
    const/16 v7, 0x12

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v9, 0x1

    .line 47
    if-eq v4, v7, :cond_2

    .line 48
    .line 49
    move v4, v9

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v4, v8

    .line 52
    :goto_1
    and-int/lit8 v7, v3, 0x1

    .line 53
    .line 54
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 55
    .line 56
    invoke-virtual {v2, v7, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_10

    .line 61
    .line 62
    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 63
    .line 64
    and-int/lit8 v3, v3, 0xe

    .line 65
    .line 66
    if-ne v3, v6, :cond_3

    .line 67
    .line 68
    move v3, v9

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    move v3, v8

    .line 71
    :goto_2
    iget-object v10, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1;->$message:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 72
    .line 73
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    or-int/2addr v3, v6

    .line 78
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 83
    .line 84
    if-nez v3, :cond_4

    .line 85
    .line 86
    if-ne v6, v7, :cond_5

    .line 87
    .line 88
    :cond_4
    new-instance v6, Landroidx/compose/runtime/Latch$await$2$2;

    .line 89
    .line 90
    const/16 v3, 0xa

    .line 91
    .line 92
    invoke-direct {v6, v3, v1, v10}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_5
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 99
    .line 100
    invoke-static {v4, v9, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iget-object v3, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1;->$dispatchEvent:Lkotlin/jvm/functions/Function1;

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    or-int/2addr v4, v6

    .line 115
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    if-nez v4, :cond_6

    .line 120
    .line 121
    if-ne v6, v7, :cond_7

    .line 122
    .line 123
    :cond_6
    new-instance v6, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$2$1;

    .line 124
    .line 125
    invoke-direct {v6, v3, v10, v8}, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_7
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 132
    .line 133
    invoke-static {v1, v6}, Landroidx/compose/ui/focus/FocusTraversalKt;->focusProperties(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 134
    .line 135
    .line 136
    move-result-object v13

    .line 137
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    or-int/2addr v1, v4

    .line 146
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    if-nez v1, :cond_8

    .line 151
    .line 152
    if-ne v4, v7, :cond_9

    .line 153
    .line 154
    :cond_8
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$3$1;

    .line 155
    .line 156
    invoke-direct {v4, v3, v10, v8}, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$3$1;-><init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    :cond_9
    move-object v14, v4

    .line 163
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 164
    .line 165
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    or-int/2addr v1, v4

    .line 174
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    if-nez v1, :cond_a

    .line 179
    .line 180
    if-ne v4, v7, :cond_b

    .line 181
    .line 182
    :cond_a
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$3$1;

    .line 183
    .line 184
    invoke-direct {v4, v3, v10, v9}, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$3$1;-><init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_b
    move-object v15, v4

    .line 191
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 192
    .line 193
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    or-int/2addr v1, v4

    .line 202
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    if-nez v1, :cond_c

    .line 207
    .line 208
    if-ne v4, v7, :cond_d

    .line 209
    .line 210
    :cond_c
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$3$1;

    .line 211
    .line 212
    invoke-direct {v4, v3, v10, v5}, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$3$1;-><init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    :cond_d
    move-object/from16 v16, v4

    .line 219
    .line 220
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 221
    .line 222
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    or-int/2addr v1, v4

    .line 231
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    if-nez v1, :cond_e

    .line 236
    .line 237
    if-ne v4, v7, :cond_f

    .line 238
    .line 239
    :cond_e
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$3$1;

    .line 240
    .line 241
    const/4 v1, 0x3

    .line 242
    invoke-direct {v4, v3, v10, v1}, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1$3$1;-><init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    :cond_f
    move-object/from16 v17, v4

    .line 249
    .line 250
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 251
    .line 252
    const/16 v19, 0x0

    .line 253
    .line 254
    iget-boolean v11, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1;->$showAccountIndicator:Z

    .line 255
    .line 256
    iget-object v12, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/component/template/MessageListKt$MessageList$1$1$2$1;->$preferences:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 257
    .line 258
    move-object/from16 v18, v2

    .line 259
    .line 260
    invoke-static/range {v10 .. v19}, Lkotlin/io/ByteStreamsKt;->MessageListItem(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;ZLnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 261
    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_10
    move-object/from16 v18, v2

    .line 265
    .line 266
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 267
    .line 268
    .line 269
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 270
    .line 271
    return-object v0
.end method

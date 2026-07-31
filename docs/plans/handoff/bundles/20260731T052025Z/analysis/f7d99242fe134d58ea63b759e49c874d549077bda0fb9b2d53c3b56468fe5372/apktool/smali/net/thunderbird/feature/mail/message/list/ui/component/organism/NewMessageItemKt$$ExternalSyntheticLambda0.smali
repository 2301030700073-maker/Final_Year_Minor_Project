.class public final synthetic Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

.field public final synthetic f$1:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

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
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    iget-object v6, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 11
    .line 12
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/component/organism/NewMessageItemKt$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 20
    .line 21
    move-object/from16 v7, p2

    .line 22
    .line 23
    check-cast v7, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    and-int/lit8 v8, v7, 0x3

    .line 30
    .line 31
    if-eq v8, v3, :cond_0

    .line 32
    .line 33
    move v5, v4

    .line 34
    :cond_0
    and-int/lit8 v3, v7, 0x1

    .line 35
    .line 36
    move-object v12, v1

    .line 37
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 38
    .line 39
    invoke-virtual {v12, v3, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-object v7, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->senders:Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;

    .line 46
    .line 47
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->subject:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 50
    .line 51
    invoke-direct {v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v13, Landroidx/compose/ui/text/SpanStyle;

    .line 55
    .line 56
    sget-object v18, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 57
    .line 58
    const/16 v31, 0x0

    .line 59
    .line 60
    const v32, 0xfffb

    .line 61
    .line 62
    .line 63
    const-wide/16 v14, 0x0

    .line 64
    .line 65
    const-wide/16 v16, 0x0

    .line 66
    .line 67
    const/16 v19, 0x0

    .line 68
    .line 69
    const/16 v20, 0x0

    .line 70
    .line 71
    const/16 v21, 0x0

    .line 72
    .line 73
    const/16 v22, 0x0

    .line 74
    .line 75
    const-wide/16 v23, 0x0

    .line 76
    .line 77
    const/16 v25, 0x0

    .line 78
    .line 79
    const/16 v26, 0x0

    .line 80
    .line 81
    const/16 v27, 0x0

    .line 82
    .line 83
    const-wide/16 v28, 0x0

    .line 84
    .line 85
    const/16 v30, 0x0

    .line 86
    .line 87
    invoke-direct/range {v13 .. v32}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v13}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    :try_start_0
    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    iget-boolean v9, v6, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->senderAboveSubject:Z

    .line 105
    .line 106
    const/4 v13, 0x0

    .line 107
    const/16 v14, 0x18

    .line 108
    .line 109
    const/4 v10, 0x0

    .line 110
    const/4 v11, 0x0

    .line 111
    invoke-static/range {v7 .. v14}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->MessageItemSenderSubjectFirstLine(Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;Landroidx/compose/ui/text/AnnotatedString;ZLandroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 117
    .line 118
    .line 119
    throw v0

    .line 120
    :cond_1
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 121
    .line 122
    .line 123
    :goto_0
    return-object v2

    .line 124
    :pswitch_0
    move-object/from16 v1, p1

    .line 125
    .line 126
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 127
    .line 128
    move-object/from16 v7, p2

    .line 129
    .line 130
    check-cast v7, Ljava/lang/Integer;

    .line 131
    .line 132
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    and-int/lit8 v8, v7, 0x3

    .line 137
    .line 138
    if-eq v8, v3, :cond_2

    .line 139
    .line 140
    move v5, v4

    .line 141
    :cond_2
    and-int/lit8 v3, v7, 0x1

    .line 142
    .line 143
    move-object v12, v1

    .line 144
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 145
    .line 146
    invoke-virtual {v12, v3, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_3

    .line 151
    .line 152
    iget-object v7, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->senders:Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;

    .line 153
    .line 154
    new-instance v8, Landroidx/compose/ui/text/AnnotatedString;

    .line 155
    .line 156
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->subject:Ljava/lang/String;

    .line 157
    .line 158
    invoke-direct {v8, v0}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-boolean v9, v6, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->senderAboveSubject:Z

    .line 162
    .line 163
    const/16 v13, 0x6000

    .line 164
    .line 165
    const/16 v14, 0x8

    .line 166
    .line 167
    const/4 v10, 0x0

    .line 168
    const/4 v11, 0x1

    .line 169
    invoke-static/range {v7 .. v14}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->MessageItemSenderSubjectFirstLine(Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;Landroidx/compose/ui/text/AnnotatedString;ZLandroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_3
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 174
    .line 175
    .line 176
    :goto_1
    return-object v2

    .line 177
    :pswitch_1
    move-object/from16 v1, p1

    .line 178
    .line 179
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 180
    .line 181
    move-object/from16 v7, p2

    .line 182
    .line 183
    check-cast v7, Ljava/lang/Integer;

    .line 184
    .line 185
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    and-int/lit8 v8, v7, 0x3

    .line 190
    .line 191
    if-eq v8, v3, :cond_4

    .line 192
    .line 193
    move v5, v4

    .line 194
    :cond_4
    and-int/lit8 v3, v7, 0x1

    .line 195
    .line 196
    move-object v12, v1

    .line 197
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 198
    .line 199
    invoke-virtual {v12, v3, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_5

    .line 204
    .line 205
    iget-object v7, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->senders:Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;

    .line 206
    .line 207
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->subject:Ljava/lang/String;

    .line 208
    .line 209
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 210
    .line 211
    invoke-direct {v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 212
    .line 213
    .line 214
    new-instance v13, Landroidx/compose/ui/text/SpanStyle;

    .line 215
    .line 216
    sget-object v18, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 217
    .line 218
    const/16 v31, 0x0

    .line 219
    .line 220
    const v32, 0xfffb

    .line 221
    .line 222
    .line 223
    const-wide/16 v14, 0x0

    .line 224
    .line 225
    const-wide/16 v16, 0x0

    .line 226
    .line 227
    const/16 v19, 0x0

    .line 228
    .line 229
    const/16 v20, 0x0

    .line 230
    .line 231
    const/16 v21, 0x0

    .line 232
    .line 233
    const/16 v22, 0x0

    .line 234
    .line 235
    const-wide/16 v23, 0x0

    .line 236
    .line 237
    const/16 v25, 0x0

    .line 238
    .line 239
    const/16 v26, 0x0

    .line 240
    .line 241
    const/16 v27, 0x0

    .line 242
    .line 243
    const-wide/16 v28, 0x0

    .line 244
    .line 245
    const/16 v30, 0x0

    .line 246
    .line 247
    invoke-direct/range {v13 .. v32}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v13}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    :try_start_1
    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    iget-boolean v9, v6, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->senderAboveSubject:Z

    .line 265
    .line 266
    const/4 v13, 0x0

    .line 267
    const/16 v14, 0x18

    .line 268
    .line 269
    const/4 v10, 0x0

    .line 270
    const/4 v11, 0x0

    .line 271
    invoke-static/range {v7 .. v14}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->MessageItemSenderSubjectFirstLine(Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;Landroidx/compose/ui/text/AnnotatedString;ZLandroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    .line 272
    .line 273
    .line 274
    goto :goto_2

    .line 275
    :catchall_1
    move-exception v0

    .line 276
    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 277
    .line 278
    .line 279
    throw v0

    .line 280
    :cond_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 281
    .line 282
    .line 283
    :goto_2
    return-object v2

    .line 284
    nop

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

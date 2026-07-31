.class public final Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final baseInputConnection$delegate:Lkotlin/Lazy;

.field public final cursorAnchorInfoController:Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;

.field public focusedRect:Landroid/graphics/Rect;

.field public final ics:Ljava/util/ArrayList;

.field public imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

.field public final inputMethodManager:Landroidx/cardview/widget/CardView$1;

.field public legacyTextFieldState:Landroidx/compose/foundation/text/LegacyTextFieldState;

.field public onEditCommand:Lkotlin/jvm/functions/Function1;

.field public onImeActionPerformed:Lkotlin/jvm/functions/Function1;

.field public state:Landroidx/compose/ui/text/input/TextFieldValue;

.field public textFieldSelectionManager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field public final view:Landroid/view/View;

.field public viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$request$1;Landroidx/cardview/widget/CardView$1;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->view:Landroid/view/View;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->inputMethodManager:Landroidx/cardview/widget/CardView$1;

    .line 7
    .line 8
    new-instance p1, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;

    .line 9
    .line 10
    const/16 v0, 0xa

    .line 11
    .line 12
    invoke-direct {p1, v0}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->onEditCommand:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    new-instance p1, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;

    .line 18
    .line 19
    const/16 v0, 0xb

    .line 20
    .line 21
    invoke-direct {p1, v0}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->onImeActionPerformed:Lkotlin/jvm/functions/Function1;

    .line 25
    .line 26
    new-instance p1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 27
    .line 28
    sget-wide v0, Landroidx/compose/ui/text/TextRange;->Zero:J

    .line 29
    .line 30
    const/4 v2, 0x4

    .line 31
    const-string v3, ""

    .line 32
    .line 33
    invoke-direct {p1, v2, v0, v1, v3}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(IJLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 37
    .line 38
    sget-object p1, Landroidx/compose/ui/text/input/ImeOptions;->Default:Landroidx/compose/ui/text/input/ImeOptions;

    .line 39
    .line 40
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    .line 41
    .line 42
    new-instance p1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->ics:Ljava/util/ArrayList;

    .line 48
    .line 49
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 50
    .line 51
    new-instance v0, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    const/16 v1, 0x12

    .line 54
    .line 55
    invoke-direct {v0, v1, p0}, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v0}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->baseInputConnection$delegate:Lkotlin/Lazy;

    .line 63
    .line 64
    new-instance p1, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;

    .line 65
    .line 66
    invoke-direct {p1, p2, p3}, Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;-><init>(Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$request$1;Landroidx/cardview/widget/CardView$1;)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->cursorAnchorInfoController:Landroidx/compose/foundation/text/input/internal/LegacyCursorAnchorInfoController;

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final createInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 8
    .line 9
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v4, v2, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 12
    .line 13
    iget-object v2, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    .line 14
    .line 15
    iget v6, v2, Landroidx/compose/ui/text/input/ImeOptions;->imeAction:I

    .line 16
    .line 17
    iget v7, v2, Landroidx/compose/ui/text/input/ImeOptions;->keyboardType:I

    .line 18
    .line 19
    iget-boolean v8, v2, Landroidx/compose/ui/text/input/ImeOptions;->singleLine:Z

    .line 20
    .line 21
    const/4 v11, 0x4

    .line 22
    const/4 v12, 0x5

    .line 23
    const/4 v13, 0x7

    .line 24
    const/4 v14, 0x6

    .line 25
    const/4 v15, 0x3

    .line 26
    const/16 v16, 0x0

    .line 27
    .line 28
    const/4 v9, 0x2

    .line 29
    const/4 v10, 0x1

    .line 30
    if-ne v6, v10, :cond_1

    .line 31
    .line 32
    if-eqz v8, :cond_0

    .line 33
    .line 34
    :goto_0
    move v6, v14

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v6, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    if-nez v6, :cond_2

    .line 39
    .line 40
    move v6, v10

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    if-ne v6, v9, :cond_3

    .line 43
    .line 44
    move v6, v9

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    if-ne v6, v14, :cond_4

    .line 47
    .line 48
    move v6, v12

    .line 49
    goto :goto_1

    .line 50
    :cond_4
    if-ne v6, v12, :cond_5

    .line 51
    .line 52
    move v6, v13

    .line 53
    goto :goto_1

    .line 54
    :cond_5
    if-ne v6, v15, :cond_6

    .line 55
    .line 56
    move v6, v15

    .line 57
    goto :goto_1

    .line 58
    :cond_6
    if-ne v6, v11, :cond_7

    .line 59
    .line 60
    move v6, v11

    .line 61
    goto :goto_1

    .line 62
    :cond_7
    if-ne v6, v13, :cond_1f

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :goto_1
    iput v6, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 66
    .line 67
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    const/16 v13, 0x18

    .line 70
    .line 71
    if-lt v6, v13, :cond_8

    .line 72
    .line 73
    iget-object v13, v2, Landroidx/compose/ui/text/input/ImeOptions;->hintLocales:Landroidx/compose/ui/text/intl/LocaleList;

    .line 74
    .line 75
    invoke-static {v1, v13}, Landroidx/compose/foundation/text/input/internal/LocaleListHelper;->setHintLocales(Landroid/view/inputmethod/EditorInfo;Landroidx/compose/ui/text/intl/LocaleList;)V

    .line 76
    .line 77
    .line 78
    :cond_8
    const/16 v13, 0x8

    .line 79
    .line 80
    if-ne v7, v10, :cond_9

    .line 81
    .line 82
    :goto_2
    move v11, v10

    .line 83
    goto :goto_3

    .line 84
    :cond_9
    if-ne v7, v9, :cond_a

    .line 85
    .line 86
    iget v11, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 87
    .line 88
    const/high16 v12, -0x80000000

    .line 89
    .line 90
    or-int/2addr v11, v12

    .line 91
    iput v11, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_a
    if-ne v7, v15, :cond_b

    .line 95
    .line 96
    move v11, v9

    .line 97
    goto :goto_3

    .line 98
    :cond_b
    if-ne v7, v11, :cond_c

    .line 99
    .line 100
    move v11, v15

    .line 101
    goto :goto_3

    .line 102
    :cond_c
    if-ne v7, v12, :cond_d

    .line 103
    .line 104
    const/16 v11, 0x11

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_d
    if-ne v7, v14, :cond_e

    .line 108
    .line 109
    const/16 v11, 0x21

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_e
    const/4 v11, 0x7

    .line 113
    if-ne v7, v11, :cond_f

    .line 114
    .line 115
    const/16 v11, 0x81

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_f
    if-ne v7, v13, :cond_10

    .line 119
    .line 120
    const/16 v11, 0x12

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_10
    const/16 v11, 0x9

    .line 124
    .line 125
    if-ne v7, v11, :cond_1e

    .line 126
    .line 127
    const/16 v11, 0x2002

    .line 128
    .line 129
    :goto_3
    iput v11, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 130
    .line 131
    if-nez v8, :cond_11

    .line 132
    .line 133
    and-int/lit8 v8, v11, 0x1

    .line 134
    .line 135
    if-ne v8, v10, :cond_11

    .line 136
    .line 137
    const/high16 v8, 0x20000

    .line 138
    .line 139
    or-int/2addr v11, v8

    .line 140
    iput v11, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 141
    .line 142
    iget v8, v2, Landroidx/compose/ui/text/input/ImeOptions;->imeAction:I

    .line 143
    .line 144
    if-ne v8, v10, :cond_11

    .line 145
    .line 146
    iget v8, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 147
    .line 148
    const/high16 v12, 0x40000000    # 2.0f

    .line 149
    .line 150
    or-int/2addr v8, v12

    .line 151
    iput v8, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 152
    .line 153
    :cond_11
    and-int/lit8 v8, v11, 0x1

    .line 154
    .line 155
    if-ne v8, v10, :cond_15

    .line 156
    .line 157
    iget v8, v2, Landroidx/compose/ui/text/input/ImeOptions;->capitalization:I

    .line 158
    .line 159
    if-ne v8, v10, :cond_12

    .line 160
    .line 161
    or-int/lit16 v11, v11, 0x1000

    .line 162
    .line 163
    iput v11, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_12
    if-ne v8, v9, :cond_13

    .line 167
    .line 168
    or-int/lit16 v11, v11, 0x2000

    .line 169
    .line 170
    iput v11, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_13
    if-ne v8, v15, :cond_14

    .line 174
    .line 175
    or-int/lit16 v11, v11, 0x4000

    .line 176
    .line 177
    iput v11, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 178
    .line 179
    :cond_14
    :goto_4
    iget-boolean v2, v2, Landroidx/compose/ui/text/input/ImeOptions;->autoCorrect:Z

    .line 180
    .line 181
    if-eqz v2, :cond_15

    .line 182
    .line 183
    const v2, 0x8000

    .line 184
    .line 185
    .line 186
    or-int/2addr v2, v11

    .line 187
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 188
    .line 189
    :cond_15
    sget v2, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 190
    .line 191
    const/16 v2, 0x20

    .line 192
    .line 193
    shr-long v8, v4, v2

    .line 194
    .line 195
    long-to-int v2, v8

    .line 196
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 197
    .line 198
    const-wide v8, 0xffffffffL

    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    and-long/2addr v4, v8

    .line 204
    long-to-int v2, v4

    .line 205
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 206
    .line 207
    invoke-static {v1, v3}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setInitialSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 211
    .line 212
    const/high16 v3, 0x2000000

    .line 213
    .line 214
    or-int/2addr v2, v3

    .line 215
    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 216
    .line 217
    sget-boolean v2, Landroidx/compose/foundation/text/handwriting/StylusHandwriting_androidKt;->isStylusHandwritingSupported:Z

    .line 218
    .line 219
    const-string v3, "androidx.core.view.inputmethod.EditorInfoCompat.STYLUS_HANDWRITING_ENABLED"

    .line 220
    .line 221
    const/16 v4, 0x23

    .line 222
    .line 223
    if-eqz v2, :cond_1a

    .line 224
    .line 225
    const/4 v11, 0x7

    .line 226
    if-ne v7, v11, :cond_16

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_16
    if-ne v7, v13, :cond_17

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_17
    if-lt v6, v4, :cond_18

    .line 233
    .line 234
    invoke-static {v1, v10}, Landroidx/core/view/inputmethod/EditorInfoCompat$Api35Impl;->setStylusHandwritingEnabled(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 235
    .line 236
    .line 237
    :cond_18
    iget-object v2, v1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 238
    .line 239
    if-nez v2, :cond_19

    .line 240
    .line 241
    new-instance v2, Landroid/os/Bundle;

    .line 242
    .line 243
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 244
    .line 245
    .line 246
    iput-object v2, v1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 247
    .line 248
    :cond_19
    invoke-virtual {v2, v3, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    .line 250
    .line 251
    invoke-static {v1}, Landroidx/compose/foundation/text/input/internal/EditorInfoApi34;->setHandwritingGestures(Landroid/view/inputmethod/EditorInfo;)V

    .line 252
    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_1a
    :goto_5
    const/4 v2, 0x0

    .line 256
    if-lt v6, v4, :cond_1b

    .line 257
    .line 258
    invoke-static {v1, v2}, Landroidx/core/view/inputmethod/EditorInfoCompat$Api35Impl;->setStylusHandwritingEnabled(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 259
    .line 260
    .line 261
    :cond_1b
    iget-object v4, v1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 262
    .line 263
    if-nez v4, :cond_1c

    .line 264
    .line 265
    new-instance v4, Landroid/os/Bundle;

    .line 266
    .line 267
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 268
    .line 269
    .line 270
    iput-object v4, v1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 271
    .line 272
    :cond_1c
    invoke-virtual {v4, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 273
    .line 274
    .line 275
    :goto_6
    sget-object v2, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt;->inputMethodManagerFactory:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1;

    .line 276
    .line 277
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-nez v2, :cond_1d

    .line 282
    .line 283
    goto :goto_7

    .line 284
    :cond_1d
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v2, v1}, Landroidx/emoji2/text/EmojiCompat;->updateEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 289
    .line 290
    .line 291
    :goto_7
    iget-object v4, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 292
    .line 293
    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    .line 294
    .line 295
    iget-boolean v6, v1, Landroidx/compose/ui/text/input/ImeOptions;->autoCorrect:Z

    .line 296
    .line 297
    new-instance v5, Landroidx/appcompat/widget/PopupMenu$1;

    .line 298
    .line 299
    const/16 v1, 0x16

    .line 300
    .line 301
    invoke-direct {v5, v1, v0}, Landroidx/appcompat/widget/PopupMenu$1;-><init>(ILjava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    iget-object v7, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->legacyTextFieldState:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 305
    .line 306
    iget-object v8, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->textFieldSelectionManager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 307
    .line 308
    iget-object v9, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 309
    .line 310
    new-instance v3, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;

    .line 311
    .line 312
    invoke-direct/range {v3 .. v9}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/appcompat/widget/PopupMenu$1;ZLandroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/platform/ViewConfiguration;)V

    .line 313
    .line 314
    .line 315
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 316
    .line 317
    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    iget-object v0, v0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->ics:Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    return-object v3

    .line 326
    :cond_1e
    const-string v0, "Invalid Keyboard Type"

    .line 327
    .line 328
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    return-object v16

    .line 332
    :cond_1f
    const-string v0, "invalid ImeAction"

    .line 333
    .line 334
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    return-object v16
.end method

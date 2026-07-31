.class public final Lorg/wikipedia/edit/WikiTextKeyboardView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u001d\u001eB\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R$\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00168F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/wikipedia/edit/WikiTextKeyboardView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;",
        "callback",
        "Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;",
        "getCallback",
        "()Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;",
        "setCallback",
        "(Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;)V",
        "Lorg/wikipedia/edit/SyntaxHighlightableEditText;",
        "editText",
        "Lorg/wikipedia/edit/SyntaxHighlightableEditText;",
        "getEditText",
        "()Lorg/wikipedia/edit/SyntaxHighlightableEditText;",
        "setEditText",
        "(Lorg/wikipedia/edit/SyntaxHighlightableEditText;)V",
        "",
        "value",
        "getUserMentionVisible",
        "()Z",
        "setUserMentionVisible",
        "(Z)V",
        "userMentionVisible",
        "Callback",
        "MultiSelectCallback",
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


# instance fields
.field public final binding:Lokhttp3/MultipartBody$Builder;

.field public callback:Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;

.field public editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct/range {p0 .. p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const v3, 0x7f0c0600

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    const v2, 0x7f090782

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    const v2, 0x7f090784

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    const v2, 0x7f090786

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 51
    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    const v2, 0x7f090787

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    check-cast v6, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 62
    .line 63
    if-eqz v6, :cond_2

    .line 64
    .line 65
    const v2, 0x7f090788

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    check-cast v7, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 73
    .line 74
    if-eqz v7, :cond_2

    .line 75
    .line 76
    const v2, 0x7f090789

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    check-cast v8, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 84
    .line 85
    if-eqz v8, :cond_2

    .line 86
    .line 87
    const v2, 0x7f09078a

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    check-cast v9, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 95
    .line 96
    if-eqz v9, :cond_2

    .line 97
    .line 98
    const v2, 0x7f09078b

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    check-cast v10, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 106
    .line 107
    if-eqz v10, :cond_2

    .line 108
    .line 109
    const v2, 0x7f09078f

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    check-cast v11, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 117
    .line 118
    if-eqz v11, :cond_2

    .line 119
    .line 120
    const v2, 0x7f090791

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    check-cast v12, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 128
    .line 129
    if-eqz v12, :cond_2

    .line 130
    .line 131
    const v2, 0x7f090795

    .line 132
    .line 133
    .line 134
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    check-cast v13, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 139
    .line 140
    if-eqz v13, :cond_2

    .line 141
    .line 142
    const v2, 0x7f090796

    .line 143
    .line 144
    .line 145
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v14

    .line 149
    check-cast v14, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 150
    .line 151
    if-eqz v14, :cond_2

    .line 152
    .line 153
    const v2, 0x7f090797

    .line 154
    .line 155
    .line 156
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v15

    .line 160
    check-cast v15, Landroid/widget/LinearLayout;

    .line 161
    .line 162
    if-eqz v15, :cond_2

    .line 163
    .line 164
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    .line 165
    .line 166
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 167
    .line 168
    .line 169
    iput-object v3, v2, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 170
    .line 171
    iput-object v12, v2, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 172
    .line 173
    iput-object v14, v2, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 174
    .line 175
    iput-object v2, v0, Lorg/wikipedia/edit/WikiTextKeyboardView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 176
    .line 177
    const/4 v15, 0x1

    .line 178
    const/4 v2, 0x0

    .line 179
    if-eqz v1, :cond_1

    .line 180
    .line 181
    move-object/from16 v16, v14

    .line 182
    .line 183
    sget-object v14, Lorg/wikipedia/R$styleable;->WikitextKeyboardView:[I

    .line 184
    .line 185
    move-object/from16 v17, v8

    .line 186
    .line 187
    move-object/from16 v8, p1

    .line 188
    .line 189
    invoke-virtual {v8, v1, v14, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v1, v2, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    if-eqz v8, :cond_0

    .line 198
    .line 199
    move v8, v2

    .line 200
    goto :goto_0

    .line 201
    :cond_0
    const/16 v8, 0x8

    .line 202
    .line 203
    :goto_0
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_1
    move-object/from16 v17, v8

    .line 211
    .line 212
    move-object/from16 v16, v14

    .line 213
    .line 214
    :goto_1
    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v12, v15}, Lorg/wikipedia/views/WikitextKeyboardButtonView;->setExpandable(Z)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v15}, Lorg/wikipedia/views/WikitextKeyboardButtonView;->setExpandable(Z)V

    .line 224
    .line 225
    .line 226
    new-instance v1, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;

    .line 227
    .line 228
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardView;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .line 233
    .line 234
    new-instance v1, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;

    .line 235
    .line 236
    const/4 v2, 0x5

    .line 237
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardView;I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v12, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    .line 242
    .line 243
    new-instance v1, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;

    .line 244
    .line 245
    const/4 v2, 0x6

    .line 246
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardView;I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    .line 251
    .line 252
    new-instance v1, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;

    .line 253
    .line 254
    const/4 v2, 0x7

    .line 255
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardView;I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v11, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    .line 260
    .line 261
    new-instance v1, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;

    .line 262
    .line 263
    const/16 v2, 0x8

    .line 264
    .line 265
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardView;I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v10, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    .line 270
    .line 271
    new-instance v1, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;

    .line 272
    .line 273
    const/16 v2, 0x9

    .line 274
    .line 275
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardView;I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    .line 280
    .line 281
    new-instance v1, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;

    .line 282
    .line 283
    const/16 v2, 0xa

    .line 284
    .line 285
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardView;I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    .line 290
    .line 291
    new-instance v1, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;

    .line 292
    .line 293
    const/16 v2, 0xb

    .line 294
    .line 295
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardView;I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    .line 300
    .line 301
    new-instance v1, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;

    .line 302
    .line 303
    invoke-direct {v1, v0, v15}, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardView;I)V

    .line 304
    .line 305
    .line 306
    move-object/from16 v8, v17

    .line 307
    .line 308
    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    .line 310
    .line 311
    new-instance v1, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;

    .line 312
    .line 313
    const/4 v2, 0x2

    .line 314
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardView;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v13, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    .line 319
    .line 320
    new-instance v1, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;

    .line 321
    .line 322
    const/4 v2, 0x3

    .line 323
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardView;I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    .line 328
    .line 329
    new-instance v1, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;

    .line 330
    .line 331
    const/4 v2, 0x4

    .line 332
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/edit/WikiTextKeyboardView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/WikiTextKeyboardView;I)V

    .line 333
    .line 334
    .line 335
    move-object/from16 v14, v16

    .line 336
    .line 337
    invoke-virtual {v14, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    const-string v1, "Missing required view with ID: "

    .line 350
    .line 351
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const/4 v0, 0x0

    .line 359
    throw v0
.end method


# virtual methods
.method public final getCallback()Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->callback:Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEditText()Lorg/wikipedia/edit/SyntaxHighlightableEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUserMentionVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final setCallback(Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->callback:Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;

    .line 2
    .line 3
    return-void
.end method

.method public final setEditText(Lorg/wikipedia/edit/SyntaxHighlightableEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->editText:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 2
    .line 3
    return-void
.end method

.method public final setUserMentionVisible(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p1, 0x8

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

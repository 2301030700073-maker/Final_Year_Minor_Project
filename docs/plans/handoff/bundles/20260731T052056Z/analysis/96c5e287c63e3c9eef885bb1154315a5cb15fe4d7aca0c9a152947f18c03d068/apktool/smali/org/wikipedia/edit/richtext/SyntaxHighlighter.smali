.class public final Lorg/wikipedia/edit/richtext/SyntaxHighlighter;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final activity:Landroidx/activity/ComponentActivity;

.field public currentHighlightJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public enabled:Z

.field public final highlightDelayMillis:J

.field public lastScrollY:I

.field public final scrollView:Landroid/widget/ScrollView;

.field public searchQueryLength:I

.field public searchQueryPositionIndex:I

.field public searchQueryPositions:Ljava/util/List;

.field public final syntaxRules:Ljava/util/List;

.field public final textBox:Lorg/wikipedia/edit/SyntaxHighlightableEditText;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;Lorg/wikipedia/edit/SyntaxHighlightableEditText;Landroid/widget/ScrollView;J)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    iput-object v2, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->activity:Landroidx/activity/ComponentActivity;

    .line 11
    .line 12
    iput-object v1, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->textBox:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 13
    .line 14
    move-object/from16 v3, p3

    .line 15
    .line 16
    iput-object v3, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->scrollView:Landroid/widget/ScrollView;

    .line 17
    .line 18
    move-wide/from16 v4, p4

    .line 19
    .line 20
    iput-wide v4, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->highlightDelayMillis:J

    .line 21
    .line 22
    new-instance v4, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 23
    .line 24
    const-string/jumbo v5, "}}}"

    .line 25
    .line 26
    .line 27
    sget-object v6, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->PRE_TEMPLATE:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 28
    .line 29
    const-string/jumbo v7, "{{{"

    .line 30
    .line 31
    .line 32
    invoke-direct {v4, v7, v5, v6}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    .line 33
    .line 34
    .line 35
    new-instance v5, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 36
    .line 37
    const-string/jumbo v6, "}}"

    .line 38
    .line 39
    .line 40
    sget-object v7, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->TEMPLATE:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 41
    .line 42
    const-string/jumbo v8, "{{"

    .line 43
    .line 44
    .line 45
    invoke-direct {v5, v8, v6, v7}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    .line 46
    .line 47
    .line 48
    new-instance v6, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 49
    .line 50
    const-string v7, "]]"

    .line 51
    .line 52
    sget-object v8, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->INTERNAL_LINK:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 53
    .line 54
    const-string v9, "[["

    .line 55
    .line 56
    invoke-direct {v6, v9, v7, v8}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    .line 57
    .line 58
    .line 59
    new-instance v7, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 60
    .line 61
    const-string v8, "]"

    .line 62
    .line 63
    sget-object v9, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->EXTERNAL_LINK:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 64
    .line 65
    const-string v10, "["

    .line 66
    .line 67
    invoke-direct {v7, v10, v8, v9}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    .line 68
    .line 69
    .line 70
    new-instance v8, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 71
    .line 72
    const-string v9, "</big>"

    .line 73
    .line 74
    sget-object v10, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->TEXT_LARGE:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 75
    .line 76
    const-string v11, "<big>"

    .line 77
    .line 78
    invoke-direct {v8, v11, v9, v10}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    .line 79
    .line 80
    .line 81
    new-instance v9, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 82
    .line 83
    const-string v10, "</small>"

    .line 84
    .line 85
    sget-object v11, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->TEXT_SMALL:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 86
    .line 87
    const-string v12, "<small>"

    .line 88
    .line 89
    invoke-direct {v9, v12, v10, v11}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    .line 90
    .line 91
    .line 92
    new-instance v10, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 93
    .line 94
    const-string v11, "</sub>"

    .line 95
    .line 96
    sget-object v12, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->SUBSCRIPT:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 97
    .line 98
    const-string v13, "<sub>"

    .line 99
    .line 100
    invoke-direct {v10, v13, v11, v12}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    .line 101
    .line 102
    .line 103
    new-instance v11, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 104
    .line 105
    const-string v12, "</sup>"

    .line 106
    .line 107
    sget-object v13, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->SUPERSCRIPT:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 108
    .line 109
    const-string v14, "<sup>"

    .line 110
    .line 111
    invoke-direct {v11, v14, v12, v13}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    .line 112
    .line 113
    .line 114
    new-instance v12, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 115
    .line 116
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 117
    .line 118
    const/16 v14, 0x1c

    .line 119
    .line 120
    if-lt v13, v14, :cond_0

    .line 121
    .line 122
    sget-object v13, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->CODE:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    sget-object v13, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->BOLD:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 126
    .line 127
    :goto_0
    const-string v14, "<code>"

    .line 128
    .line 129
    const-string v15, "</code>"

    .line 130
    .line 131
    invoke-direct {v12, v14, v15, v13}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    .line 132
    .line 133
    .line 134
    new-instance v13, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 135
    .line 136
    const-string v14, "</u>"

    .line 137
    .line 138
    sget-object v15, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->UNDERLINE:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 139
    .line 140
    const-string v2, "<u>"

    .line 141
    .line 142
    invoke-direct {v13, v2, v14, v15}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    .line 143
    .line 144
    .line 145
    new-instance v2, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 146
    .line 147
    const-string v14, "</s>"

    .line 148
    .line 149
    sget-object v15, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->STRIKETHROUGH:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 150
    .line 151
    const-string v3, "<s>"

    .line 152
    .line 153
    invoke-direct {v2, v3, v14, v15}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    .line 154
    .line 155
    .line 156
    new-instance v3, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 157
    .line 158
    const-string v14, ">"

    .line 159
    .line 160
    sget-object v15, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->REF:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 161
    .line 162
    move-object/from16 p4, v2

    .line 163
    .line 164
    const-string v2, "<"

    .line 165
    .line 166
    invoke-direct {v3, v2, v14, v15}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    .line 167
    .line 168
    .line 169
    new-instance v2, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 170
    .line 171
    sget-object v14, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->BOLD:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 172
    .line 173
    const-string v15, "\'\'\'"

    .line 174
    .line 175
    invoke-direct {v2, v15, v15, v14}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    .line 176
    .line 177
    .line 178
    new-instance v14, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 179
    .line 180
    sget-object v15, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->ITALIC:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 181
    .line 182
    move-object/from16 p5, v2

    .line 183
    .line 184
    const-string v2, "\'\'"

    .line 185
    .line 186
    invoke-direct {v14, v2, v2, v15}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    .line 187
    .line 188
    .line 189
    new-instance v2, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 190
    .line 191
    sget-object v15, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->HEADING_SMALL:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 192
    .line 193
    move-object/from16 v16, v3

    .line 194
    .line 195
    const-string v3, "====="

    .line 196
    .line 197
    invoke-direct {v2, v3, v3, v15}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    .line 198
    .line 199
    .line 200
    new-instance v3, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 201
    .line 202
    move-object/from16 v17, v2

    .line 203
    .line 204
    const-string v2, "===="

    .line 205
    .line 206
    invoke-direct {v3, v2, v2, v15}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    .line 207
    .line 208
    .line 209
    new-instance v2, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 210
    .line 211
    sget-object v15, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->HEADING_MEDIUM:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 212
    .line 213
    move-object/from16 v18, v3

    .line 214
    .line 215
    const-string v3, "==="

    .line 216
    .line 217
    invoke-direct {v2, v3, v3, v15}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    .line 218
    .line 219
    .line 220
    new-instance v3, Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 221
    .line 222
    sget-object v15, Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;->HEADING_LARGE:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 223
    .line 224
    move-object/from16 v19, v2

    .line 225
    .line 226
    const-string v2, "=="

    .line 227
    .line 228
    invoke-direct {v3, v2, v2, v15}, Lorg/wikipedia/edit/richtext/SyntaxRule;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V

    .line 229
    .line 230
    .line 231
    const/16 v2, 0x12

    .line 232
    .line 233
    new-array v2, v2, [Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 234
    .line 235
    const/4 v15, 0x0

    .line 236
    aput-object v4, v2, v15

    .line 237
    .line 238
    const/4 v4, 0x1

    .line 239
    aput-object v5, v2, v4

    .line 240
    .line 241
    const/4 v5, 0x2

    .line 242
    aput-object v6, v2, v5

    .line 243
    .line 244
    const/4 v5, 0x3

    .line 245
    aput-object v7, v2, v5

    .line 246
    .line 247
    const/4 v6, 0x4

    .line 248
    aput-object v8, v2, v6

    .line 249
    .line 250
    const/4 v6, 0x5

    .line 251
    aput-object v9, v2, v6

    .line 252
    .line 253
    const/4 v7, 0x6

    .line 254
    aput-object v10, v2, v7

    .line 255
    .line 256
    const/4 v7, 0x7

    .line 257
    aput-object v11, v2, v7

    .line 258
    .line 259
    const/16 v7, 0x8

    .line 260
    .line 261
    aput-object v12, v2, v7

    .line 262
    .line 263
    const/16 v7, 0x9

    .line 264
    .line 265
    aput-object v13, v2, v7

    .line 266
    .line 267
    const/16 v7, 0xa

    .line 268
    .line 269
    aput-object p4, v2, v7

    .line 270
    .line 271
    const/16 v7, 0xb

    .line 272
    .line 273
    aput-object v16, v2, v7

    .line 274
    .line 275
    const/16 v7, 0xc

    .line 276
    .line 277
    aput-object p5, v2, v7

    .line 278
    .line 279
    const/16 v7, 0xd

    .line 280
    .line 281
    aput-object v14, v2, v7

    .line 282
    .line 283
    const/16 v7, 0xe

    .line 284
    .line 285
    aput-object v17, v2, v7

    .line 286
    .line 287
    const/16 v7, 0xf

    .line 288
    .line 289
    aput-object v18, v2, v7

    .line 290
    .line 291
    const/16 v7, 0x10

    .line 292
    .line 293
    aput-object v19, v2, v7

    .line 294
    .line 295
    const/16 v7, 0x11

    .line 296
    .line 297
    aput-object v3, v2, v7

    .line 298
    .line 299
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    iput-object v2, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->syntaxRules:Ljava/util/List;

    .line 304
    .line 305
    const/4 v2, -0x1

    .line 306
    iput v2, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->lastScrollY:I

    .line 307
    .line 308
    iput-boolean v4, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->enabled:Z

    .line 309
    .line 310
    new-instance v2, Landroidx/appcompat/widget/SearchView$10;

    .line 311
    .line 312
    invoke-direct {v2, v6, v0}, Landroidx/appcompat/widget/SearchView$10;-><init>(ILjava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual/range {p2 .. p3}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->setScrollView(Landroid/view/View;)V

    .line 319
    .line 320
    .line 321
    invoke-static/range {p1 .. p1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    new-instance v2, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 326
    .line 327
    const/4 v3, 0x0

    .line 328
    invoke-direct {v2, v15, v0, v3}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 329
    .line 330
    .line 331
    invoke-static {v1, v3, v3, v2, v5}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 332
    .line 333
    .line 334
    return-void
.end method


# virtual methods
.method public final highlightOnScroll(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$highlightOnScroll$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$highlightOnScroll$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$highlightOnScroll$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$highlightOnScroll$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$highlightOnScroll$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$highlightOnScroll$1;-><init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$highlightOnScroll$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$highlightOnScroll$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    if-eq v2, v4, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0

    .line 50
    :cond_2
    iget v2, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$highlightOnScroll$1;->I$0:I

    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->scrollView:Landroid/widget/ScrollView;

    .line 60
    .line 61
    if-eqz p1, :cond_6

    .line 62
    .line 63
    iget v2, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->lastScrollY:I

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eq v2, v5, :cond_4

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iput p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->lastScrollY:I

    .line 76
    .line 77
    const-wide/16 v5, 0x0

    .line 78
    .line 79
    invoke-virtual {p0, v5, v6}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->performHighlight(J)V

    .line 80
    .line 81
    .line 82
    :cond_4
    const/4 v2, 0x0

    .line 83
    iput v2, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$highlightOnScroll$1;->I$0:I

    .line 84
    .line 85
    iput v4, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$highlightOnScroll$1;->label:I

    .line 86
    .line 87
    iget-wide v4, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->highlightDelayMillis:J

    .line 88
    .line 89
    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-ne p1, v1, :cond_5

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_5
    :goto_1
    iput v2, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$highlightOnScroll$1;->I$0:I

    .line 97
    .line 98
    iput v3, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$highlightOnScroll$1;->label:I

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->highlightOnScroll(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    if-ne p0, v1, :cond_6

    .line 105
    .line 106
    :goto_2
    return-object v1

    .line 107
    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 108
    .line 109
    return-object p0
.end method

.method public final performHighlight(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->currentHighlightJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v5}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->activity:Landroidx/activity/ComponentActivity;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;

    .line 16
    .line 17
    const/4 v6, 0x4

    .line 18
    move-object v2, p0

    .line 19
    move-wide v3, p1

    .line 20
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;-><init>(Ljava/lang/Object;JLkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x3

    .line 24
    invoke-static {v0, v5, v5, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iput-object p0, v2, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->currentHighlightJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 29
    .line 30
    return-void
.end method

.method public final runHighlightTasks(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    instance-of v4, v3, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$1;

    .line 8
    .line 9
    if-eqz v4, :cond_0

    .line 10
    .line 11
    move-object v4, v3

    .line 12
    check-cast v4, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$1;

    .line 13
    .line 14
    iget v5, v4, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$1;->label:I

    .line 15
    .line 16
    const/high16 v6, -0x80000000

    .line 17
    .line 18
    and-int v7, v5, v6

    .line 19
    .line 20
    if-eqz v7, :cond_0

    .line 21
    .line 22
    sub-int/2addr v5, v6

    .line 23
    iput v5, v4, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$1;->label:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v4, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$1;

    .line 27
    .line 28
    invoke-direct {v4, v0, v3}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$1;-><init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v3, v4, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v6, v4, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$1;->label:I

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    .line 40
    const/4 v9, 0x3

    .line 41
    const/4 v10, 0x2

    .line 42
    const/4 v11, 0x1

    .line 43
    const/4 v12, 0x0

    .line 44
    iget-object v13, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->textBox:Lorg/wikipedia/edit/SyntaxHighlightableEditText;

    .line 45
    .line 46
    if-eqz v6, :cond_3

    .line 47
    .line 48
    if-eq v6, v11, :cond_2

    .line 49
    .line 50
    if-eq v6, v10, :cond_2

    .line 51
    .line 52
    if-ne v6, v9, :cond_1

    .line 53
    .line 54
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v12

    .line 65
    :cond_2
    iget-wide v1, v4, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$1;->J$0:J

    .line 66
    .line 67
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-boolean v3, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->enabled:Z

    .line 75
    .line 76
    if-nez v3, :cond_4

    .line 77
    .line 78
    return-object v8

    .line 79
    :cond_4
    iput-wide v1, v4, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$1;->J$0:J

    .line 80
    .line 81
    iput v11, v4, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$1;->label:I

    .line 82
    .line 83
    invoke-static {v1, v2, v4}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    if-ne v3, v5, :cond_5

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_5
    :goto_1
    invoke-virtual {v13}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-nez v3, :cond_6

    .line 95
    .line 96
    iput-wide v1, v4, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$1;->J$0:J

    .line 97
    .line 98
    iput v10, v4, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$1;->label:I

    .line 99
    .line 100
    const-wide/16 v14, 0x1f4

    .line 101
    .line 102
    invoke-static {v14, v15, v4}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    if-ne v3, v5, :cond_5

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_6
    invoke-virtual {v13}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    sub-int/2addr v6, v11

    .line 121
    iget-object v10, v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->scrollView:Landroid/widget/ScrollView;

    .line 122
    .line 123
    if-eqz v10, :cond_7

    .line 124
    .line 125
    invoke-virtual {v10}, Landroid/view/View;->getScrollY()I

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    invoke-virtual {v3, v11}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    goto :goto_2

    .line 134
    :cond_7
    move v11, v7

    .line 135
    :goto_2
    if-eqz v10, :cond_8

    .line 136
    .line 137
    invoke-virtual {v10}, Landroid/view/View;->getScrollY()I

    .line 138
    .line 139
    .line 140
    move-result v14

    .line 141
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    add-int/2addr v10, v14

    .line 146
    invoke-virtual {v3, v10}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    invoke-static {v10, v11, v6}, Lkotlin/text/RegexKt;->coerceIn(III)I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    :cond_8
    invoke-virtual {v3, v11}, Landroid/text/Layout;->getLineStart(I)I

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineEnd(I)I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    invoke-virtual {v13}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-interface {v6, v10, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    sget-object v6, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 175
    .line 176
    new-instance v11, Lorg/wikipedia/WikipediaApp$logOut$2;

    .line 177
    .line 178
    invoke-direct {v11, v0, v3, v10, v12}, Lorg/wikipedia/WikipediaApp$logOut$2;-><init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 179
    .line 180
    .line 181
    iput-wide v1, v4, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$1;->J$0:J

    .line 182
    .line 183
    iput v9, v4, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$runHighlightTasks$1;->label:I

    .line 184
    .line 185
    invoke-static {v6, v11, v4}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    if-ne v3, v5, :cond_9

    .line 190
    .line 191
    :goto_3
    return-object v5

    .line 192
    :cond_9
    :goto_4
    check-cast v3, Ljava/util/List;

    .line 193
    .line 194
    iput-boolean v7, v13, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->allowScrollToCursor:Z

    .line 195
    .line 196
    new-instance v0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 197
    .line 198
    const/4 v1, 0x6

    .line 199
    invoke-direct {v0, v1, v13}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    const-wide/16 v1, 0x3e8

    .line 203
    .line 204
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    .line 206
    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 208
    .line 209
    .line 210
    move-result-wide v0

    .line 211
    invoke-virtual {v13}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    const-class v5, Lorg/wikipedia/edit/richtext/SpanExtents;

    .line 220
    .line 221
    invoke-interface {v2, v7, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    new-instance v4, Ljava/util/ArrayList;

    .line 229
    .line 230
    new-instance v5, Lkotlin/collections/ArrayAsCollection;

    .line 231
    .line 232
    invoke-direct {v5, v2, v7}, Lkotlin/collections/ArrayAsCollection;-><init>([Ljava/lang/Object;Z)V

    .line 233
    .line 234
    .line 235
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 236
    .line 237
    .line 238
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    new-instance v5, Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    if-eqz v7, :cond_e

    .line 256
    .line 257
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    move-object v9, v7

    .line 262
    check-cast v9, Lorg/wikipedia/edit/richtext/SpanExtents;

    .line 263
    .line 264
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    .line 270
    .line 271
    move-result v11

    .line 272
    if-eqz v11, :cond_b

    .line 273
    .line 274
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v11

    .line 278
    move-object v14, v11

    .line 279
    check-cast v14, Lorg/wikipedia/edit/richtext/SpanExtents;

    .line 280
    .line 281
    invoke-interface {v14}, Lorg/wikipedia/edit/richtext/SpanExtents;->getStart()I

    .line 282
    .line 283
    .line 284
    move-result v15

    .line 285
    invoke-virtual {v13}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 286
    .line 287
    .line 288
    move-result-object v12

    .line 289
    invoke-interface {v12, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 290
    .line 291
    .line 292
    move-result v12

    .line 293
    if-ne v15, v12, :cond_a

    .line 294
    .line 295
    invoke-interface {v14}, Lorg/wikipedia/edit/richtext/SpanExtents;->getEnd()I

    .line 296
    .line 297
    .line 298
    move-result v12

    .line 299
    invoke-virtual {v13}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 300
    .line 301
    .line 302
    move-result-object v15

    .line 303
    invoke-interface {v15, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 304
    .line 305
    .line 306
    move-result v15

    .line 307
    if-ne v12, v15, :cond_a

    .line 308
    .line 309
    invoke-interface {v14}, Lorg/wikipedia/edit/richtext/SpanExtents;->getSyntaxRule()Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 310
    .line 311
    .line 312
    move-result-object v12

    .line 313
    invoke-interface {v9}, Lorg/wikipedia/edit/richtext/SpanExtents;->getSyntaxRule()Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 314
    .line 315
    .line 316
    move-result-object v14

    .line 317
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v12

    .line 321
    if-eqz v12, :cond_a

    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_a
    const/4 v12, 0x0

    .line 325
    goto :goto_6

    .line 326
    :cond_b
    const/4 v11, 0x0

    .line 327
    :goto_7
    check-cast v11, Lorg/wikipedia/edit/richtext/SpanExtents;

    .line 328
    .line 329
    if-eqz v11, :cond_c

    .line 330
    .line 331
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    :cond_c
    if-eqz v11, :cond_d

    .line 335
    .line 336
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    :cond_d
    const/4 v12, 0x0

    .line 340
    goto :goto_5

    .line 341
    :cond_e
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 342
    .line 343
    .line 344
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    if-eqz v5, :cond_f

    .line 353
    .line 354
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    check-cast v5, Lorg/wikipedia/edit/richtext/SpanExtents;

    .line 359
    .line 360
    invoke-virtual {v13}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 361
    .line 362
    .line 363
    move-result-object v6

    .line 364
    invoke-interface {v6, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    goto :goto_8

    .line 368
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 373
    .line 374
    .line 375
    move-result v5

    .line 376
    if-eqz v5, :cond_10

    .line 377
    .line 378
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    check-cast v5, Lorg/wikipedia/edit/richtext/SpanExtents;

    .line 383
    .line 384
    invoke-virtual {v13}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    invoke-interface {v5}, Lorg/wikipedia/edit/richtext/SpanExtents;->getStart()I

    .line 389
    .line 390
    .line 391
    move-result v7

    .line 392
    invoke-interface {v5}, Lorg/wikipedia/edit/richtext/SpanExtents;->getEnd()I

    .line 393
    .line 394
    .line 395
    move-result v9

    .line 396
    const/16 v10, 0x21

    .line 397
    .line 398
    invoke-interface {v6, v5, v7, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 399
    .line 400
    .line 401
    goto :goto_9

    .line 402
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 403
    .line 404
    .line 405
    move-result-wide v5

    .line 406
    sub-long/2addr v5, v0

    .line 407
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    const-string v3, "Took "

    .line 418
    .line 419
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string v3, " ms to remove "

    .line 426
    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    const-string v0, " spans and add "

    .line 434
    .line 435
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    const-string v0, " new."

    .line 442
    .line 443
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    return-object v8
.end method

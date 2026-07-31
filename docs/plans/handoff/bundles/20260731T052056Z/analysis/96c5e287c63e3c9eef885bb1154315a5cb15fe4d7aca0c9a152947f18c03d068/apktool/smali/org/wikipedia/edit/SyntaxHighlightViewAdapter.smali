.class public final Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;


# instance fields
.field public activity:Ljava/lang/Object;

.field public editText:Ljava/lang/Object;

.field public final invokeSource:Ljava/lang/Object;

.field public isFromDiff:Z

.field public pageTitle:Ljava/lang/Object;

.field public final requestInsertMedia:Ljava/lang/Object;

.field public final requestInsertTemplate:Ljava/lang/Object;

.field public final requestLinkFromSearch:Ljava/lang/Object;

.field public wikiTextKeyboardFormattingView:Ljava/lang/Object;

.field public wikiTextKeyboardHeadingsView:Ljava/lang/Object;

.field public wikiTextKeyboardView:Ljava/lang/Object;


# direct methods
.method public static synthetic $$$reportNull$$$0(I)V
    .locals 24

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    const/16 v3, 0xe

    .line 8
    .line 9
    const/16 v4, 0xd

    .line 10
    .line 11
    const/16 v5, 0x13

    .line 12
    .line 13
    const/16 v6, 0xb

    .line 14
    .line 15
    const/16 v7, 0x9

    .line 16
    .line 17
    const/4 v8, 0x7

    .line 18
    const/4 v9, 0x5

    .line 19
    const/4 v10, 0x3

    .line 20
    const/4 v11, 0x2

    .line 21
    const/4 v12, 0x1

    .line 22
    if-eq v0, v12, :cond_0

    .line 23
    .line 24
    if-eq v0, v11, :cond_0

    .line 25
    .line 26
    if-eq v0, v10, :cond_0

    .line 27
    .line 28
    if-eq v0, v9, :cond_0

    .line 29
    .line 30
    if-eq v0, v8, :cond_0

    .line 31
    .line 32
    if-eq v0, v7, :cond_0

    .line 33
    .line 34
    if-eq v0, v6, :cond_0

    .line 35
    .line 36
    if-eq v0, v5, :cond_0

    .line 37
    .line 38
    if-eq v0, v4, :cond_0

    .line 39
    .line 40
    if-eq v0, v3, :cond_0

    .line 41
    .line 42
    if-eq v0, v2, :cond_0

    .line 43
    .line 44
    if-eq v0, v1, :cond_0

    .line 45
    .line 46
    const-string v13, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v13, "@NotNull method %s.%s must not return null"

    .line 50
    .line 51
    :goto_0
    if-eq v0, v12, :cond_1

    .line 52
    .line 53
    if-eq v0, v11, :cond_1

    .line 54
    .line 55
    if-eq v0, v10, :cond_1

    .line 56
    .line 57
    if-eq v0, v9, :cond_1

    .line 58
    .line 59
    if-eq v0, v8, :cond_1

    .line 60
    .line 61
    if-eq v0, v7, :cond_1

    .line 62
    .line 63
    if-eq v0, v6, :cond_1

    .line 64
    .line 65
    if-eq v0, v5, :cond_1

    .line 66
    .line 67
    if-eq v0, v4, :cond_1

    .line 68
    .line 69
    if-eq v0, v3, :cond_1

    .line 70
    .line 71
    if-eq v0, v2, :cond_1

    .line 72
    .line 73
    if-eq v0, v1, :cond_1

    .line 74
    .line 75
    move v14, v10

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    move v14, v11

    .line 78
    :goto_1
    new-array v14, v14, [Ljava/lang/Object;

    .line 79
    .line 80
    const-string v15, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration"

    .line 81
    .line 82
    const/16 v16, 0x0

    .line 83
    .line 84
    packed-switch v0, :pswitch_data_0

    .line 85
    .line 86
    .line 87
    const-string v17, "owner"

    .line 88
    .line 89
    aput-object v17, v14, v16

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :pswitch_0
    const-string v17, "name"

    .line 93
    .line 94
    aput-object v17, v14, v16

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :pswitch_1
    const-string v17, "substitution"

    .line 98
    .line 99
    aput-object v17, v14, v16

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :pswitch_2
    const-string/jumbo v17, "typeParameters"

    .line 103
    .line 104
    .line 105
    aput-object v17, v14, v16

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :pswitch_3
    const-string v17, "kind"

    .line 109
    .line 110
    aput-object v17, v14, v16

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :pswitch_4
    const-string/jumbo v17, "visibility"

    .line 114
    .line 115
    .line 116
    aput-object v17, v14, v16

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :pswitch_5
    const-string v17, "modality"

    .line 120
    .line 121
    aput-object v17, v14, v16

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :pswitch_6
    const-string/jumbo v17, "type"

    .line 125
    .line 126
    .line 127
    aput-object v17, v14, v16

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :pswitch_7
    aput-object v15, v14, v16

    .line 131
    .line 132
    :goto_2
    const-string v16, "setOwner"

    .line 133
    .line 134
    const-string v17, "setReturnType"

    .line 135
    .line 136
    const-string v18, "setModality"

    .line 137
    .line 138
    const-string v19, "setVisibility"

    .line 139
    .line 140
    const-string v20, "setKind"

    .line 141
    .line 142
    const-string v21, "setTypeParameters"

    .line 143
    .line 144
    const-string v22, "setSubstitution"

    .line 145
    .line 146
    const-string v23, "setName"

    .line 147
    .line 148
    if-eq v0, v12, :cond_d

    .line 149
    .line 150
    if-eq v0, v11, :cond_c

    .line 151
    .line 152
    if-eq v0, v10, :cond_b

    .line 153
    .line 154
    if-eq v0, v9, :cond_a

    .line 155
    .line 156
    if-eq v0, v8, :cond_9

    .line 157
    .line 158
    if-eq v0, v7, :cond_8

    .line 159
    .line 160
    if-eq v0, v6, :cond_7

    .line 161
    .line 162
    if-eq v0, v5, :cond_6

    .line 163
    .line 164
    if-eq v0, v4, :cond_5

    .line 165
    .line 166
    if-eq v0, v3, :cond_4

    .line 167
    .line 168
    if-eq v0, v2, :cond_3

    .line 169
    .line 170
    if-eq v0, v1, :cond_2

    .line 171
    .line 172
    aput-object v15, v14, v12

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_2
    const-string v15, "setCopyOverrides"

    .line 176
    .line 177
    aput-object v15, v14, v12

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_3
    aput-object v22, v14, v12

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_4
    const-string v15, "setDispatchReceiverParameter"

    .line 184
    .line 185
    aput-object v15, v14, v12

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_5
    aput-object v21, v14, v12

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_6
    aput-object v23, v14, v12

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_7
    aput-object v20, v14, v12

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_8
    aput-object v19, v14, v12

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_9
    aput-object v18, v14, v12

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_a
    aput-object v17, v14, v12

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_b
    const-string v15, "setPreserveSourceElement"

    .line 207
    .line 208
    aput-object v15, v14, v12

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_c
    const-string v15, "setOriginal"

    .line 212
    .line 213
    aput-object v15, v14, v12

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_d
    aput-object v16, v14, v12

    .line 217
    .line 218
    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 219
    .line 220
    .line 221
    aput-object v16, v14, v11

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :pswitch_8
    aput-object v23, v14, v11

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :pswitch_9
    aput-object v22, v14, v11

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :pswitch_a
    aput-object v21, v14, v11

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :pswitch_b
    aput-object v20, v14, v11

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :pswitch_c
    aput-object v19, v14, v11

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :pswitch_d
    aput-object v18, v14, v11

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :pswitch_e
    aput-object v17, v14, v11

    .line 243
    .line 244
    :goto_4
    :pswitch_f
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v13

    .line 248
    if-eq v0, v12, :cond_e

    .line 249
    .line 250
    if-eq v0, v11, :cond_e

    .line 251
    .line 252
    if-eq v0, v10, :cond_e

    .line 253
    .line 254
    if-eq v0, v9, :cond_e

    .line 255
    .line 256
    if-eq v0, v8, :cond_e

    .line 257
    .line 258
    if-eq v0, v7, :cond_e

    .line 259
    .line 260
    if-eq v0, v6, :cond_e

    .line 261
    .line 262
    if-eq v0, v5, :cond_e

    .line 263
    .line 264
    if-eq v0, v4, :cond_e

    .line 265
    .line 266
    if-eq v0, v3, :cond_e

    .line 267
    .line 268
    if-eq v0, v2, :cond_e

    .line 269
    .line 270
    if-eq v0, v1, :cond_e

    .line 271
    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 273
    .line 274
    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 279
    .line 280
    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :goto_5
    throw v0

    .line 284
    nop

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_f
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_f
        :pswitch_a
        :pswitch_f
        :pswitch_f
        :pswitch_9
        :pswitch_f
        :pswitch_f
        :pswitch_8
        :pswitch_f
    .end packed-switch
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->requestInsertTemplate:Ljava/lang/Object;

    .line 126
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->activity:Ljava/lang/Object;

    .line 127
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->pageTitle:Ljava/lang/Object;

    .line 128
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->editText:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardView:Ljava/lang/Object;

    .line 130
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardFormattingView:Ljava/lang/Object;

    .line 131
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->EMPTY:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution$Companion$EMPTY$1;

    iput-object v0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardHeadingsView:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->isFromDiff:Z

    .line 133
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->dispatchReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 134
    iput-object v0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->invokeSource:Ljava/lang/Object;

    .line 135
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->requestInsertMedia:Ljava/lang/Object;

    .line 136
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->requestLinkFromSearch:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/activity/BaseActivity;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/edit/SyntaxHighlightableEditText;Lorg/wikipedia/edit/WikiTextKeyboardView;Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;Lorg/wikipedia/Constants$InvokeSource;Landroidx/activity/result/ActivityResultRegistry$register$2;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->activity:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p2, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->pageTitle:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p3, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->editText:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p4, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardView:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object p5, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardFormattingView:Ljava/lang/Object;

    .line 25
    .line 26
    iput-object p6, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardHeadingsView:Ljava/lang/Object;

    .line 27
    .line 28
    iput-object p7, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->invokeSource:Ljava/lang/Object;

    .line 29
    .line 30
    iput-object p8, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->requestInsertMedia:Ljava/lang/Object;

    .line 31
    .line 32
    iput-boolean p9, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->isFromDiff:Z

    .line 33
    .line 34
    invoke-virtual {p4, p3}, Lorg/wikipedia/edit/WikiTextKeyboardView;->setEditText(Lorg/wikipedia/edit/SyntaxHighlightableEditText;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p4, p0}, Lorg/wikipedia/edit/WikiTextKeyboardView;->setCallback(Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p5, p3}, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->setEditText(Lorg/wikipedia/edit/SyntaxHighlightableEditText;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p5, p0}, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;->setCallback(Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p6, p3}, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;->setEditText(Lorg/wikipedia/edit/SyntaxHighlightableEditText;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p6, p0}, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;->setCallback(Lorg/wikipedia/edit/WikiTextKeyboardView$Callback;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p4, p10}, Lorg/wikipedia/edit/WikiTextKeyboardView;->setUserMentionVisible(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->hideAllSyntaxModals()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    new-instance p4, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    const/4 p5, 0x0

    .line 69
    invoke-direct {p4, p0, p5}, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;I)V

    .line 70
    .line 71
    .line 72
    sget-object p5, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 73
    .line 74
    invoke-static {p2, p4}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 75
    .line 76
    .line 77
    new-instance p2, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    const/4 p4, 0x3

    .line 80
    invoke-direct {p2, p4, p0}, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 84
    .line 85
    .line 86
    new-instance p2, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 87
    .line 88
    invoke-direct {p2, p4}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 89
    .line 90
    .line 91
    new-instance p3, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    const/4 p5, 0x1

    .line 94
    invoke-direct {p3, p0, p5}, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p3, p2}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    check-cast p2, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 102
    .line 103
    iput-object p2, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->requestLinkFromSearch:Ljava/lang/Object;

    .line 104
    .line 105
    new-instance p2, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 106
    .line 107
    invoke-direct {p2, p4}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 108
    .line 109
    .line 110
    new-instance p3, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    const/4 p4, 0x2

    .line 113
    invoke-direct {p3, p0, p4}, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p3, p2}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 121
    .line 122
    iput-object p1, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->requestInsertTemplate:Ljava/lang/Object;

    .line 123
    .line 124
    return-void
.end method


# virtual methods
.method public build()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->requestInsertTemplate:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    .line 7
    .line 8
    iget-object v1, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->activity:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v3, v1

    .line 11
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 12
    .line 13
    iget-object v1, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->pageTitle:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v4, v1

    .line 16
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    .line 17
    .line 18
    iget-object v1, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->editText:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v5, v1

    .line 21
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 22
    .line 23
    iget-object v1, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardView:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v6, v1

    .line 26
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    .line 27
    .line 28
    iget-object v1, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardFormattingView:Ljava/lang/Object;

    .line 29
    .line 30
    move-object v7, v1

    .line 31
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 32
    .line 33
    iget-object v1, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->requestInsertMedia:Ljava/lang/Object;

    .line 34
    .line 35
    move-object v8, v1

    .line 36
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 37
    .line 38
    invoke-virtual/range {v2 .. v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->createSubstitutedCopy(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    .line 39
    .line 40
    .line 41
    move-result-object v10

    .line 42
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getTypeParameters()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v11, Ljava/util/ArrayList;

    .line 47
    .line 48
    move-object v3, v1

    .line 49
    check-cast v3, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .line 57
    .line 58
    iget-object v3, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardHeadingsView:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    .line 61
    .line 62
    invoke-static {v1, v3, v10, v11}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->substituteTypeParameters(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Ljava/util/ArrayList;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    iget-object v1, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->requestLinkFromSearch:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 69
    .line 70
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 71
    .line 72
    invoke-virtual {v6, v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const/16 v20, 0x0

    .line 77
    .line 78
    if-nez v3, :cond_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 82
    .line 83
    invoke-virtual {v6, v1, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_1

    .line 88
    .line 89
    invoke-virtual {v10, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setInType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    iget-object v1, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->invokeSource:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 95
    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    invoke-virtual {v1, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-nez v1, :cond_2

    .line 103
    .line 104
    :goto_0
    return-object v20

    .line 105
    :cond_2
    move-object v12, v1

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    move-object/from16 v12, v20

    .line 108
    .line 109
    :goto_1
    iget-object v1, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->extensionReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 110
    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v6, v5, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    if-nez v4, :cond_4

    .line 122
    .line 123
    move-object/from16 v5, v20

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_4
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 127
    .line 128
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ExtensionReceiver;

    .line 129
    .line 130
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;->getValue()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;

    .line 131
    .line 132
    .line 133
    invoke-direct {v7, v10, v4}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ExtensionReceiver;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Lorg/wikipedia/settings/BasePreferenceLoader;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-direct {v5, v10, v7, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lorg/wikipedia/settings/BasePreferenceLoader;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 141
    .line 142
    .line 143
    :goto_2
    move-object v13, v5

    .line 144
    goto :goto_3

    .line 145
    :cond_5
    move-object/from16 v13, v20

    .line 146
    .line 147
    :goto_3
    new-instance v14, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    iget-object v1, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->contextReceiverParameters:Ljava/util/List;

    .line 153
    .line 154
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-eqz v4, :cond_8

    .line 163
    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 169
    .line 170
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 175
    .line 176
    invoke-virtual {v6, v5, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    if-nez v5, :cond_7

    .line 181
    .line 182
    move-object/from16 v7, v20

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_7
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 186
    .line 187
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;

    .line 188
    .line 189
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;->getValue()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;

    .line 194
    .line 195
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;->getCustomLabelName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;->getValue()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;

    .line 200
    .line 201
    .line 202
    invoke-direct {v8, v10, v5, v9}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ContextReceiver;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4}, Lorg/wikipedia/settings/BasePreferenceLoader;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-direct {v7, v10, v8, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lorg/wikipedia/settings/BasePreferenceLoader;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 210
    .line 211
    .line 212
    :goto_5
    if-eqz v7, :cond_6

    .line 213
    .line 214
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_8
    move-object v9, v10

    .line 219
    move-object v10, v3

    .line 220
    invoke-virtual/range {v9 .. v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Ljava/util/List;)V

    .line 221
    .line 222
    .line 223
    move-object v10, v9

    .line 224
    iget-object v1, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    .line 225
    .line 226
    sget-object v19, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    .line 227
    .line 228
    if-nez v1, :cond_9

    .line 229
    .line 230
    move-object/from16 v1, v20

    .line 231
    .line 232
    goto :goto_8

    .line 233
    :cond_9
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    .line 234
    .line 235
    invoke-virtual {v1}, Lorg/wikipedia/settings/BasePreferenceLoader;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 236
    .line 237
    .line 238
    move-result-object v11

    .line 239
    iget-object v1, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->pageTitle:Ljava/lang/Object;

    .line 240
    .line 241
    move-object v12, v1

    .line 242
    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    .line 243
    .line 244
    iget-object v1, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    .line 245
    .line 246
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    iget-object v3, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardFormattingView:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 253
    .line 254
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 255
    .line 256
    if-ne v3, v4, :cond_a

    .line 257
    .line 258
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;->delegate:Landroidx/appcompat/view/ActionMode;

    .line 259
    .line 260
    invoke-virtual {v3}, Landroidx/appcompat/view/ActionMode;->normalize()Landroidx/appcompat/view/ActionMode;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->toDescriptorVisibility(Landroidx/appcompat/view/ActionMode;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->isPrivate(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;)Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-eqz v3, :cond_a

    .line 273
    .line 274
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->INVISIBLE_FAKE:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 275
    .line 276
    :cond_a
    move-object v13, v1

    .line 277
    iget-object v1, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    .line 278
    .line 279
    iget-boolean v14, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl;->isDefault:Z

    .line 280
    .line 281
    iget-boolean v15, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl;->isExternal:Z

    .line 282
    .line 283
    iget-boolean v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl;->isInline:Z

    .line 284
    .line 285
    iget-object v3, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardFormattingView:Ljava/lang/Object;

    .line 286
    .line 287
    move-object/from16 v17, v3

    .line 288
    .line 289
    check-cast v17, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 290
    .line 291
    iget-object v3, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardView:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    .line 294
    .line 295
    if-nez v3, :cond_b

    .line 296
    .line 297
    move-object/from16 v18, v20

    .line 298
    .line 299
    :goto_6
    move/from16 v16, v1

    .line 300
    .line 301
    goto :goto_7

    .line 302
    :cond_b
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;->getGetter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    move-object/from16 v18, v3

    .line 307
    .line 308
    goto :goto_6

    .line 309
    :goto_7
    invoke-direct/range {v9 .. v19}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 310
    .line 311
    .line 312
    move-object v1, v9

    .line 313
    :goto_8
    if-eqz v1, :cond_d

    .line 314
    .line 315
    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    .line 316
    .line 317
    iget-object v4, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->returnType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 318
    .line 319
    invoke-static {v6, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getSubstitutedInitialSignatureDescriptor(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl;->initialSignatureDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 324
    .line 325
    if-eqz v4, :cond_c

    .line 326
    .line 327
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 328
    .line 329
    invoke-virtual {v6, v4, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    goto :goto_9

    .line 334
    :cond_c
    move-object/from16 v3, v20

    .line 335
    .line 336
    :goto_9
    invoke-virtual {v1, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 337
    .line 338
    .line 339
    :cond_d
    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;

    .line 340
    .line 341
    if-nez v3, :cond_e

    .line 342
    .line 343
    move-object/from16 v4, v20

    .line 344
    .line 345
    goto :goto_c

    .line 346
    :cond_e
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;

    .line 347
    .line 348
    invoke-virtual {v3}, Lorg/wikipedia/settings/BasePreferenceLoader;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 349
    .line 350
    .line 351
    move-result-object v11

    .line 352
    iget-object v3, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->pageTitle:Ljava/lang/Object;

    .line 353
    .line 354
    move-object v12, v3

    .line 355
    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    .line 356
    .line 357
    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;

    .line 358
    .line 359
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    iget-object v4, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardFormattingView:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 366
    .line 367
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 368
    .line 369
    if-ne v4, v5, :cond_f

    .line 370
    .line 371
    iget-object v4, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;->delegate:Landroidx/appcompat/view/ActionMode;

    .line 372
    .line 373
    invoke-virtual {v4}, Landroidx/appcompat/view/ActionMode;->normalize()Landroidx/appcompat/view/ActionMode;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->toDescriptorVisibility(Landroidx/appcompat/view/ActionMode;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->isPrivate(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;)Z

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    if-eqz v4, :cond_f

    .line 386
    .line 387
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->INVISIBLE_FAKE:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 388
    .line 389
    :cond_f
    move-object v13, v3

    .line 390
    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;

    .line 391
    .line 392
    iget-boolean v14, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl;->isDefault:Z

    .line 393
    .line 394
    iget-boolean v15, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl;->isExternal:Z

    .line 395
    .line 396
    iget-boolean v3, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl;->isInline:Z

    .line 397
    .line 398
    iget-object v4, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardFormattingView:Ljava/lang/Object;

    .line 399
    .line 400
    move-object/from16 v17, v4

    .line 401
    .line 402
    check-cast v17, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 403
    .line 404
    iget-object v4, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardView:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    .line 407
    .line 408
    if-nez v4, :cond_10

    .line 409
    .line 410
    move-object/from16 v18, v20

    .line 411
    .line 412
    :goto_a
    move/from16 v16, v3

    .line 413
    .line 414
    goto :goto_b

    .line 415
    :cond_10
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;->getSetter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;

    .line 416
    .line 417
    .line 418
    move-result-object v4

    .line 419
    move-object/from16 v18, v4

    .line 420
    .line 421
    goto :goto_a

    .line 422
    :goto_b
    invoke-direct/range {v9 .. v19}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    .line 423
    .line 424
    .line 425
    move-object v4, v9

    .line 426
    :goto_c
    if-eqz v4, :cond_14

    .line 427
    .line 428
    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;

    .line 429
    .line 430
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;->getValueParameters()Ljava/util/List;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    const/4 v8, 0x0

    .line 435
    const/4 v9, 0x0

    .line 436
    const/4 v7, 0x0

    .line 437
    invoke-static/range {v4 .. v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getSubstitutedValueParameters(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;ZZ[Z)Ljava/util/ArrayList;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    const/4 v5, 0x0

    .line 442
    if-nez v3, :cond_11

    .line 443
    .line 444
    iget-object v3, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->activity:Ljava/lang/Object;

    .line 445
    .line 446
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 447
    .line 448
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getNothingType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    iget-object v7, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;

    .line 457
    .line 458
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;->getValueParameters()Ljava/util/List;

    .line 459
    .line 460
    .line 461
    move-result-object v7

    .line 462
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v7

    .line 466
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 467
    .line 468
    invoke-virtual {v7}, Lorg/wikipedia/settings/BasePreferenceLoader;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 469
    .line 470
    .line 471
    move-result-object v7

    .line 472
    invoke-static {v4, v3, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;->createSetterParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    :cond_11
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 481
    .line 482
    .line 483
    move-result v7

    .line 484
    const/4 v8, 0x1

    .line 485
    if-ne v7, v8, :cond_13

    .line 486
    .line 487
    iget-object v7, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;

    .line 488
    .line 489
    invoke-static {v6, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getSubstitutedInitialSignatureDescriptor(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 490
    .line 491
    .line 492
    move-result-object v7

    .line 493
    iput-object v7, v4, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl;->initialSignatureDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 494
    .line 495
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 500
    .line 501
    if-eqz v3, :cond_12

    .line 502
    .line 503
    iput-object v3, v4, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;->parameter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    .line 504
    .line 505
    goto :goto_d

    .line 506
    :cond_12
    const/4 v0, 0x6

    .line 507
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;->$$$reportNull$$$0(I)V

    .line 508
    .line 509
    .line 510
    throw v20

    .line 511
    :cond_13
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m()V

    .line 512
    .line 513
    .line 514
    return-object v20

    .line 515
    :cond_14
    :goto_d
    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->backingField:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;

    .line 516
    .line 517
    if-nez v3, :cond_15

    .line 518
    .line 519
    move-object/from16 v5, v20

    .line 520
    .line 521
    goto :goto_e

    .line 522
    :cond_15
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;

    .line 523
    .line 524
    invoke-virtual {v3}, Lorg/wikipedia/settings/BasePreferenceLoader;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 525
    .line 526
    .line 527
    move-result-object v3

    .line 528
    invoke-direct {v5, v3, v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;)V

    .line 529
    .line 530
    .line 531
    :goto_e
    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->delegateField:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;

    .line 532
    .line 533
    if-nez v3, :cond_16

    .line 534
    .line 535
    move-object/from16 v7, v20

    .line 536
    .line 537
    goto :goto_f

    .line 538
    :cond_16
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;

    .line 539
    .line 540
    invoke-virtual {v3}, Lorg/wikipedia/settings/BasePreferenceLoader;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    invoke-direct {v7, v3, v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;)V

    .line 545
    .line 546
    .line 547
    :goto_f
    invoke-virtual {v10, v1, v4, v5, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;)V

    .line 548
    .line 549
    .line 550
    iget-boolean v0, v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->isFromDiff:Z

    .line 551
    .line 552
    if-eqz v0, :cond_18

    .line 553
    .line 554
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    .line 555
    .line 556
    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;-><init>()V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getOverriddenDescriptors()Ljava/util/Collection;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 568
    .line 569
    .line 570
    move-result v3

    .line 571
    if-eqz v3, :cond_17

    .line 572
    .line 573
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v3

    .line 577
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    .line 578
    .line 579
    invoke-interface {v3, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    invoke-virtual {v0, v3}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->add(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    goto :goto_10

    .line 587
    :cond_17
    iput-object v0, v10, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->overriddenProperties:Ljava/util/Collection;

    .line 588
    .line 589
    :cond_18
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isConst()Z

    .line 590
    .line 591
    .line 592
    move-result v0

    .line 593
    if-eqz v0, :cond_19

    .line 594
    .line 595
    iget-object v0, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->compileTimeInitializerFactory:Lkotlin/jvm/functions/Function0;

    .line 596
    .line 597
    if-eqz v0, :cond_19

    .line 598
    .line 599
    iget-object v1, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->compileTimeInitializer:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;

    .line 600
    .line 601
    invoke-virtual {v10, v1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setCompileTimeInitializer(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;Lkotlin/jvm/functions/Function0;)V

    .line 602
    .line 603
    .line 604
    :cond_19
    return-object v10
.end method

.method public hideAllSyntaxModals()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardHeadingsView:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardFormattingView:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;->wikiTextKeyboardView:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lorg/wikipedia/edit/WikiTextKeyboardView;

    .line 20
    .line 21
    iget-object p0, p0, Lorg/wikipedia/edit/WikiTextKeyboardView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 22
    .line 23
    iget-object v0, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Lorg/wikipedia/views/WikitextKeyboardButtonView;->setExpanded(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lorg/wikipedia/views/WikitextKeyboardButtonView;

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lorg/wikipedia/views/WikitextKeyboardButtonView;->setExpanded(Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.class public abstract Lorg/wikipedia/views/FindInPageActionProvider;
.super Landroid/view/ActionProvider;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public _binding:Lokhttp3/Request$Builder;

.field public final context:Landroid/content/Context;

.field public enableLastOccurrenceSearchFlag:Z

.field public isFirstOccurrence:Z

.field public isLastOccurrence:Z

.field public lastOccurrenceSearchFlag:Z

.field public listener:Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;

.field public final searchQueryListener:Lorg/wikipedia/media/AvPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->context:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Lorg/wikipedia/media/AvPlayer;

    .line 7
    .line 8
    const/16 v0, 0x1a

    .line 9
    .line 10
    invoke-direct {p1, v0, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->searchQueryListener:Lorg/wikipedia/media/AvPlayer;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onCreateActionView()Landroid/view/View;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f0c02e4

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    move-object v6, v1

    .line 17
    check-cast v6, Landroid/widget/LinearLayout;

    .line 18
    .line 19
    const v2, 0x7f090250

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    move-object v7, v5

    .line 27
    check-cast v7, Lorg/wikipedia/views/CabSearchView;

    .line 28
    .line 29
    if-eqz v7, :cond_1

    .line 30
    .line 31
    const v2, 0x7f090251

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    move-object v8, v5

    .line 39
    check-cast v8, Landroid/widget/TextView;

    .line 40
    .line 41
    if-eqz v8, :cond_1

    .line 42
    .line 43
    const v2, 0x7f090252

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    move-object v9, v5

    .line 51
    check-cast v9, Landroid/widget/ImageView;

    .line 52
    .line 53
    if-eqz v9, :cond_1

    .line 54
    .line 55
    const v2, 0x7f090253

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    move-object v10, v5

    .line 63
    check-cast v10, Landroid/widget/ImageView;

    .line 64
    .line 65
    if-eqz v10, :cond_1

    .line 66
    .line 67
    new-instance v5, Lokhttp3/Request$Builder;

    .line 68
    .line 69
    invoke-direct/range {v5 .. v10}, Lokhttp3/Request$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iput-object v5, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 73
    .line 74
    invoke-virtual {p0, v4}, Lorg/wikipedia/views/FindInPageActionProvider;->setFindInPageChevronsEnabled(Z)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    iget-object v1, v1, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v1, Lorg/wikipedia/views/CabSearchView;

    .line 85
    .line 86
    const v2, 0x7f1203f5

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    iget-object v0, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 104
    .line 105
    const/4 v1, 0x1

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iget-object v0, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 117
    .line 118
    iget-object v2, p0, Lorg/wikipedia/views/FindInPageActionProvider;->searchQueryListener:Lorg/wikipedia/media/AvPlayer;

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-object v0, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 131
    .line 132
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    iget-object v0, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 143
    .line 144
    const v2, 0x7fffffff

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    iget-object v0, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setInputType(I)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    iget-object v0, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 170
    .line 171
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    iget-object v0, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 182
    .line 183
    const v2, 0x7f0905d0

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    iget-object v0, v0, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v0, Lorg/wikipedia/views/CabSearchView;

    .line 201
    .line 202
    const v2, 0x7f0905bf

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    check-cast v0, Landroid/widget/ImageView;

    .line 210
    .line 211
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    iget-object v0, v0, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v0, Landroid/widget/ImageView;

    .line 225
    .line 226
    new-instance v2, Lorg/wikipedia/views/FindInPageActionProvider$$ExternalSyntheticLambda2;

    .line 227
    .line 228
    invoke-direct {v2, p0, v4}, Lorg/wikipedia/views/FindInPageActionProvider$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/views/FindInPageActionProvider;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .line 233
    .line 234
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    iget-object v0, v0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v0, Landroid/widget/ImageView;

    .line 242
    .line 243
    new-instance v2, Lorg/wikipedia/views/FindInPageActionProvider$$ExternalSyntheticLambda2;

    .line 244
    .line 245
    invoke-direct {v2, p0, v1}, Lorg/wikipedia/views/FindInPageActionProvider$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/views/FindInPageActionProvider;I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    .line 250
    .line 251
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    iget-object v0, v0, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v0, Landroid/widget/ImageView;

    .line 259
    .line 260
    new-instance v2, Lorg/wikipedia/views/FindInPageActionProvider$$ExternalSyntheticLambda0;

    .line 261
    .line 262
    invoke-direct {v2, p0, v4}, Lorg/wikipedia/views/FindInPageActionProvider$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/views/FindInPageActionProvider;I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    iget-object v0, v0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v0, Landroid/widget/ImageView;

    .line 276
    .line 277
    new-instance v2, Lorg/wikipedia/views/FindInPageActionProvider$$ExternalSyntheticLambda0;

    .line 278
    .line 279
    invoke-direct {v2, p0, v1}, Lorg/wikipedia/views/FindInPageActionProvider$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/views/FindInPageActionProvider;I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 283
    .line 284
    .line 285
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    iget-object v0, v0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v0, Landroid/widget/ImageView;

    .line 293
    .line 294
    iget-object v2, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 295
    .line 296
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    iget-object v2, v2, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v2, Landroid/widget/ImageView;

    .line 302
    .line 303
    const/4 v3, 0x2

    .line 304
    new-array v5, v3, [Landroid/view/View;

    .line 305
    .line 306
    aput-object v0, v5, v4

    .line 307
    .line 308
    aput-object v2, v5, v1

    .line 309
    .line 310
    :goto_0
    if-ge v4, v3, :cond_0

    .line 311
    .line 312
    aget-object v0, v5, v4

    .line 313
    .line 314
    new-instance v1, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda0;

    .line 315
    .line 316
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 320
    .line 321
    .line 322
    add-int/lit8 v4, v4, 0x1

    .line 323
    .line 324
    goto :goto_0

    .line 325
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 326
    .line 327
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    iget-object p0, p0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast p0, Landroid/widget/LinearLayout;

    .line 333
    .line 334
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    return-object p0

    .line 338
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    const-string v0, "Missing required view with ID: "

    .line 347
    .line 348
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    return-object v3
.end method

.method public final overridesItemVisibility()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final setFindInPageChevronsEnabled(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Landroid/widget/ImageView;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Landroid/widget/ImageView;

    .line 33
    .line 34
    const/high16 v1, 0x3f000000    # 0.5f

    .line 35
    .line 36
    const/high16 v2, 0x3f800000    # 1.0f

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    move v3, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v3, v1

    .line 43
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Landroid/widget/ImageView;

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    move v1, v2

    .line 58
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final setMatchesResults(II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lorg/wikipedia/views/FindInPageActionProvider;->context:Landroid/content/Context;

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    if-lez p2, :cond_4

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroid/widget/TextView;

    .line 16
    .line 17
    add-int/lit8 v5, p1, 0x1

    .line 18
    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    const/4 v8, 0x2

    .line 28
    new-array v8, v8, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object v6, v8, v4

    .line 31
    .line 32
    aput-object v7, v8, v3

    .line 33
    .line 34
    const v6, 0x7f120243

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Landroid/widget/TextView;

    .line 52
    .line 53
    new-instance v6, Landroid/util/TypedValue;

    .line 54
    .line 55
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const v7, 0x7f04054f

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v7, v6, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    move-object v1, v6

    .line 72
    :cond_0
    if-eqz v1, :cond_3

    .line 73
    .line 74
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v3}, Lorg/wikipedia/views/FindInPageActionProvider;->setFindInPageChevronsEnabled(Z)V

    .line 80
    .line 81
    .line 82
    if-nez p1, :cond_1

    .line 83
    .line 84
    move p1, v3

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    move p1, v4

    .line 87
    :goto_0
    iput-boolean p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->isFirstOccurrence:Z

    .line 88
    .line 89
    if-ne v5, p2, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move v3, v4

    .line 93
    :goto_1
    iput-boolean v3, p0, Lorg/wikipedia/views/FindInPageActionProvider;->isLastOccurrence:Z

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    const-string p0, "Attribute not found; ID=2130969935"

    .line 97
    .line 98
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    iget-object p1, v0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p1, Landroid/widget/TextView;

    .line 108
    .line 109
    const-string p2, "0/0"

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    iget-object p1, p1, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast p1, Landroid/widget/TextView;

    .line 122
    .line 123
    new-instance p2, Landroid/util/TypedValue;

    .line 124
    .line 125
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const v2, 0x7f040128

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2, p2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    move-object v1, p2

    .line 142
    :cond_5
    if-eqz v1, :cond_7

    .line 143
    .line 144
    iget p2, v1, Landroid/util/TypedValue;->data:I

    .line 145
    .line 146
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v4}, Lorg/wikipedia/views/FindInPageActionProvider;->setFindInPageChevronsEnabled(Z)V

    .line 150
    .line 151
    .line 152
    iput-boolean v4, p0, Lorg/wikipedia/views/FindInPageActionProvider;->isFirstOccurrence:Z

    .line 153
    .line 154
    iput-boolean v4, p0, Lorg/wikipedia/views/FindInPageActionProvider;->isLastOccurrence:Z

    .line 155
    .line 156
    :goto_2
    iget-boolean p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->enableLastOccurrenceSearchFlag:Z

    .line 157
    .line 158
    if-eqz p1, :cond_6

    .line 159
    .line 160
    iget-boolean p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->lastOccurrenceSearchFlag:Z

    .line 161
    .line 162
    if-eqz p1, :cond_6

    .line 163
    .line 164
    iput-boolean v4, p0, Lorg/wikipedia/views/FindInPageActionProvider;->lastOccurrenceSearchFlag:Z

    .line 165
    .line 166
    iget-object p1, p0, Lorg/wikipedia/views/FindInPageActionProvider;->listener:Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;

    .line 167
    .line 168
    if-eqz p1, :cond_6

    .line 169
    .line 170
    invoke-interface {p1}, Lorg/wikipedia/views/FindInPageActionProvider$FindInPageListener;->onFindPrevClicked()V

    .line 171
    .line 172
    .line 173
    :cond_6
    iget-object p0, p0, Lorg/wikipedia/views/FindInPageActionProvider;->_binding:Lokhttp3/Request$Builder;

    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast p0, Landroid/widget/TextView;

    .line 181
    .line 182
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_7
    const-string p0, "Attribute not found; ID=2130968872"

    .line 187
    .line 188
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-void
.end method

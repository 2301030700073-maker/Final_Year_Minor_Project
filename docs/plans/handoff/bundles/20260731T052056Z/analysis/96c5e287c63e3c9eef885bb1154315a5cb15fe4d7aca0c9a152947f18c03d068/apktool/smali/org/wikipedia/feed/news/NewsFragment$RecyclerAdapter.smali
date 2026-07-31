.class public final Lorg/wikipedia/feed/news/NewsFragment$RecyclerAdapter;
.super Landroidx/paging/LoadStateAdapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final callback:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lorg/wikipedia/feed/view/ListItemView$Callback;I)V
    .locals 0

    .line 13
    iput p3, p0, Lorg/wikipedia/feed/news/NewsFragment$RecyclerAdapter;->$r8$classId:I

    invoke-direct {p0, p1}, Landroidx/paging/LoadStateAdapter;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lorg/wikipedia/feed/news/NewsFragment$RecyclerAdapter;->callback:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lorg/wikipedia/feed/news/NewsFragment$RecyclerAdapter;->$r8$classId:I

    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/feed/news/NewsFragment$RecyclerAdapter;->callback:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0, p2}, Landroidx/paging/LoadStateAdapter;-><init>(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/news/NewsFragment$RecyclerAdapter;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/feed/news/NewsFragment$RecyclerAdapter;->callback:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/paging/LoadStateAdapter;->loadState:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;

    .line 25
    .line 26
    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;

    .line 27
    .line 28
    iget-object p2, v1, Lorg/wikipedia/suggestededits/SuggestedEditsTasksFragment;->callback:Lorg/wikipedia/media/AvPlayer;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v0, p1, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView;->binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 43
    .line 44
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const/4 v3, 0x2

    .line 55
    if-lt v2, v3, :cond_0

    .line 56
    .line 57
    const v2, 0x7f040520

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const v2, 0x7f0404fb

    .line 62
    .line 63
    .line 64
    :goto_0
    new-instance v4, Landroid/util/TypedValue;

    .line 65
    .line 66
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/4 v5, 0x1

    .line 74
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/4 v4, 0x0

    .line 82
    :goto_1
    if-eqz v4, :cond_6

    .line 83
    .line 84
    iget v1, v4, Landroid/util/TypedValue;->data:I

    .line 85
    .line 86
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 89
    .line 90
    iget-object v4, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 93
    .line 94
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v2, v6}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v1, Landroid/widget/TextView;

    .line 107
    .line 108
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->title:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v1, Landroid/widget/TextView;

    .line 116
    .line 117
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->description:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->primaryAction:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    iget v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->primaryActionIcon:I

    .line 128
    .line 129
    if-eqz v1, :cond_2

    .line 130
    .line 131
    invoke-virtual {v4, v1}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 132
    .line 133
    .line 134
    :cond_2
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->primaryAction:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->title:Ljava/lang/String;

    .line 137
    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, " "

    .line 147
    .line 148
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    invoke-virtual {v4, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v6, Landroid/widget/ImageView;

    .line 164
    .line 165
    iget v7, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->imageDrawable:I

    .line 166
    .line 167
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    .line 169
    .line 170
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v0, Landroid/widget/TextView;

    .line 173
    .line 174
    iget-boolean v6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->new:Z

    .line 175
    .line 176
    const/4 v7, 0x0

    .line 177
    const/16 v8, 0x8

    .line 178
    .line 179
    if-eqz v6, :cond_3

    .line 180
    .line 181
    move v6, v7

    .line 182
    goto :goto_2

    .line 183
    :cond_3
    move v6, v8

    .line 184
    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$$ExternalSyntheticLambda0;

    .line 188
    .line 189
    invoke-direct {v0, p0, p2, v7}, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTask;Lorg/wikipedia/media/AvPlayer;I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$$ExternalSyntheticLambda0;

    .line 196
    .line 197
    invoke-direct {p1, p0, p2, v5}, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTask;Lorg/wikipedia/media/AvPlayer;I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$$ExternalSyntheticLambda0;

    .line 204
    .line 205
    invoke-direct {p1, p0, p2, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsTask;Lorg/wikipedia/media/AvPlayer;I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->secondaryAction:Ljava/lang/String;

    .line 212
    .line 213
    if-eqz p1, :cond_4

    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-nez p1, :cond_5

    .line 220
    .line 221
    :cond_4
    move v7, v8

    .line 222
    :cond_5
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->secondaryAction:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->secondaryAction:Ljava/lang/String;

    .line 231
    .line 232
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsTask;->title:Ljava/lang/String;

    .line 233
    .line 234
    new-instance p2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    invoke-virtual {v2, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_6
    const-string p0, "Attribute not found; ID="

    .line 257
    .line 258
    invoke-static {v2, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :goto_3
    return-void

    .line 266
    :pswitch_0
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    .line 267
    .line 268
    iget-object p0, p0, Landroidx/paging/LoadStateAdapter;->loadState:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast p0, Ljava/util/List;

    .line 271
    .line 272
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 277
    .line 278
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    check-cast p1, Lorg/wikipedia/feed/view/ListItemView;

    .line 283
    .line 284
    iput-object p0, p1, Lorg/wikipedia/feed/view/ListItemView;->title:Lorg/wikipedia/page/PageTitle;

    .line 285
    .line 286
    new-instance p2, Lorg/wikipedia/history/HistoryEntry;

    .line 287
    .line 288
    const/16 v0, 0x16

    .line 289
    .line 290
    invoke-direct {p2, v0, p0}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1, p2}, Lorg/wikipedia/feed/view/ListItemView;->setHistoryEntry(Lorg/wikipedia/history/HistoryEntry;)V

    .line 294
    .line 295
    .line 296
    check-cast v1, Lorg/wikipedia/media/AvPlayer;

    .line 297
    .line 298
    iput-object v1, p1, Lorg/wikipedia/feed/view/ListItemView;->callback:Lorg/wikipedia/feed/view/ListItemView$Callback;

    .line 299
    .line 300
    return-void

    .line 301
    :pswitch_1
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    .line 302
    .line 303
    iget-object p0, p0, Landroidx/paging/LoadStateAdapter;->loadState:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast p0, Ljava/util/List;

    .line 306
    .line 307
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 312
    .line 313
    invoke-virtual {p1}, Lorg/wikipedia/views/DefaultViewHolder;->getView()Landroid/view/View;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    check-cast p1, Lorg/wikipedia/feed/view/ListItemView;

    .line 318
    .line 319
    iput-object p0, p1, Lorg/wikipedia/feed/view/ListItemView;->title:Lorg/wikipedia/page/PageTitle;

    .line 320
    .line 321
    new-instance p2, Lorg/wikipedia/history/HistoryEntry;

    .line 322
    .line 323
    const/16 v0, 0x10

    .line 324
    .line 325
    invoke-direct {p2, v0, p0}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, p2}, Lorg/wikipedia/feed/view/ListItemView;->setHistoryEntry(Lorg/wikipedia/history/HistoryEntry;)V

    .line 329
    .line 330
    .line 331
    check-cast v1, Lorg/wikipedia/media/AvPlayer;

    .line 332
    .line 333
    iput-object v1, p1, Lorg/wikipedia/feed/view/ListItemView;->callback:Lorg/wikipedia/feed/view/ListItemView$Callback;

    .line 334
    .line 335
    return-void

    .line 336
    nop

    .line 337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    iget p0, p0, Lorg/wikipedia/feed/news/NewsFragment$RecyclerAdapter;->$r8$classId:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    new-instance p0, Lorg/wikipedia/views/DefaultViewHolder;

    .line 8
    .line 9
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-direct {p2, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsTaskView;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_0
    new-instance p0, Lorg/wikipedia/views/DefaultViewHolder;

    .line 26
    .line 27
    new-instance v0, Lorg/wikipedia/feed/view/ListItemView;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/view/ListItemView;-><init>(Landroid/content/Context;I)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_1
    new-instance p0, Lorg/wikipedia/views/DefaultViewHolder;

    .line 44
    .line 45
    new-instance v0, Lorg/wikipedia/feed/view/ListItemView;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, p1, p2}, Lorg/wikipedia/feed/view/ListItemView;-><init>(Landroid/content/Context;I)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

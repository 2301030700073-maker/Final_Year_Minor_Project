.class public final Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;
.super Landroidx/paging/LoadStateAdapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final retry:Lkotlin/jvm/functions/Function0;

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/paging/LoadStateAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;->retry:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/paging/LoadState;)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0x7f090513

    .line 5
    .line 6
    .line 7
    const v3, 0x7f09021f

    .line 8
    .line 9
    .line 10
    const/16 v4, 0x8

    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;->retry:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast p1, Lorg/wikipedia/usercontrib/UserContribListActivity$LoadingViewHolder;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    instance-of v2, p2, Landroidx/paging/LoadState$Loading;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    move v2, v5

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v2, v4

    .line 45
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    instance-of p1, p2, Landroidx/paging/LoadState$Error;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    move v4, v5

    .line 56
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    new-instance v2, Lorg/wikipedia/categories/CategoryActivity$LoadingViewHolder$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    const/4 v3, 0x4

    .line 62
    invoke-direct {v2, v3, p0}, Lorg/wikipedia/categories/CategoryActivity$LoadingViewHolder$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    check-cast p2, Landroidx/paging/LoadState$Error;

    .line 71
    .line 72
    iget-object p0, p2, Landroidx/paging/LoadState$Error;->error:Ljava/lang/Exception;

    .line 73
    .line 74
    invoke-virtual {v0, p0, v1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void

    .line 78
    :pswitch_0
    check-cast p1, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$LoadingViewHolder;

    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 84
    .line 85
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    instance-of v2, p2, Landroidx/paging/LoadState$Loading;

    .line 99
    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    move v2, v5

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    move v2, v4

    .line 105
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    instance-of v0, p2, Landroidx/paging/LoadState$Error;

    .line 112
    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    move v4, v5

    .line 116
    :cond_4
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    new-instance v2, Lorg/wikipedia/categories/CategoryActivity$LoadingViewHolder$$ExternalSyntheticLambda0;

    .line 120
    .line 121
    const/4 v3, 0x3

    .line 122
    invoke-direct {v2, v3, p0}, Lorg/wikipedia/categories/CategoryActivity$LoadingViewHolder$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    check-cast p2, Landroidx/paging/LoadState$Error;

    .line 131
    .line 132
    iget-object p0, p2, Landroidx/paging/LoadState$Error;->error:Ljava/lang/Exception;

    .line 133
    .line 134
    iget-object p1, p1, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$LoadingViewHolder;->this$0:Lorg/wikipedia/talk/ArchivedTalkPagesActivity;

    .line 135
    .line 136
    sget p2, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->$r8$clinit:I

    .line 137
    .line 138
    iget-object p1, p1, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 139
    .line 140
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel;

    .line 145
    .line 146
    iget-object p1, p1, Lorg/wikipedia/talk/ArchivedTalkPagesViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 147
    .line 148
    invoke-virtual {v1, p0, p1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 149
    .line 150
    .line 151
    :cond_5
    return-void

    .line 152
    :pswitch_1
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$LoadingViewHolder;

    .line 153
    .line 154
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 158
    .line 159
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 164
    .line 165
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    instance-of v2, p2, Landroidx/paging/LoadState$Loading;

    .line 173
    .line 174
    if-eqz v2, :cond_6

    .line 175
    .line 176
    move v2, v5

    .line 177
    goto :goto_2

    .line 178
    :cond_6
    move v2, v4

    .line 179
    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    instance-of p1, p2, Landroidx/paging/LoadState$Error;

    .line 186
    .line 187
    if-eqz p1, :cond_7

    .line 188
    .line 189
    move v4, v5

    .line 190
    :cond_7
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    new-instance v2, Lorg/wikipedia/categories/CategoryActivity$LoadingViewHolder$$ExternalSyntheticLambda0;

    .line 194
    .line 195
    const/4 v3, 0x2

    .line 196
    invoke-direct {v2, v3, p0}, Lorg/wikipedia/categories/CategoryActivity$LoadingViewHolder$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v2}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    .line 201
    .line 202
    if-eqz p1, :cond_8

    .line 203
    .line 204
    check-cast p2, Landroidx/paging/LoadState$Error;

    .line 205
    .line 206
    iget-object p0, p2, Landroidx/paging/LoadState$Error;->error:Ljava/lang/Exception;

    .line 207
    .line 208
    invoke-virtual {v0, p0, v1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 209
    .line 210
    .line 211
    :cond_8
    return-void

    .line 212
    :pswitch_2
    check-cast p1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$LoadingViewHolder;

    .line 213
    .line 214
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 218
    .line 219
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 224
    .line 225
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    instance-of v2, p2, Landroidx/paging/LoadState$Loading;

    .line 233
    .line 234
    if-eqz v2, :cond_9

    .line 235
    .line 236
    move v2, v5

    .line 237
    goto :goto_3

    .line 238
    :cond_9
    move v2, v4

    .line 239
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    instance-of v0, p2, Landroidx/paging/LoadState$Error;

    .line 246
    .line 247
    if-eqz v0, :cond_a

    .line 248
    .line 249
    move v4, v5

    .line 250
    :cond_a
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 251
    .line 252
    .line 253
    new-instance v2, Lorg/wikipedia/categories/CategoryActivity$LoadingViewHolder$$ExternalSyntheticLambda0;

    .line 254
    .line 255
    const/4 v3, 0x1

    .line 256
    invoke-direct {v2, v3, p0}, Lorg/wikipedia/categories/CategoryActivity$LoadingViewHolder$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v2}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    .line 261
    .line 262
    if-eqz v0, :cond_b

    .line 263
    .line 264
    check-cast p2, Landroidx/paging/LoadState$Error;

    .line 265
    .line 266
    iget-object p0, p2, Landroidx/paging/LoadState$Error;->error:Ljava/lang/Exception;

    .line 267
    .line 268
    iget-object p1, p1, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$LoadingViewHolder;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 269
    .line 270
    sget p2, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->$r8$clinit:I

    .line 271
    .line 272
    invoke-virtual {p1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    iget-object p1, p1, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 277
    .line 278
    invoke-virtual {v1, p0, p1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 279
    .line 280
    .line 281
    :cond_b
    return-void

    .line 282
    :pswitch_3
    check-cast p1, Lorg/wikipedia/categories/CategoryActivity$LoadingViewHolder;

    .line 283
    .line 284
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 288
    .line 289
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 294
    .line 295
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    instance-of v2, p2, Landroidx/paging/LoadState$Loading;

    .line 303
    .line 304
    if-eqz v2, :cond_c

    .line 305
    .line 306
    move v2, v5

    .line 307
    goto :goto_4

    .line 308
    :cond_c
    move v2, v4

    .line 309
    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    instance-of v0, p2, Landroidx/paging/LoadState$Error;

    .line 316
    .line 317
    if-eqz v0, :cond_d

    .line 318
    .line 319
    move v4, v5

    .line 320
    :cond_d
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 321
    .line 322
    .line 323
    new-instance v2, Lorg/wikipedia/categories/CategoryActivity$LoadingViewHolder$$ExternalSyntheticLambda0;

    .line 324
    .line 325
    invoke-direct {v2, v5, p0}, Lorg/wikipedia/categories/CategoryActivity$LoadingViewHolder$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1, v2}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    .line 330
    .line 331
    if-eqz v0, :cond_e

    .line 332
    .line 333
    check-cast p2, Landroidx/paging/LoadState$Error;

    .line 334
    .line 335
    iget-object p0, p2, Landroidx/paging/LoadState$Error;->error:Ljava/lang/Exception;

    .line 336
    .line 337
    iget-object p1, p1, Lorg/wikipedia/categories/CategoryActivity$LoadingViewHolder;->this$0:Lorg/wikipedia/categories/CategoryActivity;

    .line 338
    .line 339
    sget p2, Lorg/wikipedia/categories/CategoryActivity;->$r8$clinit:I

    .line 340
    .line 341
    invoke-virtual {p1}, Lorg/wikipedia/categories/CategoryActivity;->getViewModel()Lorg/wikipedia/categories/CategoryActivityViewModel;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    iget-object p1, p1, Lorg/wikipedia/categories/CategoryActivityViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 346
    .line 347
    invoke-virtual {v1, p0, p1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 348
    .line 349
    .line 350
    :cond_e
    return-void

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;Landroidx/paging/LoadState;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0x7f0c0308

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/categories/CategoryActivity$LoadingItemAdapter;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance p2, Lorg/wikipedia/usercontrib/UserContribListActivity$LoadingViewHolder;

    .line 16
    .line 17
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    return-object p2

    .line 34
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance p2, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$LoadingViewHolder;

    .line 38
    .line 39
    check-cast p0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-direct {p2, p0, p1}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$LoadingViewHolder;-><init>(Lorg/wikipedia/talk/ArchivedTalkPagesActivity;Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    return-object p2

    .line 56
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment$LoadingViewHolder;

    .line 60
    .line 61
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    return-object p2

    .line 78
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance p2, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$LoadingViewHolder;

    .line 82
    .line 83
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-direct {p2, p0, p1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$LoadingViewHolder;-><init>(Lorg/wikipedia/page/edithistory/EditHistoryListActivity;Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    return-object p2

    .line 100
    :pswitch_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    new-instance p2, Lorg/wikipedia/categories/CategoryActivity$LoadingViewHolder;

    .line 104
    .line 105
    check-cast p0, Lorg/wikipedia/categories/CategoryActivity;

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-direct {p2, p0, p1}, Lorg/wikipedia/categories/CategoryActivity$LoadingViewHolder;-><init>(Lorg/wikipedia/categories/CategoryActivity;Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    return-object p2

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Landroidx/recyclerview/widget/FastScroller$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/recyclerview/widget/FastScroller$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 7

    .line 1
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    const-string v0, "binding"

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller$2;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    packed-switch p2, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    iget-object p0, p0, Lorg/wikipedia/usercontrib/UserContribListActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-le p0, p1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v1, v2

    .line 45
    :goto_0
    invoke-virtual {p2, v1}, Lcoil3/util/ContextsKt;->setDisplayShowTitleEnabled(Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p3

    .line 53
    :cond_2
    :goto_1
    return-void

    .line 54
    :pswitch_0
    check-cast p0, Lorg/wikipedia/talk/TalkTopicActivity;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    if-eqz p2, :cond_5

    .line 61
    .line 62
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->binding:Lokhttp3/Request$Builder;

    .line 63
    .line 64
    if-eqz p0, :cond_4

    .line 65
    .line 66
    iget-object p0, p0, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    div-int/lit8 p1, p1, 0x2

    .line 83
    .line 84
    if-le p0, p1, :cond_3

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    move v1, v2

    .line 88
    :goto_2
    invoke-virtual {p2, v1}, Lcoil3/util/ContextsKt;->setDisplayShowTitleEnabled(Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p3

    .line 96
    :cond_5
    :goto_3
    return-void

    .line 97
    :pswitch_1
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lorg/wikipedia/main/MainActivity;

    .line 104
    .line 105
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-eqz p0, :cond_6

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_6
    move v1, v2

    .line 122
    :goto_4
    invoke-virtual {p1, v1}, Lorg/wikipedia/main/MainActivity;->updateToolbarElevation(Z)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_2
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    if-eqz p2, :cond_9

    .line 133
    .line 134
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 135
    .line 136
    if-eqz p0, :cond_8

    .line 137
    .line 138
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 141
    .line 142
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-le p0, p1, :cond_7

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_7
    move v1, v2

    .line 158
    :goto_5
    invoke-virtual {p2, v1}, Lcoil3/util/ContextsKt;->setDisplayShowTitleEnabled(Z)V

    .line 159
    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p3

    .line 166
    :cond_9
    :goto_6
    return-void

    .line 167
    :pswitch_3
    check-cast p0, Lorg/wikipedia/history/HistoryFragment;

    .line 168
    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Lorg/wikipedia/main/MainActivity;

    .line 174
    .line 175
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 176
    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    iget-object p0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 183
    .line 184
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    if-eqz p0, :cond_a

    .line 189
    .line 190
    goto :goto_7

    .line 191
    :cond_a
    move v1, v2

    .line 192
    :goto_7
    invoke-virtual {p1, v1}, Lorg/wikipedia/main/MainActivity;->updateToolbarElevation(Z)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :pswitch_4
    check-cast p0, Landroidx/recyclerview/widget/FastScroller;

    .line 197
    .line 198
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    iget p3, p0, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    .line 207
    .line 208
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 209
    .line 210
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 215
    .line 216
    sub-int v4, v0, v3

    .line 217
    .line 218
    if-lez v4, :cond_b

    .line 219
    .line 220
    if-lt v3, p3, :cond_b

    .line 221
    .line 222
    move v4, v1

    .line 223
    goto :goto_8

    .line 224
    :cond_b
    move v4, v2

    .line 225
    :goto_8
    iput-boolean v4, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 226
    .line 227
    iget-object v4, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 228
    .line 229
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    iget v5, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 234
    .line 235
    sub-int v6, v4, v5

    .line 236
    .line 237
    if-lez v6, :cond_c

    .line 238
    .line 239
    if-lt v5, p3, :cond_c

    .line 240
    .line 241
    move p3, v1

    .line 242
    goto :goto_9

    .line 243
    :cond_c
    move p3, v2

    .line 244
    :goto_9
    iput-boolean p3, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 245
    .line 246
    iget-boolean v6, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 247
    .line 248
    if-nez v6, :cond_d

    .line 249
    .line 250
    if-nez p3, :cond_d

    .line 251
    .line 252
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 253
    .line 254
    if-eqz p1, :cond_11

    .line 255
    .line 256
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 257
    .line 258
    .line 259
    goto :goto_a

    .line 260
    :cond_d
    const/high16 p3, 0x40000000    # 2.0f

    .line 261
    .line 262
    if-eqz v6, :cond_e

    .line 263
    .line 264
    int-to-float p1, p1

    .line 265
    int-to-float v2, v3

    .line 266
    div-float v6, v2, p3

    .line 267
    .line 268
    add-float/2addr v6, p1

    .line 269
    mul-float/2addr v6, v2

    .line 270
    int-to-float p1, v0

    .line 271
    div-float/2addr v6, p1

    .line 272
    float-to-int p1, v6

    .line 273
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    .line 274
    .line 275
    mul-int p1, v3, v3

    .line 276
    .line 277
    div-int/2addr p1, v0

    .line 278
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    .line 283
    .line 284
    :cond_e
    iget-boolean p1, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 285
    .line 286
    if-eqz p1, :cond_f

    .line 287
    .line 288
    int-to-float p1, p2

    .line 289
    int-to-float p2, v5

    .line 290
    div-float p3, p2, p3

    .line 291
    .line 292
    add-float/2addr p3, p1

    .line 293
    mul-float/2addr p3, p2

    .line 294
    int-to-float p1, v4

    .line 295
    div-float/2addr p3, p1

    .line 296
    float-to-int p1, p3

    .line 297
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    .line 298
    .line 299
    mul-int p1, v5, v5

    .line 300
    .line 301
    div-int/2addr p1, v4

    .line 302
    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    .line 307
    .line 308
    :cond_f
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 309
    .line 310
    if-eqz p1, :cond_10

    .line 311
    .line 312
    if-ne p1, v1, :cond_11

    .line 313
    .line 314
    :cond_10
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 315
    .line 316
    .line 317
    :cond_11
    :goto_a
    return-void

    .line 318
    nop

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

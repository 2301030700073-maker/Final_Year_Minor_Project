.class public final synthetic Lorg/wikipedia/views/ReadingListsOverflowView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lorg/wikipedia/views/ReadingListsOverflowView;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lorg/wikipedia/views/ReadingListsOverflowView;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/views/ReadingListsOverflowView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/views/ReadingListsOverflowView$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/views/ReadingListsOverflowView$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/views/ReadingListsOverflowView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/views/ReadingListsOverflowView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lorg/wikipedia/views/ReadingListsOverflowView$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/views/ReadingListsOverflowView;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/views/ReadingListsOverflowView$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Lorg/wikipedia/views/ReadingListsOverflowView;->dismissPopupWindowHost()V

    .line 24
    .line 25
    .line 26
    iget-object p0, v3, Lorg/wikipedia/views/ReadingListsOverflowView;->callback:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

    .line 29
    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 33
    .line 34
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 72
    .line 73
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setReadingListSyncEnabled(Z)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lokio/Path$Companion;->manualSyncWithForce()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Lokhttp3/Cache$Companion;->promptLogInToSyncDialog(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_1
    return-void

    .line 91
    :pswitch_0
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {p0, p1}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Lorg/wikipedia/views/ReadingListsOverflowView;->dismissPopupWindowHost()V

    .line 103
    .line 104
    .line 105
    iget-object p0, v3, Lorg/wikipedia/views/ReadingListsOverflowView;->callback:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

    .line 108
    .line 109
    if-eqz p0, :cond_3

    .line 110
    .line 111
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 112
    .line 113
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment;->beginMultiSelect$2()V

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 119
    .line 120
    .line 121
    :cond_3
    return-void

    .line 122
    :pswitch_1
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-static {p0, p1}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Lorg/wikipedia/views/ReadingListsOverflowView;->dismissPopupWindowHost()V

    .line 134
    .line 135
    .line 136
    iget-object p0, v3, Lorg/wikipedia/views/ReadingListsOverflowView;->callback:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

    .line 139
    .line 140
    if-eqz p0, :cond_4

    .line 141
    .line 142
    new-instance p1, Landroid/content/Intent;

    .line 143
    .line 144
    const-string v0, "android.intent.action.GET_CONTENT"

    .line 145
    .line 146
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v0, "application/json"

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 155
    .line 156
    const v0, 0x7f1207ba

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->filePickerLauncher:Landroidx/fragment/app/Fragment$10;

    .line 171
    .line 172
    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 174
    .line 175
    .line 176
    :cond_4
    return-void

    .line 177
    :pswitch_2
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-static {p0, p1}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Landroid/view/View;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Lorg/wikipedia/views/ReadingListsOverflowView;->dismissPopupWindowHost()V

    .line 189
    .line 190
    .line 191
    iget-object p0, v3, Lorg/wikipedia/views/ReadingListsOverflowView;->callback:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

    .line 194
    .line 195
    if-eqz p0, :cond_8

    .line 196
    .line 197
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 198
    .line 199
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 200
    .line 201
    new-instance v0, Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_6

    .line 215
    .line 216
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    instance-of v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 221
    .line 222
    if-eqz v2, :cond_5

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    .line 229
    .line 230
    const/16 v1, 0xa

    .line 231
    .line 232
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eqz v1, :cond_7

    .line 248
    .line 249
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 254
    .line 255
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    const v1, 0x7f120785

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    new-instance v2, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

    .line 278
    .line 279
    invoke-direct {v2, p0}, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    .line 280
    .line 281
    .line 282
    const-string p0, ""

    .line 283
    .line 284
    invoke-static {v0, v1, p0, p1, v2}, Lorg/wikipedia/util/TabUtil;->readingListTitleDialog(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;)Lorg/wikipedia/views/TextInputDialog;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    invoke-virtual {p0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 289
    .line 290
    .line 291
    :cond_8
    return-void

    .line 292
    :pswitch_3
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 293
    .line 294
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    invoke-static {p0, p1}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Landroid/view/View;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3}, Lorg/wikipedia/views/ReadingListsOverflowView;->dismissPopupWindowHost()V

    .line 304
    .line 305
    .line 306
    iget-object p0, v3, Lorg/wikipedia/views/ReadingListsOverflowView;->callback:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

    .line 309
    .line 310
    if-eqz p0, :cond_9

    .line 311
    .line 312
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 313
    .line 314
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 322
    .line 323
    const p1, 0x7f120658

    .line 324
    .line 325
    .line 326
    invoke-static {p1, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    new-instance v0, Lorg/wikipedia/readinglist/SortReadingListsDialog;

    .line 331
    .line 332
    invoke-direct {v0}, Lorg/wikipedia/readinglist/SortReadingListsDialog;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    new-instance v3, Lkotlin/Pair;

    .line 340
    .line 341
    const-string v4, "sortOption"

    .line 342
    .line 343
    invoke-direct {v3, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    new-array p1, v1, [Lkotlin/Pair;

    .line 347
    .line 348
    aput-object v3, p1, v2

    .line 349
    .line 350
    invoke-static {p1}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 355
    .line 356
    .line 357
    invoke-static {p0, v0}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 358
    .line 359
    .line 360
    :cond_9
    return-void

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

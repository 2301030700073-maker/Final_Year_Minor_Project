.class public final synthetic Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 11

    .line 1
    iget v0, p0, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object p0, p0, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 12
    .line 13
    iput-boolean v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->wasCaptionLongClicked:Z

    .line 14
    .line 15
    return v2

    .line 16
    :pswitch_0
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;

    .line 17
    .line 18
    sget-boolean p1, Lorg/wikipedia/views/ImageZoomHelper;->isZooming:Z

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onDidFinishLoadingStyleListenerList:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lorg/wikipedia/views/WikiCardView;

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x0

    .line 33
    const-wide/16 v3, 0x0

    .line 34
    .line 35
    const-wide/16 v5, 0x0

    .line 36
    .line 37
    const/4 v7, 0x3

    .line 38
    const/4 v8, 0x0

    .line 39
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    return v2

    .line 47
    :pswitch_1
    check-cast p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    .line 48
    .line 49
    iget-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->callback:Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView$Callback;

    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    iget p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->position:I

    .line 54
    .line 55
    check-cast p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    .line 56
    .line 57
    iget-object v0, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 58
    .line 59
    const-string v2, "adapter"

    .line 60
    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v4, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->multiSelectCallback:Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

    .line 68
    .line 69
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 70
    .line 71
    .line 72
    iget-object v0, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    iput-boolean v3, v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->checkboxEnabled:Z

    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v1

    .line 93
    :cond_2
    :goto_0
    iget-object v0, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->wikipediaLanguages:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    check-cast p0, Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p1, p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->toggleSelectedLanguage(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p0, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    .line 105
    .line 106
    if-eqz p0, :cond_3

    .line 107
    .line 108
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v1

    .line 116
    :cond_4
    :goto_1
    return v3

    .line 117
    :pswitch_2
    move-object v4, p0

    .line 118
    check-cast v4, Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 119
    .line 120
    iget-object v6, v4, Lorg/wikipedia/readinglist/ReadingListItemView;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 121
    .line 122
    if-eqz v6, :cond_5

    .line 123
    .line 124
    sget-object v7, Lorg/wikipedia/readinglist/ReadingListMode;->DEFAULT:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    const v9, 0x800005

    .line 130
    .line 131
    .line 132
    const/4 v5, 0x1

    .line 133
    move-object v8, p1

    .line 134
    invoke-virtual/range {v4 .. v9}, Lorg/wikipedia/readinglist/ReadingListItemView;->showOverflowMenu(ZLorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListMode;Landroid/view/View;I)V

    .line 135
    .line 136
    .line 137
    :cond_5
    return v2

    .line 138
    :pswitch_3
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryItemView;

    .line 139
    .line 140
    iget-object p0, p0, Lorg/wikipedia/page/edithistory/EditHistoryItemView;->listener:Lorg/wikipedia/page/edithistory/EditHistoryItemView$Listener;

    .line 141
    .line 142
    if-eqz p0, :cond_8

    .line 143
    .line 144
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;

    .line 145
    .line 146
    iget-object p1, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->this$0:Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 147
    .line 148
    sget v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->$r8$clinit:I

    .line 149
    .line 150
    invoke-virtual {p1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-boolean v0, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->comparing:Z

    .line 155
    .line 156
    if-nez v0, :cond_7

    .line 157
    .line 158
    invoke-virtual {p1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->getViewModel()Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iget-boolean v2, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->comparing:Z

    .line 163
    .line 164
    xor-int/lit8 v4, v2, 0x1

    .line 165
    .line 166
    iput-boolean v4, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->comparing:Z

    .line 167
    .line 168
    if-eqz v2, :cond_6

    .line 169
    .line 170
    iput-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 171
    .line 172
    iput-object v1, v0, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;->selectedRevisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 173
    .line 174
    :cond_6
    invoke-virtual {p1}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->updateCompareState()V

    .line 175
    .line 176
    .line 177
    :cond_7
    invoke-virtual {p0}, Lorg/wikipedia/page/edithistory/EditHistoryListActivity$EditHistoryListItemHolder;->toggleSelectState()V

    .line 178
    .line 179
    .line 180
    :cond_8
    return v3

    .line 181
    :pswitch_4
    check-cast p0, Lorg/wikipedia/gallery/GalleryActivity;

    .line 182
    .line 183
    sget-object p1, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 184
    .line 185
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 186
    .line 187
    if-eqz p1, :cond_c

    .line 188
    .line 189
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseIcon:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast p1, Landroid/widget/ImageView;

    .line 192
    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    instance-of v0, p1, Ljava/lang/String;

    .line 198
    .line 199
    if-eqz v0, :cond_9

    .line 200
    .line 201
    move-object v1, p1

    .line 202
    check-cast v1, Ljava/lang/String;

    .line 203
    .line 204
    :cond_9
    if-eqz v1, :cond_b

    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-nez p1, :cond_a

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_a
    invoke-static {v1}, Lorg/wikipedia/util/UriUtil;->resolveProtocolRelativeUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 225
    .line 226
    .line 227
    :cond_b
    :goto_2
    return v3

    .line 228
    :cond_c
    const-string p0, "binding"

    .line 229
    .line 230
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v1

    .line 234
    :pswitch_5
    move-object v4, p1

    .line 235
    check-cast p0, Lorg/wikipedia/feed/view/ListItemView;

    .line 236
    .line 237
    new-instance v3, Lorg/wikipedia/readinglist/LongPressMenu;

    .line 238
    .line 239
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    new-instance v7, Lorg/wikipedia/media/AvPlayer;

    .line 243
    .line 244
    const/16 p1, 0x8

    .line 245
    .line 246
    invoke-direct {v7, p1, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    const/16 v8, 0x1e

    .line 250
    .line 251
    const/4 v5, 0x0

    .line 252
    const/4 v6, 0x0

    .line 253
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/readinglist/LongPressMenu;-><init>(Landroid/view/View;ILandroid/location/Location;Lorg/wikipedia/readinglist/LongPressMenu$Callback;I)V

    .line 254
    .line 255
    .line 256
    iget-object p0, p0, Lorg/wikipedia/feed/view/ListItemView;->historyEntry:Lorg/wikipedia/history/HistoryEntry;

    .line 257
    .line 258
    invoke-virtual {v3, p0}, Lorg/wikipedia/readinglist/LongPressMenu;->show(Lorg/wikipedia/history/HistoryEntry;)V

    .line 259
    .line 260
    .line 261
    return v2

    .line 262
    :pswitch_6
    move-object v4, p1

    .line 263
    check-cast p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;

    .line 264
    .line 265
    if-eqz v4, :cond_d

    .line 266
    .line 267
    new-instance p1, Lorg/wikipedia/history/HistoryEntry;

    .line 268
    .line 269
    iget-object v0, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->selectedPage:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    iget-object v1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    const/16 v1, 0x18

    .line 281
    .line 282
    invoke-direct {p1, v1, v0}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 283
    .line 284
    .line 285
    move-object v5, v4

    .line 286
    new-instance v4, Lorg/wikipedia/readinglist/LongPressMenu;

    .line 287
    .line 288
    new-instance v8, Lorg/wikipedia/media/AvPlayer;

    .line 289
    .line 290
    const/4 v0, 0x6

    .line 291
    invoke-direct {v8, v0, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    const/16 v9, 0x1e

    .line 295
    .line 296
    const/4 v6, 0x0

    .line 297
    const/4 v7, 0x0

    .line 298
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/readinglist/LongPressMenu;-><init>(Landroid/view/View;ILandroid/location/Location;Lorg/wikipedia/readinglist/LongPressMenu$Callback;I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4, p1}, Lorg/wikipedia/readinglist/LongPressMenu;->show(Lorg/wikipedia/history/HistoryEntry;)V

    .line 302
    .line 303
    .line 304
    :cond_d
    return v3

    .line 305
    :pswitch_7
    check-cast p0, Lorg/wikipedia/views/PageItemView;

    .line 306
    .line 307
    iget-object p1, p0, Lorg/wikipedia/views/PageItemView;->callback:Lorg/wikipedia/views/PageItemView$Callback;

    .line 308
    .line 309
    if-eqz p1, :cond_e

    .line 310
    .line 311
    iget-object p0, p0, Lorg/wikipedia/views/PageItemView;->item:Ljava/lang/Object;

    .line 312
    .line 313
    invoke-interface {p1, p0}, Lorg/wikipedia/views/PageItemView$Callback;->onLongClick(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    :cond_e
    return v2

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

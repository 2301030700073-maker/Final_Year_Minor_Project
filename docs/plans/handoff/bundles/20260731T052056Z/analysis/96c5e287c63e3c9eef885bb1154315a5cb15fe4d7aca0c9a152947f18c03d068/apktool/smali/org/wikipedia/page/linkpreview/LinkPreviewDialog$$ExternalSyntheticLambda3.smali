.class public final synthetic Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;
.implements Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 5
    .line 6
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 15
    .line 16
    if-ne p1, v1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const v1, 0x7f12087d

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p0}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/view/View;Ljava/lang/String;)Lcom/google/android/material/snackbar/Snackbar;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->getSecondaryButtonView()Landroid/widget/Button;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->setAnchorView(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void

    .line 54
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget v0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 58
    .line 59
    if-ne v0, v1, :cond_1

    .line 60
    .line 61
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 10

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0903bb

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 25
    .line 26
    sget-object v3, Lorg/wikipedia/Constants$InvokeSource;->LINK_PREVIEW_MENU:Lorg/wikipedia/Constants$InvokeSource;

    .line 27
    .line 28
    invoke-static {p1, v0, v2, v3, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->addToDefaultList(Landroid/app/Activity;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/Constants$InvokeSource;Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 32
    .line 33
    if-eqz p0, :cond_8

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 36
    .line 37
    .line 38
    return v2

    .line 39
    :cond_0
    const v0, 0x7f0903bf

    .line 40
    .line 41
    .line 42
    if-ne p1, v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 53
    .line 54
    invoke-static {p1, p0}, Lorg/wikipedia/util/ShareUtil;->shareText$default(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    .line 55
    .line 56
    .line 57
    return v2

    .line 58
    :cond_1
    const v0, 0x7f0903c1

    .line 59
    .line 60
    .line 61
    const-string v3, "detail_overflow_menu"

    .line 62
    .line 63
    if-ne p1, v0, :cond_2

    .line 64
    .line 65
    const-string/jumbo p1, "watch_click"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1, v3}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->sendPlacesEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    iget-boolean p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->isWatched:Z

    .line 80
    .line 81
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sget-object v3, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 86
    .line 87
    new-instance v4, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 88
    .line 89
    const/16 v5, 0x18

    .line 90
    .line 91
    invoke-direct {v4, v3, v5}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 92
    .line 93
    .line 94
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 95
    .line 96
    const/4 v5, 0x5

    .line 97
    invoke-direct {v3, p1, p0, v1, v5}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;-><init>(Ljava/lang/Object;ZLkotlin/coroutines/Continuation;I)V

    .line 98
    .line 99
    .line 100
    const/4 p0, 0x2

    .line 101
    invoke-static {v0, v4, v1, v3, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 102
    .line 103
    .line 104
    return v2

    .line 105
    :cond_2
    const v0, 0x7f0903be

    .line 106
    .line 107
    .line 108
    if-ne p1, v0, :cond_3

    .line 109
    .line 110
    const-string p1, "new_tab_click"

    .line 111
    .line 112
    invoke-virtual {p0, p1, v3}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->sendPlacesEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v2}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->goToLinkedPage(Z)V

    .line 116
    .line 117
    .line 118
    return v2

    .line 119
    :cond_3
    const v0, 0x7f0903bc

    .line 120
    .line 121
    .line 122
    if-ne p1, v0, :cond_5

    .line 123
    .line 124
    const-string p1, "copy_link_click"

    .line 125
    .line 126
    invoke-virtual {p0, p1, v3}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->sendPlacesEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-object v0, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 138
    .line 139
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-class v3, Landroid/content/ClipboardManager;

    .line 144
    .line 145
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Landroid/content/ClipboardManager;

    .line 150
    .line 151
    if-eqz p1, :cond_4

    .line 152
    .line 153
    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 158
    .line 159
    .line 160
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    const v0, 0x7f12007a

    .line 165
    .line 166
    .line 167
    invoke-static {p1, v0}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 171
    .line 172
    .line 173
    return v2

    .line 174
    :cond_5
    const v0, 0x7f0903c0

    .line 175
    .line 176
    .line 177
    if-ne p1, v0, :cond_7

    .line 178
    .line 179
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 180
    .line 181
    new-instance v3, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 182
    .line 183
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 184
    .line 185
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 190
    .line 191
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    const-string v9, "app_places_interaction"

    .line 196
    .line 197
    const-string v4, "places_click"

    .line 198
    .line 199
    const-string v5, "article_preview_more_menu"

    .line 200
    .line 201
    const-string v6, ""

    .line 202
    .line 203
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v3}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iget-object p1, p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->location:Landroid/location/Location;

    .line 214
    .line 215
    if-eqz p1, :cond_6

    .line 216
    .line 217
    sget v0, Lorg/wikipedia/places/PlacesActivity;->$r8$clinit:I

    .line 218
    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    iget-object v3, v3, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 228
    .line 229
    invoke-static {v0, v3, p1}, Lokio/ByteString$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Landroid/location/Location;)Landroid/content/Intent;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 234
    .line 235
    .line 236
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 237
    .line 238
    .line 239
    return v2

    .line 240
    :cond_7
    const v0, 0x7f0903bd

    .line 241
    .line 242
    .line 243
    if-ne p1, v0, :cond_9

    .line 244
    .line 245
    const-string p1, "directions_click"

    .line 246
    .line 247
    invoke-virtual {p0, p1, v3}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->sendPlacesEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    iget-object p1, p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->location:Landroid/location/Location;

    .line 255
    .line 256
    if-eqz p1, :cond_8

    .line 257
    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 263
    .line 264
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 269
    .line 270
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    invoke-static {p0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    invoke-static {v0, p1, p0}, Lorg/wikipedia/util/GeoUtil;->sendGeoIntent(Landroidx/appcompat/app/AppCompatActivity;Landroid/location/Location;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    :cond_8
    return v2

    .line 286
    :cond_9
    const/4 p0, 0x0

    .line 287
    return p0
.end method

.class public final synthetic Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    .line 1
    iget p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/16 v0, 0xe

    .line 4
    .line 5
    const/16 v1, 0xf

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const-string v4, "recommendedimagetoolbar"

    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;

    .line 12
    .line 13
    packed-switch p1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 17
    .line 18
    invoke-static {p0, v3, v3, v3, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const-string p1, "image_detail_view"

    .line 32
    .line 33
    invoke-static {p1, v4, v0, v1}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget p1, Lorg/wikipedia/commons/FilePageActivity;->$r8$clinit:I

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v0, Lorg/wikipedia/page/PageTitle;

    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getRecommendation()Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v1, v1, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;->images:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;

    .line 59
    .line 60
    iget-object v1, v1, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->image:Ljava/lang/String;

    .line 61
    .line 62
    const-string v4, "File:"

    .line 63
    .line 64
    invoke-static {v4, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    sget-object v4, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 69
    .line 70
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    iget-object v5, v5, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {v5}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-direct {v0, v1, v4, v3}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p1, v0, v2}, Lokio/Path$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_0
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 95
    .line 96
    const-string/jumbo v1, "undecided"

    .line 97
    .line 98
    .line 99
    invoke-static {p0, v1, v3, v3, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    const-string p1, "suggestion_skip"

    .line 113
    .line 114
    invoke-static {p1, v4, v0, v1}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->publish()V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_1
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 122
    .line 123
    const-string v1, "rejected"

    .line 124
    .line 125
    invoke-static {p0, v1, v3, v3, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    const-string p1, "suggestion_reject"

    .line 139
    .line 140
    invoke-static {p1, v4, v0, v1}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    new-instance p1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;

    .line 144
    .line 145
    invoke-direct {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsDialog;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    new-instance v1, Lkotlin/Pair;

    .line 153
    .line 154
    const-string v4, "response"

    .line 155
    .line 156
    invoke-direct {v1, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    const/4 v0, 0x1

    .line 160
    new-array v0, v0, [Lkotlin/Pair;

    .line 161
    .line 162
    aput-object v1, v0, v2

    .line 163
    .line 164
    invoke-static {v0}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {p1, p0, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :pswitch_2
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 180
    .line 181
    const-string v5, "accepted"

    .line 182
    .line 183
    invoke-static {p0, v5, v3, v3, v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    iget-object v5, v5, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    const-string p1, "suggestion_accept"

    .line 197
    .line 198
    invoke-static {p1, v4, v0, v5}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 202
    .line 203
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    const-string p1, "init"

    .line 215
    .line 216
    const-string/jumbo v5, "wikitext"

    .line 217
    .line 218
    .line 219
    invoke-static {p1, v5, v0}, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;->submitEditAttemptEvent(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 220
    .line 221
    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 223
    .line 224
    .line 225
    move-result-wide v5

    .line 226
    iget-wide v7, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->resumedMillis:J

    .line 227
    .line 228
    sub-long/2addr v5, v7

    .line 229
    const-wide/16 v7, 0x1388

    .line 230
    .line 231
    cmp-long p1, v5, v7

    .line 232
    .line 233
    if-gez p1, :cond_0

    .line 234
    .line 235
    invoke-static {p0, v3, v3, v3, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 244
    .line 245
    const-string/jumbo v1, "warning"

    .line 246
    .line 247
    .line 248
    invoke-static {v1, v4, p1, v0}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    const v0, 0x7f120306

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    const/16 v1, 0xc

    .line 266
    .line 267
    invoke-static {p1, v0, v2, v1}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 272
    .line 273
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    iget-object p0, p0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraIsChangingListenerList:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    .line 279
    .line 280
    invoke-virtual {p1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->setAnchorView(Landroid/view/View;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 284
    .line 285
    .line 286
    goto :goto_0

    .line 287
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->requestEdit:Landroidx/fragment/app/Fragment$10;

    .line 288
    .line 289
    sget v0, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 290
    .line 291
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    sget-object v8, Lorg/wikipedia/Constants$InvokeSource;->EDIT_ADD_IMAGE:Lorg/wikipedia/Constants$InvokeSource;

    .line 304
    .line 305
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iget-object v10, v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->recommendedImageTitle:Lorg/wikipedia/page/PageTitle;

    .line 310
    .line 311
    if-eqz v10, :cond_1

    .line 312
    .line 313
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getRecommendation()Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iget-object v0, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;->images:Ljava/util/List;

    .line 322
    .line 323
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;

    .line 328
    .line 329
    iget-object v11, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->source:Ljava/lang/String;

    .line 330
    .line 331
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getRecommendation()Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    iget-object v0, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;->images:Ljava/util/List;

    .line 340
    .line 341
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    check-cast v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;

    .line 346
    .line 347
    iget-object v0, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->projects:Ljava/util/List;

    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v12

    .line 353
    const/4 v5, 0x0

    .line 354
    const/4 v6, 0x0

    .line 355
    const/4 v9, 0x0

    .line 356
    invoke-static/range {v4 .. v12}, Lorg/wikipedia/login/LoginClient;->newIntent(Landroid/content/Context;ILjava/lang/String;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    iget-boolean p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->attemptInsertInfobox:Z

    .line 365
    .line 366
    const-string v1, "attemptInsertIntoInfobox"

    .line 367
    .line 368
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    .line 370
    .line 371
    move-result-object p0

    .line 372
    invoke-virtual {p1, p0, v3}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 373
    .line 374
    .line 375
    :goto_0
    return-void

    .line 376
    :cond_1
    const-string p0, "recommendedImageTitle"

    .line 377
    .line 378
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    throw v3

    .line 382
    :pswitch_3
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->callback()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    invoke-interface {p1, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;->nextPage(Landroidx/fragment/app/Fragment;)V

    .line 387
    .line 388
    .line 389
    return-void

    .line 390
    :pswitch_4
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 391
    .line 392
    .line 393
    move-result-object p0

    .line 394
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->fetchRecommendation()V

    .line 395
    .line 396
    .line 397
    return-void

    .line 398
    :pswitch_5
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 399
    .line 400
    invoke-static {p0, v3, v3, v3, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 409
    .line 410
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    const-string p1, "read_more"

    .line 414
    .line 415
    invoke-static {p1, v4, v0, v1}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    sget p1, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 419
    .line 420
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    .line 425
    .line 426
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    const/16 v2, 0x1e

    .line 435
    .line 436
    invoke-direct {v0, v2, v1}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    invoke-static {p1, v0, v1}, Lorg/wikipedia/login/LoginClient;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    invoke-virtual {p0, p1, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 456
    .line 457
    .line 458
    move-result-object p0

    .line 459
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 460
    .line 461
    .line 462
    return-void

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

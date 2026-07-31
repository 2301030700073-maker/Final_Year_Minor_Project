.class public final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5$1$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5$1$1$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$onViewCreated$5$1$1$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    packed-switch p2, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Lorg/wikipedia/util/Resource;

    .line 15
    .line 16
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Success;

    .line 17
    .line 18
    const-string v4, "other"

    .line 19
    .line 20
    if-eqz p2, :cond_2

    .line 21
    .line 22
    check-cast p1, Lorg/wikipedia/util/Resource$Success;

    .line 23
    .line 24
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const-string v1, "saveSuccess"

    .line 40
    .line 41
    invoke-static {v1, v4, p2}, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;->submitEditAttemptEvent(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iput-boolean v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishSuccess:Z

    .line 45
    .line 46
    sget-object p2, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 47
    .line 48
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_IMAGE_TAGS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 49
    .line 50
    check-cast p1, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-wide v4, p1, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->lastRevId:J

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-wide/16 v4, 0x0

    .line 58
    .line 59
    :goto_0
    const-string p1, "commons"

    .line 60
    .line 61
    invoke-virtual {p2, v1, p1, v4, v5}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logEditSuccess(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;Ljava/lang/String;J)V

    .line 62
    .line 63
    .line 64
    iput-boolean v2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->publishing:Z

    .line 65
    .line 66
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->progressBar:Landroid/view/View;

    .line 72
    .line 73
    check-cast p1, Landroid/widget/ProgressBar;

    .line 74
    .line 75
    const/high16 p2, 0x3f800000    # 1.0f

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->progressBar:Landroid/view/View;

    .line 86
    .line 87
    check-cast p1, Landroid/widget/ProgressBar;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-wide/16 v4, 0xfa

    .line 99
    .line 100
    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 109
    .line 110
    check-cast p1, Landroid/widget/ProgressBar;

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 121
    .line 122
    check-cast p1, Landroid/widget/ProgressBar;

    .line 123
    .line 124
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 133
    .line 134
    check-cast p1, Landroid/widget/ProgressBar;

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    new-instance v6, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda5;

    .line 145
    .line 146
    invoke-direct {v6, p0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectLayout:Landroid/view/View;

    .line 162
    .line 163
    check-cast p1, Landroid/widget/ImageView;

    .line 164
    .line 165
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectLayout:Landroid/view/View;

    .line 174
    .line 175
    check-cast p1, Landroid/widget/ImageView;

    .line 176
    .line 177
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectLayout:Landroid/view/View;

    .line 186
    .line 187
    check-cast p1, Landroid/widget/ImageView;

    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    const-wide/16 v1, 0x1f4

    .line 198
    .line 199
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->progressBar:Landroid/view/View;

    .line 208
    .line 209
    check-cast p1, Landroid/widget/ProgressBar;

    .line 210
    .line 211
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda5;

    .line 212
    .line 213
    invoke-direct {p2, p0, v3}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;I)V

    .line 214
    .line 215
    .line 216
    const-wide/16 v1, 0x5dc

    .line 217
    .line 218
    invoke-virtual {p1, p2, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_2
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Error;

    .line 223
    .line 224
    if-eqz p2, :cond_4

    .line 225
    .line 226
    check-cast p1, Lorg/wikipedia/util/Resource$Error;

    .line 227
    .line 228
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 229
    .line 230
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    if-eqz p2, :cond_3

    .line 235
    .line 236
    sget-object v2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    const-string v2, "saveFailure"

    .line 242
    .line 243
    invoke-static {v2, v4, p2}, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;->submitEditAttemptEvent(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 244
    .line 245
    .line 246
    :cond_3
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 247
    .line 248
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    iget-object p2, p2, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->rootView:Landroid/view/View;

    .line 252
    .line 253
    check-cast p2, Landroid/widget/FrameLayout;

    .line 254
    .line 255
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 263
    .line 264
    .line 265
    :cond_4
    :goto_1
    return-object v0

    .line 266
    :pswitch_0
    check-cast p1, Lorg/wikipedia/util/Resource;

    .line 267
    .line 268
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Loading;

    .line 269
    .line 270
    if-eqz p2, :cond_5

    .line 271
    .line 272
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 273
    .line 274
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlay:Landroid/view/ViewGroup;

    .line 278
    .line 279
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 280
    .line 281
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    .line 283
    .line 284
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 285
    .line 286
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlayFormatting:Landroid/view/View;

    .line 290
    .line 291
    check-cast p1, Landroid/widget/ProgressBar;

    .line 292
    .line 293
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    .line 295
    .line 296
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 297
    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlayHeadings:Landroid/view/View;

    .line 302
    .line 303
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 304
    .line 305
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_7

    .line 309
    .line 310
    :cond_5
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Success;

    .line 311
    .line 312
    const/4 v4, 0x0

    .line 313
    if-eqz p2, :cond_e

    .line 314
    .line 315
    check-cast p1, Lorg/wikipedia/util/Resource$Success;

    .line 316
    .line 317
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast p1, Lkotlin/Pair;

    .line 320
    .line 321
    iget-object p2, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 324
    .line 325
    iput-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->page:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 326
    .line 327
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 328
    .line 329
    .line 330
    move-result-object p2

    .line 331
    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast p1, Ljava/lang/String;

    .line 334
    .line 335
    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 336
    .line 337
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    iget-object v5, v5, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlay:Landroid/view/ViewGroup;

    .line 341
    .line 342
    check-cast v5, Lorg/wikipedia/views/WikiErrorView;

    .line 343
    .line 344
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    .line 346
    .line 347
    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 348
    .line 349
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    iget-object v5, v5, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlayHeadings:Landroid/view/View;

    .line 353
    .line 354
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 355
    .line 356
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 357
    .line 358
    .line 359
    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 360
    .line 361
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    iget-object v5, v5, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlayFormatting:Landroid/view/View;

    .line 365
    .line 366
    check-cast v5, Landroid/widget/ProgressBar;

    .line 367
    .line 368
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 369
    .line 370
    .line 371
    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 372
    .line 373
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    iget-object v5, v5, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->threadItemView:Landroid/view/View;

    .line 377
    .line 378
    check-cast v5, Landroid/widget/TextView;

    .line 379
    .line 380
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    .line 382
    .line 383
    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 384
    .line 385
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    .line 387
    .line 388
    iget-object v5, v5, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->talkScrollContainer:Landroid/view/View;

    .line 389
    .line 390
    check-cast v5, Landroid/widget/TextView;

    .line 391
    .line 392
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 393
    .line 394
    .line 395
    iget-object v5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 396
    .line 397
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    iget-object v5, v5, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->footerContainer:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v5, Landroid/widget/ImageView;

    .line 403
    .line 404
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    if-eqz v6, :cond_7

    .line 409
    .line 410
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v6

    .line 414
    instance-of v6, v6, Ljava/lang/Integer;

    .line 415
    .line 416
    if-nez v6, :cond_6

    .line 417
    .line 418
    goto :goto_2

    .line 419
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    check-cast v6, Ljava/lang/Integer;

    .line 427
    .line 428
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 429
    .line 430
    .line 431
    move-result v6

    .line 432
    goto :goto_3

    .line 433
    :cond_7
    :goto_2
    move v6, v2

    .line 434
    :goto_3
    or-int/2addr v3, v6

    .line 435
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    invoke-virtual {v5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 440
    .line 441
    .line 442
    iget-object v3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 443
    .line 444
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    iget-object v3, v3, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->footerContainer:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast v3, Landroid/widget/ImageView;

    .line 450
    .line 451
    sget-object v5, Lorg/wikipedia/util/ImageUrlUtil;->WIDTH_IN_IMAGE_URL_REGEX:Ljava/util/regex/Pattern;

    .line 452
    .line 453
    if-eqz p2, :cond_8

    .line 454
    .line 455
    iget-object v5, p2, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 456
    .line 457
    goto :goto_4

    .line 458
    :cond_8
    move-object v5, v4

    .line 459
    :goto_4
    if-nez v5, :cond_9

    .line 460
    .line 461
    const-string v5, ""

    .line 462
    .line 463
    :cond_9
    const/16 v6, 0x3c0

    .line 464
    .line 465
    invoke-static {v6, v5}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(ILjava/lang/String;)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    const/16 v6, 0x1c

    .line 470
    .line 471
    invoke-static {v3, v5, v4, v6}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 472
    .line 473
    .line 474
    if-eqz p1, :cond_b

    .line 475
    .line 476
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 477
    .line 478
    .line 479
    move-result v3

    .line 480
    if-nez v3, :cond_a

    .line 481
    .line 482
    goto :goto_5

    .line 483
    :cond_a
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 484
    .line 485
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 486
    .line 487
    .line 488
    iget-object p2, p2, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->learnMoreButton:Landroid/widget/TextView;

    .line 489
    .line 490
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    .line 492
    .line 493
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 494
    .line 495
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 496
    .line 497
    .line 498
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->learnMoreButton:Landroid/widget/TextView;

    .line 499
    .line 500
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 501
    .line 502
    .line 503
    goto :goto_6

    .line 504
    :cond_b
    :goto_5
    if-eqz p2, :cond_c

    .line 505
    .line 506
    iget-object v4, p2, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 507
    .line 508
    :cond_c
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 509
    .line 510
    if-eqz v4, :cond_d

    .line 511
    .line 512
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->learnMoreButton:Landroid/widget/TextView;

    .line 516
    .line 517
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 518
    .line 519
    iget-object p2, p2, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 520
    .line 521
    invoke-virtual {p2}, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object p2

    .line 525
    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 526
    .line 527
    .line 528
    move-result-object p2

    .line 529
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object p2

    .line 533
    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 534
    .line 535
    .line 536
    move-result-object p2

    .line 537
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object p2

    .line 541
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    .line 543
    .line 544
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 545
    .line 546
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 547
    .line 548
    .line 549
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->learnMoreButton:Landroid/widget/TextView;

    .line 550
    .line 551
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 552
    .line 553
    .line 554
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 555
    .line 556
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->footerContainer:Ljava/lang/Object;

    .line 560
    .line 561
    check-cast p1, Landroid/widget/ImageView;

    .line 562
    .line 563
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 564
    .line 565
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    iget-object p2, p2, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->learnMoreButton:Landroid/widget/TextView;

    .line 569
    .line 570
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 571
    .line 572
    .line 573
    move-result-object p2

    .line 574
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 575
    .line 576
    .line 577
    goto :goto_6

    .line 578
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 579
    .line 580
    .line 581
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->learnMoreButton:Landroid/widget/TextView;

    .line 582
    .line 583
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 584
    .line 585
    .line 586
    :goto_6
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->updateLicenseTextShown()V

    .line 587
    .line 588
    .line 589
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->callback$1()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;

    .line 590
    .line 591
    .line 592
    move-result-object p1

    .line 593
    invoke-interface {p1}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;->updateActionButton()V

    .line 594
    .line 595
    .line 596
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->updateTagChips()V

    .line 597
    .line 598
    .line 599
    goto :goto_7

    .line 600
    :cond_e
    instance-of p2, p1, Lorg/wikipedia/util/Resource$Error;

    .line 601
    .line 602
    if-eqz p2, :cond_f

    .line 603
    .line 604
    check-cast p1, Lorg/wikipedia/util/Resource$Error;

    .line 605
    .line 606
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 607
    .line 608
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 609
    .line 610
    .line 611
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 612
    .line 613
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 614
    .line 615
    .line 616
    iget-object p2, p2, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlay:Landroid/view/ViewGroup;

    .line 617
    .line 618
    check-cast p2, Lorg/wikipedia/views/WikiErrorView;

    .line 619
    .line 620
    sget v3, Lorg/wikipedia/views/WikiErrorView;->$r8$clinit:I

    .line 621
    .line 622
    invoke-virtual {p2, p1, v4}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 623
    .line 624
    .line 625
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 626
    .line 627
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 628
    .line 629
    .line 630
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlay:Landroid/view/ViewGroup;

    .line 631
    .line 632
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 633
    .line 634
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 635
    .line 636
    .line 637
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 638
    .line 639
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 640
    .line 641
    .line 642
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlayFormatting:Landroid/view/View;

    .line 643
    .line 644
    check-cast p1, Landroid/widget/ProgressBar;

    .line 645
    .line 646
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 647
    .line 648
    .line 649
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->_binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 650
    .line 651
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlayHeadings:Landroid/view/View;

    .line 655
    .line 656
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 657
    .line 658
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 659
    .line 660
    .line 661
    :cond_f
    :goto_7
    return-object v0

    .line 662
    nop

    .line 663
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

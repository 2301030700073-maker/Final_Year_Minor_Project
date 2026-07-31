.class public final Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public final synthetic this$0:Lorg/wikipedia/edit/EditSectionActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/EditSectionActivity;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;-><init>(Lorg/wikipedia/edit/EditSectionActivity;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, p0, p2, v1}, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;-><init>(Lorg/wikipedia/edit/EditSectionActivity;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lorg/wikipedia/util/Resource;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 23
    .line 24
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    iget-object v4, p0, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lorg/wikipedia/util/Resource;

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    instance-of p1, p0, Lorg/wikipedia/util/Resource$Loading;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Lorg/wikipedia/edit/EditSectionActivity;->showProgressBar$1(Z)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_0
    instance-of p1, p0, Lorg/wikipedia/util/Resource$Success;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    if-eqz p1, :cond_6

    .line 33
    .line 34
    invoke-virtual {v4, v0}, Lorg/wikipedia/edit/EditSectionActivity;->showProgressBar$1(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Lorg/wikipedia/edit/EditSectionActivity;->displaySectionText()V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 41
    .line 42
    new-array p1, v0, [Ljava/lang/Object;

    .line 43
    .line 44
    sget-object v6, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 45
    .line 46
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const v7, 0x7f120681

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0, v6, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-static {v6, v0, p1, v5}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    invoke-virtual {v4}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p1, p1, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 76
    .line 77
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    sget-object v6, Lorg/wikipedia/page/Namespace;->TALK:Lorg/wikipedia/page/Namespace;

    .line 82
    .line 83
    if-eq p1, v6, :cond_1

    .line 84
    .line 85
    invoke-virtual {v4}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p1, p1, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 90
    .line 91
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    sget-object v6, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    .line 96
    .line 97
    if-eq p1, v6, :cond_1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Lokhttp3/MultipartBody$Builder;->inflate(Landroid/view/LayoutInflater;)Lokhttp3/MultipartBody$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object v6, p1, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v6, Lorg/wikipedia/views/AppTextView;

    .line 111
    .line 112
    sget-object v7, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 113
    .line 114
    const v7, 0x7f120937

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-static {v7}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    iget-object v7, v4, Lorg/wikipedia/edit/EditSectionActivity;->movementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 129
    .line 130
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 131
    .line 132
    .line 133
    new-instance v6, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 134
    .line 135
    invoke-direct {v6, v4, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 136
    .line 137
    .line 138
    iget-object v7, v6, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v7, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 141
    .line 142
    iget-object v8, p1, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v8, Landroid/widget/LinearLayout;

    .line 145
    .line 146
    iput-object v8, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 147
    .line 148
    new-instance v8, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda2;

    .line 149
    .line 150
    invoke-direct {v8, v3}, Lorg/wikipedia/views/TextInputDialog$$ExternalSyntheticLambda2;-><init>(I)V

    .line 151
    .line 152
    .line 153
    const v3, 0x7f120510

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v3, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    new-instance v3, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda15;

    .line 160
    .line 161
    invoke-direct {v3, p1, v0}, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda15;-><init>(Lokhttp3/MultipartBody$Builder;I)V

    .line 162
    .line 163
    .line 164
    iput-object v3, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 165
    .line 166
    invoke-virtual {v6}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 167
    .line 168
    .line 169
    :cond_2
    :goto_0
    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v0}, Lorg/wikipedia/edit/EditSectionActivity;->maybeShowTempAccountDialog(Z)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-nez p1, :cond_5

    .line 177
    .line 178
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 179
    .line 180
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getAutoShowEditNotices()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_3

    .line 185
    .line 186
    invoke-virtual {v4}, Lorg/wikipedia/edit/EditSectionActivity;->showEditNotices()V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_3
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getAutoShowEditNotices()Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-nez p1, :cond_5

    .line 195
    .line 196
    new-array p1, v0, [Ljava/lang/Object;

    .line 197
    .line 198
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    const v6, 0x7f1205f1

    .line 207
    .line 208
    .line 209
    invoke-static {p1, v0, v3, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-static {v3, v0, p1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-nez p1, :cond_5

    .line 222
    .line 223
    invoke-static {v6, v5}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 224
    .line 225
    .line 226
    iget-object p1, v4, Lorg/wikipedia/edit/EditSectionActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 227
    .line 228
    if-eqz p1, :cond_4

    .line 229
    .line 230
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityLoginBinding;->footerContainer:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 233
    .line 234
    new-instance v0, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda10;

    .line 235
    .line 236
    invoke-direct {v0, v4, v5}, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda10;-><init>(Lorg/wikipedia/edit/EditSectionActivity;I)V

    .line 237
    .line 238
    .line 239
    const-wide/16 v2, 0x64

    .line 240
    .line 241
    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_4
    const-string p0, "binding"

    .line 246
    .line 247
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw v2

    .line 251
    :cond_5
    :goto_1
    check-cast p0, Lorg/wikipedia/util/Resource$Success;

    .line 252
    .line 253
    iget-object p0, p0, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 256
    .line 257
    if-eqz p0, :cond_7

    .line 258
    .line 259
    new-instance p1, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 260
    .line 261
    invoke-direct {p1, p0}, Lorg/wikipedia/dataclient/mwapi/MwException;-><init>(Lorg/wikipedia/dataclient/mwapi/MwServiceError;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4}, Lorg/wikipedia/edit/EditSectionActivity;->getViewModel()Lorg/wikipedia/edit/EditSectionViewModel;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    iget-object p0, p0, Lorg/wikipedia/edit/EditSectionViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 269
    .line 270
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 271
    .line 272
    invoke-static {v4, p1, p0}, Lorg/wikipedia/util/ShareUtil;->showError(Landroid/app/Activity;Ljava/lang/Throwable;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 273
    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_6
    instance-of p1, p0, Lorg/wikipedia/util/Resource$Error;

    .line 277
    .line 278
    if-eqz p1, :cond_7

    .line 279
    .line 280
    invoke-virtual {v4, v0}, Lorg/wikipedia/edit/EditSectionActivity;->showProgressBar$1(Z)V

    .line 281
    .line 282
    .line 283
    check-cast p0, Lorg/wikipedia/util/Resource$Error;

    .line 284
    .line 285
    iget-object p0, p0, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 286
    .line 287
    invoke-virtual {v4, p0}, Lorg/wikipedia/edit/EditSectionActivity;->showError$1(Ljava/lang/Throwable;)V

    .line 288
    .line 289
    .line 290
    :cond_7
    :goto_2
    return-object v1

    .line 291
    :pswitch_0
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 292
    .line 293
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    new-instance p1, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5;

    .line 297
    .line 298
    invoke-direct {p1, v4, v2, v5}, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5;-><init>(Lorg/wikipedia/edit/EditSectionActivity;Lkotlin/coroutines/Continuation;I)V

    .line 299
    .line 300
    .line 301
    const/4 v0, 0x3

    .line 302
    invoke-static {p0, v2, v2, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 303
    .line 304
    .line 305
    new-instance p1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 306
    .line 307
    const/16 v5, 0x8

    .line 308
    .line 309
    invoke-direct {p1, v5, v4, v2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 310
    .line 311
    .line 312
    invoke-static {p0, v2, v2, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 313
    .line 314
    .line 315
    new-instance p1, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5;

    .line 316
    .line 317
    invoke-direct {p1, v4, v2, v3}, Lorg/wikipedia/edit/EditSectionActivity$onCreate$5;-><init>(Lorg/wikipedia/edit/EditSectionActivity;Lkotlin/coroutines/Continuation;I)V

    .line 318
    .line 319
    .line 320
    invoke-static {p0, v2, v2, p1, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 321
    .line 322
    .line 323
    return-object v1

    .line 324
    nop

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

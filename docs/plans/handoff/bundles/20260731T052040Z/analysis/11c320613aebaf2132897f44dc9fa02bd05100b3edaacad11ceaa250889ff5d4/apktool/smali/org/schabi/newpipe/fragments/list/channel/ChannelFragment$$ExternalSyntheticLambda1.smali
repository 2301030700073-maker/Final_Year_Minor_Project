.class public final synthetic Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;
.implements Lio/reactivex/rxjava3/functions/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Ljava/lang/Boolean;

    .line 10
    .line 11
    sget v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->$r8$clinit:I

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 20
    .line 21
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->rootView:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_CONTENT_STYLE_ATTRS:[I

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const v2, 0x7f130543

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda2;

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-direct {v0, p0, v2}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;I)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 49
    .line 50
    const v2, 0x7f1301f6

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p1, p0, v0}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const/16 v0, -0x100

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void

    .line 81
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 82
    .line 83
    sget v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->$r8$clinit:I

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 90
    .line 91
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    const/4 v3, 0x1

    .line 100
    if-nez v0, :cond_1

    .line 101
    .line 102
    move v0, v3

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    move v0, v1

    .line 105
    :goto_0
    if-eqz v0, :cond_2

    .line 106
    .line 107
    const/16 v2, 0x12c

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    move v2, v1

    .line 111
    :goto_1
    if-eqz v0, :cond_3

    .line 112
    .line 113
    const/16 v1, 0xc8

    .line 114
    .line 115
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 116
    .line 117
    const v4, 0x7f060352

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iget-object v4, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 125
    .line 126
    const v5, 0x7f060353

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    iget-object v5, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 134
    .line 135
    const v6, 0x7f04012a

    .line 136
    .line 137
    .line 138
    invoke-static {v5, v6}, Lokio/Options$Companion;->resolveColorFromAttr(Landroid/content/Context;I)I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    const v6, 0x3eb33333    # 0.35f

    .line 143
    .line 144
    .line 145
    invoke-static {v6, v5, v0}, Landroidx/core/graphics/ColorUtils;->blendARGB(FII)I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    iget-object v6, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 150
    .line 151
    const v7, 0x7f060351

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    iget-object v7, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 159
    .line 160
    if-nez p1, :cond_4

    .line 161
    .line 162
    iget-object p1, v7, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    .line 165
    .line 166
    const v7, 0x7f1304da

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 173
    .line 174
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    .line 177
    .line 178
    int-to-long v7, v2

    .line 179
    invoke-static {p1, v7, v8, v5, v0}, Lnet/newpipe/app/AppKt;->animateBackgroundColor(Landroid/view/View;JII)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 183
    .line 184
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    .line 187
    .line 188
    int-to-long v0, v1

    .line 189
    invoke-static {p1, v0, v1, v6, v4}, Landroidx/room/Room;->animateTextColor(Landroid/widget/TextView;JII)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_4
    iget-object p1, v7, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    .line 196
    .line 197
    const v7, 0x7f1304d9

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 204
    .line 205
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    .line 208
    .line 209
    int-to-long v7, v2

    .line 210
    invoke-static {p1, v7, v8, v0, v5}, Lnet/newpipe/app/AppKt;->animateBackgroundColor(Landroid/view/View;JII)V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 214
    .line 215
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    .line 218
    .line 219
    int-to-long v0, v1

    .line 220
    invoke-static {p1, v0, v1, v4, v6}, Landroidx/room/Room;->animateTextColor(Landroid/widget/TextView;JII)V

    .line 221
    .line 222
    .line 223
    :goto_2
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 224
    .line 225
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Ljava/lang/Object;

    .line 226
    .line 227
    move-object v2, p0

    .line 228
    check-cast v2, Landroidx/appcompat/widget/AppCompatButton;

    .line 229
    .line 230
    const/4 v9, 0x0

    .line 231
    const/16 v10, 0x18

    .line 232
    .line 233
    const-wide/16 v4, 0x64

    .line 234
    .line 235
    sget-object v6, Lorg/schabi/newpipe/ktx/AnimationType;->LIGHT_SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 236
    .line 237
    const-wide/16 v7, 0x0

    .line 238
    .line 239
    invoke-static/range {v2 .. v10}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    .line 244
    .line 245
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 246
    .line 247
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Ljava/lang/Object;

    .line 248
    .line 249
    move-object v1, v0

    .line 250
    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    .line 251
    .line 252
    const/4 v8, 0x0

    .line 253
    const/16 v9, 0x1c

    .line 254
    .line 255
    const/4 v2, 0x0

    .line 256
    const-wide/16 v3, 0x64

    .line 257
    .line 258
    const/4 v5, 0x0

    .line 259
    const-wide/16 v6, 0x0

    .line 260
    .line 261
    invoke-static/range {v1 .. v9}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 262
    .line 263
    .line 264
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 265
    .line 266
    const-string v1, "Get subscription status"

    .line 267
    .line 268
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 269
    .line 270
    sget-object v3, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_GET:Lorg/schabi/newpipe/error/UserAction;

    .line 271
    .line 272
    invoke-direct {v0, p1, v3, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :pswitch_2
    check-cast p1, Ljava/lang/Throwable;

    .line 280
    .line 281
    sget v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->$r8$clinit:I

    .line 282
    .line 283
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 284
    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v2, "Changing subscription for "

    .line 288
    .line 289
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 293
    .line 294
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 306
    .line 307
    sget-object v3, Lorg/schabi/newpipe/error/UserAction;->SUBSCRIPTION_CHANGE:Lorg/schabi/newpipe/error/UserAction;

    .line 308
    .line 309
    invoke-direct {v0, p1, v3, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    :pswitch_3
    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 317
    .line 318
    sget v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->$r8$clinit:I

    .line 319
    .line 320
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 321
    .line 322
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->handleResult(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :pswitch_4
    move-object v3, p1

    .line 330
    check-cast v3, Ljava/lang/Throwable;

    .line 331
    .line 332
    sget p1, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->$r8$clinit:I

    .line 333
    .line 334
    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 335
    .line 336
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->url:Ljava/lang/String;

    .line 337
    .line 338
    if-nez p1, :cond_5

    .line 339
    .line 340
    const-string p1, "No URL"

    .line 341
    .line 342
    :cond_5
    move-object v5, p1

    .line 343
    iget p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->serviceId:I

    .line 344
    .line 345
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    iget-object v7, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->url:Ljava/lang/String;

    .line 350
    .line 351
    sget-object v4, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_CHANNEL:Lorg/schabi/newpipe/error/UserAction;

    .line 352
    .line 353
    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 357
    .line 358
    .line 359
    return-void

    .line 360
    nop

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    sget p1, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->$r8$clinit:I

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object p1, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;->areNewStreamsNotificationsEnabled(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

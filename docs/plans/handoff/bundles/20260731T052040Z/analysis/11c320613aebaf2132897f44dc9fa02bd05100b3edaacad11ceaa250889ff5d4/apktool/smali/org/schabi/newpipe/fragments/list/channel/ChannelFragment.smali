.class public Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;
.super Lorg/schabi/newpipe/fragments/BaseStateFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/util/StateSaver$WriteRead;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/BaseStateFragment<",
        "Lorg/schabi/newpipe/extractor/channel/ChannelInfo;",
        ">;",
        "Lorg/schabi/newpipe/util/StateSaver$WriteRead;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

.field public channelContentNotSupported:Z

.field public channelSubscription:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

.field public currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

.field public currentWorker:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

.field public final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field public lastTab:I

.field public menuNotifyButton:Landroid/view/MenuItem;

.field public menuProvider:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;

.field public menuRssButton:Landroid/view/MenuItem;

.field protected name:Ljava/lang/String;

.field protected serviceId:I

.field public subscribeButtonMonitor:Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

.field public subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

.field public tabAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->serviceId:I

    .line 6
    .line 7
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->channelContentNotSupported:Z

    .line 16
    .line 17
    return-void
.end method

.method public static getInstance(Ljava/lang/String;ILjava/lang/String;)Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->serviceId:I

    .line 7
    .line 8
    iput-object p0, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->url:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p2, ""

    .line 18
    .line 19
    :goto_0
    iput-object p2, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->name:Ljava/lang/String;

    .line 20
    .line 21
    return-object v0
.end method


# virtual methods
.method public final doInitialLoadLogic()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->startLoading(Z)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->handleResult(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final generateSuffix()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final handleResult(Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->hideLoading()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getOriginalUrl()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iput v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->serviceId:I

    .line 19
    .line 20
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->url:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v2, ""

    .line 30
    .line 31
    :goto_0
    iput-object v2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->name:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {}, Lorg/schabi/newpipe/util/image/ImageStrategy;->shouldLoadImages()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x1

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getBanners()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 51
    .line 52
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelBannerImage:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Landroid/widget/ImageView;

    .line 55
    .line 56
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getBanners()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const v3, 0x7f0801b5

    .line 64
    .line 65
    .line 66
    invoke-static {v2}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v0, v2, v3, v1}, Lokhttp3/Cookie$Companion;->loadImageDefault(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 75
    .line 76
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelBannerImage:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Landroid/widget/ImageView;

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    .line 83
    .line 84
    :goto_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 85
    .line 86
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelAvatarView:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 89
    .line 90
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getAvatars()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {v0, v2}, Lokhttp3/Cookie$Companion;->loadAvatar(Landroid/widget/ImageView;Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 98
    .line 99
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->subChannelAvatarView:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 102
    .line 103
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getParentChannelAvatars()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v0, v2}, Lokhttp3/Cookie$Companion;->loadAvatar(Landroid/widget/ImageView;Ljava/util/List;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 111
    .line 112
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelTitleView:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 115
    .line 116
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 124
    .line 125
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscriberView:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 128
    .line 129
    const/4 v2, 0x0

    .line 130
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getSubscriberCount()J

    .line 134
    .line 135
    .line 136
    move-result-wide v3

    .line 137
    const-wide/16 v5, 0x0

    .line 138
    .line 139
    cmp-long v0, v3, v5

    .line 140
    .line 141
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 142
    .line 143
    if-ltz v0, :cond_2

    .line 144
    .line 145
    iget-object v0, v3, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscriberView:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 148
    .line 149
    iget-object v3, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 150
    .line 151
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getSubscriberCount()J

    .line 152
    .line 153
    .line 154
    move-result-wide v4

    .line 155
    invoke-static {v3, v4, v5}, Lorg/schabi/newpipe/util/Localization;->shortSubscriberCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_2
    iget-object v0, v3, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscriberView:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 166
    .line 167
    const v3, 0x7f1304db

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 171
    .line 172
    .line 173
    :goto_2
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 174
    .line 175
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getParentChannelName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-nez v0, :cond_3

    .line 184
    .line 185
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 186
    .line 187
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->subChannelTitleView:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 190
    .line 191
    const v3, 0x7f13007f

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    iget-object v4, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 199
    .line 200
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getParentChannelName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    new-array v5, v1, [Ljava/lang/Object;

    .line 205
    .line 206
    aput-object v4, v5, v2

    .line 207
    .line 208
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 216
    .line 217
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->subChannelTitleView:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 220
    .line 221
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 225
    .line 226
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->subChannelAvatarView:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 229
    .line 230
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 231
    .line 232
    .line 233
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->menuRssButton:Landroid/view/MenuItem;

    .line 234
    .line 235
    if-eqz v0, :cond_5

    .line 236
    .line 237
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 238
    .line 239
    if-nez v3, :cond_4

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_4
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getFeedUrl()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    xor-int/2addr v3, v1

    .line 251
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 252
    .line 253
    .line 254
    :cond_5
    :goto_3
    iput-boolean v2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->channelContentNotSupported:Z

    .line 255
    .line 256
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    if-eqz v3, :cond_8

    .line 269
    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    check-cast v3, Ljava/lang/Throwable;

    .line 275
    .line 276
    instance-of v3, v3, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;

    .line 277
    .line 278
    if-eqz v3, :cond_6

    .line 279
    .line 280
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->channelContentNotSupported:Z

    .line 281
    .line 282
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 283
    .line 284
    if-nez v0, :cond_7

    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_7
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->errorContentNotSupported:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 290
    .line 291
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 292
    .line 293
    .line 294
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 295
    .line 296
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelKaomoji:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 299
    .line 300
    const-string v3, "(\ufe36\ufe39\ufe3a)"

    .line 301
    .line 302
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    .line 304
    .line 305
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 306
    .line 307
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelKaomoji:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 310
    .line 311
    const/4 v3, 0x2

    .line 312
    const/high16 v4, 0x42340000    # 45.0f

    .line 313
    .line 314
    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 315
    .line 316
    .line 317
    :cond_8
    :goto_4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 318
    .line 319
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 320
    .line 321
    .line 322
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->subscribeButtonMonitor:Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 323
    .line 324
    if-eqz v3, :cond_9

    .line 325
    .line 326
    invoke-static {v3}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 327
    .line 328
    .line 329
    :cond_9
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->updateTabs()V

    .line 330
    .line 331
    .line 332
    new-instance v3, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 333
    .line 334
    invoke-direct {v3, p0, p1}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;)V

    .line 335
    .line 336
    .line 337
    new-instance v4, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda4;

    .line 338
    .line 339
    invoke-direct {v4, p0, p1, v2}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;I)V

    .line 340
    .line 341
    .line 342
    iget-object v5, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 343
    .line 344
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    iget-object v6, v5, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 348
    .line 349
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 350
    .line 351
    .line 352
    move-result v7

    .line 353
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    .line 362
    .line 363
    iget-object v6, v6, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 364
    .line 365
    new-instance v9, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;

    .line 366
    .line 367
    const/16 v10, 0x9

    .line 368
    .line 369
    invoke-direct {v9, v8, v7, v10}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;II)V

    .line 370
    .line 371
    .line 372
    invoke-static {v6, v9}, Lokhttp3/Cookie$Companion;->createMaybe(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeDefer;

    .line 373
    .line 374
    .line 375
    move-result-object v6

    .line 376
    new-instance v7, Lorg/jsoup/parser/TokenData;

    .line 377
    .line 378
    const/16 v8, 0x10

    .line 379
    .line 380
    invoke-direct {v7, v5, p1, v8}, Lorg/jsoup/parser/TokenData;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 381
    .line 382
    .line 383
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatMapCompletable;

    .line 384
    .line 385
    invoke-direct {v5, v6, v7}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatMapCompletable;-><init>(Lio/reactivex/rxjava3/core/Maybe;Lio/reactivex/rxjava3/functions/Function;)V

    .line 386
    .line 387
    .line 388
    sget-object v6, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 389
    .line 390
    invoke-virtual {v5, v6}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 391
    .line 392
    .line 393
    move-result-object v5

    .line 394
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    invoke-virtual {v5, v6}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 399
    .line 400
    .line 401
    move-result-object v5

    .line 402
    new-instance v6, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;

    .line 403
    .line 404
    invoke-direct {v6, v4, v3}, Lio/reactivex/rxjava3/internal/observers/CallbackCompletableObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v5, v6}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v6}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 411
    .line 412
    .line 413
    new-instance v3, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;

    .line 414
    .line 415
    const/4 v4, 0x3

    .line 416
    invoke-direct {v3, p0, v4}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;I)V

    .line 417
    .line 418
    .line 419
    iget-object v4, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 420
    .line 421
    iget-object v4, v4, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 422
    .line 423
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 424
    .line 425
    .line 426
    move-result v5

    .line 427
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v6

    .line 431
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    .line 436
    .line 437
    iget-object v4, v4, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 438
    .line 439
    const-string/jumbo v7, "subscriptions"

    .line 440
    .line 441
    .line 442
    filled-new-array {v7}, [Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v7

    .line 446
    new-instance v8, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;

    .line 447
    .line 448
    const/4 v9, 0x6

    .line 449
    invoke-direct {v8, v6, v5, v9}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;II)V

    .line 450
    .line 451
    .line 452
    invoke-static {v4, v2, v7, v8}, Lokhttp3/Cookie$Companion;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Flowable;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    new-instance v5, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;

    .line 457
    .line 458
    const/4 v6, 0x4

    .line 459
    invoke-direct {v5, v4, v6}, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;-><init>(Ljava/lang/Object;I)V

    .line 460
    .line 461
    .line 462
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    invoke-virtual {v5, v4}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    new-instance v7, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda4;

    .line 471
    .line 472
    invoke-direct {v7, p0, p1, v1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfo;I)V

    .line 473
    .line 474
    .line 475
    new-instance p1, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 476
    .line 477
    invoke-direct {p1, v7, v3}, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v4, p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 484
    .line 485
    .line 486
    new-instance p1, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 487
    .line 488
    const/16 v4, 0x11

    .line 489
    .line 490
    invoke-direct {p1, v4}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 491
    .line 492
    .line 493
    new-instance v7, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;

    .line 494
    .line 495
    invoke-direct {v7, v5, p1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;-><init>(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;I)V

    .line 496
    .line 497
    .line 498
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkip;

    .line 499
    .line 500
    invoke-direct {p1, v7, v1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkip;-><init>(Lio/reactivex/rxjava3/core/Observable;I)V

    .line 501
    .line 502
    .line 503
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 504
    .line 505
    .line 506
    move-result-object v7

    .line 507
    invoke-virtual {p1, v7}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;

    .line 508
    .line 509
    .line 510
    move-result-object p1

    .line 511
    new-instance v7, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;

    .line 512
    .line 513
    invoke-direct {v7, p0, v6}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;I)V

    .line 514
    .line 515
    .line 516
    new-instance v6, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 517
    .line 518
    invoke-direct {v6, v7, v3}, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {p1, v6}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0, v6}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 525
    .line 526
    .line 527
    new-instance p1, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 528
    .line 529
    invoke-direct {p1, v4}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 530
    .line 531
    .line 532
    new-instance v4, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;

    .line 533
    .line 534
    invoke-direct {v4, v5, p1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;-><init>(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;I)V

    .line 535
    .line 536
    .line 537
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkip;

    .line 538
    .line 539
    invoke-direct {p1, v4, v1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkip;-><init>(Lio/reactivex/rxjava3/core/Observable;I)V

    .line 540
    .line 541
    .line 542
    new-instance v4, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkip;

    .line 543
    .line 544
    invoke-direct {v4, p1, v2}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSkip;-><init>(Lio/reactivex/rxjava3/core/Observable;I)V

    .line 545
    .line 546
    .line 547
    new-instance p1, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;

    .line 548
    .line 549
    const/4 v2, 0x5

    .line 550
    invoke-direct {p1, p0, v2}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;I)V

    .line 551
    .line 552
    .line 553
    new-instance v2, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;

    .line 554
    .line 555
    invoke-direct {v2, v4, p1, v1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;-><init>(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;I)V

    .line 556
    .line 557
    .line 558
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 559
    .line 560
    .line 561
    move-result-object p1

    .line 562
    invoke-virtual {v2, p1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;

    .line 563
    .line 564
    .line 565
    move-result-object p1

    .line 566
    new-instance v1, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;

    .line 567
    .line 568
    invoke-direct {v1, p0, v9}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;I)V

    .line 569
    .line 570
    .line 571
    new-instance p0, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 572
    .line 573
    invoke-direct {p0, v1, v3}, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 574
    .line 575
    .line 576
    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 580
    .line 581
    .line 582
    return-void
.end method

.method public final initListeners()V
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 8
    .line 9
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->subChannelAvatarView:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 17
    .line 18
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->subChannelTitleView:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-direct {p1, p2}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->tabAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 14
    .line 15
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 16
    .line 17
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->viewPager:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 25
    .line 26
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->tabLayout:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    .line 29
    .line 30
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->viewPager:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->name:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->setTitle(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 43
    .line 44
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelTitleView:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 47
    .line 48
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->name:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lorg/schabi/newpipe/util/image/ImageStrategy;->shouldLoadImages()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 60
    .line 61
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelBannerImage:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p0, Landroid/widget/ImageView;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void
.end method

.method public final monitorSubscribeButton(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/internal/observers/LambdaObserver;
    .locals 6

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 13
    .line 14
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Landroidx/appcompat/widget/AppCompatButton;

    .line 17
    .line 18
    new-instance v2, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, p0, v3}, Lcom/jakewharton/rxbinding4/view/ViewClickObservable;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v2, p0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sget-object v2, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/observable/ObservableObserveOn;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-wide/16 v4, 0x64

    .line 39
    .line 40
    invoke-virtual {p0, v4, v5}, Lio/reactivex/rxjava3/core/Observable;->debounce(J)Lio/reactivex/rxjava3/internal/operators/observable/ObservableDebounceTimed;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance v2, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;

    .line 45
    .line 46
    invoke-direct {v2, v0, v1}, Lio/reactivex/rxjava3/internal/observers/LambdaObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 47
    .line 48
    .line 49
    :try_start_0
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap$MapObserver;

    .line 50
    .line 51
    invoke-direct {v0, v2, p1, v3}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableMap$MapObserver;-><init>(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/core/Observer;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    return-object v2

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    invoke-static {p0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Lkotlin/math/MathKt;->onError(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Ljava/lang/NullPointerException;

    .line 66
    .line 67
    const-string v0, "Actually not, but can\'t throw other exceptions due to RS"

    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :catch_0
    move-exception p0

    .line 77
    throw p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 7
    .line 8
    invoke-direct {p1, v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 12
    .line 13
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 1
    const p3, 0x7f0d0054

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0a0069

    .line 10
    .line 11
    .line 12
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout;

    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    const p2, 0x7f0a00a8

    .line 21
    .line 22
    .line 23
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    check-cast p3, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 28
    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    const p2, 0x7f0a00a9

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/ImageView;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    const p2, 0x7f0a00aa

    .line 43
    .line 44
    .line 45
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    const p2, 0x7f0a00ab

    .line 54
    .line 55
    .line 56
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 61
    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    const p2, 0x7f0a00ad

    .line 65
    .line 66
    .line 67
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroidx/appcompat/widget/AppCompatButton;

    .line 72
    .line 73
    if-eqz v2, :cond_0

    .line 74
    .line 75
    const p2, 0x7f0a00ae

    .line 76
    .line 77
    .line 78
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 83
    .line 84
    if-eqz v3, :cond_0

    .line 85
    .line 86
    const p2, 0x7f0a00af

    .line 87
    .line 88
    .line 89
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 94
    .line 95
    if-eqz v4, :cond_0

    .line 96
    .line 97
    const p2, 0x7f0a0144

    .line 98
    .line 99
    .line 100
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Landroid/widget/LinearLayout;

    .line 105
    .line 106
    if-eqz v5, :cond_0

    .line 107
    .line 108
    const p2, 0x7f0a0156

    .line 109
    .line 110
    .line 111
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    check-cast v5, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 116
    .line 117
    if-eqz v5, :cond_0

    .line 118
    .line 119
    const p2, 0x7f0a015b

    .line 120
    .line 121
    .line 122
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    if-eqz v6, :cond_0

    .line 127
    .line 128
    invoke-static {v6}, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ErrorPanelBinding;

    .line 129
    .line 130
    .line 131
    const p2, 0x7f0a0218

    .line 132
    .line 133
    .line 134
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Landroid/widget/ProgressBar;

    .line 139
    .line 140
    if-eqz v6, :cond_0

    .line 141
    .line 142
    const p2, 0x7f0a03a6

    .line 143
    .line 144
    .line 145
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    check-cast v6, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 150
    .line 151
    if-eqz v6, :cond_0

    .line 152
    .line 153
    const p2, 0x7f0a03a7

    .line 154
    .line 155
    .line 156
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    check-cast v7, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 161
    .line 162
    if-eqz v7, :cond_0

    .line 163
    .line 164
    const p2, 0x7f0a03c3

    .line 165
    .line 166
    .line 167
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    check-cast v8, Lcom/google/android/material/tabs/TabLayout;

    .line 172
    .line 173
    if-eqz v8, :cond_0

    .line 174
    .line 175
    const p2, 0x7f0a0428

    .line 176
    .line 177
    .line 178
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    check-cast v9, Landroidx/viewpager/widget/ViewPager;

    .line 183
    .line 184
    if-eqz v9, :cond_0

    .line 185
    .line 186
    new-instance p2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 187
    .line 188
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 189
    .line 190
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 191
    .line 192
    .line 193
    iput-object p1, p2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->rootView:Ljava/lang/Object;

    .line 194
    .line 195
    iput-object p3, p2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelAvatarView:Ljava/lang/Object;

    .line 196
    .line 197
    iput-object v0, p2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelBannerImage:Ljava/lang/Object;

    .line 198
    .line 199
    iput-object v1, p2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelKaomoji:Ljava/lang/Object;

    .line 200
    .line 201
    iput-object v2, p2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Ljava/lang/Object;

    .line 202
    .line 203
    iput-object v3, p2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscriberView:Ljava/lang/Object;

    .line 204
    .line 205
    iput-object v4, p2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelTitleView:Ljava/lang/Object;

    .line 206
    .line 207
    iput-object v5, p2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->errorContentNotSupported:Ljava/lang/Object;

    .line 208
    .line 209
    iput-object v6, p2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->subChannelAvatarView:Ljava/lang/Object;

    .line 210
    .line 211
    iput-object v7, p2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->subChannelTitleView:Ljava/lang/Object;

    .line 212
    .line 213
    iput-object v8, p2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->tabLayout:Ljava/lang/Object;

    .line 214
    .line 215
    iput-object v9, p2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->viewPager:Ljava/lang/Object;

    .line 216
    .line 217
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 218
    .line 219
    return-object p1

    .line 220
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    const-string p1, "Missing required view with ID: "

    .line 229
    .line 230
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    const/4 p0, 0x0

    .line 238
    return-object p0
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentWorker:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 12
    .line 13
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 18
    .line 19
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->menuProvider:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;

    .line 20
    .line 21
    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->menuProvider:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->removeMenuProvider(Landroidx/core/view/MenuProvider;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "LastTab"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lastTab:I

    .line 9
    .line 10
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->tabLayout:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/google/android/material/tabs/TabLayout;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const-string v0, "LastTab"

    .line 17
    .line 18
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->menuProvider:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final readFrom(Ljava/util/Queue;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lastTab:I

    .line 20
    .line 21
    return-void
.end method

.method public final setNotify(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->subscriptionManager:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 10
    .line 11
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v3, v0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v3, v3, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 27
    .line 28
    new-instance v4, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;

    .line 29
    .line 30
    const/16 v5, 0x9

    .line 31
    .line 32
    invoke-direct {v4, v2, v1, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v4}, Lokhttp3/Cookie$Companion;->createMaybe(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeDefer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Lokio/PriorityQueue;

    .line 40
    .line 41
    const/16 v3, 0xd

    .line 42
    .line 43
    invoke-direct {v2, p1, v0, v3}, Lokio/PriorityQueue;-><init>(ILjava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatMapCompletable;

    .line 47
    .line 48
    invoke-direct {p1, v1, v2}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFlatMapCompletable;-><init>(Lio/reactivex/rxjava3/core/Maybe;Lio/reactivex/rxjava3/functions/Function;)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/EmptyCompletableObserver;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final showLoading()V
    .locals 9

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showLoading()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 5
    .line 6
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelAvatarView:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 9
    .line 10
    invoke-static {v0}, Lokio/Okio;->getRequestManager(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcoil3/request/ViewTargetRequestManager;->dispose()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 18
    .line 19
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelBannerImage:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-static {v0}, Lokio/Okio;->getRequestManager(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcoil3/request/ViewTargetRequestManager;->dispose()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 31
    .line 32
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->subChannelAvatarView:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 35
    .line 36
    invoke-static {v0}, Lokio/Okio;->getRequestManager(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcoil3/request/ViewTargetRequestManager;->dispose()V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 44
    .line 45
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Ljava/lang/Object;

    .line 46
    .line 47
    move-object v0, p0

    .line 48
    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    const/16 v8, 0x1c

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    const-wide/16 v2, 0x64

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    const-wide/16 v5, 0x0

    .line 58
    .line 59
    invoke-static/range {v0 .. v8}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final startLoading(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->startLoading(Z)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->updateTabs()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentWorker:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->serviceId:I

    .line 18
    .line 19
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->url:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/util/ExtractorHelper;->getChannelInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;I)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;I)V

    .line 45
    .line 46
    .line 47
    new-instance v3, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 48
    .line 49
    invoke-direct {v3, v1, v2}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 50
    .line 51
    .line 52
    :try_start_0
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;

    .line 53
    .line 54
    invoke-direct {v1, v3, v0}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    iput-object v3, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentWorker:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 61
    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    const-string/jumbo p1, "subscribeActual failed"

    .line 65
    .line 66
    .line 67
    invoke-static {p0, p1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    throw p0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    throw p0
.end method

.method public final updateNotifyButton(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->menuNotifyButton:Landroid/view/MenuItem;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    sget-object v4, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v3}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;->areNewStreamsNotificationsEnabled(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->menuNotifyButton:Landroid/view/MenuItem;

    .line 27
    .line 28
    iget v3, p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->notificationMode:I

    .line 29
    .line 30
    if-ne v3, v2, :cond_1

    .line 31
    .line 32
    move v3, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v3, v1

    .line 35
    :goto_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->menuNotifyButton:Landroid/view/MenuItem;

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    move v1, v2

    .line 43
    :cond_3
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final updateTabs()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->tabAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 4
    .line 5
    iget-object v2, v1, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentList:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v1, v1, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentTitleList:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_15

    .line 19
    .line 20
    iget-boolean v1, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->channelContentNotSupported:Z

    .line 21
    .line 22
    if-nez v1, :cond_15

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget-object v5, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 33
    .line 34
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getTabs()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_13

    .line 47
    .line 48
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 53
    .line 54
    invoke-virtual {v6}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    check-cast v9, Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    const-string v12, "channels"

    .line 72
    .line 73
    const-string v14, "likes"

    .line 74
    .line 75
    const-string v3, "livestreams"

    .line 76
    .line 77
    const/16 v16, 0x4

    .line 78
    .line 79
    const-string/jumbo v11, "videos"

    .line 80
    .line 81
    .line 82
    const/16 v17, 0x3

    .line 83
    .line 84
    const-string/jumbo v13, "tracks"

    .line 85
    .line 86
    .line 87
    const/16 v18, 0x2

    .line 88
    .line 89
    const-string/jumbo v15, "shorts"

    .line 90
    .line 91
    .line 92
    const-string v2, "albums"

    .line 93
    .line 94
    const-string v7, "playlists"

    .line 95
    .line 96
    const/4 v8, -0x1

    .line 97
    sparse-switch v10, :sswitch_data_0

    .line 98
    .line 99
    .line 100
    :goto_1
    move v10, v8

    .line 101
    goto :goto_2

    .line 102
    :sswitch_0
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    if-nez v10, :cond_0

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_0
    const/4 v10, 0x7

    .line 110
    goto :goto_2

    .line 111
    :sswitch_1
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    if-nez v10, :cond_1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_1
    const/4 v10, 0x6

    .line 119
    goto :goto_2

    .line 120
    :sswitch_2
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    if-nez v10, :cond_2

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    const/4 v10, 0x5

    .line 128
    goto :goto_2

    .line 129
    :sswitch_3
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    if-nez v10, :cond_3

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    move/from16 v10, v16

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :sswitch_4
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    if-nez v10, :cond_4

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    move/from16 v10, v17

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :sswitch_5
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    if-nez v10, :cond_5

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_5
    move/from16 v10, v18

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :sswitch_6
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    if-nez v10, :cond_6

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_6
    const/4 v10, 0x1

    .line 167
    goto :goto_2

    .line 168
    :sswitch_7
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v10

    .line 172
    if-nez v10, :cond_7

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_7
    const/4 v10, 0x0

    .line 176
    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 177
    .line 178
    .line 179
    move v10, v8

    .line 180
    goto :goto_3

    .line 181
    :pswitch_0
    const v10, 0x7f130480

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :pswitch_1
    const v10, 0x7f130482

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :pswitch_2
    const v10, 0x7f130483

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :pswitch_3
    const v10, 0x7f130488

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :pswitch_4
    const v10, 0x7f130487

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :pswitch_5
    const v10, 0x7f130485

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :pswitch_6
    const v10, 0x7f13047f

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :pswitch_7
    const v10, 0x7f130484

    .line 210
    .line 211
    .line 212
    :goto_3
    if-ne v10, v8, :cond_8

    .line 213
    .line 214
    move-object/from16 v19, v5

    .line 215
    .line 216
    const/4 v5, 0x0

    .line 217
    goto :goto_4

    .line 218
    :cond_8
    const v8, 0x7f130481

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    move-object/from16 v19, v5

    .line 226
    .line 227
    const/4 v5, 0x0

    .line 228
    invoke-interface {v4, v8, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    if-nez v5, :cond_9

    .line 233
    .line 234
    const/4 v5, 0x1

    .line 235
    goto :goto_4

    .line 236
    :cond_9
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    :goto_4
    if-eqz v5, :cond_12

    .line 245
    .line 246
    iget v5, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->serviceId:I

    .line 247
    .line 248
    iget-object v8, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->name:Ljava/lang/String;

    .line 249
    .line 250
    invoke-static {v5, v6, v8}, Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;->getInstance(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)Lorg/schabi/newpipe/fragments/list/channel/ChannelTabFragment;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    iget-boolean v6, v0, Lorg/schabi/newpipe/BaseFragment;->useAsFrontPage:Z

    .line 255
    .line 256
    invoke-virtual {v5, v6}, Lorg/schabi/newpipe/BaseFragment;->useAsFrontPage(Z)V

    .line 257
    .line 258
    .line 259
    iget-object v6, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->tabAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 260
    .line 261
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 262
    .line 263
    .line 264
    move-result v8

    .line 265
    sparse-switch v8, :sswitch_data_1

    .line 266
    .line 267
    .line 268
    :goto_5
    const/4 v11, -0x1

    .line 269
    goto :goto_6

    .line 270
    :sswitch_8
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-nez v2, :cond_a

    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_a
    const/4 v11, 0x7

    .line 278
    goto :goto_6

    .line 279
    :sswitch_9
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-nez v2, :cond_b

    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_b
    const/4 v11, 0x6

    .line 287
    goto :goto_6

    .line 288
    :sswitch_a
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-nez v2, :cond_c

    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_c
    const/4 v11, 0x5

    .line 296
    goto :goto_6

    .line 297
    :sswitch_b
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    if-nez v2, :cond_d

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_d
    move/from16 v11, v16

    .line 305
    .line 306
    goto :goto_6

    .line 307
    :sswitch_c
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-nez v2, :cond_e

    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_e
    move/from16 v11, v17

    .line 315
    .line 316
    goto :goto_6

    .line 317
    :sswitch_d
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    if-nez v2, :cond_f

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_f
    move/from16 v11, v18

    .line 325
    .line 326
    goto :goto_6

    .line 327
    :sswitch_e
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    if-nez v2, :cond_10

    .line 332
    .line 333
    goto :goto_5

    .line 334
    :cond_10
    const/4 v11, 0x1

    .line 335
    goto :goto_6

    .line 336
    :sswitch_f
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-nez v2, :cond_11

    .line 341
    .line 342
    goto :goto_5

    .line 343
    :cond_11
    const/4 v11, 0x0

    .line 344
    :goto_6
    packed-switch v11, :pswitch_data_1

    .line 345
    .line 346
    .line 347
    const v2, 0x7f13050e

    .line 348
    .line 349
    .line 350
    goto :goto_7

    .line 351
    :pswitch_8
    const v2, 0x7f130083

    .line 352
    .line 353
    .line 354
    goto :goto_7

    .line 355
    :pswitch_9
    const v2, 0x7f130084

    .line 356
    .line 357
    .line 358
    goto :goto_7

    .line 359
    :pswitch_a
    const v2, 0x7f130085

    .line 360
    .line 361
    .line 362
    goto :goto_7

    .line 363
    :pswitch_b
    const v2, 0x7f130089

    .line 364
    .line 365
    .line 366
    goto :goto_7

    .line 367
    :pswitch_c
    const v2, 0x7f130088

    .line 368
    .line 369
    .line 370
    goto :goto_7

    .line 371
    :pswitch_d
    const v2, 0x7f130087

    .line 372
    .line 373
    .line 374
    goto :goto_7

    .line 375
    :pswitch_e
    const v2, 0x7f130082

    .line 376
    .line 377
    .line 378
    goto :goto_7

    .line 379
    :pswitch_f
    const v2, 0x7f130086

    .line 380
    .line 381
    .line 382
    :goto_7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-virtual {v6, v5, v2}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->addFragment(Lorg/schabi/newpipe/BaseFragment;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    :cond_12
    move-object/from16 v5, v19

    .line 390
    .line 391
    const/4 v3, 0x0

    .line 392
    goto/16 :goto_0

    .line 393
    .line 394
    :cond_13
    const v8, 0x7f130481

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    const/4 v5, 0x0

    .line 402
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    if-nez v2, :cond_14

    .line 407
    .line 408
    const/4 v2, 0x1

    .line 409
    goto :goto_8

    .line 410
    :cond_14
    const v3, 0x7f13047e

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    :goto_8
    if-eqz v2, :cond_15

    .line 422
    .line 423
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->tabAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 424
    .line 425
    new-instance v3, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;

    .line 426
    .line 427
    iget-object v4, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 428
    .line 429
    invoke-direct {v3}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;-><init>()V

    .line 430
    .line 431
    .line 432
    iput-object v4, v3, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;->channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 433
    .line 434
    const v4, 0x7f130081

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    invoke-virtual {v2, v3, v1}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->addFragment(Lorg/schabi/newpipe/BaseFragment;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    :cond_15
    iget-object v1, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->tabAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 445
    .line 446
    invoke-virtual {v1}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->notifyDataSetUpdate()V

    .line 447
    .line 448
    .line 449
    const/4 v3, 0x0

    .line 450
    :goto_9
    iget-object v1, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->tabAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 451
    .line 452
    iget-object v1, v1, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentList:Ljava/util/ArrayList;

    .line 453
    .line 454
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 459
    .line 460
    if-ge v3, v1, :cond_17

    .line 461
    .line 462
    iget-object v1, v2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->tabLayout:Ljava/lang/Object;

    .line 463
    .line 464
    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 465
    .line 466
    invoke-virtual {v1, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->tabAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 471
    .line 472
    invoke-virtual {v2, v3}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->getItemTitle(I)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    iget-object v4, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 477
    .line 478
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 479
    .line 480
    .line 481
    move-result v4

    .line 482
    if-eqz v4, :cond_16

    .line 483
    .line 484
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 485
    .line 486
    .line 487
    move-result v4

    .line 488
    if-nez v4, :cond_16

    .line 489
    .line 490
    iget-object v4, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 491
    .line 492
    invoke-virtual {v4, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 493
    .line 494
    .line 495
    :cond_16
    iput-object v2, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 496
    .line 497
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    .line 498
    .line 499
    .line 500
    add-int/lit8 v3, v3, 0x1

    .line 501
    .line 502
    goto :goto_9

    .line 503
    :cond_17
    iget-object v1, v2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->tabLayout:Ljava/lang/Object;

    .line 504
    .line 505
    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 506
    .line 507
    iget v2, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->lastTab:I

    .line 508
    .line 509
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    if-eqz v1, :cond_18

    .line 514
    .line 515
    iget-object v0, v0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 516
    .line 517
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->tabLayout:Ljava/lang/Object;

    .line 518
    .line 519
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 520
    .line 521
    const/4 v2, 0x1

    .line 522
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 523
    .line 524
    .line 525
    :cond_18
    return-void

    .line 526
    nop

    .line 527
    :sswitch_data_0
    .sparse-switch
        -0x6f36471f -> :sswitch_7
        -0x5459b01c -> :sswitch_6
        -0x35d4f489 -> :sswitch_5
        -0x3399c778 -> :sswitch_4
        -0x30ad84a8 -> :sswitch_3
        -0x1a2eb179 -> :sswitch_2
        0x62343bc -> :sswitch_1
        0x556423d0 -> :sswitch_0
    .end sparse-switch

    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
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

    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    :sswitch_data_1
    .sparse-switch
        -0x6f36471f -> :sswitch_f
        -0x5459b01c -> :sswitch_e
        -0x35d4f489 -> :sswitch_d
        -0x3399c778 -> :sswitch_c
        -0x30ad84a8 -> :sswitch_b
        -0x1a2eb179 -> :sswitch_a
        0x62343bc -> :sswitch_9
        0x556423d0 -> :sswitch_8
    .end sparse-switch

    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final writeTo(Ljava/util/LinkedList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->tabLayout:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lcom/google/android/material/tabs/TabLayout;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

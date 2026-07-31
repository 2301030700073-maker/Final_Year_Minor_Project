.class public final synthetic Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "downloadDialog"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;

    .line 15
    .line 16
    check-cast v4, Ljava/util/function/Consumer;

    .line 17
    .line 18
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 19
    .line 20
    new-instance v0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-direct {v0, p0, v4, p1, v1}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;Ljava/util/function/Consumer;Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    .line 31
    .line 32
    check-cast v4, Ljava/util/function/Consumer;

    .line 33
    .line 34
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroidx/lifecycle/LifecycleRegistry;

    .line 41
    .line 42
    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 43
    .line 44
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-ltz v0, :cond_0

    .line 51
    .line 52
    new-instance v0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;

    .line 53
    .line 54
    invoke-direct {v0, p0, v4, p1, v3}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;Ljava/util/function/Consumer;Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;

    .line 66
    .line 67
    invoke-direct {v1, p0, v4}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$1;-><init>(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;Ljava/util/function/Consumer;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 71
    .line 72
    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 74
    .line 75
    const/16 v1, 0x1d

    .line 76
    .line 77
    if-ge v0, v1, :cond_1

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_1

    .line 84
    .line 85
    new-instance v0, Landroid/content/Intent;

    .line 86
    .line 87
    const-class v1, Lorg/schabi/newpipe/RouterActivity;

    .line 88
    .line 89
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .line 91
    .line 92
    const/high16 p1, 0x20000

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 98
    .line 99
    .line 100
    :cond_1
    :goto_0
    return-void

    .line 101
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    .line 102
    .line 103
    check-cast v4, Lio/reactivex/rxjava3/internal/operators/single/SingleCreate$Emitter;

    .line 104
    .line 105
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 106
    .line 107
    new-instance v0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;

    .line 108
    .line 109
    invoke-direct {v0, p0, p1, v4}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;Landroidx/appcompat/app/AppCompatActivity;Lio/reactivex/rxjava3/internal/operators/single/SingleCreate$Emitter;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_2
    check-cast p0, Lorg/schabi/newpipe/download/LoadingDialog;

    .line 117
    .line 118
    check-cast v4, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 119
    .line 120
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 121
    .line 122
    invoke-virtual {p0, v2, v2}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    new-instance v0, Lorg/schabi/newpipe/download/DownloadDialog;

    .line 130
    .line 131
    invoke-direct {v0, p1, v4}, Lorg/schabi/newpipe/download/DownloadDialog;-><init>(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :pswitch_3
    check-cast p0, Lorg/schabi/newpipe/download/LoadingDialog;

    .line 139
    .line 140
    check-cast v4, Ljava/lang/String;

    .line 141
    .line 142
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 143
    .line 144
    invoke-virtual {p0, v2, v2}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 145
    .line 146
    .line 147
    check-cast p1, Lorg/schabi/newpipe/RouterActivity;

    .line 148
    .line 149
    invoke-virtual {p1, v4}, Lorg/schabi/newpipe/RouterActivity;->showUnsupportedUrlDialog(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :pswitch_4
    check-cast p0, Lorg/schabi/newpipe/RouterActivity$PersistentFragment;

    .line 154
    .line 155
    check-cast v4, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 156
    .line 157
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 158
    .line 159
    new-instance v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 160
    .line 161
    invoke-direct {v0, v4}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 162
    .line 163
    .line 164
    new-array v1, v3, [Ljava/lang/Object;

    .line 165
    .line 166
    aput-object v0, v1, v2

    .line 167
    .line 168
    new-instance v0, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .line 172
    .line 173
    aget-object v1, v1, v2

    .line 174
    .line 175
    invoke-static {v1, v0, v1, v0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    new-instance v1, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda5;

    .line 180
    .line 181
    invoke-direct {v1, p0, v3}, Lorg/schabi/newpipe/RouterActivity$PersistentFragment$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/RouterActivity$PersistentFragment;I)V

    .line 182
    .line 183
    .line 184
    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->createCorrespondingDialog(Landroid/content/Context;Ljava/util/List;Ljava/util/function/Consumer;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :pswitch_5
    move-object v5, p0

    .line 189
    check-cast v5, Ljava/lang/Throwable;

    .line 190
    .line 191
    move-object v9, v4

    .line 192
    check-cast v9, Ljava/lang/String;

    .line 193
    .line 194
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 195
    .line 196
    new-instance v4, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 197
    .line 198
    const-string p0, "Tried to add "

    .line 199
    .line 200
    const-string v0, " to a playlist"

    .line 201
    .line 202
    invoke-static {p0, v9, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    move-object p0, p1

    .line 207
    check-cast p0, Lorg/schabi/newpipe/RouterActivity;

    .line 208
    .line 209
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity;->currentService:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 210
    .line 211
    iget p0, p0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 212
    .line 213
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    sget-object v6, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_STREAM:Lorg/schabi/newpipe/error/UserAction;

    .line 218
    .line 219
    invoke-direct/range {v4 .. v9}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-static {p1, v4}, Lorg/schabi/newpipe/RouterActivity;->handleError(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :pswitch_6
    check-cast p0, Lorg/schabi/newpipe/RouterActivity$FetcherService;

    .line 227
    .line 228
    check-cast v4, Lorg/schabi/newpipe/RouterActivity$Choice;

    .line 229
    .line 230
    check-cast p1, Lorg/schabi/newpipe/extractor/Info;

    .line 231
    .line 232
    invoke-static {p0, v4, p1}, Lorg/schabi/newpipe/RouterActivity$FetcherService;->$r8$lambda$RYbQatUeDKy7ChjKpPfYUB5qItk(Lorg/schabi/newpipe/RouterActivity$FetcherService;Lorg/schabi/newpipe/RouterActivity$Choice;Lorg/schabi/newpipe/extractor/Info;)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :pswitch_7
    check-cast p0, Landroid/content/Context;

    .line 237
    .line 238
    check-cast v4, Landroidx/fragment/app/FragmentManager;

    .line 239
    .line 240
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 241
    .line 242
    new-instance v0, Lorg/schabi/newpipe/download/DownloadDialog;

    .line 243
    .line 244
    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/download/DownloadDialog;-><init>(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v4, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :pswitch_8
    check-cast p0, Landroid/content/Context;

    .line 252
    .line 253
    check-cast v4, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 254
    .line 255
    check-cast p1, Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v4}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    invoke-virtual {v4}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUploader()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    sget-object v2, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->CHANNEL:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 266
    .line 267
    invoke-static {p0, p1, v0, v2}, Landroidx/sqlite/SQLite;->getOpenIntent(Landroid/content/Context;Ljava/lang/String;ILorg/schabi/newpipe/extractor/StreamingService$LinkType;)Landroid/content/Intent;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    const/high16 v0, 0x10000000

    .line 272
    .line 273
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 274
    .line 275
    .line 276
    const-string v0, "key_title"

    .line 277
    .line 278
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 282
    .line 283
    .line 284
    return-void

    .line 285
    :pswitch_9
    check-cast p0, Lokhttp3/Request$Builder;

    .line 286
    .line 287
    check-cast v4, Ljava/lang/String;

    .line 288
    .line 289
    check-cast p1, Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    iget-object p0, p0, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    .line 298
    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    invoke-static {v4}, Lorg/jsoup/Jsoup;->headersCheckName(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-static {p1, v4}, Lorg/jsoup/Jsoup;->headersCheckValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-static {p0, v4, p1}, Lorg/jsoup/Jsoup;->commonAddLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    return-void

    .line 312
    nop

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

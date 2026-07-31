.class public final Lorg/schabi/newpipe/download/DownloadDialog$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/download/DownloadDialog$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onServiceDisconnected$org$schabi$newpipe$download$DownloadDialog$1(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onServiceDisconnected$us$shandian$giga$ui$fragment$MissionsFragment$1(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/download/DownloadDialog$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog$1;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v1, Lus/shandian/giga/ui/fragment/MissionsFragment;

    .line 11
    .line 12
    check-cast p2, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 13
    .line 14
    iput-object p2, v1, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 15
    .line 16
    iget-object p0, p2, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    .line 17
    .line 18
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object p2, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 24
    .line 25
    const/16 v3, 0x3e9

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 35
    .line 36
    .line 37
    iput v0, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadDoneCount:I

    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    :goto_0
    iget p1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    .line 44
    .line 45
    if-le p1, v3, :cond_2

    .line 46
    .line 47
    iget-object p2, p0, Lus/shandian/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 50
    .line 51
    .line 52
    iget p1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    .line 53
    .line 54
    sub-int/2addr p1, v2

    .line 55
    iput p1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object p1, p0, Lus/shandian/giga/service/DownloadManagerService;->mFailedDownloads:Landroidx/collection/SparseArrayCompat;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 61
    .line 62
    .line 63
    iget p1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    .line 64
    .line 65
    add-int/2addr p1, v2

    .line 66
    iput p1, p0, Lus/shandian/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    .line 67
    .line 68
    :cond_3
    :goto_1
    new-instance p0, Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 69
    .line 70
    iget-object p1, v1, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    iget-object p2, v1, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 73
    .line 74
    iget-object p2, p2, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    .line 75
    .line 76
    iget-object p2, p2, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 77
    .line 78
    iget-object v2, v1, Lus/shandian/giga/ui/fragment/MissionsFragment;->mEmpty:Landroid/view/View;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-direct {p0, p1, p2, v2, v3}, Lus/shandian/giga/ui/adapter/MissionAdapter;-><init>(Landroid/content/Context;Lus/shandian/giga/service/DownloadManager;Landroid/view/View;Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    iput-object p0, v1, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 88
    .line 89
    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 90
    .line 91
    const/16 p2, 0x19

    .line 92
    .line 93
    invoke-direct {p1, v1, p2}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 94
    .line 95
    .line 96
    iput-object p1, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mRecover:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    invoke-virtual {v1}, Lus/shandian/giga/ui/fragment/MissionsFragment;->setAdapterButtons()V

    .line 99
    .line 100
    .line 101
    iget-object p0, v1, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 102
    .line 103
    iget-object p1, v1, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 104
    .line 105
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    .line 106
    .line 107
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService;->mEchoObservers:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object p0, v1, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 113
    .line 114
    iget-object p0, p0, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    .line 115
    .line 116
    iput-boolean v0, p0, Lus/shandian/giga/service/DownloadManagerService;->mDownloadNotificationEnable:Z

    .line 117
    .line 118
    invoke-virtual {v1}, Lus/shandian/giga/ui/fragment/MissionsFragment;->updateList()V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :pswitch_0
    check-cast v1, Lorg/schabi/newpipe/player/PlayQueueActivity;

    .line 123
    .line 124
    sget p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->$r8$clinit:I

    .line 125
    .line 126
    const-string p0, "PlayQueueActivity"

    .line 127
    .line 128
    const-string p1, "Player service is connected"

    .line 129
    .line 130
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    instance-of p0, p2, Lorg/schabi/newpipe/player/PlayerService$LocalBinder;

    .line 134
    .line 135
    if-eqz p0, :cond_4

    .line 136
    .line 137
    check-cast p2, Lorg/schabi/newpipe/player/PlayerService$LocalBinder;

    .line 138
    .line 139
    iget-object p0, p2, Lorg/schabi/newpipe/player/PlayerService$LocalBinder;->playerService:Ljava/lang/ref/WeakReference;

    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    check-cast p0, Lorg/schabi/newpipe/player/PlayerService;

    .line 146
    .line 147
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 148
    .line 149
    iput-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 150
    .line 151
    :cond_4
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 152
    .line 153
    if-eqz p0, :cond_6

    .line 154
    .line 155
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 156
    .line 157
    if-eqz p1, :cond_6

    .line 158
    .line 159
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-eqz p0, :cond_5

    .line 164
    .line 165
    goto/16 :goto_2

    .line 166
    .line 167
    :cond_5
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 168
    .line 169
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 170
    .line 171
    invoke-virtual {v1, p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->onQueueUpdate(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 172
    .line 173
    .line 174
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 175
    .line 176
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    .line 177
    .line 178
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 179
    .line 180
    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 184
    .line 185
    .line 186
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 187
    .line 188
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    .line 189
    .line 190
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 191
    .line 192
    .line 193
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 194
    .line 195
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    .line 196
    .line 197
    invoke-virtual {p0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 198
    .line 199
    .line 200
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 201
    .line 202
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    .line 203
    .line 204
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    .line 205
    .line 206
    .line 207
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 208
    .line 209
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    .line 210
    .line 211
    new-instance p1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$2;

    .line 212
    .line 213
    const/4 p2, 0x2

    .line 214
    invoke-direct {p1, v1, p2}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$2;-><init>(Ljava/lang/Object;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 218
    .line 219
    .line 220
    new-instance p0, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 221
    .line 222
    new-instance p1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$4;

    .line 223
    .line 224
    invoke-direct {p1, v1, v2}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$4;-><init>(Landroid/widget/SeekBar$OnSeekBarChangeListener;I)V

    .line 225
    .line 226
    .line 227
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 228
    .line 229
    .line 230
    iput-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 231
    .line 232
    iget-object p1, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 233
    .line 234
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    .line 235
    .line 236
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 237
    .line 238
    .line 239
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 240
    .line 241
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->metadata:Landroid/widget/LinearLayout;

    .line 242
    .line 243
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    .line 245
    .line 246
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 247
    .line 248
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->songName:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 249
    .line 250
    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 251
    .line 252
    .line 253
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 254
    .line 255
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->artistName:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 256
    .line 257
    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 258
    .line 259
    .line 260
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 261
    .line 262
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 263
    .line 264
    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 265
    .line 266
    .line 267
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 268
    .line 269
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->liveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 270
    .line 271
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    .line 273
    .line 274
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 275
    .line 276
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlRepeat:Landroid/widget/ImageButton;

    .line 277
    .line 278
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    .line 280
    .line 281
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 282
    .line 283
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlBackward:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 284
    .line 285
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    .line 287
    .line 288
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 289
    .line 290
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlFastRewind:Landroid/widget/ImageButton;

    .line 291
    .line 292
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    .line 294
    .line 295
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 296
    .line 297
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlPlayPause:Landroid/widget/ImageButton;

    .line 298
    .line 299
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    .line 301
    .line 302
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 303
    .line 304
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlFastForward:Landroid/widget/ImageButton;

    .line 305
    .line 306
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    .line 308
    .line 309
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 310
    .line 311
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlForward:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 312
    .line 313
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    .line 315
    .line 316
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 317
    .line 318
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlShuffle:Landroid/widget/ImageButton;

    .line 319
    .line 320
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    .line 322
    .line 323
    iget-object p0, v1, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 324
    .line 325
    if-eqz p0, :cond_7

    .line 326
    .line 327
    iput-object v1, p0, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    .line 328
    .line 329
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    new-instance p2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda0;

    .line 334
    .line 335
    invoke-direct {p2, p0, v0}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/Player;I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1, p2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->notifyPlaybackUpdateToListeners()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->triggerProgressUpdate()V

    .line 345
    .line 346
    .line 347
    goto :goto_3

    .line 348
    :cond_6
    :goto_2
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->unbind()V

    .line 349
    .line 350
    .line 351
    :cond_7
    :goto_3
    return-void

    .line 352
    :pswitch_1
    check-cast p2, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 353
    .line 354
    check-cast v1, Lorg/schabi/newpipe/download/DownloadDialog;

    .line 355
    .line 356
    iget-object p1, p2, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->this$0:Lus/shandian/giga/service/DownloadManagerService;

    .line 357
    .line 358
    iget-object p2, p1, Lus/shandian/giga/service/DownloadManagerService;->mManager:Lus/shandian/giga/service/DownloadManager;

    .line 359
    .line 360
    iget-object v3, p2, Lus/shandian/giga/service/DownloadManager;->mMainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 361
    .line 362
    iput-object v3, v1, Lorg/schabi/newpipe/download/DownloadDialog;->mainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 363
    .line 364
    iget-object v3, p2, Lus/shandian/giga/service/DownloadManager;->mMainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 365
    .line 366
    iput-object v3, v1, Lorg/schabi/newpipe/download/DownloadDialog;->mainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 367
    .line 368
    iput-object p2, v1, Lorg/schabi/newpipe/download/DownloadDialog;->downloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 369
    .line 370
    iget-object p2, p1, Lus/shandian/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    .line 371
    .line 372
    const v3, 0x7f130124

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    iput-boolean p1, v1, Lorg/schabi/newpipe/download/DownloadDialog;->askForSavePath:Z

    .line 384
    .line 385
    iget-object p1, v1, Lorg/schabi/newpipe/download/DownloadDialog;->okButton:Landroid/view/MenuItem;

    .line 386
    .line 387
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 388
    .line 389
    .line 390
    iget-object p1, v1, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 391
    .line 392
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 393
    .line 394
    .line 395
    return-void

    .line 396
    nop

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/download/DownloadDialog$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    sget p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->$r8$clinit:I

    .line 8
    .line 9
    const-string p0, "PlayQueueActivity"

    .line 10
    .line 11
    const-string p1, "Player service is disconnected"

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :pswitch_1
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

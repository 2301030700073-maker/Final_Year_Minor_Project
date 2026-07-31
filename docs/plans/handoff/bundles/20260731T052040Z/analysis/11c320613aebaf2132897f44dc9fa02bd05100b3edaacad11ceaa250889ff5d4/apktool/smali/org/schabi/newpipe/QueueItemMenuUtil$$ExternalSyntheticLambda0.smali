.class public final synthetic Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

.field public final synthetic f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;->f$3:Landroidx/fragment/app/FragmentManager;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a0247

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->indexOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->remove(I)V

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :cond_0
    const v0, 0x7f0a0240

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-ne p1, v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->STREAM:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 44
    .line 45
    invoke-static {v3, p1, p0, v1}, Landroidx/sqlite/SQLite;->getOpenIntent(Landroid/content/Context;Ljava/lang/String;ILorg/schabi/newpipe/extractor/StreamingService$LinkType;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/high16 p1, 0x10000000

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string p1, "key_title"

    .line 56
    .line 57
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string/jumbo p1, "switching_players"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v3, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    .line 70
    .line 71
    return v2

    .line 72
    :cond_1
    const v0, 0x7f0a023d

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;->f$3:Landroidx/fragment/app/FragmentManager;

    .line 76
    .line 77
    if-ne p1, v0, :cond_2

    .line 78
    .line 79
    new-instance p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 80
    .line 81
    invoke-direct {p1, v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 82
    .line 83
    .line 84
    new-array v0, v2, [Ljava/lang/Object;

    .line 85
    .line 86
    aput-object p1, v0, v4

    .line 87
    .line 88
    new-instance p1, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .line 92
    .line 93
    aget-object v0, v0, v4

    .line 94
    .line 95
    invoke-static {v0, p1, v0, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance v0, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda1;

    .line 100
    .line 101
    invoke-direct {v0, p0, v4}, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 102
    .line 103
    .line 104
    invoke-static {v3, p1, v0}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->createCorrespondingDialog(Landroid/content/Context;Ljava/util/List;Ljava/util/function/Consumer;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 105
    .line 106
    .line 107
    return v2

    .line 108
    :cond_2
    const v0, 0x7f0a023f

    .line 109
    .line 110
    .line 111
    if-ne p1, v0, :cond_4

    .line 112
    .line 113
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUploaderUrl()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    new-instance v5, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;

    .line 126
    .line 127
    invoke-direct {v5, v3, v1, v2}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 128
    .line 129
    .line 130
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_3

    .line 135
    .line 136
    invoke-virtual {v5, v0}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;->accept(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    return v2

    .line 140
    :cond_3
    new-instance v0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda0;

    .line 141
    .line 142
    invoke-direct {v0, v5, v4}, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;I)V

    .line 143
    .line 144
    .line 145
    invoke-static {v3, p0, p1, v0}, Lkotlin/text/UStringsKt;->fetchStreamInfoAndSaveToDatabase(Landroid/content/Context;ILjava/lang/String;Ljava/util/function/Consumer;)V

    .line 146
    .line 147
    .line 148
    return v2

    .line 149
    :cond_4
    const v0, 0x7f0a024d

    .line 150
    .line 151
    .line 152
    if-ne p1, v0, :cond_5

    .line 153
    .line 154
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getThumbnails()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v3, p0, p1, v0}, Landroidx/transition/Transition$Impl26;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 167
    .line 168
    .line 169
    return v2

    .line 170
    :cond_5
    const v0, 0x7f0a0242

    .line 171
    .line 172
    .line 173
    if-ne p1, v0, :cond_6

    .line 174
    .line 175
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    new-instance v1, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;

    .line 184
    .line 185
    const/4 v4, 0x2

    .line 186
    invoke-direct {v1, v3, p0, v4}, Lorg/schabi/newpipe/DownloaderImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 187
    .line 188
    .line 189
    invoke-static {v3, p1, v0, v1}, Lkotlin/text/UStringsKt;->fetchStreamInfoAndSaveToDatabase(Landroid/content/Context;ILjava/lang/String;Ljava/util/function/Consumer;)V

    .line 190
    .line 191
    .line 192
    return v2

    .line 193
    :cond_6
    return v4
.end method

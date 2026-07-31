.class public final Lorg/schabi/newpipe/streams/WebMReader$Segment;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public currentCluster:Ljava/lang/Object;

.field public firstClusterInSegment:Z

.field public info:Ljava/lang/Object;

.field public ref:Ljava/lang/Object;

.field public this$0:Ljava/lang/Object;

.field public tracks:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->firstClusterInSegment:Z

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Ljava/lang/Object;

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    if-eqz p2, :cond_3

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    iput-object p1, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->info:Ljava/lang/Object;

    .line 27
    .line 28
    iput-object p2, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->tracks:Ljava/lang/Object;

    .line 29
    .line 30
    iput-object p3, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->ref:Ljava/lang/Object;

    .line 31
    .line 32
    iput-object p4, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Ljava/lang/Object;

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->firstClusterInSegment:Z

    .line 36
    .line 37
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayer()Lj$/util/Optional;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 46
    .line 47
    const/16 v2, 0x14

    .line 48
    .line 49
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, v1}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-virtual {p3}, Lj$/util/Optional;->isPresent()Z

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    if-eqz p3, :cond_0

    .line 61
    .line 62
    sget-object p3, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->ENQUEUE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 63
    .line 64
    invoke-virtual {p0, p3}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->addEntry(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayer()Lj$/util/Optional;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 72
    .line 73
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, v1}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 81
    .line 82
    const/16 v3, 0x15

    .line 83
    .line 84
    invoke-direct {v1, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-virtual {p3, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    check-cast p3, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    invoke-virtual {p2}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getPlayer()Lj$/util/Optional;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 106
    .line 107
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v1}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 115
    .line 116
    const/16 v2, 0x13

    .line 117
    .line 118
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p2, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    check-cast p2, Ljava/lang/Integer;

    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    sub-int/2addr p2, p1

    .line 136
    if-ge p3, p2, :cond_0

    .line 137
    .line 138
    sget-object p1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->ENQUEUE_NEXT:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 139
    .line 140
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->addEntry(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)V

    .line 141
    .line 142
    .line 143
    :cond_0
    sget-object p1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->START_HERE_ON_BACKGROUND:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 144
    .line 145
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->addEntry(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p4}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    sget-object p2, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 156
    .line 157
    if-eq p1, p2, :cond_2

    .line 158
    .line 159
    sget-object p2, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 160
    .line 161
    if-eq p1, p2, :cond_2

    .line 162
    .line 163
    sget-object p2, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 164
    .line 165
    if-ne p1, p2, :cond_1

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_1
    sget-object p1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->START_HERE_ON_POPUP:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->addEntry(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)V

    .line 171
    .line 172
    .line 173
    :cond_2
    :goto_0
    return-void

    .line 174
    :cond_3
    sget p0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 175
    .line 176
    const-string p0, "activity, context or resources is null"

    .line 177
    .line 178
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const/4 p0, 0x0

    .line 182
    throw p0
.end method

.method public static reportErrorDuringInitialization(Ljava/lang/IllegalArgumentException;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 7

    .line 1
    sget-object v0, Lorg/schabi/newpipe/App;->Companion:Lorg/schabi/newpipe/App$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/schabi/newpipe/App$Companion;->getInstance()Lorg/schabi/newpipe/App;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const/16 v6, 0x10

    .line 25
    .line 26
    sget-object v3, Lorg/schabi/newpipe/error/UserAction;->OPEN_INFO_ITEM_DIALOG:Lorg/schabi/newpipe/error/UserAction;

    .line 27
    .line 28
    const-string v4, "none"

    .line 29
    .line 30
    move-object v2, p0

    .line 31
    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lorg/schabi/newpipe/error/ErrorUtil;->showSnackbar(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public addEntry(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    new-instance v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;

    .line 6
    .line 7
    iget v1, p1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->resource:I

    .line 8
    .line 9
    iget-object p1, p1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->action:Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;

    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;-><init>(ILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public create()Lorg/schabi/newpipe/player/ui/PlayerUiList;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 4
    .line 5
    iget-boolean v1, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->firstClusterInSegment:Z

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    new-array v1, v1, [Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 11
    .line 12
    sget-object v2, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->DOWNLOAD:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v1, v3

    .line 16
    .line 17
    sget-object v2, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->APPEND_PLAYLIST:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    aput-object v2, v1, v4

    .line 21
    .line 22
    sget-object v2, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->SHARE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 23
    .line 24
    const/4 v4, 0x2

    .line 25
    aput-object v2, v1, v4

    .line 26
    .line 27
    sget-object v2, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->OPEN_IN_BROWSER:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 28
    .line 29
    const/4 v4, 0x3

    .line 30
    aput-object v2, v1, v4

    .line 31
    .line 32
    invoke-static {v1}, Lj$/util/stream/Stream$-CC;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;

    .line 37
    .line 38
    const/16 v4, 0x9

    .line 39
    .line 40
    invoke-direct {v2, p0, v4}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->tracks:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->shouldShowPlayWithKodi(Landroid/content/Context;I)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    sget-object v2, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->PLAY_WITH_KODI:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->addEntry(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const v4, 0x7f130147

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v1}, Lokio/Okio;->isLiveStream(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_1

    .line 91
    .line 92
    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->MARK_AS_WATCHED:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 93
    .line 94
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->addEntry(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->SHOW_CHANNEL_DETAILS:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 98
    .line 99
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/streams/WebMReader$Segment;->addEntry(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    new-instance v1, Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 103
    .line 104
    iget-object v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->info:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v2, Landroid/app/Activity;

    .line 107
    .line 108
    iget-object v3, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->ref:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 111
    .line 112
    iget-object p0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast p0, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v1, v2, v3, v0, p0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Ljava/util/ArrayList;)V

    .line 117
    .line 118
    .line 119
    return-object v1
.end method

.method public getNextCluster()Lorg/schabi/newpipe/streams/WebMReader$Cluster;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/schabi/newpipe/streams/WebMReader;

    .line 4
    .line 5
    iget-boolean v1, v0, Lorg/schabi/newpipe/streams/WebMReader;->done:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v1, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->firstClusterInSegment:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v1, v0, Lorg/schabi/newpipe/streams/WebMReader;->segment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 15
    .line 16
    iget-object v1, v1, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iput-boolean v2, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->firstClusterInSegment:Z

    .line 24
    .line 25
    invoke-static {v0, v1}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$mreadCluster(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    iget-object p0, v0, Lorg/schabi/newpipe/streams/WebMReader;->segment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 31
    .line 32
    iget-object p0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/streams/WebMReader;->ensure(Lorg/schabi/newpipe/streams/WebMReader$Element;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, v0, Lorg/schabi/newpipe/streams/WebMReader;->segment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 40
    .line 41
    iget-object p0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->ref:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 44
    .line 45
    const v1, 0xf43b675

    .line 46
    .line 47
    .line 48
    filled-new-array {v1}, [I

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, p0, v1}, Lorg/schabi/newpipe/streams/WebMReader;->untilElement(Lorg/schabi/newpipe/streams/WebMReader$Element;[I)Lorg/schabi/newpipe/streams/WebMReader$Element;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-nez p0, :cond_2

    .line 57
    .line 58
    :goto_0
    const/4 p0, 0x0

    .line 59
    return-object p0

    .line 60
    :cond_2
    iget-object v1, v0, Lorg/schabi/newpipe/streams/WebMReader;->segment:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 61
    .line 62
    iput-object p0, v1, Lorg/schabi/newpipe/streams/WebMReader$Segment;->currentCluster:Ljava/lang/Object;

    .line 63
    .line 64
    invoke-static {v0, p0}, Lorg/schabi/newpipe/streams/WebMReader;->-$$Nest$mreadCluster(Lorg/schabi/newpipe/streams/WebMReader;Lorg/schabi/newpipe/streams/WebMReader$Element;)Lorg/schabi/newpipe/streams/WebMReader$Cluster;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method

.method public setAction(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;

    .line 17
    .line 18
    iget v1, v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;->resource:I

    .line 19
    .line 20
    iget v2, p1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->resource:I

    .line 21
    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    new-instance p1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;

    .line 25
    .line 26
    invoke-direct {p1, v2, p2}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;-><init>(ILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

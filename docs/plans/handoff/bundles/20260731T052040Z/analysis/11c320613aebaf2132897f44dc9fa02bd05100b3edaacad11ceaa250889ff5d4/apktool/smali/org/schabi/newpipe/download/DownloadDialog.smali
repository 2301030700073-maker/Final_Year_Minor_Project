.class public Lorg/schabi/newpipe/download/DownloadDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public askForSavePath:Z

.field public audioStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

.field public audioTrackAdapter:Lorg/schabi/newpipe/util/AudioTrackAdapter;

.field public context:Landroid/content/Context;

.field currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

.field public dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

.field public final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field public downloadManager:Lus/shandian/giga/service/DownloadManager;

.field public filenameTmp:Ljava/lang/String;

.field public mainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

.field public mainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

.field public mimeTmp:Ljava/lang/String;

.field public okButton:Landroid/view/MenuItem;

.field public prefs:Landroid/content/SharedPreferences;

.field public final requestDownloadPickAudioFolderLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field public final requestDownloadPickVideoFolderLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field public final requestDownloadSaveAsLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field selectedAudioIndex:I

.field selectedAudioTrackIndex:I

.field selectedSubtitleIndex:I

.field selectedVideoIndex:I

.field public subtitleStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

.field public videoStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

.field wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

.field wrappedSubtitleStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;"
        }
    .end annotation
.end field

.field wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;"
        }
    .end annotation
.end field


# direct methods
.method public static $r8$lambda$MGriMWeMMNZbERibXDRI1sveus8(Lorg/schabi/newpipe/download/DownloadDialog;Landroidx/activity/result/ActivityResult;)V
    .locals 5

    .line 1
    iget v0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    if-eqz p1, :cond_4

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/FilePickerActivityHelper;->isOwnFileUri(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lkotlin/ranges/RangesKt;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v2, "application/octet-stream"

    .line 48
    .line 49
    invoke-virtual {p0, v1, v0, p1, v2}, Lorg/schabi/newpipe/download/DownloadDialog;->checkSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v3, "_display_name"

    .line 64
    .line 65
    invoke-static {v0, v2, v3}, Lkotlin/ranges/RangesKt;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const-string v4, "mime_type"

    .line 70
    .line 71
    invoke-static {v0, v2, v4}, Lkotlin/ranges/RangesKt;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string/jumbo v2, "vnd.android.document/directory"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    move-object v0, v1

    .line 85
    :cond_3
    invoke-virtual {p0, v1, p1, v3, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->checkSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    :goto_0
    const p1, 0x7f1301f3

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 195
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 196
    iput v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    .line 197
    iput v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 199
    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 200
    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->downloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 201
    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->okButton:Landroid/view/MenuItem;

    .line 202
    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 203
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 204
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 206
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    const/4 v1, 0x3

    .line 207
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 208
    new-instance v1, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda9;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;I)V

    .line 209
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadSaveAsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 210
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    const/4 v1, 0x3

    .line 211
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 212
    new-instance v1, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda9;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;I)V

    .line 213
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadPickAudioFolderLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 214
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    const/4 v1, 0x3

    .line 215
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 216
    new-instance v1, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda9;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;I)V

    .line 217
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadPickVideoFolderLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    .line 6
    .line 7
    iput v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 11
    .line 12
    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 13
    .line 14
    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->downloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 15
    .line 16
    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->okButton:Landroid/view/MenuItem;

    .line 17
    .line 18
    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 19
    .line 20
    new-instance v1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 26
    .line 27
    new-instance v1, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda9;

    .line 34
    .line 35
    invoke-direct {v3, p0, v0}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadSaveAsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 43
    .line 44
    new-instance v1, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 45
    .line 46
    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda9;

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    invoke-direct {v3, p0, v4}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadPickAudioFolderLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 60
    .line 61
    new-instance v1, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 62
    .line 63
    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 64
    .line 65
    .line 66
    new-instance v2, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda9;

    .line 67
    .line 68
    const/4 v3, 0x2

    .line 69
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadPickVideoFolderLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 77
    .line 78
    iput-object p2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 79
    .line 80
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 85
    .line 86
    const/16 v3, 0x18

    .line 87
    .line 88
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v2}, Lorg/schabi/newpipe/util/ListHelper;->getFilteredStreamList(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {p1, v1}, Lorg/schabi/newpipe/util/ListHelper;->getGroupedAudioStreams(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    new-instance v2, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    .line 100
    .line 101
    invoke-direct {v2, p1, v1}, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 102
    .line 103
    .line 104
    iput-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    .line 105
    .line 106
    invoke-static {p1, v1}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultAudioTrackGroup(Landroid/content/Context;Ljava/util/List;)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    iput v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioTrackIndex:I

    .line 111
    .line 112
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 117
    .line 118
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v2}, Lorg/schabi/newpipe/util/ListHelper;->getFilteredStreamList(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoOnlyStreams()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    new-instance v5, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 130
    .line 131
    invoke-direct {v5, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 132
    .line 133
    .line 134
    invoke-static {v2, v5}, Lorg/schabi/newpipe/util/ListHelper;->getFilteredStreamList(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    iget-object v5, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    .line 139
    .line 140
    invoke-virtual {v5}, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;->size()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-le v5, v4, :cond_0

    .line 145
    .line 146
    move v0, v4

    .line 147
    :cond_0
    invoke-static {p1, v1, v2, v0}, Lorg/schabi/newpipe/util/ListHelper;->getSortedStreamVideosList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    new-instance v1, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 152
    .line 153
    invoke-direct {v1, p1, v0}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 157
    .line 158
    new-instance v1, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 159
    .line 160
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubtitles()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 165
    .line 166
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 167
    .line 168
    .line 169
    invoke-static {p2, v2}, Lorg/schabi/newpipe/util/ListHelper;->getFilteredStreamList(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-direct {v1, p1, p2}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 174
    .line 175
    .line 176
    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedSubtitleStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 177
    .line 178
    const p2, 0x7f1300e2

    .line 179
    .line 180
    .line 181
    const v1, 0x7f1300e4

    .line 182
    .line 183
    .line 184
    invoke-static {p1, p2, v1}, Lorg/schabi/newpipe/util/ListHelper;->computeDefaultResolution(Landroid/content/Context;II)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-static {p1, p2, v0}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    iput p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedVideoIndex:I

    .line 193
    .line 194
    return-void
.end method


# virtual methods
.method public final checkSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    .line 1
    move-object/from16 v4, p2

    .line 2
    .line 3
    move-object/from16 v6, p3

    .line 4
    .line 5
    move-object/from16 v7, p4

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    :try_start_0
    new-instance v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 11
    .line 12
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 13
    .line 14
    const-string v3, ""

    .line 15
    .line 16
    invoke-direct {v1, v2, v0, v4, v3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    move-object v3, v1

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    move-exception v0

    .line 22
    move-object v2, v0

    .line 23
    goto/16 :goto_d

    .line 24
    .line 25
    :cond_0
    if-nez v4, :cond_1

    .line 26
    .line 27
    new-instance v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->getUri()Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object v3, p1, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->tag:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v1, v2, v6, v7, v3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 40
    .line 41
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->getUri()Landroid/net/Uri;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-object v8, p1, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->tag:Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v1, v2, v3, v4, v8}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :goto_1
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->downloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 54
    .line 55
    monitor-enter v1

    .line 56
    :try_start_1
    iget-object v2, v1, Lus/shandian/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_3

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    check-cast v8, Lus/shandian/giga/get/DownloadMission;

    .line 73
    .line 74
    iget-object v9, v8, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 75
    .line 76
    invoke-virtual {v9, v3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->equals(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_2

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    move-object v8, v0

    .line 84
    :goto_2
    const/4 v2, 0x2

    .line 85
    const/4 v9, 0x4

    .line 86
    const/4 v10, 0x3

    .line 87
    const/4 v11, 0x1

    .line 88
    if-nez v8, :cond_5

    .line 89
    .line 90
    invoke-virtual {v1, v3}, Lus/shandian/giga/service/DownloadManager;->getFinishedMissionIndex(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-ltz v8, :cond_4

    .line 95
    .line 96
    monitor-exit v1

    .line 97
    goto :goto_4

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    move-object p0, v0

    .line 100
    goto/16 :goto_c

    .line 101
    .line 102
    :cond_4
    monitor-exit v1

    .line 103
    move v9, v11

    .line 104
    goto :goto_4

    .line 105
    :cond_5
    invoke-virtual {v8}, Lus/shandian/giga/get/DownloadMission;->isFinished()Z

    .line 106
    .line 107
    .line 108
    move-result v12

    .line 109
    if-eqz v12, :cond_6

    .line 110
    .line 111
    monitor-exit v1

    .line 112
    goto :goto_4

    .line 113
    :cond_6
    iget-boolean v8, v8, Lus/shandian/giga/get/DownloadMission;->running:Z

    .line 114
    .line 115
    if-eqz v8, :cond_7

    .line 116
    .line 117
    move v9, v10

    .line 118
    goto :goto_3

    .line 119
    :cond_7
    move v9, v2

    .line 120
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :goto_4
    invoke-static {v9}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    const v8, 0x7f1303a0

    .line 126
    .line 127
    .line 128
    if-eqz v1, :cond_b

    .line 129
    .line 130
    if-eq v1, v11, :cond_a

    .line 131
    .line 132
    if-eq v1, v2, :cond_9

    .line 133
    .line 134
    if-eq v1, v10, :cond_8

    .line 135
    .line 136
    return-void

    .line 137
    :cond_8
    const v1, 0x7f1303a2

    .line 138
    .line 139
    .line 140
    goto/16 :goto_a

    .line 141
    .line 142
    :cond_9
    const v8, 0x7f1301f4

    .line 143
    .line 144
    .line 145
    const v1, 0x7f130110

    .line 146
    .line 147
    .line 148
    goto/16 :goto_a

    .line 149
    .line 150
    :cond_a
    const v1, 0x7f13010f

    .line 151
    .line 152
    .line 153
    goto/16 :goto_a

    .line 154
    .line 155
    :cond_b
    const v1, 0x7f130156

    .line 156
    .line 157
    .line 158
    if-nez p1, :cond_d

    .line 159
    .line 160
    invoke-virtual {v3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->existsAsFile()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_c

    .line 165
    .line 166
    invoke-virtual {v3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->create()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_c

    .line 171
    .line 172
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_c
    invoke-virtual {p0, v3}, Lorg/schabi/newpipe/download/DownloadDialog;->continueSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_d
    if-nez v4, :cond_16

    .line 181
    .line 182
    iget-object v2, p1, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->ioTree:Lj$/nio/file/Path;

    .line 183
    .line 184
    iget-object v0, p1, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/TreeDocumentFile;

    .line 185
    .line 186
    const/4 v3, 0x0

    .line 187
    if-nez v0, :cond_e

    .line 188
    .line 189
    :try_start_2
    new-array v0, v3, [Lj$/nio/file/attribute/FileAttribute;

    .line 190
    .line 191
    invoke-static {v2, v0}, Lj$/nio/file/Files;->createDirectories(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 192
    .line 193
    .line 194
    goto :goto_5

    .line 195
    :catch_1
    move-exception v0

    .line 196
    const-string v4, "StoredDirectoryHelper"

    .line 197
    .line 198
    new-instance v8, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string v9, "Error while creating directories at "

    .line 201
    .line 202
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .line 214
    .line 215
    :goto_5
    new-array v0, v3, [Lj$/nio/file/LinkOption;

    .line 216
    .line 217
    invoke-static {v2, v0}, Lj$/nio/file/Files;->exists(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    .line 218
    .line 219
    .line 220
    move-result v11

    .line 221
    goto :goto_8

    .line 222
    :cond_e
    invoke-virtual {v0}, Landroidx/documentfile/provider/TreeDocumentFile;->exists()Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_f

    .line 227
    .line 228
    goto :goto_8

    .line 229
    :cond_f
    :try_start_3
    invoke-virtual {v0}, Landroidx/documentfile/provider/TreeDocumentFile;->getName()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    :goto_6
    iget-object v4, v0, Lorg/koin/core/logger/Logger;->level:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v4, Lorg/koin/core/logger/Logger;

    .line 236
    .line 237
    if-eqz v4, :cond_12

    .line 238
    .line 239
    if-nez v2, :cond_10

    .line 240
    .line 241
    goto :goto_7

    .line 242
    :cond_10
    invoke-virtual {v4}, Lorg/koin/core/logger/Logger;->exists()Z

    .line 243
    .line 244
    .line 245
    move-result v8

    .line 246
    if-eqz v8, :cond_11

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_11
    invoke-virtual {v4, v2}, Lorg/koin/core/logger/Logger;->createDirectory(Ljava/lang/String;)Lorg/koin/core/logger/Logger;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4}, Lorg/koin/core/logger/Logger;->getName()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 256
    goto :goto_6

    .line 257
    :catch_2
    :cond_12
    :goto_7
    move v11, v3

    .line 258
    :goto_8
    if-nez v11, :cond_13

    .line 259
    .line 260
    const v0, 0x7f13015e

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :cond_13
    invoke-virtual {p1, v6, v7, v3}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    if-eqz v0, :cond_15

    .line 272
    .line 273
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->canWrite()Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-nez v2, :cond_14

    .line 278
    .line 279
    goto :goto_9

    .line 280
    :cond_14
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->continueSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :cond_15
    :goto_9
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    :cond_16
    const v1, 0x7f1303a3

    .line 289
    .line 290
    .line 291
    :goto_a
    new-instance v12, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 292
    .line 293
    iget-object v13, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 294
    .line 295
    invoke-direct {v12, v13}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 296
    .line 297
    .line 298
    const v13, 0x7f130111

    .line 299
    .line 300
    .line 301
    invoke-virtual {v12, v13}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v12, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    .line 305
    .line 306
    .line 307
    const v1, 0x7f130076

    .line 308
    .line 309
    .line 310
    invoke-virtual {v12, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 311
    .line 312
    .line 313
    move-result-object v12

    .line 314
    if-nez p1, :cond_18

    .line 315
    .line 316
    invoke-static {v9}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-eq v0, v11, :cond_17

    .line 321
    .line 322
    if-eq v0, v10, :cond_17

    .line 323
    .line 324
    goto :goto_b

    .line 325
    :cond_17
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;

    .line 326
    .line 327
    invoke-direct {v0, p0, v3, v2}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v12, v8, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 331
    .line 332
    .line 333
    :goto_b
    invoke-virtual {v12}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 334
    .line 335
    .line 336
    return-void

    .line 337
    :cond_18
    new-instance v0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;

    .line 338
    .line 339
    move-object v1, p0

    .line 340
    move-object v5, p1

    .line 341
    move v2, v9

    .line 342
    invoke-direct/range {v0 .. v7}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;ILorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v12, v8, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v12}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 349
    .line 350
    .line 351
    return-void

    .line 352
    :goto_c
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 353
    throw p0

    .line 354
    :goto_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 355
    .line 356
    .line 357
    move-result-object p0

    .line 358
    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 359
    .line 360
    sget-object v3, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_FAILED:Lorg/schabi/newpipe/error/UserAction;

    .line 361
    .line 362
    const-string v4, "Getting storage"

    .line 363
    .line 364
    const/4 v5, 0x0

    .line 365
    const/16 v6, 0x18

    .line 366
    .line 367
    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 368
    .line 369
    .line 370
    invoke-static {p0, v1}, Lorg/schabi/newpipe/error/ErrorUtil;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 371
    .line 372
    .line 373
    return-void
.end method

.method public final continueSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->canWrite()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const v0, 0x7f1303bd

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->length()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    cmp-long v0, v2, v4

    .line 23
    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->assertValid()V

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 30
    .line 31
    .line 32
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :try_start_1
    invoke-virtual {v2, v4, v5}, Lorg/schabi/newpipe/streams/io/SharpStream;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    :try_start_2
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    move-object v3, v0

    .line 42
    :try_start_3
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_1
    move-exception v0

    .line 47
    :try_start_4
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 51
    :cond_1
    :goto_1
    iget-object v0, v1, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 52
    .line 53
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->threads:Landroid/widget/SeekBar;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v2, 0x1

    .line 60
    add-int/2addr v0, v2

    .line 61
    iget-object v3, v1, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 62
    .line 63
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const v6, 0x7f0a0070

    .line 70
    .line 71
    .line 72
    const/4 v7, 0x2

    .line 73
    const/4 v8, 0x0

    .line 74
    const/4 v9, 0x0

    .line 75
    if-ne v3, v6, :cond_4

    .line 76
    .line 77
    iget-object v3, v1, Lorg/schabi/newpipe/download/DownloadDialog;->audioStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 78
    .line 79
    iget v6, v1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    .line 80
    .line 81
    invoke-virtual {v3, v6}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    sget-object v10, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 90
    .line 91
    const/16 v11, 0x61

    .line 92
    .line 93
    if-ne v6, v10, :cond_2

    .line 94
    .line 95
    const-string v6, "mp4D-m4a"

    .line 96
    .line 97
    :goto_2
    move-object v10, v8

    .line 98
    goto/16 :goto_6

    .line 99
    .line 100
    :cond_2
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    sget-object v10, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 105
    .line 106
    if-ne v6, v10, :cond_3

    .line 107
    .line 108
    const-string/jumbo v6, "webm-ogg-d"

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    :goto_3
    move-object v6, v8

    .line 113
    move-object v10, v6

    .line 114
    goto/16 :goto_6

    .line 115
    .line 116
    :cond_4
    const v6, 0x7f0a0424

    .line 117
    .line 118
    .line 119
    if-ne v3, v6, :cond_8

    .line 120
    .line 121
    iget-object v3, v1, Lorg/schabi/newpipe/download/DownloadDialog;->videoStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 122
    .line 123
    iget v6, v1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedVideoIndex:I

    .line 124
    .line 125
    invoke-virtual {v3, v6}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    iget-object v6, v1, Lorg/schabi/newpipe/download/DownloadDialog;->videoStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 130
    .line 131
    iget-object v6, v6, Lorg/schabi/newpipe/util/StreamItemAdapter;->secondaryStreams:Landroidx/collection/SparseArrayCompat;

    .line 132
    .line 133
    iget-object v10, v1, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 134
    .line 135
    invoke-virtual {v10}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    invoke-interface {v10, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    invoke-virtual {v6, v10}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    check-cast v6, Lorg/schabi/newpipe/util/SecondaryStreamHelper;

    .line 148
    .line 149
    if-eqz v6, :cond_6

    .line 150
    .line 151
    iget v10, v6, Lorg/schabi/newpipe/util/SecondaryStreamHelper;->position:I

    .line 152
    .line 153
    iget-object v6, v6, Lorg/schabi/newpipe/util/SecondaryStreamHelper;->streams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 154
    .line 155
    invoke-virtual {v6}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    check-cast v11, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 164
    .line 165
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 166
    .line 167
    .line 168
    move-result-object v12

    .line 169
    sget-object v13, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 170
    .line 171
    if-ne v12, v13, :cond_5

    .line 172
    .line 173
    const-string v12, "mp4D-mp4"

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_5
    const-string/jumbo v12, "webm"

    .line 177
    .line 178
    .line 179
    :goto_4
    iget-object v13, v1, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 180
    .line 181
    move-object v14, v3

    .line 182
    check-cast v14, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 183
    .line 184
    invoke-virtual {v13, v14}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getSizeInBytes(Lorg/schabi/newpipe/extractor/stream/Stream;)J

    .line 185
    .line 186
    .line 187
    move-result-wide v13

    .line 188
    invoke-virtual {v6, v10}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getSizeInBytes(I)J

    .line 189
    .line 190
    .line 191
    move-result-wide v15

    .line 192
    cmp-long v15, v15, v4

    .line 193
    .line 194
    if-lez v15, :cond_7

    .line 195
    .line 196
    cmp-long v15, v13, v4

    .line 197
    .line 198
    if-lez v15, :cond_7

    .line 199
    .line 200
    invoke-virtual {v6, v10}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getSizeInBytes(I)J

    .line 201
    .line 202
    .line 203
    move-result-wide v4

    .line 204
    add-long/2addr v4, v13

    .line 205
    goto :goto_5

    .line 206
    :cond_6
    move-object v11, v8

    .line 207
    move-object v12, v11

    .line 208
    :cond_7
    :goto_5
    const/16 v6, 0x76

    .line 209
    .line 210
    move-object v10, v8

    .line 211
    move-object v8, v11

    .line 212
    move v11, v6

    .line 213
    move-object v6, v12

    .line 214
    goto :goto_6

    .line 215
    :cond_8
    const v0, 0x7f0a03b1

    .line 216
    .line 217
    .line 218
    if-ne v3, v0, :cond_d

    .line 219
    .line 220
    iget-object v0, v1, Lorg/schabi/newpipe/download/DownloadDialog;->subtitleStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 221
    .line 222
    iget v3, v1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    .line 223
    .line 224
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    sget-object v6, Lorg/schabi/newpipe/extractor/MediaFormat;->TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 233
    .line 234
    const/16 v11, 0x73

    .line 235
    .line 236
    if-ne v0, v6, :cond_9

    .line 237
    .line 238
    new-array v0, v7, [Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    iget-object v6, v6, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    .line 245
    .line 246
    aput-object v6, v0, v9

    .line 247
    .line 248
    const-string v6, "false"

    .line 249
    .line 250
    aput-object v6, v0, v2

    .line 251
    .line 252
    const-string/jumbo v6, "ttml"

    .line 253
    .line 254
    .line 255
    move-object v10, v0

    .line 256
    move v0, v2

    .line 257
    goto :goto_6

    .line 258
    :cond_9
    move v0, v2

    .line 259
    goto/16 :goto_3

    .line 260
    .line 261
    :goto_6
    if-nez v8, :cond_a

    .line 262
    .line 263
    new-array v7, v2, [Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v8

    .line 269
    aput-object v8, v7, v9

    .line 270
    .line 271
    new-instance v8, Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 272
    .line 273
    invoke-direct {v8, v3}, Lus/shandian/giga/get/MissionRecoveryInfo;-><init>(Lorg/schabi/newpipe/extractor/stream/Stream;)V

    .line 274
    .line 275
    .line 276
    new-array v3, v2, [Ljava/lang/Object;

    .line 277
    .line 278
    aput-object v8, v3, v9

    .line 279
    .line 280
    new-instance v8, Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    .line 284
    .line 285
    aget-object v2, v3, v9

    .line 286
    .line 287
    invoke-static {v2, v8, v2, v8}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    goto :goto_8

    .line 292
    :cond_a
    invoke-virtual {v8}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 293
    .line 294
    .line 295
    move-result-object v12

    .line 296
    sget-object v13, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 297
    .line 298
    if-ne v12, v13, :cond_c

    .line 299
    .line 300
    new-array v12, v7, [Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v13

    .line 306
    aput-object v13, v12, v9

    .line 307
    .line 308
    invoke-virtual {v8}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v13

    .line 312
    aput-object v13, v12, v2

    .line 313
    .line 314
    new-instance v13, Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 315
    .line 316
    invoke-direct {v13, v3}, Lus/shandian/giga/get/MissionRecoveryInfo;-><init>(Lorg/schabi/newpipe/extractor/stream/Stream;)V

    .line 317
    .line 318
    .line 319
    new-instance v3, Lus/shandian/giga/get/MissionRecoveryInfo;

    .line 320
    .line 321
    invoke-direct {v3, v8}, Lus/shandian/giga/get/MissionRecoveryInfo;-><init>(Lorg/schabi/newpipe/extractor/stream/Stream;)V

    .line 322
    .line 323
    .line 324
    new-array v8, v7, [Ljava/lang/Object;

    .line 325
    .line 326
    aput-object v13, v8, v9

    .line 327
    .line 328
    aput-object v3, v8, v2

    .line 329
    .line 330
    new-instance v3, Ljava/util/ArrayList;

    .line 331
    .line 332
    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 333
    .line 334
    .line 335
    move v13, v9

    .line 336
    :goto_7
    if-ge v13, v7, :cond_b

    .line 337
    .line 338
    aget-object v14, v8, v13

    .line 339
    .line 340
    invoke-static {v14, v3, v14, v13, v2}, Lcom/android/tools/r8/RecordTag;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;II)I

    .line 341
    .line 342
    .line 343
    move-result v13

    .line 344
    goto :goto_7

    .line 345
    :cond_b
    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    move-object v7, v12

    .line 350
    :goto_8
    iget-object v3, v1, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 351
    .line 352
    iget-object v8, v1, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 353
    .line 354
    new-instance v12, Ljava/util/ArrayList;

    .line 355
    .line 356
    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 357
    .line 358
    .line 359
    sget v2, Lus/shandian/giga/service/DownloadManagerService;->$r8$clinit:I

    .line 360
    .line 361
    new-instance v2, Landroid/content/Intent;

    .line 362
    .line 363
    const-class v13, Lus/shandian/giga/service/DownloadManagerService;

    .line 364
    .line 365
    invoke-direct {v2, v3, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    .line 367
    .line 368
    const-string v13, "android.intent.action.RUN"

    .line 369
    .line 370
    invoke-virtual {v2, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    const-string v13, "DownloadManagerService.extra.urls"

    .line 375
    .line 376
    invoke-virtual {v2, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    const-string v7, "DownloadManagerService.extra.kind"

    .line 381
    .line 382
    invoke-virtual {v2, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    const-string v7, "DownloadManagerService.extra.threads"

    .line 387
    .line 388
    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    const-string v2, "DownloadManagerService.extra.postprocessingName"

    .line 393
    .line 394
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    const-string v2, "DownloadManagerService.extra.postprocessingArgs"

    .line 399
    .line 400
    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    const-string v2, "DownloadManagerService.extra.nearLength"

    .line 405
    .line 406
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    const-string v2, "DownloadManagerService.extra.recoveryInfo"

    .line 411
    .line 412
    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    const-string v2, "DownloadManagerService.extra.storageParentPath"

    .line 417
    .line 418
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getParentUri()Landroid/net/Uri;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    const-string v2, "DownloadManagerService.extra.storagePath"

    .line 427
    .line 428
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    const-string v2, "DownloadManagerService.extra.storageTag"

    .line 437
    .line 438
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getTag()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    const-string v2, "DownloadManagerService.extra.streamInfo"

    .line 447
    .line 448
    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 453
    .line 454
    .line 455
    iget-object v0, v1, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 456
    .line 457
    const v2, 0x7f130113

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    invoke-static {v0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1, v9, v9}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 472
    .line 473
    .line 474
    return-void

    .line 475
    :cond_c
    const-string v0, "Unsupported stream delivery format"

    .line 476
    .line 477
    invoke-virtual {v8}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-static {v1, v0}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    :cond_d
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    .line 487
    .line 488
    const-string v3, "Failed to truncate the file: "

    .line 489
    .line 490
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v2

    .line 508
    const-string v3, "DialogFragment"

    .line 509
    .line 510
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    .line 512
    .line 513
    const v0, 0x7f1303a1

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    .line 517
    .line 518
    .line 519
    return-void
.end method

.method public final fetchStreamsSize()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 7
    .line 8
    invoke-static {v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->fetchMoreInfoForWrapper(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;

    .line 13
    .line 14
    const/4 v3, 0x4

    .line 15
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;I)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-direct {v3, p0, v4}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;I)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 25
    .line 26
    invoke-direct {v4, v2, v3}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v4}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v4}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->getWrappedAudioStreams()Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->fetchMoreInfoForWrapper(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v2, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    const/4 v3, 0x5

    .line 46
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;I)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    const/4 v4, 0x2

    .line 52
    invoke-direct {v3, p0, v4}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;I)V

    .line 53
    .line 54
    .line 55
    new-instance v4, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 56
    .line 57
    invoke-direct {v4, v2, v3}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v4}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v4}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedSubtitleStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 67
    .line 68
    invoke-static {v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->fetchMoreInfoForWrapper(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)Lio/reactivex/rxjava3/internal/operators/single/SingleOnErrorReturn;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v2, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;

    .line 73
    .line 74
    const/4 v3, 0x6

    .line 75
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;I)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;

    .line 79
    .line 80
    const/4 v4, 0x3

    .line 81
    invoke-direct {v3, p0, v4}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;I)V

    .line 82
    .line 83
    .line 84
    new-instance p0, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 85
    .line 86
    invoke-direct {p0, v2, v3}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p0}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final getWrappedAudioStreams()Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioTrackIndex:I

    .line 2
    .line 3
    if-ltz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    .line 6
    .line 7
    invoke-virtual {v1}, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;->getTracksList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget p0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioTrackIndex:I

    .line 21
    .line 22
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    :goto_0
    sget-object p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->EMPTY:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 30
    .line 31
    return-object p0
.end method

.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 1
    const p1, 0x7f0a0070

    .line 2
    .line 3
    .line 4
    if-ne p2, p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupAudioSpinner()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const p1, 0x7f0a0424

    .line 11
    .line 12
    .line 13
    if-ne p2, p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupVideoSpinner()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const p1, 0x7f0a03b1

    .line 20
    .line 21
    .line 22
    if-ne p2, p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupSubtitleSpinner()V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 30
    :goto_1
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 31
    .line 32
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->threads:Landroid/widget/SeekBar;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/16 v1, 0x30a

    .line 9
    .line 10
    invoke-static {v0, v1}, Lus/shandian/giga/util/Utility;->checkStoragePermissions(Landroid/app/Activity;I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v1, v1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v0}, Lokio/Options$Companion;->isLightThemeSelected(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const v0, 0x7f140179

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const v0, 0x7f140146

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(I)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lorg/schabi/newpipe/util/AudioTrackAdapter;

    .line 47
    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    .line 49
    .line 50
    invoke-direct {p1, v0}, Lorg/schabi/newpipe/util/AudioTrackAdapter;-><init>(Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->audioTrackAdapter:Lorg/schabi/newpipe/util/AudioTrackAdapter;

    .line 54
    .line 55
    new-instance p1, Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 56
    .line 57
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedSubtitleStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 58
    .line 59
    invoke-direct {p1, v0}, Lorg/schabi/newpipe/util/StreamItemAdapter;-><init>(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->subtitleStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 63
    .line 64
    invoke-virtual {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->updateSecondaryStreams()V

    .line 65
    .line 66
    .line 67
    new-instance p1, Landroid/content/Intent;

    .line 68
    .line 69
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 70
    .line 71
    const-class v2, Lus/shandian/giga/service/DownloadManagerService;

    .line 72
    .line 73
    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 82
    .line 83
    new-instance v2, Lorg/schabi/newpipe/download/DownloadDialog$1;

    .line 84
    .line 85
    invoke-direct {v2, p0, v1}, Lorg/schabi/newpipe/download/DownloadDialog$1;-><init>(Ljava/lang/Object;I)V

    .line 86
    .line 87
    .line 88
    const/4 p0, 0x1

    .line 89
    invoke-virtual {v0, p1, v2, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const p0, 0x7f0d003b

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 5
    .line 6
    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 3
    .line 4
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const p2, 0x7f0a0323

    .line 6
    .line 7
    .line 8
    const/4 p4, 0x1

    .line 9
    const/4 p5, 0x0

    .line 10
    if-ne p1, p2, :cond_5

    .line 11
    .line 12
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 13
    .line 14
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const p2, 0x7f0a03b1

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0a0424

    .line 24
    .line 25
    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    .line 28
    iput p3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedVideoIndex:I

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->onVideoStreamSelected()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    if-ne p1, p2, :cond_1

    .line 35
    .line 36
    iput p3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    .line 37
    .line 38
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 43
    .line 44
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-static {p1, p3}, Landroidx/work/OperationKt;->createFilename(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 53
    .line 54
    iget-object p3, p3, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->fileName:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 55
    .line 56
    invoke-virtual {p3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-static {p3}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    new-instance v1, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    const/16 v2, 0x13

    .line 67
    .line 68
    invoke-direct {v1, v2}, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    const-string v1, ""

    .line 76
    .line 77
    invoke-virtual {p3, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    check-cast p3, Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const/4 v3, 0x2

    .line 88
    const v4, 0x7f130078

    .line 89
    .line 90
    .line 91
    if-nez v2, :cond_2

    .line 92
    .line 93
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_2

    .line 98
    .line 99
    new-array v2, v3, [Ljava/lang/Object;

    .line 100
    .line 101
    aput-object p1, v2, p5

    .line 102
    .line 103
    aput-object v1, v2, p4

    .line 104
    .line 105
    invoke-virtual {p0, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_8

    .line 114
    .line 115
    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 116
    .line 117
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    const v2, 0x7f0a0070

    .line 124
    .line 125
    .line 126
    if-eq v1, v2, :cond_4

    .line 127
    .line 128
    if-ne v1, v0, :cond_3

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    if-ne v1, p2, :cond_8

    .line 132
    .line 133
    iget-object p2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->subtitleStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 134
    .line 135
    iget p3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    .line 136
    .line 137
    invoke-virtual {p2, p3}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    check-cast p2, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    .line 142
    .line 143
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->getLanguageTag()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    iget-object p3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 148
    .line 149
    iget-object p3, p3, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->fileName:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 150
    .line 151
    new-array v0, v3, [Ljava/lang/Object;

    .line 152
    .line 153
    aput-object p1, v0, p5

    .line 154
    .line 155
    aput-object p2, v0, p4

    .line 156
    .line 157
    invoke-virtual {p0, v4, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_4
    :goto_1
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    if-nez p2, :cond_8

    .line 170
    .line 171
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 172
    .line 173
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->fileName:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 174
    .line 175
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_5
    const p2, 0x7f0a0073

    .line 180
    .line 181
    .line 182
    if-ne p1, p2, :cond_7

    .line 183
    .line 184
    iget p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioTrackIndex:I

    .line 185
    .line 186
    if-eq p1, p3, :cond_6

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_6
    move p4, p5

    .line 190
    :goto_2
    iput p3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioTrackIndex:I

    .line 191
    .line 192
    if-eqz p4, :cond_8

    .line 193
    .line 194
    invoke-virtual {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->updateSecondaryStreams()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->fetchStreamsSize()V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_7
    const p2, 0x7f0a0071

    .line 202
    .line 203
    .line 204
    if-ne p1, p2, :cond_8

    .line 205
    .line 206
    iput p3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    .line 207
    .line 208
    :cond_8
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onVideoStreamSelected()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->videoStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 2
    .line 3
    iget v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedVideoIndex:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 10
    .line 11
    iget-boolean v0, v0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    .line 12
    .line 13
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 14
    .line 15
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v5, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    .line 24
    .line 25
    invoke-virtual {v5}, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;->size()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-le v5, v4, :cond_0

    .line 30
    .line 31
    move v5, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v5, v2

    .line 34
    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 38
    .line 39
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackPresentInVideoText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;->size()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-le p0, v4, :cond_1

    .line 50
    .line 51
    move v2, v3

    .line 52
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const v2, 0x7f0a0070

    .line 6
    .line 7
    .line 8
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    move-object v6, v3

    .line 13
    check-cast v6, Landroid/widget/RadioButton;

    .line 14
    .line 15
    if-eqz v6, :cond_13

    .line 16
    .line 17
    const v2, 0x7f0a0071

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    move-object v7, v3

    .line 25
    check-cast v7, Landroid/widget/Spinner;

    .line 26
    .line 27
    if-eqz v7, :cond_13

    .line 28
    .line 29
    const v2, 0x7f0a0072

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    move-object v8, v3

    .line 37
    check-cast v8, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 38
    .line 39
    if-eqz v8, :cond_13

    .line 40
    .line 41
    const v2, 0x7f0a0073

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    move-object v9, v3

    .line 49
    check-cast v9, Landroid/widget/Spinner;

    .line 50
    .line 51
    if-eqz v9, :cond_13

    .line 52
    .line 53
    const v2, 0x7f0a0195

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    move-object v10, v3

    .line 61
    check-cast v10, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 62
    .line 63
    if-eqz v10, :cond_13

    .line 64
    .line 65
    const v2, 0x7f0a0196

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 73
    .line 74
    if-eqz v3, :cond_13

    .line 75
    .line 76
    const v2, 0x7f0a0323

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    move-object v11, v3

    .line 84
    check-cast v11, Landroid/widget/Spinner;

    .line 85
    .line 86
    if-eqz v11, :cond_13

    .line 87
    .line 88
    const v2, 0x7f0a03b1

    .line 89
    .line 90
    .line 91
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    move-object v12, v3

    .line 96
    check-cast v12, Landroid/widget/RadioButton;

    .line 97
    .line 98
    if-eqz v12, :cond_13

    .line 99
    .line 100
    const v2, 0x7f0a03ef

    .line 101
    .line 102
    .line 103
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    move-object v13, v3

    .line 108
    check-cast v13, Landroid/widget/SeekBar;

    .line 109
    .line 110
    if-eqz v13, :cond_13

    .line 111
    .line 112
    const v2, 0x7f0a03f0

    .line 113
    .line 114
    .line 115
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    move-object v14, v3

    .line 120
    check-cast v14, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 121
    .line 122
    if-eqz v14, :cond_13

    .line 123
    .line 124
    const v2, 0x7f0a03f1

    .line 125
    .line 126
    .line 127
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Landroid/widget/LinearLayout;

    .line 132
    .line 133
    if-eqz v3, :cond_13

    .line 134
    .line 135
    const v2, 0x7f0a03f2

    .line 136
    .line 137
    .line 138
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 143
    .line 144
    if-eqz v3, :cond_13

    .line 145
    .line 146
    const v2, 0x7f0a03fe

    .line 147
    .line 148
    .line 149
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    if-eqz v3, :cond_13

    .line 154
    .line 155
    invoke-static {v3}, Lorg/jsoup/nodes/Printer;->bind(Landroid/view/View;)Lorg/jsoup/nodes/Printer;

    .line 156
    .line 157
    .line 158
    move-result-object v15

    .line 159
    const v2, 0x7f0a0423

    .line 160
    .line 161
    .line 162
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    move-object/from16 v16, v3

    .line 167
    .line 168
    check-cast v16, Landroid/widget/RadioGroup;

    .line 169
    .line 170
    if-eqz v16, :cond_13

    .line 171
    .line 172
    const v2, 0x7f0a0424

    .line 173
    .line 174
    .line 175
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    move-object/from16 v17, v3

    .line 180
    .line 181
    check-cast v17, Landroid/widget/RadioButton;

    .line 182
    .line 183
    if-eqz v17, :cond_13

    .line 184
    .line 185
    new-instance v4, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 186
    .line 187
    move-object v5, v1

    .line 188
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 189
    .line 190
    invoke-direct/range {v4 .. v17}, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RadioButton;Landroid/widget/Spinner;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/Spinner;Lorg/schabi/newpipe/views/NewPipeEditText;Landroid/widget/Spinner;Landroid/widget/RadioButton;Landroid/widget/SeekBar;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/jsoup/nodes/Printer;Landroid/widget/RadioGroup;Landroid/widget/RadioButton;)V

    .line 191
    .line 192
    .line 193
    iput-object v4, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 194
    .line 195
    iget-object v1, v0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 196
    .line 197
    if-nez v1, :cond_0

    .line 198
    .line 199
    return-void

    .line 200
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    iget-object v2, v0, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 205
    .line 206
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-static {v1, v2}, Landroidx/work/OperationKt;->createFilename(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v0}, Lorg/schabi/newpipe/download/DownloadDialog;->getWrappedAudioStreams()Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v2}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-static {v1, v2}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultAudioFormat(Landroid/content/Context;Ljava/util/List;)I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    iput v1, v0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    .line 234
    .line 235
    iget-object v1, v0, Lorg/schabi/newpipe/download/DownloadDialog;->subtitleStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 236
    .line 237
    iget-object v1, v1, Lorg/schabi/newpipe/util/StreamItemAdapter;->streamsWrapper:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 238
    .line 239
    invoke-virtual {v1}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-static {}, Lus/shandian/giga/util/Utility;->getPreferredLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    const/4 v3, 0x0

    .line 248
    move v4, v3

    .line 249
    move v5, v4

    .line 250
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    const/4 v7, 0x1

    .line 255
    if-ge v4, v6, :cond_5

    .line 256
    .line 257
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    check-cast v6, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    .line 262
    .line 263
    invoke-virtual {v6}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->getLocale()Ljava/util/Locale;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    if-eqz v8, :cond_1

    .line 272
    .line 273
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    if-eqz v8, :cond_1

    .line 278
    .line 279
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v8

    .line 283
    new-instance v9, Ljava/util/Locale;

    .line 284
    .line 285
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    invoke-direct {v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v9

    .line 296
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    if-eqz v8, :cond_1

    .line 301
    .line 302
    move v8, v7

    .line 303
    goto :goto_1

    .line 304
    :cond_1
    move v8, v3

    .line 305
    :goto_1
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    if-eqz v9, :cond_2

    .line 310
    .line 311
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v6

    .line 315
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v9

    .line 319
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v6

    .line 323
    if-eqz v6, :cond_2

    .line 324
    .line 325
    move v6, v7

    .line 326
    goto :goto_2

    .line 327
    :cond_2
    move v6, v3

    .line 328
    :goto_2
    if-eqz v8, :cond_4

    .line 329
    .line 330
    if-eqz v6, :cond_3

    .line 331
    .line 332
    goto :goto_3

    .line 333
    :cond_3
    move v5, v4

    .line 334
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 335
    .line 336
    goto :goto_0

    .line 337
    :cond_5
    move v4, v5

    .line 338
    :goto_3
    iput v4, v0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    .line 339
    .line 340
    iget-object v1, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 341
    .line 342
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    .line 343
    .line 344
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 345
    .line 346
    .line 347
    iget-object v1, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 348
    .line 349
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    .line 350
    .line 351
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 352
    .line 353
    .line 354
    iget-object v1, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 355
    .line 356
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    .line 357
    .line 358
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 359
    .line 360
    .line 361
    iget-object v1, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 362
    .line 363
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    .line 364
    .line 365
    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 366
    .line 367
    .line 368
    iget-object v1, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 369
    .line 370
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->toolbarLayout:Lorg/jsoup/nodes/Printer;

    .line 371
    .line 372
    iget-object v1, v1, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 375
    .line 376
    const v2, 0x7f130111

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 380
    .line 381
    .line 382
    const v2, 0x7f0800e1

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 386
    .line 387
    .line 388
    const/high16 v2, 0x7f0f0000

    .line 389
    .line 390
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 391
    .line 392
    .line 393
    new-instance v2, Lorg/schabi/newpipe/download/LoadingDialog$$ExternalSyntheticLambda0;

    .line 394
    .line 395
    invoke-direct {v2, v0, v7}, Lorg/schabi/newpipe/download/LoadingDialog$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    .line 400
    .line 401
    const v2, 0x7f130076

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    const v4, 0x7f0a02ab

    .line 412
    .line 413
    .line 414
    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    iput-object v2, v0, Lorg/schabi/newpipe/download/DownloadDialog;->okButton:Landroid/view/MenuItem;

    .line 419
    .line 420
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 421
    .line 422
    .line 423
    new-instance v2, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;

    .line 424
    .line 425
    invoke-direct {v2, v0, v3}, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;I)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/download/DownloadDialog;->setRadioButtonsState(Z)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    if-nez v1, :cond_6

    .line 439
    .line 440
    goto :goto_4

    .line 441
    :cond_6
    iget-object v1, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 442
    .line 443
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    .line 444
    .line 445
    iget-object v2, v0, Lorg/schabi/newpipe/download/DownloadDialog;->audioTrackAdapter:Lorg/schabi/newpipe/util/AudioTrackAdapter;

    .line 446
    .line 447
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 448
    .line 449
    .line 450
    iget-object v1, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 451
    .line 452
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    .line 453
    .line 454
    iget v2, v0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioTrackIndex:I

    .line 455
    .line 456
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 457
    .line 458
    .line 459
    :goto_4
    iget-object v1, v0, Lorg/schabi/newpipe/download/DownloadDialog;->videoStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 460
    .line 461
    invoke-virtual {v1}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getCount()I

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    if-lez v1, :cond_7

    .line 466
    .line 467
    move v1, v7

    .line 468
    goto :goto_5

    .line 469
    :cond_7
    move v1, v3

    .line 470
    :goto_5
    iget-object v2, v0, Lorg/schabi/newpipe/download/DownloadDialog;->audioStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 471
    .line 472
    invoke-virtual {v2}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getCount()I

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    if-lez v2, :cond_8

    .line 477
    .line 478
    move v2, v7

    .line 479
    goto :goto_6

    .line 480
    :cond_8
    move v2, v3

    .line 481
    :goto_6
    iget-object v4, v0, Lorg/schabi/newpipe/download/DownloadDialog;->subtitleStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 482
    .line 483
    invoke-virtual {v4}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getCount()I

    .line 484
    .line 485
    .line 486
    move-result v4

    .line 487
    if-lez v4, :cond_9

    .line 488
    .line 489
    move v4, v7

    .line 490
    goto :goto_7

    .line 491
    :cond_9
    move v4, v3

    .line 492
    :goto_7
    iget-object v5, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 493
    .line 494
    iget-object v5, v5, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioButton:Landroid/widget/RadioButton;

    .line 495
    .line 496
    const/16 v6, 0x8

    .line 497
    .line 498
    if-eqz v2, :cond_a

    .line 499
    .line 500
    move v8, v3

    .line 501
    goto :goto_8

    .line 502
    :cond_a
    move v8, v6

    .line 503
    :goto_8
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 504
    .line 505
    .line 506
    iget-object v5, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 507
    .line 508
    iget-object v5, v5, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoButton:Landroid/widget/RadioButton;

    .line 509
    .line 510
    if-eqz v1, :cond_b

    .line 511
    .line 512
    move v8, v3

    .line 513
    goto :goto_9

    .line 514
    :cond_b
    move v8, v6

    .line 515
    :goto_9
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 516
    .line 517
    .line 518
    iget-object v5, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 519
    .line 520
    iget-object v5, v5, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->subtitleButton:Landroid/widget/RadioButton;

    .line 521
    .line 522
    if-eqz v4, :cond_c

    .line 523
    .line 524
    move v6, v3

    .line 525
    :cond_c
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 529
    .line 530
    .line 531
    move-result-object v5

    .line 532
    invoke-static {v5}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 533
    .line 534
    .line 535
    move-result-object v5

    .line 536
    iput-object v5, v0, Lorg/schabi/newpipe/download/DownloadDialog;->prefs:Landroid/content/SharedPreferences;

    .line 537
    .line 538
    const v6, 0x7f13023b

    .line 539
    .line 540
    .line 541
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v6

    .line 545
    const v8, 0x7f130239

    .line 546
    .line 547
    .line 548
    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v9

    .line 552
    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v5

    .line 556
    if-eqz v1, :cond_d

    .line 557
    .line 558
    invoke-virtual {v0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v6

    .line 562
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-result v6

    .line 566
    if-eqz v6, :cond_d

    .line 567
    .line 568
    iget-object v1, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 569
    .line 570
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoButton:Landroid/widget/RadioButton;

    .line 571
    .line 572
    invoke-virtual {v1, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupVideoSpinner()V

    .line 576
    .line 577
    .line 578
    goto/16 :goto_a

    .line 579
    .line 580
    :cond_d
    if-eqz v2, :cond_e

    .line 581
    .line 582
    const v6, 0x7f130237

    .line 583
    .line 584
    .line 585
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v6

    .line 589
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v6

    .line 593
    if-eqz v6, :cond_e

    .line 594
    .line 595
    iget-object v1, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 596
    .line 597
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioButton:Landroid/widget/RadioButton;

    .line 598
    .line 599
    invoke-virtual {v1, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupAudioSpinner()V

    .line 603
    .line 604
    .line 605
    goto :goto_a

    .line 606
    :cond_e
    if-eqz v4, :cond_f

    .line 607
    .line 608
    const v6, 0x7f130238

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v6

    .line 615
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    move-result v5

    .line 619
    if-eqz v5, :cond_f

    .line 620
    .line 621
    iget-object v1, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 622
    .line 623
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->subtitleButton:Landroid/widget/RadioButton;

    .line 624
    .line 625
    invoke-virtual {v1, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupSubtitleSpinner()V

    .line 629
    .line 630
    .line 631
    goto :goto_a

    .line 632
    :cond_f
    if-eqz v1, :cond_10

    .line 633
    .line 634
    iget-object v1, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 635
    .line 636
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoButton:Landroid/widget/RadioButton;

    .line 637
    .line 638
    invoke-virtual {v1, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupVideoSpinner()V

    .line 642
    .line 643
    .line 644
    goto :goto_a

    .line 645
    :cond_10
    if-eqz v2, :cond_11

    .line 646
    .line 647
    iget-object v1, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 648
    .line 649
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioButton:Landroid/widget/RadioButton;

    .line 650
    .line 651
    invoke-virtual {v1, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupAudioSpinner()V

    .line 655
    .line 656
    .line 657
    goto :goto_a

    .line 658
    :cond_11
    if-eqz v4, :cond_12

    .line 659
    .line 660
    iget-object v1, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 661
    .line 662
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->subtitleButton:Landroid/widget/RadioButton;

    .line 663
    .line 664
    invoke-virtual {v1, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupSubtitleSpinner()V

    .line 668
    .line 669
    .line 670
    goto :goto_a

    .line 671
    :cond_12
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    const v2, 0x7f13036e

    .line 676
    .line 677
    .line 678
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v0, v3, v3}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 686
    .line 687
    .line 688
    :goto_a
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    iput-object v1, v0, Lorg/schabi/newpipe/download/DownloadDialog;->prefs:Landroid/content/SharedPreferences;

    .line 697
    .line 698
    const v2, 0x7f1300d7

    .line 699
    .line 700
    .line 701
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    const/4 v3, 0x3

    .line 706
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 707
    .line 708
    .line 709
    move-result v1

    .line 710
    iget-object v2, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 711
    .line 712
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->threadsCount:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 713
    .line 714
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v3

    .line 718
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    .line 720
    .line 721
    iget-object v2, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 722
    .line 723
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->threads:Landroid/widget/SeekBar;

    .line 724
    .line 725
    sub-int/2addr v1, v7

    .line 726
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 727
    .line 728
    .line 729
    iget-object v1, v0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 730
    .line 731
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->threads:Landroid/widget/SeekBar;

    .line 732
    .line 733
    new-instance v2, Lorg/schabi/newpipe/download/DownloadDialog$2;

    .line 734
    .line 735
    invoke-direct {v2, v0}, Lorg/schabi/newpipe/download/DownloadDialog$2;-><init>(Lorg/schabi/newpipe/download/DownloadDialog;)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v0}, Lorg/schabi/newpipe/download/DownloadDialog;->fetchStreamsSize()V

    .line 742
    .line 743
    .line 744
    return-void

    .line 745
    :cond_13
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    const-string v1, "Missing required view with ID: "

    .line 754
    .line 755
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    return-void
.end method

.method public final requestDownloadPickFolderResult(Landroidx/activity/result/ActivityResult;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const v0, 0x7f1301f3

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v1, p1}, Lorg/schabi/newpipe/util/FilePickerActivityHelper;->isOwnFileUri(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/ranges/RangesKt;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const/4 v3, 0x3

    .line 49
    invoke-virtual {v1, v2, p1, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    .line 72
    .line 73
    :try_start_0
    new-instance p2, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 74
    .line 75
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 76
    .line 77
    invoke-direct {p2, v1, p1, p3}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->findFile(Ljava/lang/String;)Landroid/net/Uri;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object p3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p0, p2, p1, p3, v1}, Lorg/schabi/newpipe/download/DownloadDialog;->checkSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :catch_0
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->showFailedDialog(I)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final setRadioButtonsState(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioButton:Landroid/widget/RadioButton;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 9
    .line 10
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoButton:Landroid/widget/RadioButton;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 16
    .line 17
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->subtitleButton:Landroid/widget/RadioButton;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final setupAudioSpinner()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 9
    .line 10
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->setRadioButtonsState(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 22
    .line 23
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    .line 24
    .line 25
    iget-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->audioStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 31
    .line 32
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    .line 33
    .line 34
    iget v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 40
    .line 41
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 48
    .line 49
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    .line 50
    .line 51
    iget-object v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    .line 52
    .line 53
    invoke-virtual {v4}, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;->size()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-le v4, v0, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v3, v1

    .line 61
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 65
    .line 66
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackPresentInVideoText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final setupSubtitleSpinner()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 9
    .line 10
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->subtitleStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 18
    .line 19
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    .line 20
    .line 21
    iget v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 27
    .line 28
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->setRadioButtonsState(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 39
    .line 40
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    .line 41
    .line 42
    const/16 v1, 0x8

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 48
    .line 49
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 55
    .line 56
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioTrackPresentInVideoText:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final setupVideoSpinner()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 9
    .line 10
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->videoStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 18
    .line 19
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    .line 20
    .line 21
    iget v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedVideoIndex:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 27
    .line 28
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/download/DownloadDialog;->setRadioButtonsState(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 39
    .line 40
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    .line 41
    .line 42
    const/16 v1, 0x8

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->onVideoStreamSelected()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final showFailedDialog(I)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const v1, 0x7f1301f3

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    .line 15
    .line 16
    .line 17
    const p1, 0x7f130397

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget-object p1, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 25
    .line 26
    iput-object p0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    iput-object p0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final updateSecondaryStreams()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->getWrappedAudioStreams()Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/collection/SparseArrayCompat;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-direct {v1, v2}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 12
    .line 13
    invoke-virtual {v2}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 18
    .line 19
    invoke-virtual {v3}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->resetInfo()V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-ge v3, v4, :cond_2

    .line 28
    .line 29
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 34
    .line 35
    iget-boolean v4, v4, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    .line 36
    .line 37
    if-nez v4, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    iget-object v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getStreamsList()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 51
    .line 52
    invoke-static {v4, v5, v6}, Lorg/schabi/newpipe/util/SecondaryStreamHelper;->getAudioStreamFor(Landroid/content/Context;Ljava/util/List;Lorg/schabi/newpipe/extractor/stream/VideoStream;)Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    new-instance v5, Lorg/schabi/newpipe/util/SecondaryStreamHelper;

    .line 59
    .line 60
    invoke-direct {v5, v0, v4}, Lorg/schabi/newpipe/util/SecondaryStreamHelper;-><init>(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;Lorg/schabi/newpipe/extractor/stream/AudioStream;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v3, v5}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    new-instance v2, Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 70
    .line 71
    iget-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 72
    .line 73
    invoke-direct {v2, v3, v1}, Lorg/schabi/newpipe/util/StreamItemAdapter;-><init>(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;Landroidx/collection/SparseArrayCompat;)V

    .line 74
    .line 75
    .line 76
    iput-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->videoStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 77
    .line 78
    new-instance v1, Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 79
    .line 80
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/util/StreamItemAdapter;-><init>(Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;)V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->audioStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 84
    .line 85
    return-void
.end method

.class public final synthetic Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/download/DownloadDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/download/DownloadDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/download/DownloadDialog;

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
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_OPEN_DIALOG:Lorg/schabi/newpipe/error/UserAction;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/download/DownloadDialog;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/Boolean;

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
    const v0, 0x7f0a03b1

    .line 21
    .line 22
    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupSubtitleSpinner()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 30
    .line 31
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 32
    .line 33
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const v0, 0x7f0a0070

    .line 40
    .line 41
    .line 42
    if-ne p1, v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupAudioSpinner()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void

    .line 48
    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    .line 49
    .line 50
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 51
    .line 52
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const v0, 0x7f0a0424

    .line 59
    .line 60
    .line 61
    if-ne p1, v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->setupVideoSpinner()V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void

    .line 67
    :pswitch_2
    check-cast p1, Ljava/lang/Throwable;

    .line 68
    .line 69
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 70
    .line 71
    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 72
    .line 73
    const-string v3, "Downloading subtitle stream size"

    .line 74
    .line 75
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 76
    .line 77
    invoke-direct {v2, p1, v1, v3, p0}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v2}, Lorg/schabi/newpipe/error/ErrorUtil;->showSnackbar(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    .line 85
    .line 86
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 87
    .line 88
    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 89
    .line 90
    const-string v3, "Downloading audio stream size"

    .line 91
    .line 92
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 93
    .line 94
    invoke-direct {v2, p1, v1, v3, p0}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v2}, Lorg/schabi/newpipe/error/ErrorUtil;->showSnackbar(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_4
    check-cast p1, Ljava/lang/Throwable;

    .line 102
    .line 103
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 104
    .line 105
    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 106
    .line 107
    const-string v3, "Downloading video stream size"

    .line 108
    .line 109
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 110
    .line 111
    invoke-direct {v2, p1, v1, v3, p0}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v2}, Lorg/schabi/newpipe/error/ErrorUtil;->showSnackbar(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 10

    .line 1
    sget v0, Lorg/schabi/newpipe/download/DownloadDialog;->$r8$clinit:I

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const v0, 0x7f0a02ab

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-ne p1, v0, :cond_14

    .line 12
    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/download/DownloadDialog;

    .line 14
    .line 15
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 16
    .line 17
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->fileName:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 43
    .line 44
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_0
    invoke-static {v0, p1}, Landroidx/work/OperationKt;->createFilename(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "."

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    .line 59
    .line 60
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 61
    .line 62
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const v0, 0x7f0a0070

    .line 69
    .line 70
    .line 71
    if-ne p1, v0, :cond_2

    .line 72
    .line 73
    const p1, 0x7f130237

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mainStorageAudio:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 81
    .line 82
    iget-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->audioStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 83
    .line 84
    iget v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 91
    .line 92
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {p0}, Lorg/schabi/newpipe/download/DownloadDialog;->getWrappedAudioStreams()Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    iget v5, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    .line 101
    .line 102
    invoke-virtual {v4, v5}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getSizeInBytes(I)J

    .line 103
    .line 104
    .line 105
    move-result-wide v4

    .line 106
    sget-object v6, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 107
    .line 108
    if-ne v3, v6, :cond_1

    .line 109
    .line 110
    const-string v3, "audio/ogg"

    .line 111
    .line 112
    iput-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    .line 113
    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    iget-object v6, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    .line 120
    .line 121
    const-string v7, "opus"

    .line 122
    .line 123
    invoke-static {v3, v6, v7}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iput-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :cond_1
    if-eqz v3, :cond_6

    .line 132
    .line 133
    iget-object v6, v3, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    .line 134
    .line 135
    iput-object v6, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    .line 136
    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    iget-object v7, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v3, v3, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    iput-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_2
    const v2, 0x7f0a0424

    .line 161
    .line 162
    .line 163
    if-ne p1, v2, :cond_3

    .line 164
    .line 165
    const p1, 0x7f130239

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 173
    .line 174
    iget-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->videoStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 175
    .line 176
    iget v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedVideoIndex:I

    .line 177
    .line 178
    invoke-virtual {v3, v4}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    check-cast v3, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 183
    .line 184
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    iget-object v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 189
    .line 190
    iget v5, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedVideoIndex:I

    .line 191
    .line 192
    invoke-virtual {v4, v5}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getSizeInBytes(I)J

    .line 193
    .line 194
    .line 195
    move-result-wide v4

    .line 196
    if-eqz v3, :cond_6

    .line 197
    .line 198
    iget-object v6, v3, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    .line 199
    .line 200
    iput-object v6, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    .line 201
    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    iget-object v7, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v3, v3, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    iput-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_3
    const v2, 0x7f0a03b1

    .line 225
    .line 226
    .line 227
    if-ne p1, v2, :cond_13

    .line 228
    .line 229
    const p1, 0x7f130238

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mainStorageVideo:Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;

    .line 237
    .line 238
    iget-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->subtitleStreamsAdapter:Lorg/schabi/newpipe/util/StreamItemAdapter;

    .line 239
    .line 240
    iget v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    .line 241
    .line 242
    invoke-virtual {v3, v4}, Lorg/schabi/newpipe/util/StreamItemAdapter;->getItem(I)Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    check-cast v3, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    .line 247
    .line 248
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    iget-object v4, p0, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedSubtitleStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 253
    .line 254
    iget v5, p0, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    .line 255
    .line 256
    invoke-virtual {v4, v5}, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;->getSizeInBytes(I)J

    .line 257
    .line 258
    .line 259
    move-result-wide v4

    .line 260
    if-eqz v3, :cond_4

    .line 261
    .line 262
    iget-object v6, v3, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    .line 263
    .line 264
    iput-object v6, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    .line 265
    .line 266
    :cond_4
    sget-object v6, Lorg/schabi/newpipe/extractor/MediaFormat;->TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 267
    .line 268
    if-ne v3, v6, :cond_5

    .line 269
    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    iget-object v6, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    sget-object v6, Lorg/schabi/newpipe/extractor/MediaFormat;->SRT:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 281
    .line 282
    iget-object v6, v6, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    iput-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    .line 292
    .line 293
    goto :goto_0

    .line 294
    :cond_5
    if-eqz v3, :cond_6

    .line 295
    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    iget-object v7, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    iget-object v3, v3, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    iput-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    .line 316
    .line 317
    :cond_6
    :goto_0
    iget-boolean v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->askForSavePath:Z

    .line 318
    .line 319
    const-string v6, "DialogFragment"

    .line 320
    .line 321
    const/4 v7, 0x1

    .line 322
    if-nez v3, :cond_a

    .line 323
    .line 324
    if-eqz v2, :cond_8

    .line 325
    .line 326
    iget-object v3, v2, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/TreeDocumentFile;

    .line 327
    .line 328
    if-nez v3, :cond_7

    .line 329
    .line 330
    move v1, v7

    .line 331
    :cond_7
    iget-object v8, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 332
    .line 333
    invoke-static {v8}, Lokio/Options$Companion;->useStorageAccessFramework(Landroid/content/Context;)Z

    .line 334
    .line 335
    .line 336
    move-result v8

    .line 337
    if-eq v1, v8, :cond_8

    .line 338
    .line 339
    if-eqz v3, :cond_a

    .line 340
    .line 341
    invoke-virtual {v3}, Landroidx/documentfile/provider/TreeDocumentFile;->getName()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    if-nez v1, :cond_a

    .line 346
    .line 347
    :cond_8
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 348
    .line 349
    const v1, 0x7f130365

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-static {p1, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 361
    .line 362
    .line 363
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 364
    .line 365
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    .line 366
    .line 367
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    if-ne p1, v0, :cond_9

    .line 372
    .line 373
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadPickAudioFolderLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 374
    .line 375
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 376
    .line 377
    invoke-static {v0}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->getPicker(Landroid/content/Context;)Landroid/content/Intent;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 382
    .line 383
    invoke-static {p1, v0, v6, p0}, Lokhttp3/Cookie$Companion;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)V

    .line 384
    .line 385
    .line 386
    return v7

    .line 387
    :cond_9
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadPickVideoFolderLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 388
    .line 389
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 390
    .line 391
    invoke-static {v0}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->getPicker(Landroid/content/Context;)Landroid/content/Intent;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 396
    .line 397
    invoke-static {p1, v0, v6, p0}, Lokhttp3/Cookie$Companion;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)V

    .line 398
    .line 399
    .line 400
    return v7

    .line 401
    :cond_a
    iget-boolean v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->askForSavePath:Z

    .line 402
    .line 403
    if-eqz v1, :cond_d

    .line 404
    .line 405
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 406
    .line 407
    invoke-static {p1}, Lokio/Options$Companion;->useStorageAccessFramework(Landroid/content/Context;)Z

    .line 408
    .line 409
    .line 410
    move-result p1

    .line 411
    if-eqz p1, :cond_b

    .line 412
    .line 413
    const/4 p1, 0x0

    .line 414
    goto :goto_2

    .line 415
    :cond_b
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->dialogBinding:Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    .line 416
    .line 417
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    .line 418
    .line 419
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 420
    .line 421
    .line 422
    move-result p1

    .line 423
    if-ne p1, v0, :cond_c

    .line 424
    .line 425
    sget-object p1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 426
    .line 427
    new-instance v0, Ljava/io/File;

    .line 428
    .line 429
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    goto :goto_1

    .line 437
    :cond_c
    sget-object p1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 438
    .line 439
    new-instance v0, Ljava/io/File;

    .line 440
    .line 441
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    :goto_2
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->requestDownloadSaveAsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 457
    .line 458
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 459
    .line 460
    iget-object v2, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    .line 461
    .line 462
    iget-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    .line 463
    .line 464
    invoke-static {v1, v2, v3, p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getNewPicker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    iget-object p0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 469
    .line 470
    invoke-static {v0, p1, v6, p0}, Lokhttp3/Cookie$Companion;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)V

    .line 471
    .line 472
    .line 473
    return v7

    .line 474
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    .line 476
    .line 477
    const-wide v0, 0x7fffffffffffffffL

    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    :try_start_0
    iget-object v3, v2, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->ioTree:Lj$/nio/file/Path;

    .line 483
    .line 484
    if-eqz v3, :cond_e

    .line 485
    .line 486
    invoke-interface {v3}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v3

    .line 490
    invoke-static {v3}, Landroid/system/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    goto :goto_3

    .line 495
    :catchall_0
    move-exception v3

    .line 496
    goto :goto_5

    .line 497
    :cond_e
    iget-object v3, v2, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->context:Landroid/content/Context;

    .line 498
    .line 499
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->getUri()Landroid/net/Uri;

    .line 504
    .line 505
    .line 506
    move-result-object v6

    .line 507
    const-string v8, "r"

    .line 508
    .line 509
    invoke-virtual {v3, v6, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    if-nez v3, :cond_f

    .line 514
    .line 515
    if-eqz v3, :cond_10

    .line 516
    .line 517
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    .line 519
    .line 520
    goto :goto_6

    .line 521
    :cond_f
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 522
    .line 523
    .line 524
    move-result-object v6

    .line 525
    invoke-static {v6}, Landroid/system/Os;->fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;

    .line 526
    .line 527
    .line 528
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 529
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 530
    .line 531
    .line 532
    move-object v3, v6

    .line 533
    :goto_3
    iget-wide v8, v3, Landroid/system/StructStatVfs;->f_bavail:J

    .line 534
    .line 535
    iget-wide v0, v3, Landroid/system/StructStatVfs;->f_frsize:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 536
    .line 537
    mul-long/2addr v0, v8

    .line 538
    goto :goto_6

    .line 539
    :catchall_1
    move-exception v6

    .line 540
    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 541
    .line 542
    .line 543
    goto :goto_4

    .line 544
    :catchall_2
    move-exception v3

    .line 545
    :try_start_4
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 546
    .line 547
    .line 548
    :goto_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 549
    :goto_5
    const-string v6, "StoredDirectoryHelper"

    .line 550
    .line 551
    const-string v8, "Could not get free storage space"

    .line 552
    .line 553
    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    .line 555
    .line 556
    :cond_10
    :goto_6
    cmp-long v0, v0, v4

    .line 557
    .line 558
    if-gtz v0, :cond_11

    .line 559
    .line 560
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 561
    .line 562
    const v0, 0x7f13015b

    .line 563
    .line 564
    .line 565
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-static {p1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 570
    .line 571
    .line 572
    move-result-object p1

    .line 573
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 574
    .line 575
    .line 576
    new-instance p1, Landroid/content/Intent;

    .line 577
    .line 578
    const-string v0, "android.settings.INTERNAL_STORAGE_SETTINGS"

    .line 579
    .line 580
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->context:Landroid/content/Context;

    .line 584
    .line 585
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    if-eqz v0, :cond_12

    .line 594
    .line 595
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 596
    .line 597
    .line 598
    goto :goto_7

    .line 599
    :cond_11
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    .line 600
    .line 601
    invoke-virtual {v2, v0}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->findFile(Ljava/lang/String;)Landroid/net/Uri;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    iget-object v1, p0, Lorg/schabi/newpipe/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    .line 606
    .line 607
    iget-object v3, p0, Lorg/schabi/newpipe/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    .line 608
    .line 609
    invoke-virtual {p0, v2, v0, v1, v3}, Lorg/schabi/newpipe/download/DownloadDialog;->checkSelectedDownload(Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    iget-object v0, p0, Lorg/schabi/newpipe/download/DownloadDialog;->prefs:Landroid/content/SharedPreferences;

    .line 613
    .line 614
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    const v1, 0x7f13023b

    .line 619
    .line 620
    .line 621
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object p0

    .line 625
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 626
    .line 627
    .line 628
    move-result-object p0

    .line 629
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 630
    .line 631
    .line 632
    :cond_12
    :goto_7
    return v7

    .line 633
    :cond_13
    const-string p0, "No stream selected"

    .line 634
    .line 635
    invoke-static {p0}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    :cond_14
    return v1
.end method

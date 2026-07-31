.class public final Lorg/schabi/newpipe/player/PlayQueueActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/player/event/PlayerEventListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public menu:Landroid/view/Menu;

.field public player:Lorg/schabi/newpipe/player/Player;

.field public queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

.field public seeking:Z

.field public serviceBound:Z

.field public serviceConnection:Lorg/schabi/newpipe/download/DownloadDialog$1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final buildAudioTrackMenu()V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->menu:Landroid/view/Menu;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const v1, 0x7f0a0036

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 14
    .line 15
    invoke-static {v1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 20
    .line 21
    const/4 v3, 0x7

    .line 22
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 30
    .line 31
    const/16 v3, 0x8

    .line 32
    .line 33
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 41
    .line 42
    const/16 v3, 0x9

    .line 43
    .line 44
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/util/List;

    .line 57
    .line 58
    iget-object v2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 59
    .line 60
    invoke-static {v2}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    new-instance v3, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;

    .line 65
    .line 66
    const/16 v4, 0xa

    .line 67
    .line 68
    invoke-direct {v3, v4}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda28;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const/4 v3, 0x0

    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    const/4 v5, 0x2

    .line 83
    if-lt v4, v5, :cond_4

    .line 84
    .line 85
    invoke-virtual {v2}, Lj$/util/Optional;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-interface {v4}, Landroid/view/Menu;->clear()V

    .line 97
    .line 98
    .line 99
    move v6, v3

    .line 100
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-ge v6, v7, :cond_2

    .line 105
    .line 106
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    check-cast v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 111
    .line 112
    const/16 v8, 0x47

    .line 113
    .line 114
    invoke-static {p0, v7}, Lorg/schabi/newpipe/util/Localization;->audioTrackName(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-interface {v4, v8, v6, v3, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 119
    .line 120
    .line 121
    add-int/lit8 v6, v6, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 129
    .line 130
    invoke-static {p0, v1}, Lorg/schabi/newpipe/util/Localization;->audioTrackName(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/AudioStream;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const/4 v4, 0x1

    .line 135
    new-array v6, v4, [Ljava/lang/Object;

    .line 136
    .line 137
    aput-object v2, v6, v3

    .line 138
    .line 139
    const v7, 0x7f1303c5

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioLocale()Ljava/util/Locale;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    if-eqz p0, :cond_3

    .line 154
    .line 155
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAudioLocale()Ljava/util/Locale;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    invoke-static {p0, v5}, Ljava/lang/Math;->min(II)I

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    invoke-virtual {v2, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 176
    .line 177
    .line 178
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_4
    :goto_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public final onAudioTrackUpdate()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->buildAudioTrackMenu()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 12
    .line 13
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlRepeat:Landroid/widget/ImageButton;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->cycleNextRepeatMode()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 32
    .line 33
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlBackward:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 42
    .line 43
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->playPrevious()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 52
    .line 53
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlFastRewind:Landroid/widget/ImageButton;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-ne v0, v1, :cond_3

    .line 60
    .line 61
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->retrieveSeekDurationFromPreferences(Lorg/schabi/newpipe/player/Player;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    neg-int p1, p1

    .line 71
    int-to-long v0, p1

    .line 72
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 73
    .line 74
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    add-long/2addr v2, v0

    .line 79
    invoke-virtual {p0, v2, v3}, Lorg/schabi/newpipe/player/Player;->seekTo(J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->triggerProgressUpdate()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 91
    .line 92
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlPlayPause:Landroid/widget/ImageButton;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-ne v0, v1, :cond_4

    .line 99
    .line 100
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 101
    .line 102
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->playPause()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 111
    .line 112
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlFastForward:Landroid/widget/ImageButton;

    .line 113
    .line 114
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-ne v0, v1, :cond_5

    .line 119
    .line 120
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->retrieveSeekDurationFromPreferences(Lorg/schabi/newpipe/player/Player;)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    int-to-long v0, p1

    .line 130
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 131
    .line 132
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    .line 133
    .line 134
    .line 135
    move-result-wide v2

    .line 136
    add-long/2addr v2, v0

    .line 137
    invoke-virtual {p0, v2, v3}, Lorg/schabi/newpipe/player/Player;->seekTo(J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->triggerProgressUpdate()V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 149
    .line 150
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlForward:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 151
    .line 152
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-ne v0, v1, :cond_6

    .line 157
    .line 158
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 159
    .line 160
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->playNext()V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 169
    .line 170
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlShuffle:Landroid/widget/ImageButton;

    .line 171
    .line 172
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-ne v0, v1, :cond_7

    .line 177
    .line 178
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 179
    .line 180
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->toggleShuffleModeEnabled()V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 189
    .line 190
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->metadata:Landroid/widget/LinearLayout;

    .line 191
    .line 192
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-ne v0, v1, :cond_8

    .line 197
    .line 198
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->scrollToSelected()V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 207
    .line 208
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->liveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 209
    .line 210
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-ne p1, v0, :cond_9

    .line 215
    .line 216
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 217
    .line 218
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->seekToDefault()V

    .line 219
    .line 220
    .line 221
    :cond_9
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v0, v1}, Lokio/Options$Companion;->setTheme(Landroid/content/ContextWrapper;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const v2, 0x7f0d001f

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const v2, 0x7f0a0061

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const v2, 0x7f0a006a

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    const v2, 0x7f0a006c

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    move-object v6, v3

    .line 52
    check-cast v6, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 53
    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    const v2, 0x7f0a00cd

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    move-object v7, v3

    .line 64
    check-cast v7, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 65
    .line 66
    if-eqz v7, :cond_2

    .line 67
    .line 68
    const v2, 0x7f0a00ce

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    move-object v8, v3

    .line 76
    check-cast v8, Landroid/widget/ImageButton;

    .line 77
    .line 78
    if-eqz v8, :cond_2

    .line 79
    .line 80
    const v2, 0x7f0a00cf

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    move-object v9, v3

    .line 88
    check-cast v9, Landroid/widget/ImageButton;

    .line 89
    .line 90
    if-eqz v9, :cond_2

    .line 91
    .line 92
    const v2, 0x7f0a00d0

    .line 93
    .line 94
    .line 95
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    move-object v10, v3

    .line 100
    check-cast v10, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 101
    .line 102
    if-eqz v10, :cond_2

    .line 103
    .line 104
    const v2, 0x7f0a00d1

    .line 105
    .line 106
    .line 107
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 112
    .line 113
    const v2, 0x7f0a00d2

    .line 114
    .line 115
    .line 116
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    move-object v11, v3

    .line 121
    check-cast v11, Landroid/widget/ImageButton;

    .line 122
    .line 123
    if-eqz v11, :cond_2

    .line 124
    .line 125
    const v2, 0x7f0a00d3

    .line 126
    .line 127
    .line 128
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    move-object v12, v3

    .line 133
    check-cast v12, Landroid/widget/ProgressBar;

    .line 134
    .line 135
    if-eqz v12, :cond_2

    .line 136
    .line 137
    const v2, 0x7f0a00d4

    .line 138
    .line 139
    .line 140
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    move-object v13, v3

    .line 145
    check-cast v13, Landroid/widget/ImageButton;

    .line 146
    .line 147
    if-eqz v13, :cond_2

    .line 148
    .line 149
    const v2, 0x7f0a00d5

    .line 150
    .line 151
    .line 152
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    move-object v14, v3

    .line 157
    check-cast v14, Landroid/widget/ImageButton;

    .line 158
    .line 159
    if-eqz v14, :cond_2

    .line 160
    .line 161
    const v2, 0x7f0a00df

    .line 162
    .line 163
    .line 164
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    move-object v15, v3

    .line 169
    check-cast v15, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 170
    .line 171
    if-eqz v15, :cond_2

    .line 172
    .line 173
    const v2, 0x7f0a0149

    .line 174
    .line 175
    .line 176
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    move-object/from16 v16, v3

    .line 181
    .line 182
    check-cast v16, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 183
    .line 184
    if-eqz v16, :cond_2

    .line 185
    .line 186
    const v2, 0x7f0a0215

    .line 187
    .line 188
    .line 189
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    move-object/from16 v17, v3

    .line 194
    .line 195
    check-cast v17, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 196
    .line 197
    if-eqz v17, :cond_2

    .line 198
    .line 199
    move-object v4, v1

    .line 200
    check-cast v4, Landroid/widget/RelativeLayout;

    .line 201
    .line 202
    const v2, 0x7f0a0255

    .line 203
    .line 204
    .line 205
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    move-object/from16 v18, v3

    .line 210
    .line 211
    check-cast v18, Landroid/widget/LinearLayout;

    .line 212
    .line 213
    if-eqz v18, :cond_2

    .line 214
    .line 215
    const v2, 0x7f0a02f6

    .line 216
    .line 217
    .line 218
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    move-object/from16 v19, v3

    .line 223
    .line 224
    check-cast v19, Landroidx/recyclerview/widget/RecyclerView;

    .line 225
    .line 226
    if-eqz v19, :cond_2

    .line 227
    .line 228
    const v2, 0x7f0a02ff

    .line 229
    .line 230
    .line 231
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 236
    .line 237
    const v2, 0x7f0a0300

    .line 238
    .line 239
    .line 240
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 245
    .line 246
    const v2, 0x7f0a0301

    .line 247
    .line 248
    .line 249
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 254
    .line 255
    const v2, 0x7f0a031f

    .line 256
    .line 257
    .line 258
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    check-cast v3, Landroid/widget/LinearLayout;

    .line 263
    .line 264
    if-eqz v3, :cond_2

    .line 265
    .line 266
    const v2, 0x7f0a0359

    .line 267
    .line 268
    .line 269
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    move-object/from16 v20, v3

    .line 274
    .line 275
    check-cast v20, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 276
    .line 277
    if-eqz v20, :cond_2

    .line 278
    .line 279
    const v2, 0x7f0a035a

    .line 280
    .line 281
    .line 282
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    move-object/from16 v21, v3

    .line 287
    .line 288
    check-cast v21, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 289
    .line 290
    if-eqz v21, :cond_2

    .line 291
    .line 292
    const v2, 0x7f0a037f

    .line 293
    .line 294
    .line 295
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    move-object/from16 v22, v3

    .line 300
    .line 301
    check-cast v22, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 302
    .line 303
    if-eqz v22, :cond_2

    .line 304
    .line 305
    const v2, 0x7f0a03fd

    .line 306
    .line 307
    .line 308
    invoke-static {v2, v1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    move-object/from16 v23, v3

    .line 313
    .line 314
    check-cast v23, Landroidx/appcompat/widget/Toolbar;

    .line 315
    .line 316
    if-eqz v23, :cond_2

    .line 317
    .line 318
    new-instance v3, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 319
    .line 320
    invoke-direct/range {v3 .. v23}, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/view/View;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/ImageButton;Landroid/widget/ProgressBar;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/AppCompatSeekBar;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/Toolbar;)V

    .line 321
    .line 322
    .line 323
    iput-object v3, v0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 324
    .line 325
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 326
    .line 327
    .line 328
    iget-object v1, v0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 329
    .line 330
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 331
    .line 332
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    const/4 v2, 0x1

    .line 340
    if-eqz v1, :cond_0

    .line 341
    .line 342
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v1, v2}, Lokio/Options$Companion;->setDisplayHomeAsUpEnabled(Z)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lokio/Options$Companion;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    const v3, 0x7f1304f9

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1, v3}, Lokio/Options$Companion;->setTitle(I)V

    .line 357
    .line 358
    .line 359
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/download/DownloadDialog$1;

    .line 360
    .line 361
    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/download/DownloadDialog$1;-><init>(Ljava/lang/Object;I)V

    .line 362
    .line 363
    .line 364
    iput-object v1, v0, Lorg/schabi/newpipe/player/PlayQueueActivity;->serviceConnection:Lorg/schabi/newpipe/download/DownloadDialog$1;

    .line 365
    .line 366
    new-instance v1, Landroid/content/Intent;

    .line 367
    .line 368
    const-class v3, Lorg/schabi/newpipe/player/PlayerService;

    .line 369
    .line 370
    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    .line 372
    .line 373
    const-string v3, "bind_player_holder_action"

    .line 374
    .line 375
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    .line 377
    .line 378
    iget-object v3, v0, Lorg/schabi/newpipe/player/PlayQueueActivity;->serviceConnection:Lorg/schabi/newpipe/download/DownloadDialog$1;

    .line 379
    .line 380
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-nez v1, :cond_1

    .line 385
    .line 386
    iget-object v2, v0, Lorg/schabi/newpipe/player/PlayQueueActivity;->serviceConnection:Lorg/schabi/newpipe/download/DownloadDialog$1;

    .line 387
    .line 388
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 389
    .line 390
    .line 391
    :cond_1
    iput-boolean v1, v0, Lorg/schabi/newpipe/player/PlayQueueActivity;->serviceBound:Z

    .line 392
    .line 393
    return-void

    .line 394
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    const-string v1, "Missing required view with ID: "

    .line 403
    .line 404
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->menu:Landroid/view/Menu;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0f000c

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f0f000d

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->buildAudioTrackMenu()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->onMaybeMuteChanged()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->onPlaybackParameterChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    const/4 p0, 0x1

    .line 41
    return p0
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->unbind()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onMaybeMuteChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->menu:Landroid/view/Menu;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    const v1, 0x7f0a0048

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 17
    .line 18
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->isMuted()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const v1, 0x7f130511

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const v1, 0x7f130346

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isMuted()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    const p0, 0x7f080163

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const p0, 0x7f080164

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method public final onMetadataUpdate(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 4
    .line 5
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->songName:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 15
    .line 16
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->artistName:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 26
    .line 27
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->endTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 28
    .line 29
    const/16 v0, 0x8

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 35
    .line 36
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->liveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const/4 p2, 0x3

    .line 50
    const/4 v0, 0x0

    .line 51
    if-eq p1, p2, :cond_0

    .line 52
    .line 53
    const/4 p2, 0x4

    .line 54
    if-eq p1, p2, :cond_0

    .line 55
    .line 56
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 57
    .line 58
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->endTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 65
    .line 66
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->liveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->scrollToSelected()V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    const v1, 0x7f0a004b

    .line 16
    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    new-instance p1, Landroid/content/Intent;

    .line 21
    .line 22
    const-class v0, Lorg/schabi/newpipe/settings/SettingsActivity;

    .line 23
    .line 24
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    return v2

    .line 31
    :cond_1
    const v1, 0x7f0a0035

    .line 32
    .line 33
    .line 34
    if-ne v0, v1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p1, p0}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->showForPlayQueue(Lorg/schabi/newpipe/player/Player;Landroidx/fragment/app/FragmentManager;)V

    .line 43
    .line 44
    .line 45
    return v2

    .line 46
    :cond_2
    const v1, 0x7f0a0049

    .line 47
    .line 48
    .line 49
    if-ne v0, v1, :cond_4

    .line 50
    .line 51
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 52
    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :cond_3
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 62
    .line 63
    float-to-double v3, p1

    .line 64
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 65
    .line 66
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    .line 71
    .line 72
    float-to-double v5, p1

    .line 73
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 74
    .line 75
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlaybackSkipSilence()Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    move-object v8, p0

    .line 80
    invoke-static/range {v3 .. v8}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->newInstance(DDZLorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;)Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v8}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string v0, "PlayQueueActivity"

    .line 89
    .line 90
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return v2

    .line 94
    :cond_4
    move-object v8, p0

    .line 95
    const p0, 0x7f0a0048

    .line 96
    .line 97
    .line 98
    if-ne v0, p0, :cond_5

    .line 99
    .line 100
    iget-object p0, v8, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 101
    .line 102
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->toggleMute()V

    .line 103
    .line 104
    .line 105
    return v2

    .line 106
    :cond_5
    const p0, 0x7f0a004f

    .line 107
    .line 108
    .line 109
    if-ne v0, p0, :cond_6

    .line 110
    .line 111
    new-instance p0, Landroid/content/Intent;

    .line 112
    .line 113
    const-string p1, "android.settings.SOUND_SETTINGS"

    .line 114
    .line 115
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    .line 120
    .line 121
    return v2

    .line 122
    :cond_6
    const p0, 0x7f0a004d

    .line 123
    .line 124
    .line 125
    if-ne v0, p0, :cond_7

    .line 126
    .line 127
    iget-object p0, v8, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 128
    .line 129
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 130
    .line 131
    .line 132
    iget-object p0, v8, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 133
    .line 134
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 135
    .line 136
    invoke-static {v8, p0, v2}, Landroidx/sqlite/SQLite;->playOnMainPlayer(Landroid/content/ContextWrapper;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 137
    .line 138
    .line 139
    return v2

    .line 140
    :cond_7
    const p0, 0x7f0a004e

    .line 141
    .line 142
    .line 143
    if-ne v0, p0, :cond_8

    .line 144
    .line 145
    invoke-static {v8}, Lus/shandian/giga/util/Utility;->isPopupEnabledElseAsk(Landroid/content/Context;)Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-eqz p0, :cond_a

    .line 150
    .line 151
    iget-object p0, v8, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 152
    .line 153
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 154
    .line 155
    .line 156
    iget-object p0, v8, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 157
    .line 158
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 159
    .line 160
    invoke-static {v8, p0, v2}, Landroidx/sqlite/SQLite;->playOnPopupPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 161
    .line 162
    .line 163
    return v2

    .line 164
    :cond_8
    const p0, 0x7f0a004c

    .line 165
    .line 166
    .line 167
    if-ne v0, p0, :cond_9

    .line 168
    .line 169
    iget-object p0, v8, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 170
    .line 171
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 172
    .line 173
    .line 174
    iget-object p0, v8, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 175
    .line 176
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 177
    .line 178
    invoke-static {v8, p0, v2}, Landroidx/sqlite/SQLite;->playOnBackgroundPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 179
    .line 180
    .line 181
    return v2

    .line 182
    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    const/16 v0, 0x47

    .line 187
    .line 188
    if-ne p0, v0, :cond_c

    .line 189
    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    iget-object p1, v8, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 195
    .line 196
    iget-object p1, p1, Lorg/schabi/newpipe/player/Player;->currentMetadata:Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;

    .line 197
    .line 198
    if-nez p1, :cond_b

    .line 199
    .line 200
    :cond_a
    :goto_0
    return v2

    .line 201
    :cond_b
    invoke-interface {p1}, Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;->getMaybeAudioTrack()Lj$/util/Optional;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    new-instance v0, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;

    .line 206
    .line 207
    invoke-direct {v0, v8, p0}, Lorg/schabi/newpipe/player/PlayQueueActivity$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/player/PlayQueueActivity;I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 211
    .line 212
    .line 213
    return v2

    .line 214
    :cond_c
    invoke-super {v8, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    return p0
.end method

.method public final onPlaybackParameterChanged(FFZ)V
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p1, p2, p3}, Lorg/schabi/newpipe/player/Player;->setPlaybackParameters(FFZ)V

    .line 31
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->onPlaybackParameterChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_0
    return-void
.end method

.method public final onPlaybackParameterChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->menu:Landroid/view/Menu;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const p0, 0x7f0a0049

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 19
    .line 20
    float-to-double v0, p1

    .line 21
    invoke-static {v0, v1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->formatSpeed(D)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final onPlaybackUpdate(IIZLcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlPlayPause:Landroid/widget/ImageButton;

    .line 4
    .line 5
    const/16 v1, 0x80

    .line 6
    .line 7
    const/16 v2, 0x7e

    .line 8
    .line 9
    const/16 v3, 0x7c

    .line 10
    .line 11
    if-eq p1, v3, :cond_2

    .line 12
    .line 13
    if-eq p1, v2, :cond_1

    .line 14
    .line 15
    if-eq p1, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const v4, 0x7f080147

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    .line 23
    .line 24
    const v4, 0x7f130420

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const v4, 0x7f08013b

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    .line 40
    .line 41
    const v4, 0x7f1303c1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const v4, 0x7f080132

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    .line 57
    .line 58
    const v4, 0x7f1303ab

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    const/4 v0, 0x1

    .line 69
    const/4 v4, 0x0

    .line 70
    if-eq p1, v3, :cond_3

    .line 71
    .line 72
    if-eq p1, v2, :cond_3

    .line 73
    .line 74
    if-eq p1, v1, :cond_3

    .line 75
    .line 76
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 77
    .line 78
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlPlayPause:Landroid/widget/ImageButton;

    .line 79
    .line 80
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 84
    .line 85
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlPlayPause:Landroid/widget/ImageButton;

    .line 86
    .line 87
    const/4 v1, 0x4

    .line 88
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 92
    .line 93
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlProgressBar:Landroid/widget/ProgressBar;

    .line 94
    .line 95
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 100
    .line 101
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlPlayPause:Landroid/widget/ImageButton;

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 107
    .line 108
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlPlayPause:Landroid/widget/ImageButton;

    .line 109
    .line 110
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 114
    .line 115
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlProgressBar:Landroid/widget/ProgressBar;

    .line 116
    .line 117
    const/16 v1, 0x8

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    :goto_1
    if-eqz p2, :cond_6

    .line 123
    .line 124
    if-eq p2, v0, :cond_5

    .line 125
    .line 126
    const/4 p1, 0x2

    .line 127
    if-eq p2, p1, :cond_4

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_4
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 131
    .line 132
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlRepeat:Landroid/widget/ImageButton;

    .line 133
    .line 134
    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_all:I

    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 141
    .line 142
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlRepeat:Landroid/widget/ImageButton;

    .line 143
    .line 144
    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_one:I

    .line 145
    .line 146
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_6
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 151
    .line 152
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlRepeat:Landroid/widget/ImageButton;

    .line 153
    .line 154
    sget p2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_off:I

    .line 155
    .line 156
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    .line 158
    .line 159
    :goto_2
    if-eqz p3, :cond_7

    .line 160
    .line 161
    const/16 p1, 0xff

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_7
    const/16 p1, 0x4d

    .line 165
    .line 166
    :goto_3
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 167
    .line 168
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->controlShuffle:Landroid/widget/ImageButton;

    .line 169
    .line 170
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, p4}, Lorg/schabi/newpipe/player/PlayQueueActivity;->onPlaybackParameterChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->onMaybeMuteChanged()V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->menu:Landroid/view/Menu;

    .line 6
    .line 7
    const v1, 0x7f0a004e

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 15
    .line 16
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    .line 17
    .line 18
    sget-object v2, Lorg/schabi/newpipe/player/PlayerType;->POPUP:Lorg/schabi/newpipe/player/PlayerType;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    move v1, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v1, v3

    .line 27
    :goto_0
    xor-int/2addr v1, v4

    .line 28
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->menu:Landroid/view/Menu;

    .line 32
    .line 33
    const v1, 0x7f0a004c

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 41
    .line 42
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->playerType:Lorg/schabi/newpipe/player/PlayerType;

    .line 43
    .line 44
    sget-object v2, Lorg/schabi/newpipe/player/PlayerType;->AUDIO:Lorg/schabi/newpipe/player/PlayerType;

    .line 45
    .line 46
    if-ne v1, v2, :cond_1

    .line 47
    .line 48
    move v3, v4

    .line 49
    :cond_1
    xor-int/lit8 v1, v3, 0x1

    .line 50
    .line 51
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    return p0
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    div-int/lit16 p2, p2, 0x3e8

    .line 4
    .line 5
    int-to-long p1, p2

    .line 6
    invoke-static {p1, p2}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 11
    .line 12
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->currentTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 18
    .line 19
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->seekDisplay:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onProgressUpdate(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    int-to-float p3, p3

    .line 11
    const/high16 v2, 0x42c80000    # 100.0f

    .line 12
    .line 13
    div-float/2addr p3, v2

    .line 14
    mul-float/2addr p3, v1

    .line 15
    float-to-int p3, p3

    .line 16
    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 17
    .line 18
    .line 19
    iget-object p3, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 20
    .line 21
    iget-object p3, p3, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 22
    .line 23
    invoke-virtual {p3, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 24
    .line 25
    .line 26
    iget-object p3, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 27
    .line 28
    iget-object p3, p3, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->endTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 29
    .line 30
    div-int/lit16 p2, p2, 0x3e8

    .line 31
    .line 32
    int-to-long v0, p2

    .line 33
    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    iget-boolean p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->seeking:Z

    .line 41
    .line 42
    if-nez p2, :cond_0

    .line 43
    .line 44
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 45
    .line 46
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 52
    .line 53
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->currentTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 54
    .line 55
    div-int/lit16 p1, p1, 0x3e8

    .line 56
    .line 57
    int-to-long v0, p1

    .line 58
    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 66
    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 70
    .line 71
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->liveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 72
    .line 73
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->isLiveEdge()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    xor-int/lit8 p1, p1, 0x1

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 83
    .line 84
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->currentTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object p2, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 91
    .line 92
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->endTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 99
    .line 100
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 101
    .line 102
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->currentTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final onQueueUpdate(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 18
    .line 19
    const/4 v1, 0x7

    .line 20
    invoke-direct {p1, p0, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->playQueueItemBuilder:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

    .line 24
    .line 25
    iput-object p1, v1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;->onItemClickListener:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;

    .line 26
    .line 27
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 28
    .line 29
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onServiceStopped()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/PlayQueueActivity;->unbind()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->seeking:Z

    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->seekDisplay:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    int-to-long v1, p1

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/player/Player;->seekTo(J)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 14
    .line 15
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->seekDisplay:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->seeking:Z

    .line 24
    .line 25
    return-void
.end method

.method public final scrollToSelected()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 13
    .line 14
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    instance-of v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 26
    .line 27
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v1, v2, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZ)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    const/4 v1, -0x1

    .line 46
    :goto_0
    move v2, v1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    :goto_1
    sub-int v1, v0, v2

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->queueControlBinding:Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;

    .line 60
    .line 61
    const/16 v2, 0x50

    .line 62
    .line 63
    if-ge v1, v2, :cond_3

    .line 64
    .line 65
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ActivityPlayerQueueControlBinding;->playQueue:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final unbind()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->serviceBound:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->serviceConnection:Lorg/schabi/newpipe/download/DownloadDialog$1;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->serviceBound:Z

    .line 12
    .line 13
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v2, v0, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    .line 19
    .line 20
    if-ne v2, p0, :cond_0

    .line 21
    .line 22
    iput-object v1, v0, Lorg/schabi/newpipe/player/Player;->activityListener:Lorg/schabi/newpipe/player/event/PlayerEventListener;

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/PlayQueueActivity;->onQueueUpdate(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iput-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 35
    .line 36
    iput-object v1, p0, Lorg/schabi/newpipe/player/PlayQueueActivity;->player:Lorg/schabi/newpipe/player/Player;

    .line 37
    .line 38
    :cond_2
    return-void
.end method

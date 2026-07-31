.class public abstract Lorg/schabi/newpipe/player/ui/VideoPlayerUi;
.super Lorg/schabi/newpipe/player/ui/PlayerUi;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroidx/appcompat/widget/PopupMenu$OnDismissListener;


# static fields
.field public static final PLAYBACK_SPEEDS:[F


# instance fields
.field public final audioTrackPopupMenu:Lcoil3/ComponentRegistry$Builder;

.field public final binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

.field public final captionPopupMenu:Lcoil3/ComponentRegistry$Builder;

.field public final controlsVisibilityHandler:Landroid/os/Handler;

.field public gestureDetector:Landroid/view/GestureDetector;

.field public isSomePopupMenuVisible:Z

.field public onLayoutChangeListener:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda22;

.field public final playbackSpeedPopupMenu:Lcoil3/ComponentRegistry$Builder;

.field public playerGestureListener:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

.field public final qualityPopupMenu:Lcoil3/ComponentRegistry$Builder;

.field public final seekbarPreviewThumbnailHolder:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

.field public surfaceHolderCallback:Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;

.field public surfaceIsSetup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->PLAYBACK_SPEEDS:[F

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x3fe00000    # 1.75f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/Player;Lorg/schabi/newpipe/databinding/PlayerBinding;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/ui/PlayerUi;-><init>(Lorg/schabi/newpipe/player/Player;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->controlsVisibilityHandler:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceIsSetup:Z

    .line 17
    .line 18
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isSomePopupMenuVisible:Z

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onLayoutChangeListener:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda22;

    .line 22
    .line 23
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    .line 24
    .line 25
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->seekbarPreviewThumbnailHolder:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    .line 29
    .line 30
    iput-object p2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 31
    .line 32
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 33
    .line 34
    const-class v1, Landroid/view/accessibility/CaptioningManager;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/view/accessibility/CaptioningManager;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 57
    .line 58
    :goto_1
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupSubtitleView(F)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Landroid/view/accessibility/CaptioningManager;

    .line 66
    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    :goto_2
    sget-object v1, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    .line 86
    .line 87
    :goto_3
    iget-object v2, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 88
    .line 89
    iget-object v3, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->fastSeekOverlay:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    .line 90
    .line 91
    iget-object v4, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 92
    .line 93
    sget-object v5, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    .line 94
    .line 95
    const/4 v6, 0x1

    .line 96
    if-ne v1, v5, :cond_4

    .line 97
    .line 98
    move v5, v6

    .line 99
    goto :goto_4

    .line 100
    :cond_4
    move v5, p1

    .line 101
    :goto_4
    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setApplyEmbeddedStyles(Z)V

    .line 102
    .line 103
    .line 104
    iget-object v2, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 105
    .line 106
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->resizeTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 110
    .line 111
    iget-object v2, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    .line 112
    .line 113
    invoke-virtual {v2}, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->getResizeMode()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-static {v0, v2}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->resizeTypeOf(Lorg/schabi/newpipe/player/PlayerService;I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 129
    .line 130
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 131
    .line 132
    const/high16 v7, -0x10000

    .line 133
    .line 134
    invoke-direct {v2, v7, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 145
    .line 146
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 147
    .line 148
    invoke-direct {v2, v7, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 152
    .line 153
    .line 154
    new-instance v1, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 155
    .line 156
    const v2, 0x7f140147

    .line 157
    .line 158
    .line 159
    invoke-direct {v1, v0, v2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 160
    .line 161
    .line 162
    new-instance v2, Lcoil3/ComponentRegistry$Builder;

    .line 163
    .line 164
    iget-object v5, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 165
    .line 166
    invoke-direct {v2, v1, v5}, Lcoil3/ComponentRegistry$Builder;-><init>(Landroid/content/ContextWrapper;Landroid/view/View;)V

    .line 167
    .line 168
    .line 169
    iput-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->qualityPopupMenu:Lcoil3/ComponentRegistry$Builder;

    .line 170
    .line 171
    new-instance v2, Lcoil3/ComponentRegistry$Builder;

    .line 172
    .line 173
    iget-object v5, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 174
    .line 175
    invoke-direct {v2, v1, v5}, Lcoil3/ComponentRegistry$Builder;-><init>(Landroid/content/ContextWrapper;Landroid/view/View;)V

    .line 176
    .line 177
    .line 178
    iput-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->audioTrackPopupMenu:Lcoil3/ComponentRegistry$Builder;

    .line 179
    .line 180
    new-instance v2, Lcoil3/ComponentRegistry$Builder;

    .line 181
    .line 182
    iget-object v5, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 183
    .line 184
    invoke-direct {v2, v0, v5}, Lcoil3/ComponentRegistry$Builder;-><init>(Landroid/content/ContextWrapper;Landroid/view/View;)V

    .line 185
    .line 186
    .line 187
    iput-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playbackSpeedPopupMenu:Lcoil3/ComponentRegistry$Builder;

    .line 188
    .line 189
    new-instance v0, Lcoil3/ComponentRegistry$Builder;

    .line 190
    .line 191
    iget-object v2, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->captionTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 192
    .line 193
    invoke-direct {v0, v1, v2}, Lcoil3/ComponentRegistry$Builder;-><init>(Landroid/content/ContextWrapper;Landroid/view/View;)V

    .line 194
    .line 195
    .line 196
    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->captionPopupMenu:Lcoil3/ComponentRegistry$Builder;

    .line 197
    .line 198
    iget-object v0, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->progressBarLoadingPanel:Landroid/widget/ProgressBar;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 205
    .line 206
    const/4 v2, -0x1

    .line 207
    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->titleTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 214
    .line 215
    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->channelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 219
    .line 220
    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    .line 221
    .line 222
    .line 223
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 224
    .line 225
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->initListeners()V

    .line 229
    .line 230
    .line 231
    new-instance p2, Lorg/koin/core/scope/Scope$$ExternalSyntheticLambda0;

    .line 232
    .line 233
    const/16 v0, 0x8

    .line 234
    .line 235
    invoke-direct {p2, p0, v0}, Lorg/koin/core/scope/Scope$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 236
    .line 237
    .line 238
    iput-object p2, v3, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->seekSecondsSupplier:Lkotlin/jvm/functions/Function0;

    .line 239
    .line 240
    new-instance p2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 241
    .line 242
    invoke-direct {p2, p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;-><init>(Ljava/lang/Object;I)V

    .line 243
    .line 244
    .line 245
    iput-object p2, v3, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->performListener:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 246
    .line 247
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playerGestureListener:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    .line 248
    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    iput-object v3, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapControls:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    .line 253
    .line 254
    return-void
.end method


# virtual methods
.method public final animatePlayButtons(JZ)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 4
    .line 5
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 6
    .line 7
    const/4 v9, 0x0

    .line 8
    const/16 v10, 0x18

    .line 9
    .line 10
    sget-object v15, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 11
    .line 12
    const-wide/16 v7, 0x0

    .line 13
    .line 14
    move-wide/from16 v4, p1

    .line 15
    .line 16
    move/from16 v3, p3

    .line 17
    .line 18
    move-object v6, v15

    .line 19
    invoke-static/range {v2 .. v10}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 23
    .line 24
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-eqz p3, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-lez v2, :cond_2

    .line 36
    .line 37
    :cond_1
    iget-object v11, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPreviousButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 38
    .line 39
    const/16 v18, 0x0

    .line 40
    .line 41
    const/16 v19, 0x18

    .line 42
    .line 43
    const-wide/16 v16, 0x0

    .line 44
    .line 45
    move-wide/from16 v13, p1

    .line 46
    .line 47
    move/from16 v12, p3

    .line 48
    .line 49
    invoke-static/range {v11 .. v19}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 50
    .line 51
    .line 52
    :cond_2
    if-eqz p3, :cond_4

    .line 53
    .line 54
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-ge v2, v0, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_0
    return-void

    .line 72
    :cond_4
    :goto_1
    iget-object v11, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playNextButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 73
    .line 74
    const/16 v18, 0x0

    .line 75
    .line 76
    const/16 v19, 0x18

    .line 77
    .line 78
    const-wide/16 v16, 0x0

    .line 79
    .line 80
    move-wide/from16 v13, p1

    .line 81
    .line 82
    move/from16 v12, p3

    .line 83
    .line 84
    invoke-static/range {v11 .. v19}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public abstract buildGestureListener()Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;
.end method

.method public abstract calculateMaxEndScreenThumbnailHeight(Landroid/graphics/Bitmap;)F
.end method

.method public final clearVideoSurface()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceHolderCallback:Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceHolderCallback:Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceHolderCallback:Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;

    .line 19
    .line 20
    iget-object v1, v0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/PlaceholderSurface;->release()V

    .line 26
    .line 27
    .line 28
    iput-object v2, v0, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;->placeholderSurface:Lcom/google/android/exoplayer2/video/PlaceholderSurface;

    .line 29
    .line 30
    :cond_0
    iput-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceHolderCallback:Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 33
    .line 34
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 35
    .line 36
    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;

    .line 41
    .line 42
    const/16 v2, 0x10

    .line 43
    .line 44
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceIsSetup:Z

    .line 52
    .line 53
    return-void
.end method

.method public deinitListeners()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->captionTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->resizeTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackLiveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playerGestureListener:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    .line 45
    .line 46
    iput-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->gestureDetector:Landroid/view/GestureDetector;

    .line 47
    .line 48
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->repeatButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->shuffleButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPreviousButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playNextButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->moreOptionsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->share:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->fullScreenButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->screenRotationButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playWithKodi:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->openInBrowser:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerCloseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->switchMute:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListPanel:Landroid/widget/RelativeLayout;

    .line 120
    .line 121
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 122
    .line 123
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    .line 127
    .line 128
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onLayoutChangeListener:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda22;

    .line 129
    .line 130
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public destroyPlayer()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->clearVideoSurface()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final hideControls(JJ)V
    .locals 3

    .line 1
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showOrHideButtons()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->controlsVisibilityHandler:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda9;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v0, p0, p1, p2, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;JI)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public hideSystemUIIfNeeded()V
    .locals 0

    .line 1
    return-void
.end method

.method public initListeners()V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 4
    .line 5
    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 9
    .line 10
    .line 11
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-direct {v4, p0, v2, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 21
    .line 22
    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;

    .line 23
    .line 24
    const/16 v4, 0x8

    .line 25
    .line 26
    invoke-direct {v2, p0, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 27
    .line 28
    .line 29
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 30
    .line 31
    invoke-direct {v4, p0, v2, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 38
    .line 39
    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;

    .line 40
    .line 41
    const/16 v4, 0x9

    .line 42
    .line 43
    invoke-direct {v2, p0, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 44
    .line 45
    .line 46
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 47
    .line 48
    invoke-direct {v4, p0, v2, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 55
    .line 56
    invoke-virtual {v1, p0}, Lorg/schabi/newpipe/views/FocusAwareSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->captionTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 60
    .line 61
    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;

    .line 62
    .line 63
    const/16 v4, 0xa

    .line 64
    .line 65
    invoke-direct {v2, p0, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 66
    .line 67
    .line 68
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 69
    .line 70
    invoke-direct {v4, p0, v2, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->resizeTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 77
    .line 78
    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;

    .line 79
    .line 80
    const/16 v4, 0xb

    .line 81
    .line 82
    invoke-direct {v2, p0, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 83
    .line 84
    .line 85
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 86
    .line 87
    invoke-direct {v4, p0, v2, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackLiveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 94
    .line 95
    iget-object v2, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 96
    .line 97
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda11;

    .line 101
    .line 102
    const/4 v6, 0x2

    .line 103
    invoke-direct {v4, v2, v6}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/player/Player;I)V

    .line 104
    .line 105
    .line 106
    new-instance v7, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 107
    .line 108
    invoke-direct {v7, p0, v4, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->buildGestureListener()Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iput-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playerGestureListener:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    .line 119
    .line 120
    new-instance v1, Landroid/view/GestureDetector;

    .line 121
    .line 122
    iget-object v4, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 123
    .line 124
    iget-object v7, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playerGestureListener:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    .line 125
    .line 126
    invoke-direct {v1, v4, v7}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 127
    .line 128
    .line 129
    iput-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->gestureDetector:Landroid/view/GestureDetector;

    .line 130
    .line 131
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 132
    .line 133
    iget-object v4, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playerGestureListener:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    .line 134
    .line 135
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->repeatButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 139
    .line 140
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda27;

    .line 141
    .line 142
    invoke-direct {v4, p0, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda27;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->shuffleButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 149
    .line 150
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda27;

    .line 151
    .line 152
    invoke-direct {v4, p0, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda27;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 159
    .line 160
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda11;

    .line 161
    .line 162
    const/4 v7, 0x3

    .line 163
    invoke-direct {v4, v2, v7}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/player/Player;I)V

    .line 164
    .line 165
    .line 166
    new-instance v8, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 167
    .line 168
    invoke-direct {v8, p0, v4, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPreviousButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 175
    .line 176
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda11;

    .line 177
    .line 178
    const/4 v8, 0x4

    .line 179
    invoke-direct {v4, v2, v8}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/player/Player;I)V

    .line 180
    .line 181
    .line 182
    new-instance v9, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 183
    .line 184
    invoke-direct {v9, p0, v4, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .line 189
    .line 190
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playNextButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 191
    .line 192
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda11;

    .line 193
    .line 194
    invoke-direct {v4, v2, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/player/Player;I)V

    .line 195
    .line 196
    .line 197
    new-instance v9, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 198
    .line 199
    invoke-direct {v9, p0, v4, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->moreOptionsButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 206
    .line 207
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;

    .line 208
    .line 209
    invoke-direct {v4, p0, v6}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 210
    .line 211
    .line 212
    new-instance v6, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 213
    .line 214
    invoke-direct {v6, p0, v4, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    .line 219
    .line 220
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->share:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 221
    .line 222
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;

    .line 223
    .line 224
    invoke-direct {v4, p0, v7}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 225
    .line 226
    .line 227
    new-instance v6, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 228
    .line 229
    invoke-direct {v6, p0, v4, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    .line 234
    .line 235
    new-instance v4, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda11;

    .line 236
    .line 237
    invoke-direct {v4, p0, v8}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 241
    .line 242
    .line 243
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->fullScreenButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 244
    .line 245
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;

    .line 246
    .line 247
    invoke-direct {v4, p0, v8}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 248
    .line 249
    .line 250
    new-instance v6, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 251
    .line 252
    invoke-direct {v6, p0, v4, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    .line 257
    .line 258
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playWithKodi:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 259
    .line 260
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;

    .line 261
    .line 262
    const/4 v6, 0x5

    .line 263
    invoke-direct {v4, p0, v6}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 264
    .line 265
    .line 266
    new-instance v6, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 267
    .line 268
    invoke-direct {v6, p0, v4, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    .line 273
    .line 274
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->openInBrowser:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 275
    .line 276
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;

    .line 277
    .line 278
    const/4 v6, 0x6

    .line 279
    invoke-direct {v4, p0, v6}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 280
    .line 281
    .line 282
    new-instance v6, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 283
    .line 284
    invoke-direct {v6, p0, v4, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    .line 289
    .line 290
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerCloseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 291
    .line 292
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;

    .line 293
    .line 294
    const/4 v6, 0x7

    .line 295
    invoke-direct {v4, p0, v6}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 296
    .line 297
    .line 298
    new-instance v6, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 299
    .line 300
    invoke-direct {v6, p0, v4, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    .line 305
    .line 306
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->switchMute:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 307
    .line 308
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda11;

    .line 309
    .line 310
    invoke-direct {v4, v2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/player/Player;I)V

    .line 311
    .line 312
    .line 313
    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 314
    .line 315
    invoke-direct {v2, p0, v4, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    .line 320
    .line 321
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->itemsListPanel:Landroid/widget/RelativeLayout;

    .line 322
    .line 323
    new-instance v2, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 324
    .line 325
    const/16 v3, 0x14

    .line 326
    .line 327
    invoke-direct {v2, v3}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 328
    .line 329
    .line 330
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 331
    .line 332
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 333
    .line 334
    .line 335
    new-instance v1, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda22;

    .line 336
    .line 337
    invoke-direct {v1, p0, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda22;-><init>(Ljava/lang/Object;I)V

    .line 338
    .line 339
    .line 340
    iput-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->onLayoutChangeListener:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda22;

    .line 341
    .line 342
    iget-object p0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    .line 343
    .line 344
    invoke-virtual {p0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 345
    .line 346
    .line 347
    return-void
.end method

.method public initPlayback()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getShuffleModeEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 10
    .line 11
    iget-object v2, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->shuffleButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/16 v1, 0xff

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v1, 0x4d

    .line 19
    .line 20
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getRepeatMode()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-eq v0, v1, :cond_2

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_off:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_all:I

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    sget v0, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_one:I

    .line 42
    .line 43
    :goto_1
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->repeatButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final initPlayer()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->setupVideoSurfaceIfNeeded()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public isAnyListViewOpen()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isControlsVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public isFullscreen()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onBlocked()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-wide/16 v1, 0x12c

    .line 4
    .line 5
    const-wide/16 v5, 0x0

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v5, v6}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 11
    .line 12
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 13
    .line 14
    const/4 v12, 0x0

    .line 15
    invoke-virtual {v2, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    .line 25
    .line 26
    const/high16 v4, -0x10000

    .line 27
    .line 28
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 29
    .line 30
    invoke-direct {v3, v4, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->loadingPanel:Landroid/widget/RelativeLayout;

    .line 37
    .line 38
    const/high16 v2, -0x1000000

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 41
    .line 42
    .line 43
    const/4 v10, 0x0

    .line 44
    const/16 v11, 0x1c

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    const/4 v7, 0x0

    .line 48
    const-wide/16 v8, 0x0

    .line 49
    .line 50
    invoke-static/range {v3 .. v11}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 51
    .line 52
    .line 53
    iget-object v13, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceForeground:Landroid/view/View;

    .line 54
    .line 55
    const/16 v20, 0x0

    .line 56
    .line 57
    const/16 v21, 0x1c

    .line 58
    .line 59
    const-wide/16 v15, 0x64

    .line 60
    .line 61
    const/16 v17, 0x0

    .line 62
    .line 63
    const-wide/16 v18, 0x0

    .line 64
    .line 65
    move v14, v4

    .line 66
    invoke-static/range {v13 .. v21}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 67
    .line 68
    .line 69
    move-wide v2, v15

    .line 70
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->updatePlayPauseButton(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2, v3, v12}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->animatePlayButtons(JZ)V

    .line 74
    .line 75
    .line 76
    iget-object v0, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 77
    .line 78
    invoke-virtual {v0, v12}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final onBuffering()V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->loadingPanel:Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->loadingPanel:Landroid/widget/RelativeLayout;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onCompleted()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 4
    .line 5
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 6
    .line 7
    new-instance v9, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v9, v0, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    sget-object v6, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 16
    .line 17
    const-wide/16 v7, 0x0

    .line 18
    .line 19
    invoke-static/range {v2 .. v9}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    invoke-virtual {v2, v11}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget-object v3, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 35
    .line 36
    iget v3, v3, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 37
    .line 38
    const/16 v4, 0x7f

    .line 39
    .line 40
    if-eq v3, v4, :cond_0

    .line 41
    .line 42
    iget-object v3, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 43
    .line 44
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v3, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackCurrentTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 48
    .line 49
    int-to-long v4, v2

    .line 50
    invoke-static {v4, v5}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getTimeString(J)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    const-wide/16 v2, 0x1f4

    .line 58
    .line 59
    invoke-virtual {v0, v2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showControls(J)V

    .line 60
    .line 61
    .line 62
    iget-object v10, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentDisplaySeek:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 63
    .line 64
    const/16 v17, 0x0

    .line 65
    .line 66
    const/16 v18, 0x18

    .line 67
    .line 68
    const-wide/16 v12, 0xc8

    .line 69
    .line 70
    const-wide/16 v15, 0x0

    .line 71
    .line 72
    move-object v14, v6

    .line 73
    invoke-static/range {v10 .. v18}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->loadingPanel:Landroid/widget/RelativeLayout;

    .line 77
    .line 78
    const/16 v2, 0x8

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v3, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceForeground:Landroid/view/View;

    .line 84
    .line 85
    const/4 v10, 0x0

    .line 86
    const/16 v11, 0x1c

    .line 87
    .line 88
    const/4 v4, 0x1

    .line 89
    const-wide/16 v5, 0x64

    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    const-wide/16 v8, 0x0

    .line 93
    .line 94
    invoke-static/range {v3 .. v11}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final onCues(Ljava/util/List;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onKeyDown(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v0, :cond_4

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 10
    .line 11
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_5

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isAnyListViewOpen()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 35
    .line 36
    iget v0, v0, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 37
    .line 38
    const/16 v2, 0x7b

    .line 39
    .line 40
    if-ne v0, v2, :cond_2

    .line 41
    .line 42
    return v1

    .line 43
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isControlsVisible()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    const-wide/16 v0, 0x12c

    .line 50
    .line 51
    const-wide/16 v2, 0x1b58

    .line 52
    .line 53
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showControlsThenHide()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showSystemUIPartially()V

    .line 66
    .line 67
    .line 68
    return v1

    .line 69
    :cond_4
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 70
    .line 71
    invoke-static {p1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isControlsVisible()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    const-wide/16 v2, 0x0

    .line 84
    .line 85
    invoke-virtual {p0, v2, v3, v2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 86
    .line 87
    .line 88
    return v1

    .line 89
    :cond_5
    :goto_0
    const/4 p0, 0x0

    .line 90
    return p0

    .line 91
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onMetadataChanged(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 17
    .line 18
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->titleTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->channelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 37
    .line 38
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getPreviewFrames()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    iget-object v5, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->seekbarPreviewThumbnailHolder:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const p1, 0x7f130448

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string v1, ""

    .line 59
    .line 60
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const p1, 0x7f13044a

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_0

    .line 76
    .line 77
    const/4 v3, 0x2

    .line 78
    :goto_0
    move v6, v3

    .line 79
    goto :goto_1

    .line 80
    :cond_0
    const p1, 0x7f130449

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    const/4 v3, 0x0

    .line 95
    goto :goto_0

    .line 96
    :goto_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    iput-object v8, v5, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->now:Ljava/lang/Object;

    .line 101
    .line 102
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    new-instance v4, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda1;

    .line 107
    .line 108
    const/4 v9, 0x0

    .line 109
    invoke-direct/range {v4 .. v9}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Comparable;I)V

    .line 110
    .line 111
    .line 112
    invoke-interface {p0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 113
    .line 114
    .line 115
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final onMuteUnmuteChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->switchMute:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const p1, 0x7f080163

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const p1, 0x7f080164

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 15
    .line 16
    invoke-static {p0, p1}, Lokhttp3/Cookie$Companion;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onPaused()V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->playerGestureListener:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    .line 2
    .line 3
    iget-boolean v0, v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->isDoubleTapping:Z

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-wide/16 v2, 0x190

    .line 10
    .line 11
    invoke-virtual {p0, v2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showControls(J)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->loadingPanel:Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v3, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 22
    .line 23
    new-instance v10, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;

    .line 24
    .line 25
    const/16 v0, 0xd

    .line 26
    .line 27
    invoke-direct {v10, p0, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    const-wide/16 v5, 0x50

    .line 32
    .line 33
    sget-object v7, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 34
    .line 35
    const-wide/16 v8, 0x0

    .line 36
    .line 37
    invoke-static/range {v3 .. v10}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p0, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onPausedSeek()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x64

    .line 3
    .line 4
    invoke-virtual {p0, v1, v2, v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->animatePlayButtons(JZ)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 4
    .line 5
    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 6
    .line 7
    float-to-double v0, p1

    .line 8
    invoke-static {v0, v1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->formatSpeed(D)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public abstract onPlaybackSpeedClicked()V
.end method

.method public onPlaying()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getCurrentStreamInfo()Lj$/util/Optional;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v2, v0, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda32;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 19
    .line 20
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    .line 32
    .line 33
    const/high16 v5, -0x10000

    .line 34
    .line 35
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 36
    .line 37
    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->loadingPanel:Landroid/widget/RelativeLayout;

    .line 44
    .line 45
    const/16 v4, 0x8

    .line 46
    .line 47
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object v5, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentDisplaySeek:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 51
    .line 52
    const/4 v12, 0x0

    .line 53
    const/16 v13, 0x18

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    const-wide/16 v7, 0xc8

    .line 57
    .line 58
    sget-object v18, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 59
    .line 60
    const-wide/16 v10, 0x0

    .line 61
    .line 62
    move-object/from16 v9, v18

    .line 63
    .line 64
    invoke-static/range {v5 .. v13}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 65
    .line 66
    .line 67
    iget-object v14, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 68
    .line 69
    new-instance v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;

    .line 70
    .line 71
    const/16 v4, 0xc

    .line 72
    .line 73
    invoke-direct {v2, v0, v4}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;I)V

    .line 74
    .line 75
    .line 76
    const/4 v15, 0x0

    .line 77
    const-wide/16 v16, 0x50

    .line 78
    .line 79
    const-wide/16 v19, 0x0

    .line 80
    .line 81
    move-object/from16 v21, v2

    .line 82
    .line 83
    invoke-static/range {v14 .. v21}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 87
    .line 88
    invoke-virtual {v0, v3}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final onPrepared()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    long-to-int v1, v1

    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 11
    .line 12
    iget-object v2, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackEndTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 13
    .line 14
    int-to-long v3, v1

    .line 15
    invoke-static {v3, v4}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getTimeString(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->retrieveSeekDurationFromPreferences(Lorg/schabi/newpipe/player/Player;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v2, v1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 35
    .line 36
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 41
    .line 42
    float-to-double v0, v0

    .line 43
    invoke-static {v0, v1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->formatSpeed(D)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    goto/16 :goto_6

    .line 4
    .line 5
    :cond_0
    sget p1, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 6
    .line 7
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 8
    .line 9
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentDisplaySeek:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 10
    .line 11
    int-to-long v0, p2

    .line 12
    invoke-static {v0, v1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getTimeString(J)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 20
    .line 21
    iget-object p1, p1, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 22
    .line 23
    iget-object p3, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->seekbarPreviewThumbnailHolder:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    .line 24
    .line 25
    new-instance v0, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/16 v1, 0x16

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p3, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Landroidx/collection/SparseArrayCompat;

    .line 35
    .line 36
    monitor-enter v1

    .line 37
    const/4 v2, 0x0

    .line 38
    const v3, 0x7fffffff

    .line 39
    .line 40
    .line 41
    move v4, v2

    .line 42
    :goto_0
    :try_start_0
    iget-object v5, p3, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v5, Landroidx/collection/SparseArrayCompat;

    .line 45
    .line 46
    invoke-virtual {v5}, Landroidx/collection/SparseArrayCompat;->size()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-ge v4, v5, :cond_2

    .line 51
    .line 52
    iget-object v5, p3, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v5, Landroidx/collection/SparseArrayCompat;

    .line 55
    .line 56
    invoke-virtual {v5, v4}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    sub-int/2addr v5, p2

    .line 61
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-ge v5, v3, :cond_1

    .line 66
    .line 67
    iget-object v0, p3, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 70
    .line 71
    invoke-virtual {v0, v4}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/util/function/Supplier;

    .line 76
    .line 77
    move v3, v5

    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto/16 :goto_8

    .line 81
    .line 82
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Landroid/graphics/Bitmap;

    .line 91
    .line 92
    invoke-static {p2}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    const/4 p3, 0x0

    .line 97
    invoke-virtual {p2, p3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    check-cast p2, Landroid/graphics/Bitmap;

    .line 102
    .line 103
    iget-object p3, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 104
    .line 105
    iget-object v0, p3, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentSeekbarPreviewThumbnail:Landroid/widget/ImageView;

    .line 106
    .line 107
    iget-object p3, p3, Lorg/schabi/newpipe/databinding/PlayerBinding;->subtitleView:Lcom/google/android/exoplayer2/ui/SubtitleView;

    .line 108
    .line 109
    const/16 v1, 0x8

    .line 110
    .line 111
    if-nez p2, :cond_3

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    :try_start_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-lez v3, :cond_4

    .line 125
    .line 126
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    goto :goto_2

    .line 131
    :catchall_1
    move-exception p0

    .line 132
    goto/16 :goto_7

    .line 133
    .line 134
    :catch_0
    move-exception p1

    .line 135
    goto :goto_4

    .line 136
    :cond_4
    const/4 v3, 0x1

    .line 137
    :goto_2
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 138
    .line 139
    .line 140
    move-result p3

    .line 141
    int-to-float p3, p3

    .line 142
    const/high16 v4, 0x40800000    # 4.0f

    .line 143
    .line 144
    div-float/2addr p3, v4

    .line 145
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 146
    .line 147
    .line 148
    move-result p3

    .line 149
    const/16 v4, 0xa

    .line 150
    .line 151
    invoke-static {p1, v4}, Lorg/schabi/newpipe/util/DeviceUtils;->dpToPx(Landroid/content/Context;I)I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    int-to-float v3, v3

    .line 156
    const/high16 v4, 0x40200000    # 2.5f

    .line 157
    .line 158
    mul-float/2addr v4, v3

    .line 159
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    invoke-static {p3, p1, v4}, Lokhttp3/Cookie$Companion;->clamp(III)I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    int-to-float p3, p1

    .line 168
    div-float/2addr p3, v3

    .line 169
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    int-to-float v3, v3

    .line 174
    mul-float/2addr v3, p3

    .line 175
    float-to-int p3, v3

    .line 176
    invoke-static {p2, p1, p3}, Lkotlin/text/UStringsKt;->createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    .line 182
    .line 183
    :goto_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 184
    .line 185
    .line 186
    goto :goto_5

    .line 187
    :goto_4
    :try_start_2
    const-string p3, "SeekbarPrevThumbHelper"

    .line 188
    .line 189
    const-string v3, "Failed to resize and set seekbar preview thumbnail"

    .line 190
    .line 191
    invoke-static {p3, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :goto_5
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 199
    .line 200
    :try_start_3
    iget-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->bottomSeekbarPreviewLayout:Landroid/widget/LinearLayout;

    .line 201
    .line 202
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    iget-object p2, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 212
    .line 213
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    add-int/2addr p1, p2

    .line 218
    iget-object p2, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 219
    .line 220
    invoke-virtual {p2}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 229
    .line 230
    add-int/2addr p1, p2

    .line 231
    iget-object p2, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->seekbarPreviewContainer:Landroid/widget/LinearLayout;

    .line 232
    .line 233
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 234
    .line 235
    .line 236
    move-result p2

    .line 237
    div-int/lit8 p2, p2, 0x2

    .line 238
    .line 239
    sub-int/2addr p1, p2

    .line 240
    iget-object p2, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackWindowRoot:Landroid/widget/RelativeLayout;

    .line 241
    .line 242
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 243
    .line 244
    .line 245
    move-result p2

    .line 246
    iget-object p3, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->seekbarPreviewContainer:Landroid/widget/LinearLayout;

    .line 247
    .line 248
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 249
    .line 250
    .line 251
    move-result p3

    .line 252
    sub-int/2addr p2, p3

    .line 253
    invoke-static {p1, v2, p2}, Lokhttp3/Cookie$Companion;->clamp(III)I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 258
    .line 259
    iget-object p3, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->seekbarPreviewContainer:Landroid/widget/LinearLayout;

    .line 260
    .line 261
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 262
    .line 263
    .line 264
    move-result-object p3

    .line 265
    invoke-direct {p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 269
    .line 270
    .line 271
    iget-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->seekbarPreviewContainer:Landroid/widget/LinearLayout;

    .line 272
    .line 273
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 274
    .line 275
    .line 276
    goto :goto_6

    .line 277
    :catch_1
    move-exception p1

    .line 278
    const-string p2, "VideoPlayerUi"

    .line 279
    .line 280
    const-string p3, "Failed to adjust seekbarPreviewContainer"

    .line 281
    .line 282
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    .line 284
    .line 285
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->bottomSeekbarPreviewLayout:Landroid/widget/LinearLayout;

    .line 286
    .line 287
    const/16 p1, 0x11

    .line 288
    .line 289
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 290
    .line 291
    .line 292
    :goto_6
    return-void

    .line 293
    :goto_7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 294
    .line 295
    .line 296
    throw p0

    .line 297
    :goto_8
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 298
    throw p0
.end method

.method public final onRenderedFirstFrame()V
    .locals 9

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceForeground:Landroid/view/View;

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    const/16 v8, 0x1c

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-wide/16 v2, 0x12c

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    invoke-static/range {v0 .. v8}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->repeatButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 7
    .line 8
    sget p1, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_all:I

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->repeatButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 18
    .line 19
    sget p1, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_one:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->repeatButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 26
    .line 27
    sget p1, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_controls_repeat_off:I

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->shuffleButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/16 p1, 0xff

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 p1, 0x4d

    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 4
    .line 5
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 6
    .line 7
    iget v2, v1, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 8
    .line 9
    const/16 v3, 0x7f

    .line 10
    .line 11
    if-eq v2, v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Lorg/schabi/newpipe/player/Player;->changeState(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showControls(J)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 22
    .line 23
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentDisplaySeek:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    const/16 v9, 0x18

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const-wide/16 v3, 0x12c

    .line 30
    .line 31
    sget-object v14, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 32
    .line 33
    const-wide/16 v6, 0x0

    .line 34
    .line 35
    move-object v5, v14

    .line 36
    invoke-static/range {v1 .. v9}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 37
    .line 38
    .line 39
    iget-object v10, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentSeekbarPreviewThumbnail:Landroid/widget/ImageView;

    .line 40
    .line 41
    const/16 v17, 0x0

    .line 42
    .line 43
    const/16 v18, 0x18

    .line 44
    .line 45
    const-wide/16 v15, 0x0

    .line 46
    .line 47
    move v11, v2

    .line 48
    move-wide v12, v3

    .line 49
    invoke-static/range {v10 .. v18}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-long v1, v1

    .line 10
    iget-object v3, v0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 11
    .line 12
    invoke-virtual {v3, v1, v2}, Lorg/schabi/newpipe/player/Player;->seekTo(J)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v3, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 16
    .line 17
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    int-to-long v4, v4

    .line 26
    cmp-long v1, v1, v4

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    iget-object v1, v3, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 31
    .line 32
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->play()V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v1, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 36
    .line 37
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackCurrentTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    int-to-long v4, v4

    .line 44
    invoke-static {v4, v5}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getTimeString(J)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object v5, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentDisplaySeek:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 52
    .line 53
    const/4 v12, 0x0

    .line 54
    const/16 v13, 0x18

    .line 55
    .line 56
    const/4 v15, 0x0

    .line 57
    const-wide/16 v16, 0xc8

    .line 58
    .line 59
    sget-object v18, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 60
    .line 61
    const-wide/16 v10, 0x0

    .line 62
    .line 63
    move v6, v15

    .line 64
    move-wide/from16 v7, v16

    .line 65
    .line 66
    move-object/from16 v9, v18

    .line 67
    .line 68
    invoke-static/range {v5 .. v13}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 69
    .line 70
    .line 71
    iget-object v14, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->currentSeekbarPreviewThumbnail:Landroid/widget/ImageView;

    .line 72
    .line 73
    const/16 v21, 0x0

    .line 74
    .line 75
    const/16 v22, 0x18

    .line 76
    .line 77
    const-wide/16 v19, 0x0

    .line 78
    .line 79
    invoke-static/range {v14 .. v22}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 80
    .line 81
    .line 82
    iget v1, v3, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 83
    .line 84
    const/16 v2, 0x7f

    .line 85
    .line 86
    if-ne v1, v2, :cond_1

    .line 87
    .line 88
    const/16 v1, 0x7d

    .line 89
    .line 90
    invoke-virtual {v3, v1}, Lorg/schabi/newpipe/player/Player;->changeState(I)V

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-virtual {v3}, Lorg/schabi/newpipe/player/Player;->isProgressLoopRunning()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_2

    .line 98
    .line 99
    invoke-virtual {v3}, Lorg/schabi/newpipe/player/Player;->startProgressLoop()V

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showControlsThenHide()V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final onTextTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .locals 14

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Tracks;->containsType(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1, v0, v3}, Lcom/google/android/exoplayer2/Tracks;->isTypeSupported(IZ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v3

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move v0, v2

    .line 20
    :goto_1
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 21
    .line 22
    iget-object v4, v1, Lorg/schabi/newpipe/player/Player;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 23
    .line 24
    iget-object v5, v1, Lorg/schabi/newpipe/player/Player;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const/16 v6, 0x8

    .line 31
    .line 32
    iget-object v7, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 33
    .line 34
    if-eqz v4, :cond_b

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 49
    .line 50
    const/16 v4, 0xd

    .line 51
    .line 52
    invoke-direct {v0, v4}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Ljava/util/List;

    .line 68
    .line 69
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v8, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    const/16 v9, 0x9

    .line 76
    .line 77
    invoke-direct {v8, v9}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, v8}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v8, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 85
    .line 86
    const/16 v9, 0xe

    .line 87
    .line 88
    invoke-direct {v8, v9}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v0, v8}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance v8, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    const/16 v9, 0xc

    .line 98
    .line 99
    invoke-direct {v8, v9}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, v8}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-interface {v0, v8}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Ljava/util/List;

    .line 115
    .line 116
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    new-instance v8, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 121
    .line 122
    const/16 v9, 0xf

    .line 123
    .line 124
    invoke-direct {v8, v9}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 125
    .line 126
    .line 127
    invoke-interface {p1, v8}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    new-instance v8, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;

    .line 132
    .line 133
    const/16 v9, 0x10

    .line 134
    .line 135
    invoke-direct {v8, v9}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda48;-><init>(I)V

    .line 136
    .line 137
    .line 138
    invoke-interface {p1, v8}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    new-instance v8, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 143
    .line 144
    invoke-direct {v8, v4}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v8}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget-object v4, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->captionPopupMenu:Lcoil3/ComponentRegistry$Builder;

    .line 156
    .line 157
    const v8, 0x7f130079

    .line 158
    .line 159
    .line 160
    if-nez v4, :cond_3

    .line 161
    .line 162
    goto/16 :goto_3

    .line 163
    .line 164
    :cond_3
    iget-object v9, v4, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v9, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 167
    .line 168
    const/16 v10, 0x59

    .line 169
    .line 170
    invoke-virtual {v9, v10}, Landroidx/appcompat/view/menu/MenuBuilder;->removeGroup(I)V

    .line 171
    .line 172
    .line 173
    iput-object p0, v4, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 174
    .line 175
    iget-object v9, v4, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v9, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 178
    .line 179
    invoke-virtual {v9, v10, v3, v3, v8}, Landroidx/appcompat/view/menu/MenuBuilder;->add(IIII)Landroid/view/MenuItem;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    new-instance v11, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda40;

    .line 184
    .line 185
    invoke-direct {v11, p0, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda40;-><init>(Ljava/lang/Object;I)V

    .line 186
    .line 187
    .line 188
    check-cast v9, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 189
    .line 190
    iput-object v11, v9, Landroidx/appcompat/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 191
    .line 192
    move v9, v3

    .line 193
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 194
    .line 195
    .line 196
    move-result v11

    .line 197
    if-ge v9, v11, :cond_4

    .line 198
    .line 199
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    check-cast v11, Ljava/lang/String;

    .line 204
    .line 205
    iget-object v12, v4, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v12, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 208
    .line 209
    add-int/lit8 v9, v9, 0x1

    .line 210
    .line 211
    invoke-virtual {v12, v10, v9, v3, v11}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 212
    .line 213
    .line 214
    move-result-object v12

    .line 215
    new-instance v13, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda41;

    .line 216
    .line 217
    invoke-direct {v13, p0, v11}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda41;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iput-object v13, v12, Landroidx/appcompat/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_4
    iput-object p0, v4, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 224
    .line 225
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getCaptionRendererIndex()I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    const/4 v9, -0x1

    .line 230
    if-ne v4, v9, :cond_5

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_5
    iget-object v9, v1, Lorg/schabi/newpipe/player/Player;->prefs:Landroid/content/SharedPreferences;

    .line 234
    .line 235
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 236
    .line 237
    const v10, 0x7f13007d

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    const/4 v10, 0x0

    .line 245
    invoke-interface {v9, p0, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    if-nez p0, :cond_6

    .line 250
    .line 251
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    invoke-virtual {p0, v4, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    invoke-virtual {v5, p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_6
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    iget-object v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    .line 268
    .line 269
    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-nez v2, :cond_7

    .line 274
    .line 275
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->captionLanguageStemOf(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    filled-new-array {p0, v9}, [Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    const/16 v2, 0x40

    .line 292
    .line 293
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    invoke-virtual {p0, v4, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    invoke-virtual {v5, p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    .line 302
    .line 303
    .line 304
    :cond_7
    :goto_3
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getCaptionRendererIndex()I

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    .line 313
    .line 314
    .line 315
    move-result p0

    .line 316
    if-nez p0, :cond_9

    .line 317
    .line 318
    invoke-virtual {p1}, Lj$/util/Optional;->isEmpty()Z

    .line 319
    .line 320
    .line 321
    move-result p0

    .line 322
    if-eqz p0, :cond_8

    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_8
    iget-object p0, v7, Lorg/schabi/newpipe/databinding/PlayerBinding;->captionTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 326
    .line 327
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    check-cast p1, Lcom/google/android/exoplayer2/Format;

    .line 332
    .line 333
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    .line 337
    .line 338
    goto :goto_5

    .line 339
    :cond_9
    :goto_4
    iget-object p0, v7, Lorg/schabi/newpipe/databinding/PlayerBinding;->captionTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 340
    .line 341
    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 342
    .line 343
    .line 344
    :goto_5
    iget-object p0, v7, Lorg/schabi/newpipe/databinding/PlayerBinding;->captionTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 345
    .line 346
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    if-eqz p1, :cond_a

    .line 351
    .line 352
    move v3, v6

    .line 353
    :cond_a
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 354
    .line 355
    .line 356
    return-void

    .line 357
    :cond_b
    :goto_6
    iget-object p0, v7, Lorg/schabi/newpipe/databinding/PlayerBinding;->captionTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 358
    .line 359
    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 360
    .line 361
    .line 362
    return-void
.end method

.method public final onThumbnailLoaded(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->updateEndScreenThumbnail(Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onUpdateProgress(III)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 10
    .line 11
    if-eq p2, v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackEndTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 14
    .line 15
    int-to-long v2, p2

    .line 16
    invoke-static {v2, v3}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getTimeString(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 24
    .line 25
    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->retrieveSeekDurationFromPreferences(Lorg/schabi/newpipe/player/Player;)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-virtual {v1, p2}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget p2, p0, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 36
    .line 37
    const/16 v1, 0x7e

    .line 38
    .line 39
    if-eq p2, v1, :cond_2

    .line 40
    .line 41
    iget p2, p0, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 42
    .line 43
    const/16 v1, 0x7f

    .line 44
    .line 45
    if-eq p2, v1, :cond_1

    .line 46
    .line 47
    iget-object p2, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p2, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackCurrentTime:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 53
    .line 54
    int-to-long v1, p1

    .line 55
    invoke-static {v1, v2}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->getTimeString(J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isLoading()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_3

    .line 67
    .line 68
    const/16 p1, 0x5a

    .line 69
    .line 70
    if-le p3, p1, :cond_4

    .line 71
    .line 72
    :cond_3
    iget-object p1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSeekBar:Lorg/schabi/newpipe/views/FocusAwareSeekBar;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    int-to-float p2, p2

    .line 79
    int-to-float p3, p3

    .line 80
    const/high16 v1, 0x42c80000    # 100.0f

    .line 81
    .line 82
    div-float/2addr p3, v1

    .line 83
    mul-float/2addr p3, p2

    .line 84
    float-to-int p2, p3

    .line 85
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 86
    .line 87
    .line 88
    :cond_4
    sget p1, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 89
    .line 90
    iget-object p1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackLiveSync:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 91
    .line 92
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isLiveEdge()Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    xor-int/lit8 p0, p0, 0x1

    .line 97
    .line 98
    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget p1, p1, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 11
    .line 12
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    .line 13
    .line 14
    int-to-float v0, v0

    .line 15
    int-to-float p1, p1

    .line 16
    div-float/2addr v0, p1

    .line 17
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->setAspectRatio(F)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public abstract removeViewFromParent()V
.end method

.method public final setResizeMode(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/views/ExpandableSurfaceView;->setResizeMode(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->resizeTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 11
    .line 12
    invoke-static {p0, p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->resizeTypeOf(Lorg/schabi/newpipe/player/PlayerService;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final setupElementsSize(IIII)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->topControls:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p3, p2, p3, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->bottomControls:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    invoke-virtual {p2, p3, v1, p3, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->qualityTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 15
    .line 16
    invoke-virtual {p2, p4, p4, p4, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->audioTrackTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 20
    .line 21
    invoke-virtual {p2, p4, p4, p4, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackSpeed:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 25
    .line 26
    invoke-virtual {p2, p4, p4, p4, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->captionTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 33
    .line 34
    invoke-virtual {p0, p4, p4, p4, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public abstract setupSubtitleView(F)V
.end method

.method public final setupVideoSurfaceIfNeeded()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceIsSetup:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 6
    .line 7
    iget-object v1, v0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 12
    .line 13
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 14
    .line 15
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/PlayerBinding;->surfaceView:Lorg/schabi/newpipe/views/ExpandableSurfaceView;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->clearVideoSurface()V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;

    .line 27
    .line 28
    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 29
    .line 30
    iget-object v4, v0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 31
    .line 32
    invoke-direct {v2, v3, v4}, Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;-><init>(Lorg/schabi/newpipe/player/PlayerService;Lcom/google/android/exoplayer2/Player;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceHolderCallback:Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v3, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceHolderCallback:Lorg/schabi/newpipe/player/playback/SurfaceHolderCallback;

    .line 42
    .line 43
    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->surfaceIsSetup:Z

    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public final showControls(J)V
    .locals 11

    .line 1
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showOrHideButtons()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showSystemUIPartially()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->controlsVisibilityHandler:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-virtual {p0, p1, p2, v3}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showHideShadow(JZ)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    const/16 v10, 0x1c

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    const-wide/16 v7, 0x0

    .line 28
    .line 29
    move-wide v4, p1

    .line 30
    invoke-static/range {v2 .. v10}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final showControlsThenHide()V
    .locals 14

    .line 1
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showOrHideButtons()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showSystemUIPartially()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 10
    .line 11
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-wide/16 v1, 0x7d0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-wide/16 v1, 0x1b58

    .line 23
    .line 24
    :goto_0
    const-wide/16 v3, 0x12c

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    invoke-virtual {p0, v3, v4, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->showHideShadow(JZ)V

    .line 28
    .line 29
    .line 30
    iget-object v6, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlRoot:Landroid/widget/RelativeLayout;

    .line 31
    .line 32
    new-instance v13, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda9;

    .line 33
    .line 34
    invoke-direct {v13, p0, v1, v2, v5}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;JI)V

    .line 35
    .line 36
    .line 37
    const/4 v7, 0x1

    .line 38
    const-wide/16 v8, 0x12c

    .line 39
    .line 40
    sget-object v10, Lorg/schabi/newpipe/ktx/AnimationType;->ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 41
    .line 42
    const-wide/16 v11, 0x0

    .line 43
    .line 44
    invoke-static/range {v6 .. v13}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final showHideShadow(JZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 4
    .line 5
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playbackControlsShadow:Landroid/view/View;

    .line 6
    .line 7
    const-wide/16 v6, 0x0

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    sget-object v13, Lorg/schabi/newpipe/ktx/AnimationType;->ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 11
    .line 12
    move-wide/from16 v3, p1

    .line 13
    .line 14
    move/from16 v2, p3

    .line 15
    .line 16
    move-object v5, v13

    .line 17
    invoke-static/range {v1 .. v8}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    iget-object v9, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerTopShadow:Landroid/view/View;

    .line 21
    .line 22
    const-wide/16 v14, 0x0

    .line 23
    .line 24
    const/16 v16, 0x0

    .line 25
    .line 26
    move-wide/from16 v11, p1

    .line 27
    .line 28
    move/from16 v10, p3

    .line 29
    .line 30
    invoke-static/range {v9 .. v16}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    iget-object v9, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playerBottomShadow:Landroid/view/View;

    .line 34
    .line 35
    invoke-static/range {v9 .. v16}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public showOrHideButtons()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v1, v3

    .line 19
    :goto_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getIndex()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    add-int/2addr v4, v2

    .line 24
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eq v4, v0, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v2, v3

    .line 36
    :goto_1
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 37
    .line 38
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPreviousButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 39
    .line 40
    iget-object v4, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playNextButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 41
    .line 42
    const/4 v5, 0x4

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    move v6, v3

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    move v6, v5

    .line 48
    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPreviousButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    const/high16 v6, 0x3f800000    # 1.0f

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    move v1, v6

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    move v1, v0

    .line 61
    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 62
    .line 63
    .line 64
    if-eqz v2, :cond_5

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_5
    move v3, v5

    .line 68
    :goto_4
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    if-eqz v2, :cond_6

    .line 72
    .line 73
    move v0, v6

    .line 74
    :cond_6
    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public showSystemUIPartially()V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateEndScreenThumbnail(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->endScreen:Landroid/widget/ImageView;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->calculateMaxEndScreenThumbnailHeight(Landroid/graphics/Bitmap;)F

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    int-to-float v1, v1

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    int-to-float v2, v2

    .line 26
    div-float/2addr v2, p0

    .line 27
    div-float/2addr v1, v2

    .line 28
    float-to-int v1, v1

    .line 29
    float-to-int p0, p0

    .line 30
    invoke-static {p1, v1, p0}, Lkotlin/text/UStringsKt;->createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    sget p1, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 35
    .line 36
    iget-object p1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->endScreen:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final updatePlayPauseButton(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->playPauseButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 4
    .line 5
    invoke-static {p1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/PlayerUi;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq p1, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const p1, 0x7f130420

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    const p0, 0x7f080147

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    const p1, 0x7f1303ab

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    const p0, 0x7f080132

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    const p1, 0x7f1303c1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    const p0, 0x7f08013b

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

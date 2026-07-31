.class public final synthetic Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailImageView:Landroid/widget/ImageView;

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/16 v8, 0x1c

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    const-wide/16 v2, 0x1f4

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    invoke-static/range {v0 .. v8}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setHeightThumbnail()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 46
    .line 47
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 48
    .line 49
    const-class v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;

    .line 56
    .line 57
    const/16 v2, 0xc

    .line 58
    .line 59
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    return-void

    .line 66
    :pswitch_1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 67
    .line 68
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->touchAppendDetail:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 69
    .line 70
    const/4 v7, 0x0

    .line 71
    const/16 v8, 0x10

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    const-wide/16 v2, 0x5dc

    .line 75
    .line 76
    sget-object v4, Lorg/schabi/newpipe/ktx/AnimationType;->ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 77
    .line 78
    const-wide/16 v5, 0x3e8

    .line 79
    .line 80
    invoke-static/range {v0 .. v8}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_2
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 85
    .line 86
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 91
    .line 92
    if-nez v0, :cond_2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setupPlayQueueForIntent(Z)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tryAddVideoPlayerView()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const-class v3, Lorg/schabi/newpipe/player/PlayerService;

    .line 107
    .line 108
    sget-object v4, Lorg/schabi/newpipe/player/PlayerIntentType;->AllOthers:Lorg/schabi/newpipe/player/PlayerIntentType;

    .line 109
    .line 110
    invoke-static {v2, v3, v0, v4}, Landroidx/sqlite/SQLite;->getPlayerIntent(Landroid/content/Context;Ljava/lang/Class;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerIntentType;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v2, "play_when_ready"

    .line 115
    .line 116
    iget-boolean v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    .line 117
    .line 118
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const-string v2, "resume_playback"

    .line 123
    .line 124
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 129
    .line 130
    invoke-static {p0, v0}, Lcoil3/decode/StaticImageDecoderKt;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 135
    .line 136
    iget-boolean v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    .line 137
    .line 138
    invoke-virtual {v0, v1, p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->startService(ZLorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;)V

    .line 139
    .line 140
    .line 141
    :goto_1
    return-void

    .line 142
    :pswitch_3
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-eqz v0, :cond_5

    .line 149
    .line 150
    new-instance v3, Landroid/graphics/Rect;

    .line 151
    .line 152
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 153
    .line 154
    .line 155
    iget-object v4, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 156
    .line 157
    iget-object v4, v4, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 158
    .line 159
    invoke-virtual {v4, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->getWindowHeight(Landroid/view/WindowManager;)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 171
    .line 172
    sub-int/2addr v0, v3

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    const/high16 v4, 0x42400000    # 48.0f

    .line 182
    .line 183
    invoke-static {v1, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    int-to-float v0, v0

    .line 188
    const/high16 v3, 0x40000000    # 2.0f

    .line 189
    .line 190
    mul-float/2addr v3, v1

    .line 191
    cmpl-float v3, v0, v3

    .line 192
    .line 193
    iget-object v4, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 194
    .line 195
    if-lez v3, :cond_4

    .line 196
    .line 197
    iget-object v3, v4, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 198
    .line 199
    const/high16 v4, 0x40400000    # 3.0f

    .line 200
    .line 201
    mul-float/2addr v1, v4

    .line 202
    sub-float/2addr v1, v0

    .line 203
    const/4 v0, 0x0

    .line 204
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 209
    .line 210
    .line 211
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 212
    .line 213
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 214
    .line 215
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_4
    iget-object p0, v4, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 220
    .line 221
    const/16 v0, 0x8

    .line 222
    .line 223
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 224
    .line 225
    .line 226
    :cond_5
    :goto_2
    return-void

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

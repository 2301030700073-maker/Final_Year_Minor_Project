.class public final synthetic Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 11
    .line 12
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 13
    .line 14
    const/16 v0, 0x30a

    .line 15
    .line 16
    invoke-static {p1, v0}, Lus/shandian/giga/util/Utility;->checkStoragePermissions(Landroid/app/Activity;I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openDownloadDialog()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :pswitch_0
    sget-object p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openPopupPlayer(Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1
    sget-object p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openBackgroundPlayer(Z)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_2
    sget-object p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance p1, Landroid/content/Intent;

    .line 45
    .line 46
    const-class v0, Lorg/schabi/newpipe/player/PlayQueueActivity;

    .line 47
    .line 48
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_3
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 56
    .line 57
    const/4 p1, 0x5

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_4
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 63
    .line 64
    const/4 p1, 0x3

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_5
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 70
    .line 71
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSecondaryControlPanel:Landroid/widget/LinearLayout;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 78
    .line 79
    const/16 v3, 0x8

    .line 80
    .line 81
    if-ne p1, v3, :cond_1

    .line 82
    .line 83
    iget-object p1, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 84
    .line 85
    const/16 v0, 0xa

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 91
    .line 92
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailToggleSecondaryControlsView:Landroid/widget/ImageView;

    .line 93
    .line 94
    const/16 v0, 0xb4

    .line 95
    .line 96
    invoke-static {v0, p1}, Lnet/newpipe/app/AppKt;->animateRotation(ILandroid/view/View;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 100
    .line 101
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSecondaryControlPanel:Landroid/widget/LinearLayout;

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    iget-object p1, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 113
    .line 114
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailToggleSecondaryControlsView:Landroid/widget/ImageView;

    .line 115
    .line 116
    invoke-static {v1, p1}, Lnet/newpipe/app/AppKt;->animateRotation(ILandroid/view/View;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 120
    .line 121
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSecondaryControlPanel:Landroid/widget/LinearLayout;

    .line 122
    .line 123
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabLayoutVisibility()V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :pswitch_6
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    .line 131
    .line 132
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_2

    .line 137
    .line 138
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 139
    .line 140
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 141
    .line 142
    .line 143
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openVideoPlayerAutoFullscreen()V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_7
    sget-object p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 148
    .line 149
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_3

    .line 154
    .line 155
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 156
    .line 157
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->isStopped()Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-nez p1, :cond_3

    .line 162
    .line 163
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 164
    .line 165
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->playPause()V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 169
    .line 170
    iget-object p1, p1, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 171
    .line 172
    const-class v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 179
    .line 180
    const/16 v1, 0x13

    .line 181
    .line 182
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showSystemUi()V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_3
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    .line 193
    .line 194
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openVideoPlayer(Z)V

    .line 195
    .line 196
    .line 197
    :goto_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-eqz p1, :cond_4

    .line 202
    .line 203
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 204
    .line 205
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-eqz p1, :cond_4

    .line 210
    .line 211
    const p1, 0x7f080132

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_4
    const p1, 0x7f08013b

    .line 216
    .line 217
    .line 218
    :goto_2
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 219
    .line 220
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayPlayPauseButton:Landroid/widget/ImageButton;

    .line 221
    .line 222
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    nop

    .line 227
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
.end method

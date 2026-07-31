.class public final Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

.field public final synthetic val$behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

.field public final synthetic val$peekHeight:I


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;ILcom/google/android/material/appbar/AppBarLayout$Behavior;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 5
    .line 6
    iput p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->val$peekHeight:I

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->val$behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onSlide(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 4
    .line 5
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->val$behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 8
    .line 9
    invoke-static {v0, v1, p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$msetOverlayLook(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/AppBarLayout$Behavior;F)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 6

    .line 1
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->this$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateBottomSheetState(I)V

    .line 6
    .line 7
    .line 8
    const-class v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq p1, v2, :cond_6

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq p1, v3, :cond_6

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    iget-object v4, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->val$behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 18
    .line 19
    iget p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;->val$peekHeight:I

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    if-eq p1, v3, :cond_4

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    if-eq p1, v3, :cond_2

    .line 26
    .line 27
    const/4 p0, 0x5

    .line 28
    if-eq p1, p0, :cond_0

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_0
    invoke-static {v0, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$mmoveFocusToMainFragment(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->manageSpaceAtTheBottom(Z)V

    .line 36
    .line 37
    .line 38
    iget-object p0, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 39
    .line 40
    invoke-virtual {p0, v5}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 41
    .line 42
    .line 43
    sget-object p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    .line 46
    .line 47
    .line 48
    iget-object p0, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentWorker:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 49
    .line 50
    if-eqz p0, :cond_1

    .line 51
    .line 52
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object p0, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 56
    .line 57
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->stopService()V

    .line 58
    .line 59
    .line 60
    const-string p0, ""

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    invoke-virtual {v0, v5, p1, p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setInitialData(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 64
    .line 65
    .line 66
    iput-object p1, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 67
    .line 68
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 69
    .line 70
    invoke-virtual {v0, p1, p1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateOverlayData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    invoke-static {v0, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$mmoveFocusToMainFragment(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v5}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->manageSpaceAtTheBottom(Z)V

    .line 78
    .line 79
    .line 80
    iget-object p1, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 81
    .line 82
    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setOverlayElementsClickable(Z)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_3

    .line 93
    .line 94
    iget-object p0, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 95
    .line 96
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 97
    .line 98
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    new-instance p1, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 103
    .line 104
    const/16 v1, 0x15

    .line 105
    .line 106
    invoke-direct {p1, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    iget-object p0, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 113
    .line 114
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 115
    .line 116
    const/4 p1, 0x0

    .line 117
    invoke-static {v0, p0, v4, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$msetOverlayLook(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/AppBarLayout$Behavior;F)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_4
    invoke-static {v0, v5}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$mmoveFocusToMainFragment(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Z)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v5}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->manageSpaceAtTheBottom(Z)V

    .line 125
    .line 126
    .line 127
    iget-object p1, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 128
    .line 129
    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v5}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setOverlayElementsClickable(Z)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->hideSystemUiIfNeeded()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-static {p0}, Lorg/schabi/newpipe/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    if-eqz p0, :cond_5

    .line 147
    .line 148
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    if-eqz p0, :cond_5

    .line 153
    .line 154
    iget-object p0, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 155
    .line 156
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-eqz p0, :cond_5

    .line 161
    .line 162
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isFullscreen()Z

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    if-nez p0, :cond_5

    .line 167
    .line 168
    iget-object p0, v0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 169
    .line 170
    invoke-static {p0}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    if-nez p0, :cond_5

    .line 175
    .line 176
    iget-object p0, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 177
    .line 178
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 179
    .line 180
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    new-instance p1, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 185
    .line 186
    const/16 v1, 0x12

    .line 187
    .line 188
    invoke-direct {p1, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, p1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 192
    .line 193
    .line 194
    :cond_5
    iget-object p0, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 195
    .line 196
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 197
    .line 198
    const/high16 p1, 0x3f800000    # 1.0f

    .line 199
    .line 200
    invoke-static {v0, p0, v4, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->-$$Nest$msetOverlayLook(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/AppBarLayout$Behavior;F)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_6
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isFullscreen()Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-eqz p0, :cond_7

    .line 209
    .line 210
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showSystemUi()V

    .line 211
    .line 212
    .line 213
    :cond_7
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    if-eqz p0, :cond_8

    .line 218
    .line 219
    iget-object p0, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 220
    .line 221
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 222
    .line 223
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    new-instance p1, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 228
    .line 229
    const/16 v0, 0x16

    .line 230
    .line 231
    invoke-direct {p1, v0}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, p1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 235
    .line 236
    .line 237
    :cond_8
    :goto_0
    return-void
.end method

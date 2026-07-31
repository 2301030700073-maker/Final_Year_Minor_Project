.class public final Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;
.super Lorg/wikipedia/games/onthisday/OnThisDayGameBaseFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0005\u0005\u0006\u0007\u0008\tB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;",
        "Lorg/wikipedia/games/onthisday/OnThisDayGameBaseFragment;",
        "Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$Callback;",
        "<init>",
        "()V",
        "AppIconAdapter",
        "ShareRecyclerViewItemHolder",
        "org/wikipedia/media/AvPlayer",
        "RecyclerViewAdapter",
        "RecyclerViewItemHolder",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public _binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

.field public final handler:Landroid/os/Handler;

.field public loadedImagesForShare:I

.field public mainActivity:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

.field public timeUpdateRunnable:Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameBaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 5
    .line 6
    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$special$$inlined$activityViewModels$default$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;I)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$special$$inlined$activityViewModels$default$1;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$special$$inlined$activityViewModels$default$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;I)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$special$$inlined$activityViewModels$default$1;

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$special$$inlined$activityViewModels$default$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;I)V

    .line 28
    .line 29
    .line 30
    new-instance v4, Lokhttp3/Request$Builder;

    .line 31
    .line 32
    invoke-direct {v4, v0, v1, v3, v2}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    iput-object v4, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 36
    .line 37
    new-instance v0, Landroid/os/Handler;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->handler:Landroid/os/Handler;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onArchiveDateSelected(Lj$/time/LocalDate;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->rootView:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/16 v2, 0x3f8

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const-string v5, "play_click"

    .line 23
    .line 24
    const-string v6, "game_play"

    .line 25
    .line 26
    const-string v7, "game_start"

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v9, 0x0

    .line 30
    invoke-static/range {v2 .. v9}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object p1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 38
    .line 39
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;I)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;

    .line 50
    .line 51
    invoke-direct {v3, v0, v2, v4}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;ZLkotlin/coroutines/Continuation;)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x2

    .line 55
    invoke-static {p1, v1, v4, v3, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance v0, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    .line 67
    .line 68
    const/4 v1, -0x1

    .line 69
    invoke-direct {v0, p1, v1, v2}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManagerImpl;II)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    new-instance p1, Landroidx/fragment/app/BackStackRecord;

    .line 84
    .line 85
    invoke-direct {p1, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    .line 86
    .line 87
    .line 88
    new-instance p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;

    .line 89
    .line 90
    invoke-direct {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;-><init>()V

    .line 91
    .line 92
    .line 93
    const v0, 0x7f090269

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0, p0, v4}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0c019f

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    move-object/from16 v3, p1

    .line 11
    .line 12
    move-object/from16 v4, p2

    .line 13
    .line 14
    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v3, 0x7f09006f

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 26
    .line 27
    const-string v6, "Missing required view with ID: "

    .line 28
    .line 29
    if-eqz v4, :cond_6

    .line 30
    .line 31
    const v3, 0x7f09021f

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    check-cast v7, Lorg/wikipedia/views/WikiErrorView;

    .line 39
    .line 40
    if-eqz v7, :cond_6

    .line 41
    .line 42
    const v3, 0x7f090286

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    check-cast v8, Landroidx/compose/ui/platform/ComposeView;

    .line 50
    .line 51
    if-eqz v8, :cond_6

    .line 52
    .line 53
    const v3, 0x7f090457

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    check-cast v9, Landroid/widget/TextView;

    .line 61
    .line 62
    if-eqz v9, :cond_6

    .line 63
    .line 64
    const v3, 0x7f090513

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    check-cast v10, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 72
    .line 73
    if-eqz v10, :cond_6

    .line 74
    .line 75
    const v3, 0x7f090586

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    .line 84
    if-eqz v11, :cond_6

    .line 85
    .line 86
    const v3, 0x7f090587

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v12

    .line 93
    check-cast v12, Landroid/widget/LinearLayout;

    .line 94
    .line 95
    if-eqz v12, :cond_6

    .line 96
    .line 97
    const v3, 0x7f090588

    .line 98
    .line 99
    .line 100
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    check-cast v13, Landroid/widget/TextView;

    .line 105
    .line 106
    if-eqz v13, :cond_6

    .line 107
    .line 108
    const v3, 0x7f090589

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    check-cast v13, Landroid/widget/TextView;

    .line 116
    .line 117
    if-eqz v13, :cond_6

    .line 118
    .line 119
    const v3, 0x7f09058a

    .line 120
    .line 121
    .line 122
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    check-cast v14, Landroidx/cardview/widget/CardView;

    .line 127
    .line 128
    if-eqz v14, :cond_6

    .line 129
    .line 130
    const v3, 0x7f0905ab

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    check-cast v14, Landroidx/core/widget/NestedScrollView;

    .line 138
    .line 139
    if-eqz v14, :cond_6

    .line 140
    .line 141
    const v3, 0x7f0905ea

    .line 142
    .line 143
    .line 144
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v15

    .line 148
    check-cast v15, Lcom/google/android/material/button/MaterialButton;

    .line 149
    .line 150
    if-eqz v15, :cond_6

    .line 151
    .line 152
    const v3, 0x7f0905ed

    .line 153
    .line 154
    .line 155
    const/16 p1, 0x0

    .line 156
    .line 157
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    if-eqz v5, :cond_7

    .line 162
    .line 163
    const v3, 0x7f090523

    .line 164
    .line 165
    .line 166
    invoke-static {v5, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v17

    .line 170
    if-eqz v17, :cond_5

    .line 171
    .line 172
    const v3, 0x7f090524

    .line 173
    .line 174
    .line 175
    invoke-static {v5, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v16

    .line 179
    move-object/from16 v18, v16

    .line 180
    .line 181
    check-cast v18, Landroidx/constraintlayout/helper/widget/Flow;

    .line 182
    .line 183
    if-eqz v18, :cond_5

    .line 184
    .line 185
    const v3, 0x7f0905a7

    .line 186
    .line 187
    .line 188
    invoke-static {v5, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v16

    .line 192
    move-object/from16 v19, v16

    .line 193
    .line 194
    check-cast v19, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 195
    .line 196
    if-eqz v19, :cond_5

    .line 197
    .line 198
    const v3, 0x7f0905e9

    .line 199
    .line 200
    .line 201
    invoke-static {v5, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v16

    .line 205
    move-object/from16 v20, v16

    .line 206
    .line 207
    check-cast v20, Landroidx/recyclerview/widget/RecyclerView;

    .line 208
    .line 209
    if-eqz v20, :cond_5

    .line 210
    .line 211
    const v3, 0x7f0905ec

    .line 212
    .line 213
    .line 214
    invoke-static {v5, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v16

    .line 218
    move-object/from16 v21, v16

    .line 219
    .line 220
    check-cast v21, Landroid/widget/LinearLayout;

    .line 221
    .line 222
    if-eqz v21, :cond_5

    .line 223
    .line 224
    const v3, 0x7f0905ee

    .line 225
    .line 226
    .line 227
    invoke-static {v5, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 228
    .line 229
    .line 230
    move-result-object v16

    .line 231
    move-object/from16 v22, v16

    .line 232
    .line 233
    check-cast v22, Landroid/widget/TextView;

    .line 234
    .line 235
    if-eqz v22, :cond_5

    .line 236
    .line 237
    const v3, 0x7f0905ef

    .line 238
    .line 239
    .line 240
    invoke-static {v5, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v16

    .line 244
    check-cast v16, Landroid/widget/TextView;

    .line 245
    .line 246
    if-eqz v16, :cond_5

    .line 247
    .line 248
    new-instance v16, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 249
    .line 250
    check-cast v5, Landroidx/core/widget/NestedScrollView;

    .line 251
    .line 252
    invoke-direct/range {v16 .. v22}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 253
    .line 254
    .line 255
    move-object/from16 v3, v16

    .line 256
    .line 257
    const v5, 0x7f0907a7

    .line 258
    .line 259
    .line 260
    invoke-static {v1, v5}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object v16

    .line 264
    check-cast v16, Landroid/widget/TextView;

    .line 265
    .line 266
    if-eqz v16, :cond_4

    .line 267
    .line 268
    new-instance v5, Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 269
    .line 270
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 271
    .line 272
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 273
    .line 274
    .line 275
    iput-object v1, v5, Lorg/wikipedia/databinding/ItemNotificationBinding;->rootView:Ljava/lang/Object;

    .line 276
    .line 277
    iput-object v4, v5, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 278
    .line 279
    iput-object v7, v5, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 280
    .line 281
    iput-object v8, v5, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTitle:Ljava/lang/Object;

    .line 282
    .line 283
    iput-object v9, v5, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationDescription:Ljava/lang/Object;

    .line 284
    .line 285
    iput-object v10, v5, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemImage:Ljava/lang/Object;

    .line 286
    .line 287
    iput-object v11, v5, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 288
    .line 289
    iput-object v12, v5, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 290
    .line 291
    iput-object v13, v5, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSource:Ljava/lang/Object;

    .line 292
    .line 293
    iput-object v14, v5, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeImage:Ljava/lang/Object;

    .line 294
    .line 295
    iput-object v15, v5, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 296
    .line 297
    iput-object v3, v5, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeContainer:Ljava/lang/Object;

    .line 298
    .line 299
    iput-object v5, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 300
    .line 301
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    instance-of v3, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 306
    .line 307
    if-eqz v3, :cond_0

    .line 308
    .line 309
    check-cast v1, Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 310
    .line 311
    goto :goto_0

    .line 312
    :cond_0
    move-object/from16 v1, p1

    .line 313
    .line 314
    :goto_0
    iput-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->mainActivity:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 315
    .line 316
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 317
    .line 318
    const/16 v3, 0x1d

    .line 319
    .line 320
    const/4 v4, 0x1

    .line 321
    if-lt v1, v3, :cond_1

    .line 322
    .line 323
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {v1, v4}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 332
    .line 333
    .line 334
    :cond_1
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-virtual {v1}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->getCurrentScreenName()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v10

    .line 342
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    iget-boolean v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 347
    .line 348
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    const/4 v7, 0x0

    .line 353
    const/16 v5, 0x3d8

    .line 354
    .line 355
    const-string v8, "impression"

    .line 356
    .line 357
    const-string v9, "game_play"

    .line 358
    .line 359
    const/4 v11, 0x0

    .line 360
    const/4 v12, 0x0

    .line 361
    invoke-static/range {v5 .. v12}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 365
    .line 366
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    iget-object v1, v1, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 372
    .line 373
    new-instance v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$$ExternalSyntheticLambda1;

    .line 374
    .line 375
    invoke-direct {v3, v0, v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;I)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    iget-object v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->_gameState:Landroidx/lifecycle/MutableLiveData;

    .line 386
    .line 387
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    new-instance v3, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 392
    .line 393
    const/16 v5, 0x10

    .line 394
    .line 395
    invoke-direct {v3, v5, v0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    new-instance v5, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;

    .line 399
    .line 400
    const/4 v6, 0x4

    .line 401
    invoke-direct {v5, v3, v6}, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1, v2, v5}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 405
    .line 406
    .line 407
    new-instance v1, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 408
    .line 409
    const/16 v2, 0xa

    .line 410
    .line 411
    invoke-direct {v1, v2, v0}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    iput-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->timeUpdateRunnable:Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 415
    .line 416
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 417
    .line 418
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    iget-object v1, v1, Lorg/wikipedia/databinding/ItemNotificationBinding;->rootView:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 424
    .line 425
    new-instance v2, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda0;

    .line 426
    .line 427
    const/4 v3, 0x3

    .line 428
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 432
    .line 433
    .line 434
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 435
    .line 436
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    iget-object v1, v1, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 442
    .line 443
    new-instance v2, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$$ExternalSyntheticLambda1;

    .line 444
    .line 445
    invoke-direct {v2, v0, v4}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;I)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    .line 450
    .line 451
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->timeUpdateRunnable:Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 452
    .line 453
    if-eqz v1, :cond_3

    .line 454
    .line 455
    iget-object v2, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->handler:Landroid/os/Handler;

    .line 456
    .line 457
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->updateOnLoading$1()V

    .line 461
    .line 462
    .line 463
    iget-object v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->mainActivity:Lorg/wikipedia/games/onthisday/OnThisDayGameActivity;

    .line 464
    .line 465
    if-eqz v1, :cond_2

    .line 466
    .line 467
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 468
    .line 469
    .line 470
    :cond_2
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 471
    .line 472
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->rootView:Ljava/lang/Object;

    .line 476
    .line 477
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 478
    .line 479
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    return-object v0

    .line 483
    :cond_3
    const-string v0, "timeUpdateRunnable"

    .line 484
    .line 485
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    throw p1

    .line 489
    :cond_4
    move v3, v5

    .line 490
    goto :goto_1

    .line 491
    :cond_5
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    return-object p1

    .line 507
    :cond_6
    const/16 p1, 0x0

    .line 508
    .line 509
    :cond_7
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    return-object p1
.end method

.method public final onDestroyView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->timeUpdateRunnable:Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 12
    .line 13
    invoke-super {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameBaseFragment;->onDestroyView()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p0, "timeUpdateRunnable"

    .line 18
    .line 19
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v1
.end method

.method public final onPageBookmarkChanged(Lorg/wikipedia/dataclient/page/PageSummary;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewAdapter;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewAdapter;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, v2

    .line 26
    :goto_0
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget-object v0, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewAdapter;->pages:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    move-object v3, v1

    .line 45
    check-cast v3, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 46
    .line 47
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    move-object v2, v1

    .line 62
    :cond_2
    check-cast v2, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object p1, p1, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->getArticlesMentioned()Ljava/util/ArrayList;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 94
    .line 95
    .line 96
    :cond_3
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->getViewModel$3()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->_gameState:Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lorg/wikipedia/util/Resource;

    .line 15
    .line 16
    instance-of v2, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameEnded;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    check-cast v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameEnded;

    .line 21
    .line 22
    iget-object v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameEnded;->gameStatistics:Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;

    .line 23
    .line 24
    iget-object v2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v2, v2, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTitle:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Landroidx/compose/ui/platform/ComposeView;

    .line 32
    .line 33
    new-instance v3, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v3, v1, p0, v4}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;I)V

    .line 37
    .line 38
    .line 39
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 40
    .line 41
    const v1, -0x39b3f11b

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v3, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p0}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public final updateOnLoading$1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeImage:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemImage:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

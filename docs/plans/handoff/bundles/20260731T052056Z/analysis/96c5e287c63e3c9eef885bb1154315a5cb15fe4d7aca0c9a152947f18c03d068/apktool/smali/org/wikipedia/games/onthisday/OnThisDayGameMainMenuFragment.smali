.class public final Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;
.super Lorg/wikipedia/games/onthisday/OnThisDayGameBaseFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;",
        "Lorg/wikipedia/games/onthisday/OnThisDayGameBaseFragment;",
        "<init>",
        "()V",
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
.field public _binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

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
    new-instance v1, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$special$$inlined$activityViewModels$default$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;I)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$special$$inlined$activityViewModels$default$1;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$special$$inlined$activityViewModels$default$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;I)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$special$$inlined$activityViewModels$default$1;

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$special$$inlined$activityViewModels$default$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;I)V

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
    iput-object v4, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final getViewModel$2()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

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
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->getViewModel$2()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p1, v0, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-direct {v3, v0, v2, v4}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$loadGameState$2;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;ZLkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-static {p1, v1, v4, v3, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    new-instance p1, Landroidx/fragment/app/BackStackRecord;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    .line 38
    .line 39
    .line 40
    new-instance p0, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;

    .line 41
    .line 42
    invoke-direct {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGamePlayFragment;-><init>()V

    .line 43
    .line 44
    .line 45
    const v0, 0x7f090269

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, p0, v4}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p3, 0x7f0c019d

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const p2, 0x7f090193

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    move-object v2, p3

    .line 20
    check-cast v2, Landroid/widget/TextView;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const p2, 0x7f09021f

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    move-object v3, p3

    .line 32
    check-cast v3, Lorg/wikipedia/views/WikiErrorView;

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    const p2, 0x7f090284

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    move-object v4, p3

    .line 44
    check-cast v4, Landroid/widget/LinearLayout;

    .line 45
    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    const p2, 0x7f090285

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    move-object v5, p3

    .line 56
    check-cast v5, Landroid/widget/TextView;

    .line 57
    .line 58
    if-eqz v5, :cond_0

    .line 59
    .line 60
    const p2, 0x7f090503

    .line 61
    .line 62
    .line 63
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    move-object v6, p3

    .line 68
    check-cast v6, Landroid/widget/Button;

    .line 69
    .line 70
    if-eqz v6, :cond_0

    .line 71
    .line 72
    const p2, 0x7f090504

    .line 73
    .line 74
    .line 75
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    move-object v7, p3

    .line 80
    check-cast v7, Landroid/widget/Button;

    .line 81
    .line 82
    if-eqz v7, :cond_0

    .line 83
    .line 84
    const p2, 0x7f090513

    .line 85
    .line 86
    .line 87
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    move-object v8, p3

    .line 92
    check-cast v8, Landroid/widget/ProgressBar;

    .line 93
    .line 94
    if-eqz v8, :cond_0

    .line 95
    .line 96
    new-instance v0, Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 97
    .line 98
    move-object v1, p1

    .line 99
    check-cast v1, Landroid/widget/FrameLayout;

    .line 100
    .line 101
    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/databinding/FragmentNewsBinding;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 105
    .line 106
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->getViewModel$2()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-boolean p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->isArchiveGame:Z

    .line 111
    .line 112
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const/4 v2, 0x0

    .line 117
    const/16 v0, 0x3d8

    .line 118
    .line 119
    const-string v3, "impression"

    .line 120
    .line 121
    const-string v4, "game_play"

    .line 122
    .line 123
    const-string v5, "game_start"

    .line 124
    .line 125
    const/4 v6, 0x0

    .line 126
    const/4 v7, 0x0

    .line 127
    invoke-static/range {v0 .. v7}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 131
    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p0, Landroid/widget/FrameLayout;

    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    return-object p0

    .line 143
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    const-string p1, "Missing required view with ID: "

    .line 152
    .line 153
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const/4 p0, 0x0

    .line 161
    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 12
    .line 13
    new-instance p2, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p2, p0, v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lorg/wikipedia/views/WikiErrorView;

    .line 30
    .line 31
    new-instance p2, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-direct {p2, p0, v0}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->getViewModel$2()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->_gameState:Landroidx/lifecycle/MutableLiveData;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    new-instance v0, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 51
    .line 52
    const/16 v1, 0xe

    .line 53
    .line 54
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance p0, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;

    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    invoke-direct {p0, v0, v1}, Lorg/wikipedia/util/SingleLiveData$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2, p0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final showGameMenu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    sget-object v1, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->getViewModel$2()Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v1, v1, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel;->currentDate:Lj$/time/LocalDate;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lorg/wikipedia/util/DateUtil;->getShortDateString(Lj$/time/LocalDate;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Landroid/widget/LinearLayout;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Landroid/widget/ProgressBar;

    .line 49
    .line 50
    const/16 v1, 0x8

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameMainMenuFragment;->_binding:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Lorg/wikipedia/views/WikiErrorView;

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

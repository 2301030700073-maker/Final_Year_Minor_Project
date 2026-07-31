.class public final Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;
.super Lorg/schabi/newpipe/fragments/BaseStateFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/fragments/BackPressable;
.implements Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;
.implements Lorg/schabi/newpipe/player/event/OnKeyDownListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/fragments/BaseStateFragment<",
        "Lorg/schabi/newpipe/extractor/stream/StreamInfo;",
        ">;",
        "Lorg/schabi/newpipe/fragments/BackPressable;",
        "Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;",
        "Lorg/schabi/newpipe/player/event/OnKeyDownListener;"
    }
.end annotation


# static fields
.field public static stack:Ljava/util/LinkedList;


# instance fields
.field protected autoPlayEnabled:Z

.field public binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

.field public bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field public bottomSheetCallback:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;

.field bottomSheetState:I

.field public broadcastReceiver:Lorg/schabi/newpipe/MainActivity$3;

.field public currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

.field public currentWorker:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

.field public final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field public forceFullscreen:Z

.field public lastAppBarVerticalOffset:I

.field lastStableBottomSheetState:I

.field public pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

.field public playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

.field public player:Lorg/schabi/newpipe/player/Player;

.field public final playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

.field public playerService:Lorg/schabi/newpipe/player/PlayerService;

.field public positionSubscriber:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

.field public final preDrawListener:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$2;

.field public final preferenceChangeListener:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda4;

.field public selectedTabTag:Ljava/lang/String;

.field protected serviceId:I

.field public settingsContentObserver:Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;

.field public showComments:Z

.field public showDescription:Z

.field public showRelatedItems:Z

.field public final tabContentDescriptions:Ljava/util/ArrayList;

.field public final tabIcons:Ljava/util/ArrayList;

.field public tabSettingsChanged:Z

.field protected title:Ljava/lang/String;

.field protected url:Ljava/lang/String;


# direct methods
.method public static -$$Nest$mmoveFocusToMainFragment(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setupBrightness()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0a01a9

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const v2, 0x7f0a03fd

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 29
    .line 30
    const/high16 v2, 0x60000

    .line 31
    .line 32
    const/high16 v3, 0x40000

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Landroid/view/ViewGroup;

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/view/ViewGroup;

    .line 78
    .line 79
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 83
    .line 84
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->rootView:Landroid/widget/FrameLayout;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_1

    .line 91
    .line 92
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 93
    .line 94
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailRootLayout:Landroid/widget/FrameLayout;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 97
    .line 98
    .line 99
    :cond_1
    return-void
.end method

.method public static -$$Nest$msetOverlayLook(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/appbar/AppBarLayout$Behavior;F)V
    .locals 2

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    cmpg-float v0, p3, v0

    .line 5
    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 10
    .line 11
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayLayout:Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    .line 15
    sub-float/2addr v1, p3

    .line 16
    const p3, 0x3f666666    # 0.9f

    .line 17
    .line 18
    .line 19
    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    invoke-virtual {v0, p3}, Landroid/view/View;->setAlpha(F)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 27
    .line 28
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailImageView:Landroid/widget/ImageView;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    neg-int p0, p0

    .line 35
    mul-int/lit8 p0, p0, 0x2

    .line 36
    .line 37
    int-to-float p0, p0

    .line 38
    mul-float/2addr p0, v1

    .line 39
    const/high16 p3, 0x40400000    # 3.0f

    .line 40
    .line 41
    div-float/2addr p0, p3

    .line 42
    float-to-int p0, p0

    .line 43
    iget-object p3, p2, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 44
    .line 45
    if-eqz p3, :cond_1

    .line 46
    .line 47
    invoke-virtual {p3, p0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iput p0, p2, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 52
    .line 53
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabIcons:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabContentDescriptions:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabSettingsChanged:Z

    .line 20
    .line 21
    const v1, 0x7fffffff

    .line 22
    .line 23
    .line 24
    iput v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lastAppBarVerticalOffset:I

    .line 25
    .line 26
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda4;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->preferenceChangeListener:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda4;

    .line 32
    .line 33
    const/4 v1, -0x1

    .line 34
    iput v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    .line 35
    .line 36
    const-string v1, ""

    .line 37
    .line 38
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->title:Ljava/lang/String;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 44
    .line 45
    const/4 v2, 0x3

    .line 46
    iput v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetState:I

    .line 47
    .line 48
    iput v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lastStableBottomSheetState:I

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    iput-boolean v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    .line 52
    .line 53
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->forceFullscreen:Z

    .line 54
    .line 55
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 56
    .line 57
    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 63
    .line 64
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->positionSubscriber:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 65
    .line 66
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 71
    .line 72
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$2;

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$2;-><init>(Ljava/lang/Object;I)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->preDrawListener:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$2;

    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final doInitialLoadLogic()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 12
    .line 13
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v2, v2, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabLayoutVisibility()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->startLoading(Z)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance v2, Landroid/os/Handler;

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    .line 34
    .line 35
    new-instance v3, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda1;

    .line 36
    .line 37
    invoke-direct {v3, p0, v0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Z)V

    .line 38
    .line 39
    .line 40
    const-wide/16 v0, 0x32

    .line 41
    .line 42
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleError()V
    .locals 10

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->handleError()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailImageView:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const v3, 0x7f0801a7

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3}, Lokhttp3/Cookie$Companion;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 31
    .line 32
    iget-object v2, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailImageView:Landroid/widget/ImageView;

    .line 33
    .line 34
    new-instance v9, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    invoke-direct {v9, p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    const-wide/16 v4, 0x0

    .line 41
    .line 42
    sget-object v6, Lorg/schabi/newpipe/ktx/AnimationType;->ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 43
    .line 44
    const-wide/16 v7, 0x0

    .line 45
    .line 46
    invoke-static/range {v2 .. v9}, Lnet/newpipe/app/AppKt;->animate(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLjava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 50
    .line 51
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->relatedItemsLayout:Landroidx/fragment/app/FragmentContainerView;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 59
    .line 60
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 61
    .line 62
    const/16 v1, 0x8

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 68
    .line 69
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final handleResult(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string/jumbo v2, "subscribeActual failed"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->hideLoading()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getOriginalUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-object v6, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 26
    .line 27
    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setInitialData(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p0 .. p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabs(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 31
    .line 32
    .line 33
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 34
    .line 35
    iget-object v4, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailPlayButton:Landroid/widget/ImageView;

    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    const/16 v12, 0x1c

    .line 39
    .line 40
    const/4 v14, 0x1

    .line 41
    const-wide/16 v6, 0xc8

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    const-wide/16 v9, 0x0

    .line 45
    .line 46
    move v5, v14

    .line 47
    invoke-static/range {v4 .. v12}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 48
    .line 49
    .line 50
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 51
    .line 52
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 53
    .line 54
    iget-object v4, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->title:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 60
    .line 61
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 62
    .line 63
    const/16 v4, 0x8

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubChannelName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    iget-object v5, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 77
    .line 78
    const/4 v6, 0x1

    .line 79
    const-wide/16 v7, -0x1

    .line 80
    .line 81
    const/4 v9, 0x0

    .line 82
    if-nez v3, :cond_4

    .line 83
    .line 84
    iget-object v3, v5, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 85
    .line 86
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubChannelName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 94
    .line 95
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 96
    .line 97
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 101
    .line 102
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 103
    .line 104
    invoke-virtual {v3, v14}, Landroid/view/View;->setSelected(Z)V

    .line 105
    .line 106
    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-nez v5, :cond_0

    .line 121
    .line 122
    const v5, 0x7f13052e

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    new-array v11, v6, [Ljava/lang/Object;

    .line 134
    .line 135
    aput-object v10, v11, v9

    .line 136
    .line 137
    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    :cond_0
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderSubscriberCount()J

    .line 145
    .line 146
    .line 147
    move-result-wide v10

    .line 148
    cmp-long v5, v10, v7

    .line 149
    .line 150
    if-lez v5, :cond_2

    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-lez v5, :cond_1

    .line 157
    .line 158
    const-string v5, " \u2022 "

    .line 159
    .line 160
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    :cond_1
    iget-object v5, v0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 164
    .line 165
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderSubscriberCount()J

    .line 166
    .line 167
    .line 168
    move-result-wide v10

    .line 169
    invoke-static {v5, v10, v11}, Lorg/schabi/newpipe/util/Localization;->shortSubscriberCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    iget-object v10, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 181
    .line 182
    if-lez v5, :cond_3

    .line 183
    .line 184
    iget-object v5, v10, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 185
    .line 186
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 190
    .line 191
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 192
    .line 193
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 197
    .line 198
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 199
    .line 200
    invoke-virtual {v3, v14}, Landroid/view/View;->setSelected(Z)V

    .line 201
    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_3
    iget-object v3, v10, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 205
    .line 206
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 207
    .line 208
    .line 209
    :goto_0
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 210
    .line 211
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 212
    .line 213
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubChannelAvatars()Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-static {v3, v5}, Lokhttp3/Cookie$Companion;->loadAvatar(Landroid/widget/ImageView;Ljava/util/List;)V

    .line 218
    .line 219
    .line 220
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 221
    .line 222
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 223
    .line 224
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 228
    .line 229
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 230
    .line 231
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderAvatars()Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-static {v3, v5}, Lokhttp3/Cookie$Companion;->loadAvatar(Landroid/widget/ImageView;Ljava/util/List;)V

    .line 236
    .line 237
    .line 238
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 239
    .line 240
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 241
    .line 242
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_4
    iget-object v3, v5, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 247
    .line 248
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 256
    .line 257
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 258
    .line 259
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 260
    .line 261
    .line 262
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 263
    .line 264
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 265
    .line 266
    invoke-virtual {v3, v14}, Landroid/view/View;->setSelected(Z)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderSubscriberCount()J

    .line 270
    .line 271
    .line 272
    move-result-wide v10

    .line 273
    cmp-long v3, v10, v7

    .line 274
    .line 275
    iget-object v5, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 276
    .line 277
    if-lez v3, :cond_5

    .line 278
    .line 279
    iget-object v3, v5, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 280
    .line 281
    iget-object v5, v0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 282
    .line 283
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderSubscriberCount()J

    .line 284
    .line 285
    .line 286
    move-result-wide v10

    .line 287
    invoke-static {v5, v10, v11}, Lorg/schabi/newpipe/util/Localization;->shortSubscriberCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    .line 293
    .line 294
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 295
    .line 296
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 297
    .line 298
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 299
    .line 300
    .line 301
    goto :goto_1

    .line 302
    :cond_5
    iget-object v3, v5, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 303
    .line 304
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 305
    .line 306
    .line 307
    :goto_1
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 308
    .line 309
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 310
    .line 311
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderAvatars()Ljava/util/List;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    invoke-static {v3, v5}, Lokhttp3/Cookie$Companion;->loadAvatar(Landroid/widget/ImageView;Ljava/util/List;)V

    .line 316
    .line 317
    .line 318
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 319
    .line 320
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 321
    .line 322
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 323
    .line 324
    .line 325
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 326
    .line 327
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 328
    .line 329
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 330
    .line 331
    .line 332
    :goto_2
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getViewCount()J

    .line 333
    .line 334
    .line 335
    move-result-wide v10

    .line 336
    const-wide/16 v12, 0x0

    .line 337
    .line 338
    cmp-long v3, v10, v12

    .line 339
    .line 340
    sget-object v5, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 341
    .line 342
    if-ltz v3, :cond_8

    .line 343
    .line 344
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    sget-object v10, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 349
    .line 350
    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    if-eqz v3, :cond_6

    .line 355
    .line 356
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 357
    .line 358
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailViewCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 359
    .line 360
    iget-object v15, v0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 361
    .line 362
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getViewCount()J

    .line 363
    .line 364
    .line 365
    move-result-wide v10

    .line 366
    const v17, 0x7f130368

    .line 367
    .line 368
    .line 369
    invoke-static {v15, v10, v11}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v20

    .line 373
    const v16, 0x7f110009

    .line 374
    .line 375
    .line 376
    move-wide/from16 v18, v10

    .line 377
    .line 378
    invoke-static/range {v15 .. v20}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v10

    .line 382
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    .line 384
    .line 385
    move-wide/from16 v21, v7

    .line 386
    .line 387
    goto :goto_3

    .line 388
    :cond_6
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    iget-object v10, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 397
    .line 398
    if-eqz v3, :cond_7

    .line 399
    .line 400
    iget-object v3, v10, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailViewCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 401
    .line 402
    iget-object v15, v0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 403
    .line 404
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getViewCount()J

    .line 405
    .line 406
    .line 407
    move-result-wide v10

    .line 408
    move-wide/from16 v21, v7

    .line 409
    .line 410
    long-to-double v7, v10

    .line 411
    invoke-static {v7, v8}, Lorg/schabi/newpipe/util/Localization;->localizeNumber(D)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v20

    .line 415
    const v16, 0x7f110013

    .line 416
    .line 417
    .line 418
    const v17, 0x7f130369

    .line 419
    .line 420
    .line 421
    move-wide/from16 v18, v10

    .line 422
    .line 423
    invoke-static/range {v15 .. v20}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    .line 429
    .line 430
    goto :goto_3

    .line 431
    :cond_7
    move-wide/from16 v21, v7

    .line 432
    .line 433
    iget-object v3, v10, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailViewCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 434
    .line 435
    iget-object v15, v0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 436
    .line 437
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getViewCount()J

    .line 438
    .line 439
    .line 440
    move-result-wide v7

    .line 441
    long-to-double v10, v7

    .line 442
    invoke-static {v10, v11}, Lorg/schabi/newpipe/util/Localization;->localizeNumber(D)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v20

    .line 446
    const v16, 0x7f110012

    .line 447
    .line 448
    .line 449
    const v17, 0x7f130373

    .line 450
    .line 451
    .line 452
    move-wide/from16 v18, v7

    .line 453
    .line 454
    invoke-static/range {v15 .. v20}, Lorg/schabi/newpipe/util/Localization;->getQuantity(Landroid/content/Context;IIJLjava/lang/String;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v7

    .line 458
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    .line 460
    .line 461
    :goto_3
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 462
    .line 463
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailViewCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 464
    .line 465
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 466
    .line 467
    .line 468
    goto :goto_4

    .line 469
    :cond_8
    move-wide/from16 v21, v7

    .line 470
    .line 471
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 472
    .line 473
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailViewCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 474
    .line 475
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 476
    .line 477
    .line 478
    :goto_4
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDislikeCount()J

    .line 479
    .line 480
    .line 481
    move-result-wide v7

    .line 482
    cmp-long v3, v7, v21

    .line 483
    .line 484
    if-nez v3, :cond_9

    .line 485
    .line 486
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getLikeCount()J

    .line 487
    .line 488
    .line 489
    move-result-wide v7

    .line 490
    cmp-long v3, v7, v21

    .line 491
    .line 492
    if-nez v3, :cond_9

    .line 493
    .line 494
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 495
    .line 496
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsDownImgView:Landroid/widget/ImageView;

    .line 497
    .line 498
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 499
    .line 500
    .line 501
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 502
    .line 503
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsUpImgView:Landroid/widget/ImageView;

    .line 504
    .line 505
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    .line 507
    .line 508
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 509
    .line 510
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsUpCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 511
    .line 512
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 513
    .line 514
    .line 515
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 516
    .line 517
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsDownCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 518
    .line 519
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 520
    .line 521
    .line 522
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 523
    .line 524
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsDisabledView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 525
    .line 526
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 527
    .line 528
    .line 529
    goto :goto_7

    .line 530
    :cond_9
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDislikeCount()J

    .line 531
    .line 532
    .line 533
    move-result-wide v7

    .line 534
    cmp-long v3, v7, v12

    .line 535
    .line 536
    iget-object v7, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 537
    .line 538
    if-ltz v3, :cond_a

    .line 539
    .line 540
    iget-object v3, v7, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsDownCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 541
    .line 542
    iget-object v7, v0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 543
    .line 544
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDislikeCount()J

    .line 545
    .line 546
    .line 547
    move-result-wide v10

    .line 548
    invoke-static {v7, v10, v11}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v7

    .line 552
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    .line 554
    .line 555
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 556
    .line 557
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsDownCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 558
    .line 559
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 560
    .line 561
    .line 562
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 563
    .line 564
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsDownImgView:Landroid/widget/ImageView;

    .line 565
    .line 566
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 567
    .line 568
    .line 569
    goto :goto_5

    .line 570
    :cond_a
    iget-object v3, v7, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsDownCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 571
    .line 572
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 573
    .line 574
    .line 575
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 576
    .line 577
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsDownImgView:Landroid/widget/ImageView;

    .line 578
    .line 579
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 580
    .line 581
    .line 582
    :goto_5
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getLikeCount()J

    .line 583
    .line 584
    .line 585
    move-result-wide v7

    .line 586
    cmp-long v3, v7, v12

    .line 587
    .line 588
    iget-object v7, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 589
    .line 590
    if-ltz v3, :cond_b

    .line 591
    .line 592
    iget-object v3, v7, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsUpCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 593
    .line 594
    iget-object v7, v0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 595
    .line 596
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getLikeCount()J

    .line 597
    .line 598
    .line 599
    move-result-wide v10

    .line 600
    invoke-static {v7, v10, v11}, Lorg/schabi/newpipe/util/Localization;->shortCount(Landroid/content/Context;J)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v7

    .line 604
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    .line 606
    .line 607
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 608
    .line 609
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsUpCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 610
    .line 611
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 612
    .line 613
    .line 614
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 615
    .line 616
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsUpImgView:Landroid/widget/ImageView;

    .line 617
    .line 618
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 619
    .line 620
    .line 621
    goto :goto_6

    .line 622
    :cond_b
    iget-object v3, v7, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsUpCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 623
    .line 624
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 625
    .line 626
    .line 627
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 628
    .line 629
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsUpImgView:Landroid/widget/ImageView;

    .line 630
    .line 631
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 632
    .line 633
    .line 634
    :goto_6
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 635
    .line 636
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbsDisabledView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 637
    .line 638
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 639
    .line 640
    .line 641
    :goto_7
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    .line 642
    .line 643
    .line 644
    move-result-wide v7

    .line 645
    cmp-long v3, v7, v12

    .line 646
    .line 647
    iget-object v7, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 648
    .line 649
    const-wide/16 v15, 0x64

    .line 650
    .line 651
    if-lez v3, :cond_c

    .line 652
    .line 653
    iget-object v3, v7, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 654
    .line 655
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    .line 656
    .line 657
    .line 658
    move-result-wide v7

    .line 659
    invoke-static {v7, v8}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v5

    .line 663
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    .line 665
    .line 666
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 667
    .line 668
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 669
    .line 670
    iget-object v5, v0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 671
    .line 672
    const v7, 0x7f060083

    .line 673
    .line 674
    .line 675
    invoke-virtual {v5, v7}, Landroid/content/Context;->getColor(I)I

    .line 676
    .line 677
    .line 678
    move-result v5

    .line 679
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 680
    .line 681
    .line 682
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 683
    .line 684
    iget-object v13, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 685
    .line 686
    const/16 v20, 0x0

    .line 687
    .line 688
    const/16 v21, 0x1c

    .line 689
    .line 690
    const/16 v17, 0x0

    .line 691
    .line 692
    const-wide/16 v18, 0x0

    .line 693
    .line 694
    invoke-static/range {v13 .. v21}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 695
    .line 696
    .line 697
    goto :goto_8

    .line 698
    :cond_c
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 699
    .line 700
    .line 701
    move-result-object v3

    .line 702
    if-ne v3, v5, :cond_d

    .line 703
    .line 704
    iget-object v3, v7, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 705
    .line 706
    const v5, 0x7f130132

    .line 707
    .line 708
    .line 709
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 710
    .line 711
    .line 712
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 713
    .line 714
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 715
    .line 716
    iget-object v5, v0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 717
    .line 718
    const v7, 0x7f0600ac

    .line 719
    .line 720
    .line 721
    invoke-virtual {v5, v7}, Landroid/content/Context;->getColor(I)I

    .line 722
    .line 723
    .line 724
    move-result v5

    .line 725
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 726
    .line 727
    .line 728
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 729
    .line 730
    iget-object v13, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 731
    .line 732
    const/16 v20, 0x0

    .line 733
    .line 734
    const/16 v21, 0x1c

    .line 735
    .line 736
    const/16 v17, 0x0

    .line 737
    .line 738
    const-wide/16 v18, 0x0

    .line 739
    .line 740
    invoke-static/range {v13 .. v21}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 741
    .line 742
    .line 743
    goto :goto_8

    .line 744
    :cond_d
    iget-object v3, v7, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 745
    .line 746
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 747
    .line 748
    .line 749
    :goto_8
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 750
    .line 751
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailTitleRootLayout:Landroid/widget/FrameLayout;

    .line 752
    .line 753
    invoke-virtual {v3, v14}, Landroid/view/View;->setClickable(Z)V

    .line 754
    .line 755
    .line 756
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 757
    .line 758
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailToggleSecondaryControlsView:Landroid/widget/ImageView;

    .line 759
    .line 760
    const/4 v5, 0x0

    .line 761
    invoke-virtual {v3, v5}, Landroid/view/View;->setRotation(F)V

    .line 762
    .line 763
    .line 764
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 765
    .line 766
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailToggleSecondaryControlsView:Landroid/widget/ImageView;

    .line 767
    .line 768
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 769
    .line 770
    .line 771
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 772
    .line 773
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSecondaryControlPanel:Landroid/widget/LinearLayout;

    .line 774
    .line 775
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 776
    .line 777
    .line 778
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->positionSubscriber:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 779
    .line 780
    if-eqz v3, :cond_e

    .line 781
    .line 782
    invoke-static {v3}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 783
    .line 784
    .line 785
    :cond_e
    iget-object v3, v0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 786
    .line 787
    invoke-static {v3}, Landroidx/core/os/BundleKt;->getResumePlaybackEnabled(Landroid/content/Context;)Z

    .line 788
    .line 789
    .line 790
    move-result v3

    .line 791
    if-nez v3, :cond_f

    .line 792
    .line 793
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 794
    .line 795
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 796
    .line 797
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 798
    .line 799
    .line 800
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 801
    .line 802
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailPositionView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 803
    .line 804
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 805
    .line 806
    .line 807
    goto :goto_9

    .line 808
    :cond_f
    new-instance v3, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 809
    .line 810
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 811
    .line 812
    .line 813
    move-result-object v5

    .line 814
    invoke-direct {v3, v5}, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;-><init>(Landroid/content/Context;)V

    .line 815
    .line 816
    .line 817
    new-instance v5, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;

    .line 818
    .line 819
    const/4 v7, 0x5

    .line 820
    invoke-direct {v5, v3, v1, v7}, Landroidx/work/impl/WorkerWrapper$launch$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 821
    .line 822
    .line 823
    new-instance v7, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;

    .line 824
    .line 825
    const/4 v8, 0x3

    .line 826
    invoke-direct {v7, v5, v8}, Lio/reactivex/rxjava3/internal/operators/single/SingleAmb;-><init>(Ljava/lang/Object;I)V

    .line 827
    .line 828
    .line 829
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistStreamCount:Ljava/lang/Object;

    .line 830
    .line 831
    check-cast v3, Lorg/schabi/newpipe/database/stream/dao/StreamStateDAO_Impl;

    .line 832
    .line 833
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    new-instance v5, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 837
    .line 838
    const/16 v8, 0x12

    .line 839
    .line 840
    invoke-direct {v5, v3, v8}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 841
    .line 842
    .line 843
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMapPublisher;

    .line 844
    .line 845
    const/4 v8, 0x2

    .line 846
    invoke-direct {v3, v7, v5, v8}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableMapPublisher;-><init>(Ljava/lang/Object;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 847
    .line 848
    .line 849
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;

    .line 850
    .line 851
    invoke-direct {v5, v3}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableElementAtMaybe;-><init>(Lio/reactivex/rxjava3/core/Flowable;)V

    .line 852
    .line 853
    .line 854
    new-instance v3, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 855
    .line 856
    const/16 v7, 0xc

    .line 857
    .line 858
    invoke-direct {v3, v7}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 859
    .line 860
    .line 861
    new-instance v7, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap;

    .line 862
    .line 863
    invoke-direct {v7, v5, v3, v6}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeMap;-><init>(Lio/reactivex/rxjava3/core/Maybe;Lio/reactivex/rxjava3/functions/Function;I)V

    .line 864
    .line 865
    .line 866
    new-instance v3, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 867
    .line 868
    const/16 v5, 0x10

    .line 869
    .line 870
    invoke-direct {v3, v1, v5}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 871
    .line 872
    .line 873
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/maybe/MaybePeek;

    .line 874
    .line 875
    invoke-direct {v5, v7, v3, v6}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybePeek;-><init>(Lio/reactivex/rxjava3/core/Maybe;Ljava/lang/Object;I)V

    .line 876
    .line 877
    .line 878
    sget-object v3, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 879
    .line 880
    invoke-virtual {v5, v3}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 881
    .line 882
    .line 883
    move-result-object v5

    .line 884
    invoke-virtual {v5, v3}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 885
    .line 886
    .line 887
    move-result-object v3

    .line 888
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 889
    .line 890
    .line 891
    move-result-object v5

    .line 892
    new-instance v7, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;

    .line 893
    .line 894
    const/16 v8, 0x14

    .line 895
    .line 896
    invoke-direct {v7, v0, v1, v8}, Lkotlinx/coroutines/rx3/RxConvertKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 897
    .line 898
    .line 899
    new-instance v8, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 900
    .line 901
    const/16 v10, 0xd

    .line 902
    .line 903
    invoke-direct {v8, v10}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 904
    .line 905
    .line 906
    new-instance v10, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;

    .line 907
    .line 908
    invoke-direct {v10, v0, v6}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 909
    .line 910
    .line 911
    new-instance v11, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 912
    .line 913
    invoke-direct {v11, v7, v8, v10}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 914
    .line 915
    .line 916
    :try_start_0
    new-instance v7, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;

    .line 917
    .line 918
    invoke-direct {v7, v11, v5}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;Lio/reactivex/rxjava3/core/Scheduler;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 919
    .line 920
    .line 921
    :try_start_1
    new-instance v5, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;

    .line 922
    .line 923
    invoke-direct {v5, v7, v6}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;I)V

    .line 924
    .line 925
    .line 926
    invoke-virtual {v3, v5}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 927
    .line 928
    .line 929
    iput-object v11, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->positionSubscriber:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 930
    .line 931
    :goto_9
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 932
    .line 933
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailImageView:Landroid/widget/ImageView;

    .line 934
    .line 935
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    .line 936
    .line 937
    .line 938
    move-result-object v3

    .line 939
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 940
    .line 941
    .line 942
    invoke-static {v3}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v3

    .line 946
    const v5, 0x7f0801b8

    .line 947
    .line 948
    .line 949
    invoke-static {v2, v3, v5, v9}, Lokhttp3/Cookie$Companion;->loadImageDefault(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    .line 950
    .line 951
    .line 952
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getMetaInfo()Ljava/util/List;

    .line 953
    .line 954
    .line 955
    move-result-object v2

    .line 956
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 957
    .line 958
    iget-object v5, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailMetaInfoTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 959
    .line 960
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailMetaInfoSeparator:Landroid/view/View;

    .line 961
    .line 962
    iget-object v6, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 963
    .line 964
    invoke-static {v2, v5, v3, v6}, Lorg/schabi/newpipe/util/ExtractorHelper;->showMetaInfoInTextView(Ljava/util/List;Landroid/widget/TextView;Landroid/view/View;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V

    .line 965
    .line 966
    .line 967
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 968
    .line 969
    .line 970
    move-result v2

    .line 971
    if-eqz v2, :cond_10

    .line 972
    .line 973
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 974
    .line 975
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->isStopped()Z

    .line 976
    .line 977
    .line 978
    move-result v2

    .line 979
    if-eqz v2, :cond_11

    .line 980
    .line 981
    :cond_10
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v2

    .line 985
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v3

    .line 989
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    .line 990
    .line 991
    .line 992
    move-result-object v5

    .line 993
    invoke-virtual {v0, v2, v3, v5}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateOverlayData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 994
    .line 995
    .line 996
    :cond_11
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    .line 997
    .line 998
    .line 999
    move-result-object v2

    .line 1000
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 1001
    .line 1002
    .line 1003
    move-result v2

    .line 1004
    if-nez v2, :cond_14

    .line 1005
    .line 1006
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v2

    .line 1010
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v2

    .line 1014
    :cond_12
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1015
    .line 1016
    .line 1017
    move-result v3

    .line 1018
    if-eqz v3, :cond_13

    .line 1019
    .line 1020
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v3

    .line 1024
    check-cast v3, Ljava/lang/Throwable;

    .line 1025
    .line 1026
    instance-of v5, v3, Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;

    .line 1027
    .line 1028
    if-eqz v5, :cond_12

    .line 1029
    .line 1030
    const-string v5, "Fan pages are not supported"

    .line 1031
    .line 1032
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v6

    .line 1036
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1037
    .line 1038
    .line 1039
    move-result v5

    .line 1040
    if-eqz v5, :cond_12

    .line 1041
    .line 1042
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v5

    .line 1046
    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1047
    .line 1048
    .line 1049
    goto :goto_a

    .line 1050
    :cond_13
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v2

    .line 1054
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 1055
    .line 1056
    .line 1057
    move-result v2

    .line 1058
    if-nez v2, :cond_14

    .line 1059
    .line 1060
    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 1061
    .line 1062
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getErrors()Ljava/util/List;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v3

    .line 1066
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    const-string v6, "Some info not extracted: "

    .line 1069
    .line 1070
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v6

    .line 1077
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v5

    .line 1084
    sget-object v6, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_STREAM:Lorg/schabi/newpipe/error/UserAction;

    .line 1085
    .line 1086
    invoke-direct {v2, v3, v6, v5, v1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/util/List;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showSnackBarError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 1090
    .line 1091
    .line 1092
    :cond_14
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 1093
    .line 1094
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsDownload:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 1095
    .line 1096
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v3

    .line 1100
    invoke-static {v3}, Lokio/Okio;->isLiveStream(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z

    .line 1101
    .line 1102
    .line 1103
    move-result v3

    .line 1104
    if-eqz v3, :cond_15

    .line 1105
    .line 1106
    move v3, v4

    .line 1107
    goto :goto_b

    .line 1108
    :cond_15
    move v3, v9

    .line 1109
    :goto_b
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1110
    .line 1111
    .line 1112
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 1113
    .line 1114
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsBackground:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 1115
    .line 1116
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v3

    .line 1120
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 1121
    .line 1122
    .line 1123
    move-result v3

    .line 1124
    if-eqz v3, :cond_16

    .line 1125
    .line 1126
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v3

    .line 1130
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 1131
    .line 1132
    .line 1133
    move-result v3

    .line 1134
    if-eqz v3, :cond_16

    .line 1135
    .line 1136
    move v3, v4

    .line 1137
    goto :goto_c

    .line 1138
    :cond_16
    move v3, v9

    .line 1139
    :goto_c
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v2

    .line 1146
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 1147
    .line 1148
    .line 1149
    move-result v2

    .line 1150
    if-eqz v2, :cond_17

    .line 1151
    .line 1152
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoOnlyStreams()Ljava/util/List;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v1

    .line 1156
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 1157
    .line 1158
    .line 1159
    move-result v1

    .line 1160
    if-eqz v1, :cond_17

    .line 1161
    .line 1162
    goto :goto_d

    .line 1163
    :cond_17
    move v14, v9

    .line 1164
    :goto_d
    iget-object v1, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 1165
    .line 1166
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPopup:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 1167
    .line 1168
    if-eqz v14, :cond_18

    .line 1169
    .line 1170
    goto :goto_e

    .line 1171
    :cond_18
    move v4, v9

    .line 1172
    :goto_e
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1173
    .line 1174
    .line 1175
    iget-object v0, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 1176
    .line 1177
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailPlayButton:Landroid/widget/ImageView;

    .line 1178
    .line 1179
    if-eqz v14, :cond_19

    .line 1180
    .line 1181
    const v1, 0x7f080113

    .line 1182
    .line 1183
    .line 1184
    goto :goto_f

    .line 1185
    :cond_19
    const v1, 0x7f08013c

    .line 1186
    .line 1187
    .line 1188
    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1189
    .line 1190
    .line 1191
    return-void

    .line 1192
    :catchall_0
    move-exception v0

    .line 1193
    :try_start_2
    invoke-static {v0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1194
    .line 1195
    .line 1196
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1197
    .line 1198
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1202
    .line 1203
    .line 1204
    throw v1

    .line 1205
    :catch_0
    move-exception v0

    .line 1206
    throw v0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1207
    :catchall_1
    move-exception v0

    .line 1208
    invoke-static {v0, v2, v0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v0

    .line 1212
    throw v0

    .line 1213
    :catch_1
    move-exception v0

    .line 1214
    throw v0
.end method

.method public final hideMainPlayerOnLoadingNewStream()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;

    .line 8
    .line 9
    const/16 v2, 0x15

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    const/16 v2, 0x16

    .line 21
    .line 22
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    .line 30
    .line 31
    if-eqz v1, :cond_5

    .line 32
    .line 33
    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_5

    .line 38
    .line 39
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 40
    .line 41
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 56
    .line 57
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->playerPlaceholder:Landroid/widget/FrameLayout;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const/4 v2, -0x1

    .line 64
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    .line 66
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 67
    .line 68
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->playerPlaceholder:Landroid/widget/FrameLayout;

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 74
    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 78
    .line 79
    const-class v2, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    new-instance v2, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 86
    .line 87
    const/16 v3, 0xf

    .line 88
    .line 89
    invoke-direct {v2, v3}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isAutoplayEnabled()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    .line 102
    .line 103
    iget-object v1, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 104
    .line 105
    if-eqz v1, :cond_3

    .line 106
    .line 107
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->exoPlayerIsNull()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_3

    .line 112
    .line 113
    iget-object p0, p0, Lorg/schabi/newpipe/player/PlayerService;->player:Lorg/schabi/newpipe/player/Player;

    .line 114
    .line 115
    iget-object v1, p0, Lorg/schabi/newpipe/player/Player;->simpleExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 116
    .line 117
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->stop()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 121
    .line 122
    .line 123
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 124
    .line 125
    new-instance v1, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;

    .line 126
    .line 127
    const/4 v2, 0x3

    .line 128
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda3;-><init>(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->call(Ljava/util/function/Consumer;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    new-instance p0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 135
    .line 136
    const/16 v1, 0x11

    .line 137
    .line 138
    invoke-direct {p0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_4
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 146
    .line 147
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->stopService()V

    .line 148
    .line 149
    .line 150
    :cond_5
    :goto_1
    return-void
.end method

.method public final hideSystemUiIfNeeded()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isFullscreen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 8
    .line 9
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-ne v0, v1, :cond_5

    .line 13
    .line 14
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v2, 0x1c

    .line 22
    .line 23
    if-lt v1, v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 38
    .line 39
    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isInMultiWindow(Landroidx/appcompat/app/AppCompatActivity;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    const/16 v1, 0x1706

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/16 v1, 0x1702

    .line 49
    .line 50
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 61
    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isFullscreen()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 88
    .line 89
    .line 90
    :cond_4
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    const/16 v0, 0x400

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 99
    .line 100
    .line 101
    :cond_5
    :goto_1
    return-void
.end method

.method public final initListeners()V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->rootView:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda10;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda10;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 15
    .line 16
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->rootView:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda11;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 27
    .line 28
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailTitleRootLayout:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    invoke-direct {v1, p0, v3}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 40
    .line 41
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderRootLayout:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;

    .line 44
    .line 45
    const/4 v4, 0x6

    .line 46
    invoke-direct {v1, p0, v4}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 47
    .line 48
    .line 49
    new-instance v5, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 50
    .line 51
    const/4 v6, 0x3

    .line 52
    invoke-direct {v5, p0, v1, v6}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 59
    .line 60
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailRootLayout:Landroid/widget/FrameLayout;

    .line 61
    .line 62
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;

    .line 63
    .line 64
    const/4 v5, 0x1

    .line 65
    invoke-direct {v1, p0, v5}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 72
    .line 73
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsBackground:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 74
    .line 75
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;

    .line 76
    .line 77
    invoke-direct {v1, p0, v4}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 84
    .line 85
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPopup:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 86
    .line 87
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;

    .line 88
    .line 89
    const/4 v4, 0x7

    .line 90
    invoke-direct {v1, p0, v4}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 97
    .line 98
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPlaylistAppend:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 99
    .line 100
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;

    .line 101
    .line 102
    invoke-direct {v1, p0, v4}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 103
    .line 104
    .line 105
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 106
    .line 107
    invoke-direct {v4, p0, v1, v6}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 114
    .line 115
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsDownload:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 116
    .line 117
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;

    .line 118
    .line 119
    const/16 v4, 0x8

    .line 120
    .line 121
    invoke-direct {v1, p0, v4}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 128
    .line 129
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsShare:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 130
    .line 131
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;

    .line 132
    .line 133
    invoke-direct {v1, p0, v4}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 134
    .line 135
    .line 136
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 137
    .line 138
    invoke-direct {v4, p0, v1, v6}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 145
    .line 146
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsOpenInBrowser:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 147
    .line 148
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;

    .line 149
    .line 150
    const/16 v4, 0x9

    .line 151
    .line 152
    invoke-direct {v1, p0, v4}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 153
    .line 154
    .line 155
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 156
    .line 157
    invoke-direct {v4, p0, v1, v6}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 164
    .line 165
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPlayWithKodi:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 166
    .line 167
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;

    .line 168
    .line 169
    const/16 v4, 0xa

    .line 170
    .line 171
    invoke-direct {v1, p0, v4}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 172
    .line 173
    .line 174
    new-instance v4, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 175
    .line 176
    invoke-direct {v4, p0, v1, v6}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    .line 181
    .line 182
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;

    .line 183
    .line 184
    invoke-direct {v0, p0, v6}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 188
    .line 189
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayThumbnail:Landroid/widget/ImageButton;

    .line 190
    .line 191
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    .line 193
    .line 194
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 195
    .line 196
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayMetadataLayout:Landroid/widget/LinearLayout;

    .line 197
    .line 198
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 202
    .line 203
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayButtonsLayout:Landroid/widget/LinearLayout;

    .line 204
    .line 205
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 209
    .line 210
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayCloseButton:Landroid/widget/ImageButton;

    .line 211
    .line 212
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;

    .line 213
    .line 214
    const/4 v4, 0x4

    .line 215
    invoke-direct {v1, p0, v4}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 222
    .line 223
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayPlayQueueButton:Landroid/widget/ImageButton;

    .line 224
    .line 225
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;

    .line 226
    .line 227
    const/4 v7, 0x5

    .line 228
    invoke-direct {v1, p0, v7}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .line 233
    .line 234
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 235
    .line 236
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayPlayPauseButton:Landroid/widget/ImageButton;

    .line 237
    .line 238
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;

    .line 239
    .line 240
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda34;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    .line 245
    .line 246
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 247
    .line 248
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailTitleRootLayout:Landroid/widget/FrameLayout;

    .line 249
    .line 250
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;

    .line 251
    .line 252
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 253
    .line 254
    .line 255
    new-instance v8, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;

    .line 256
    .line 257
    invoke-direct {v8, p0, v1, v3}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 261
    .line 262
    .line 263
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 264
    .line 265
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderRootLayout:Landroid/widget/LinearLayout;

    .line 266
    .line 267
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;

    .line 268
    .line 269
    invoke-direct {v1, p0, v5}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 270
    .line 271
    .line 272
    new-instance v5, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;

    .line 273
    .line 274
    invoke-direct {v5, p0, v1, v3}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 278
    .line 279
    .line 280
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 281
    .line 282
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsBackground:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 283
    .line 284
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;

    .line 285
    .line 286
    invoke-direct {v1, p0, v3}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 287
    .line 288
    .line 289
    new-instance v5, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;

    .line 290
    .line 291
    invoke-direct {v5, p0, v1, v3}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 295
    .line 296
    .line 297
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 298
    .line 299
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPopup:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 300
    .line 301
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;

    .line 302
    .line 303
    invoke-direct {v1, p0, v6}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 304
    .line 305
    .line 306
    new-instance v5, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;

    .line 307
    .line 308
    invoke-direct {v5, p0, v1, v3}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 312
    .line 313
    .line 314
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 315
    .line 316
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsDownload:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 317
    .line 318
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;

    .line 319
    .line 320
    invoke-direct {v1, p0, v4}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 321
    .line 322
    .line 323
    new-instance v5, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;

    .line 324
    .line 325
    invoke-direct {v5, p0, v1, v3}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 329
    .line 330
    .line 331
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;

    .line 332
    .line 333
    invoke-direct {v0, p0, v7}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda22;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 334
    .line 335
    .line 336
    new-instance v1, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;

    .line 337
    .line 338
    invoke-direct {v1, p0, v0, v3}, Lorg/schabi/newpipe/local/holder/PlaylistItemHolder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 339
    .line 340
    .line 341
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 342
    .line 343
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayThumbnail:Landroid/widget/ImageButton;

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 346
    .line 347
    .line 348
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 349
    .line 350
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayMetadataLayout:Landroid/widget/LinearLayout;

    .line 351
    .line 352
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 353
    .line 354
    .line 355
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda12;

    .line 356
    .line 357
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda12;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    .line 358
    .line 359
    .line 360
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 361
    .line 362
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsBackground:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 363
    .line 364
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 365
    .line 366
    .line 367
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 368
    .line 369
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPopup:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 370
    .line 371
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 372
    .line 373
    .line 374
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 375
    .line 376
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 377
    .line 378
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda13;

    .line 379
    .line 380
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 384
    .line 385
    .line 386
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 387
    .line 388
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 389
    .line 390
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 395
    .line 396
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 397
    .line 398
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 399
    .line 400
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 401
    .line 402
    const v3, 0x7f0a01aa

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    check-cast v1, Landroid/widget/FrameLayout;

    .line 410
    .line 411
    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    iput-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 416
    .line 417
    iget v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lastStableBottomSheetState:I

    .line 418
    .line 419
    invoke-virtual {v1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 420
    .line 421
    .line 422
    iget v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lastStableBottomSheetState:I

    .line 423
    .line 424
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateBottomSheetState(I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    const v3, 0x7f070286

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    iget v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetState:I

    .line 439
    .line 440
    if-eq v3, v7, :cond_1

    .line 441
    .line 442
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->manageSpaceAtTheBottom(Z)V

    .line 443
    .line 444
    .line 445
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 446
    .line 447
    invoke-virtual {v3, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 448
    .line 449
    .line 450
    iget v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetState:I

    .line 451
    .line 452
    if-ne v3, v4, :cond_0

    .line 453
    .line 454
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 455
    .line 456
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayLayout:Landroid/widget/RelativeLayout;

    .line 457
    .line 458
    const v4, 0x3f666666    # 0.9f

    .line 459
    .line 460
    .line 461
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 462
    .line 463
    .line 464
    goto :goto_0

    .line 465
    :cond_0
    if-ne v3, v6, :cond_1

    .line 466
    .line 467
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 468
    .line 469
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayLayout:Landroid/widget/RelativeLayout;

    .line 470
    .line 471
    const/4 v4, 0x0

    .line 472
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setOverlayElementsClickable(Z)V

    .line 476
    .line 477
    .line 478
    :cond_1
    :goto_0
    new-instance v3, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;

    .line 479
    .line 480
    invoke-direct {v3, p0, v1, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;ILcom/google/android/material/appbar/AppBarLayout$Behavior;)V

    .line 481
    .line 482
    .line 483
    iput-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetCallback:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;

    .line 484
    .line 485
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 486
    .line 487
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 488
    .line 489
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    if-nez v1, :cond_2

    .line 494
    .line 495
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 499
    .line 500
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda21;

    .line 505
    .line 506
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda21;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    .line 507
    .line 508
    .line 509
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 510
    .line 511
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 515
    .line 516
    iget-boolean v1, v0, Lorg/schabi/newpipe/player/helper/PlayerHolder;->bound:Z

    .line 517
    .line 518
    if-nez v1, :cond_3

    .line 519
    .line 520
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setHeightThumbnail()V

    .line 521
    .line 522
    .line 523
    return-void

    .line 524
    :cond_3
    invoke-virtual {v0, v2, p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->startService(ZLorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;)V

    .line 525
    .line 526
    .line 527
    return-void
.end method

.method public final initTabs()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 14
    .line 15
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->getItemTitle(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->selectedTabTag:Ljava/lang/String;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 28
    .line 29
    iget-object v1, v0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentList:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    iget-object v0, v0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentTitleList:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabIcons:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabContentDescriptions:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 47
    .line 48
    .line 49
    :try_start_0
    iget-boolean v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showComments:Z

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    iget v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    .line 54
    .line 55
    invoke-static {v2}, Lus/shandian/giga/util/Utility;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-object v2, v2, Lorg/schabi/newpipe/extractor/StreamingService;->serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    .line 60
    .line 61
    iget-object v2, v2, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->mediaCapabilities:Ljava/util/Set;

    .line 62
    .line 63
    sget-object v3, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->COMMENTS:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    .line 64
    .line 65
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 72
    .line 73
    iget v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    .line 74
    .line 75
    iget-object v4, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v5, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->title:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v6, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;

    .line 80
    .line 81
    invoke-direct {v6}, Lorg/schabi/newpipe/fragments/list/comments/CommentsFragment;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v4, v3, v5}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->setInitialData(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v3, "COMMENTS"

    .line 88
    .line 89
    invoke-virtual {v2, v6, v3}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->addFragment(Lorg/schabi/newpipe/BaseFragment;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const v2, 0x7f080100

    .line 93
    .line 94
    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    const v2, 0x7f1300b1

    .line 103
    .line 104
    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    :catch_0
    :cond_1
    iget-boolean v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showRelatedItems:Z

    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    if-eqz v2, :cond_2

    .line 116
    .line 117
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 118
    .line 119
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->relatedItemsLayout:Landroidx/fragment/app/FragmentContainerView;

    .line 120
    .line 121
    if-nez v2, :cond_2

    .line 122
    .line 123
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 124
    .line 125
    invoke-static {v3}, Lorg/schabi/newpipe/fragments/EmptyFragment;->newInstance(Z)Lorg/schabi/newpipe/fragments/EmptyFragment;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    const-string v5, "NEXT VIDEO"

    .line 130
    .line 131
    invoke-virtual {v2, v4, v5}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->addFragment(Lorg/schabi/newpipe/BaseFragment;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const v2, 0x7f0800e6

    .line 135
    .line 136
    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    const v2, 0x7f130415

    .line 145
    .line 146
    .line 147
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    :cond_2
    iget-boolean v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showDescription:Z

    .line 155
    .line 156
    if-eqz v2, :cond_3

    .line 157
    .line 158
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 159
    .line 160
    invoke-static {v3}, Lorg/schabi/newpipe/fragments/EmptyFragment;->newInstance(Z)Lorg/schabi/newpipe/fragments/EmptyFragment;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    const-string v4, "DESCRIPTION TAB"

    .line 165
    .line 166
    invoke-virtual {v2, v3, v4}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->addFragment(Lorg/schabi/newpipe/BaseFragment;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const v2, 0x7f080104

    .line 170
    .line 171
    .line 172
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    const v0, 0x7f1300f8

    .line 180
    .line 181
    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 190
    .line 191
    iget-object v0, v0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentList:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-nez v0, :cond_4

    .line 198
    .line 199
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 200
    .line 201
    const/4 v1, 0x1

    .line 202
    invoke-static {v1}, Lorg/schabi/newpipe/fragments/EmptyFragment;->newInstance(Z)Lorg/schabi/newpipe/fragments/EmptyFragment;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    const-string v2, "EMPTY TAB"

    .line 207
    .line 208
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->addFragment(Lorg/schabi/newpipe/BaseFragment;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :cond_4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 212
    .line 213
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->notifyDataSetUpdate()V

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 217
    .line 218
    iget-object v0, v0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentList:Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    const/4 v1, 0x2

    .line 225
    if-lt v0, v1, :cond_6

    .line 226
    .line 227
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 228
    .line 229
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->selectedTabTag:Ljava/lang/String;

    .line 230
    .line 231
    iget-object v0, v0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentTitleList:Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    const/4 v1, -0x1

    .line 238
    if-eq v0, v1, :cond_5

    .line 239
    .line 240
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 241
    .line 242
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 243
    .line 244
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 245
    .line 246
    .line 247
    :cond_5
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabIconsAndContentDescriptions()V

    .line 248
    .line 249
    .line 250
    :cond_6
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabLayoutVisibility()V

    .line 251
    .line 252
    .line 253
    return-void
.end method

.method public final initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-direct {p1, p2}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 14
    .line 15
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 16
    .line 17
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 23
    .line 24
    iget-object p2, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 25
    .line 26
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 32
    .line 33
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailRootLayout:Landroid/widget/FrameLayout;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 39
    .line 40
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPlayWithKodi:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iget v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    .line 47
    .line 48
    invoke-static {p2, v0}, Lkotlin/io/CloseableKt;->shouldShowPlayWithKodi(Landroid/content/Context;I)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const/16 v0, 0x8

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    if-eqz p2, :cond_0

    .line 56
    .line 57
    move p2, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move p2, v0

    .line 60
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 64
    .line 65
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsCrashThePlayer:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const p2, 0x7f06035e

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 92
    .line 93
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPlaylistAppend:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 94
    .line 95
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 96
    .line 97
    .line 98
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 99
    .line 100
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsBackground:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 103
    .line 104
    .line 105
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 106
    .line 107
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPopup:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 108
    .line 109
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 110
    .line 111
    .line 112
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 113
    .line 114
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsDownload:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 115
    .line 116
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    .line 118
    .line 119
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 120
    .line 121
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsShare:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 122
    .line 123
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 124
    .line 125
    .line 126
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 127
    .line 128
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsOpenInBrowser:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 129
    .line 130
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    .line 132
    .line 133
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 134
    .line 135
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailControlsPlayWithKodi:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 136
    .line 137
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 138
    .line 139
    .line 140
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const-string p2, "input"

    .line 145
    .line 146
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    check-cast p2, Landroid/hardware/input/InputManager;

    .line 151
    .line 152
    invoke-virtual {p2}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    array-length v2, v0

    .line 157
    :goto_1
    const/4 v3, 0x0

    .line 158
    if-ge v1, v2, :cond_3

    .line 159
    .line 160
    aget v4, v0, v1

    .line 161
    .line 162
    invoke-virtual {p2, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    const v5, 0xc002

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v5}, Landroid/view/InputDevice;->supportsSource(I)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-nez v5, :cond_7

    .line 174
    .line 175
    const/16 v5, 0x2002

    .line 176
    .line 177
    invoke-virtual {v4, v5}, Landroid/view/InputDevice;->supportsSource(I)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-nez v5, :cond_7

    .line 182
    .line 183
    const/16 v5, 0x4002

    .line 184
    .line 185
    invoke-virtual {v4, v5}, Landroid/view/InputDevice;->supportsSource(I)Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-nez v5, :cond_7

    .line 190
    .line 191
    const v5, 0x100008

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4, v5}, Landroid/view/InputDevice;->supportsSource(I)Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-nez v5, :cond_7

    .line 199
    .line 200
    const v5, 0x10004

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4, v5}, Landroid/view/InputDevice;->supportsSource(I)Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-eqz v4, :cond_2

    .line 208
    .line 209
    goto/16 :goto_2

    .line 210
    .line 211
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_3
    const-class p2, Landroid/app/UiModeManager;

    .line 215
    .line 216
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    check-cast p2, Landroid/app/UiModeManager;

    .line 221
    .line 222
    if-eqz p2, :cond_4

    .line 223
    .line 224
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    const/4 v0, 0x2

    .line 229
    if-ne p2, v0, :cond_4

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_4
    sget-boolean p2, Lorg/schabi/newpipe/util/DeviceUtils;->SAMSUNG:Z

    .line 233
    .line 234
    if-nez p2, :cond_5

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const-string v1, "SEM_DESKTOP_MODE_ENABLED"

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    const-string v2, "semDesktopModeEnabled"

    .line 260
    .line 261
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 266
    .line 267
    .line 268
    move-result p2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    if-ne v1, p2, :cond_6

    .line 270
    .line 271
    goto :goto_2

    .line 272
    :catch_0
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    const-string p2, "desktopmode"

    .line 277
    .line 278
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    if-eqz p1, :cond_8

    .line 283
    .line 284
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    const-string v0, "getDesktopModeState"

    .line 289
    .line 290
    invoke-virtual {p2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 291
    .line 292
    .line 293
    move-result-object p2

    .line 294
    invoke-virtual {p2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    const-string v0, "getEnabled"

    .line 303
    .line 304
    invoke-virtual {p2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    check-cast p1, Ljava/lang/Integer;

    .line 313
    .line 314
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    const-string v0, "ENABLED"

    .line 319
    .line 320
    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 325
    .line 326
    .line 327
    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 328
    if-ne p1, p2, :cond_8

    .line 329
    .line 330
    :cond_7
    :goto_2
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 331
    .line 332
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailRootLayout:Landroid/widget/FrameLayout;

    .line 333
    .line 334
    invoke-virtual {p0, v3}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 335
    .line 336
    .line 337
    :catch_1
    :cond_8
    :goto_3
    return-void
.end method

.method public final isAutoplayEnabled()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v2, 0x7f130523

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 34
    .line 35
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    :cond_0
    iget v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetState:I

    .line 42
    .line 43
    const/4 v2, 0x5

    .line 44
    if-eq v0, v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->isAutoplayAllowedByUser(Landroid/content/Context;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :cond_1
    return v1
.end method

.method public final isFullscreen()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 10
    .line 11
    const-class v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    const/16 v1, 0x1a

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_0
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public final isPlayerAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final manageSpaceAtTheBottom(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f070286

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const v1, 0x7f0a01a9

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/view/ViewGroup;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-ne p1, v0, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 p3, 0xa

    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    if-eq p1, p3, :cond_0

    .line 9
    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string p2, "Request code from activity not supported ["

    .line 13
    .line 14
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, "]"

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const/4 p1, -0x1

    .line 34
    if-ne p2, p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    .line 45
    .line 46
    iget-object v4, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v5, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->title:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    invoke-static/range {v1 .. v7}, Landroidx/sqlite/SQLite;->openVideoDetailFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    const-string p0, "ReCaptcha failed"

    .line 57
    .line 58
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final synthetic onAudioTrackUpdate()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onBackPressed()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isFullscreen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->pause()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->restoreDefaultOrientation()V

    .line 23
    .line 24
    .line 25
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 35
    .line 36
    iget-object v3, v0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 47
    .line 48
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 49
    .line 50
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->previous()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :cond_2
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-gt v0, v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->restoreDefaultOrientation()V

    .line 67
    .line 68
    .line 69
    return v1

    .line 70
    :cond_3
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lorg/schabi/newpipe/fragments/detail/StackItem;

    .line 82
    .line 83
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    .line 87
    .line 88
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->hideMainPlayerOnLoadingNewStream()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getServiceId()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getUrl()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getTitle()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    if-nez v5, :cond_4

    .line 104
    .line 105
    const-string v5, ""

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getTitle()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    :goto_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setInitialData(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->startLoading(Z)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v3}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    if-nez v3, :cond_5

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_5
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_6

    .line 146
    .line 147
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 148
    .line 149
    invoke-virtual {v3}, Lorg/schabi/newpipe/player/Player;->isStopped()Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_7

    .line 154
    .line 155
    :cond_6
    move v1, v2

    .line 156
    :cond_7
    if-eqz v0, :cond_8

    .line 157
    .line 158
    if-eqz v1, :cond_8

    .line 159
    .line 160
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUploader()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getThumbnails()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {p0, v1, v3, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateOverlayData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 173
    .line 174
    .line 175
    :cond_8
    :goto_1
    return v2
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const v0, 0x7f130489

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showComments:Z

    .line 23
    .line 24
    const v0, 0x7f1304a6

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showRelatedItems:Z

    .line 36
    .line 37
    const v0, 0x7f13048f

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showDescription:Z

    .line 49
    .line 50
    const v0, 0x7f1304cb

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v2, "COMMENTS"

    .line 58
    .line 59
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->selectedTabTag:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->preferenceChangeListener:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda4;

    .line 66
    .line 67
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 68
    .line 69
    .line 70
    new-instance p1, Lorg/schabi/newpipe/MainActivity$3;

    .line 71
    .line 72
    const/4 v0, 0x3

    .line 73
    invoke-direct {p1, p0, v0}, Lorg/schabi/newpipe/MainActivity$3;-><init>(Ljava/lang/Object;I)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->broadcastReceiver:Lorg/schabi/newpipe/MainActivity$3;

    .line 77
    .line 78
    new-instance p1, Landroid/content/IntentFilter;

    .line 79
    .line 80
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v0, "org.schabi.newpipe.VideoDetailFragment.ACTION_SHOW_MAIN_PLAYER"

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v0, "org.schabi.newpipe.VideoDetailFragment.ACTION_HIDE_MAIN_PLAYER"

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v0, "org.schabi.newpipe.VideoDetailFragment.ACTION_PLAYER_STARTED"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 99
    .line 100
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->broadcastReceiver:Lorg/schabi/newpipe/MainActivity$3;

    .line 101
    .line 102
    const/4 v3, 0x2

    .line 103
    invoke-static {v0, v2, p1, v3}, Lcoil3/decode/StaticImageDecoderKt;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    new-instance p1, Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;

    .line 107
    .line 108
    new-instance v0, Landroid/os/Handler;

    .line 109
    .line 110
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-direct {p1, p0, v0, v1}, Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;-><init>(Ljava/lang/Object;Landroid/os/Handler;I)V

    .line 114
    .line 115
    .line 116
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->settingsContentObserver:Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;

    .line 117
    .line 118
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const-string v0, "accelerometer_rotation"

    .line 125
    .line 126
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const/4 v1, 0x0

    .line 131
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->settingsContentObserver:Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;

    .line 132
    .line 133
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 53

    .line 1
    const v0, 0x7f0d0065

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    invoke-virtual {v2, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f0a0069

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    move-object v5, v2

    .line 21
    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    const v1, 0x7f0a00f3

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    move-object v6, v2

    .line 33
    check-cast v6, Landroid/widget/LinearLayout;

    .line 34
    .line 35
    if-eqz v6, :cond_0

    .line 36
    .line 37
    const v1, 0x7f0a00f4

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    const v1, 0x7f0a00f5

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroid/widget/LinearLayout;

    .line 56
    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    const v1, 0x7f0a00f6

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    move-object v7, v2

    .line 67
    check-cast v7, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 68
    .line 69
    if-eqz v7, :cond_0

    .line 70
    .line 71
    const v1, 0x7f0a00f7

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    move-object v8, v2

    .line 79
    check-cast v8, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 80
    .line 81
    if-eqz v8, :cond_0

    .line 82
    .line 83
    const v1, 0x7f0a00f8

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    move-object v9, v2

    .line 91
    check-cast v9, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 92
    .line 93
    if-eqz v9, :cond_0

    .line 94
    .line 95
    const v1, 0x7f0a00f9

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    move-object v10, v2

    .line 103
    check-cast v10, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 104
    .line 105
    if-eqz v10, :cond_0

    .line 106
    .line 107
    const v1, 0x7f0a00fa

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    move-object v11, v2

    .line 115
    check-cast v11, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 116
    .line 117
    if-eqz v11, :cond_0

    .line 118
    .line 119
    const v1, 0x7f0a00fb

    .line 120
    .line 121
    .line 122
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    move-object v12, v2

    .line 127
    check-cast v12, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 128
    .line 129
    if-eqz v12, :cond_0

    .line 130
    .line 131
    const v1, 0x7f0a00fc

    .line 132
    .line 133
    .line 134
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    move-object v13, v2

    .line 139
    check-cast v13, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 140
    .line 141
    if-eqz v13, :cond_0

    .line 142
    .line 143
    const v1, 0x7f0a00fd

    .line 144
    .line 145
    .line 146
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    move-object v14, v2

    .line 151
    check-cast v14, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 152
    .line 153
    if-eqz v14, :cond_0

    .line 154
    .line 155
    const v1, 0x7f0a0100

    .line 156
    .line 157
    .line 158
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    move-object v15, v2

    .line 163
    check-cast v15, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 164
    .line 165
    if-eqz v15, :cond_0

    .line 166
    .line 167
    const v1, 0x7f0a0102

    .line 168
    .line 169
    .line 170
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v16

    .line 174
    if-eqz v16, :cond_0

    .line 175
    .line 176
    const v1, 0x7f0a0103

    .line 177
    .line 178
    .line 179
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v17

    .line 183
    if-eqz v17, :cond_0

    .line 184
    .line 185
    const v1, 0x7f0a0104

    .line 186
    .line 187
    .line 188
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    move-object/from16 v18, v2

    .line 193
    .line 194
    check-cast v18, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 195
    .line 196
    if-eqz v18, :cond_0

    .line 197
    .line 198
    const v1, 0x7f0a0107

    .line 199
    .line 200
    .line 201
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    move-object/from16 v19, v2

    .line 206
    .line 207
    check-cast v19, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 208
    .line 209
    if-eqz v19, :cond_0

    .line 210
    .line 211
    const v1, 0x7f0a0108

    .line 212
    .line 213
    .line 214
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 219
    .line 220
    if-eqz v2, :cond_0

    .line 221
    .line 222
    const v1, 0x7f0a0109

    .line 223
    .line 224
    .line 225
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    move-object/from16 v20, v2

    .line 230
    .line 231
    check-cast v20, Landroid/widget/LinearLayout;

    .line 232
    .line 233
    if-eqz v20, :cond_0

    .line 234
    .line 235
    const v1, 0x7f0a010b

    .line 236
    .line 237
    .line 238
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    move-object/from16 v21, v2

    .line 243
    .line 244
    check-cast v21, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 245
    .line 246
    if-eqz v21, :cond_0

    .line 247
    .line 248
    const v1, 0x7f0a010c

    .line 249
    .line 250
    .line 251
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    move-object/from16 v22, v2

    .line 256
    .line 257
    check-cast v22, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 258
    .line 259
    if-eqz v22, :cond_0

    .line 260
    .line 261
    const v1, 0x7f0a010d

    .line 262
    .line 263
    .line 264
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    move-object/from16 v23, v2

    .line 269
    .line 270
    check-cast v23, Landroid/widget/ImageView;

    .line 271
    .line 272
    if-eqz v23, :cond_0

    .line 273
    .line 274
    const v1, 0x7f0a010e

    .line 275
    .line 276
    .line 277
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    move-object/from16 v24, v2

    .line 282
    .line 283
    check-cast v24, Landroid/widget/ImageView;

    .line 284
    .line 285
    if-eqz v24, :cond_0

    .line 286
    .line 287
    const v1, 0x7f0a010f

    .line 288
    .line 289
    .line 290
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    move-object/from16 v25, v2

    .line 295
    .line 296
    check-cast v25, Landroid/widget/FrameLayout;

    .line 297
    .line 298
    if-eqz v25, :cond_0

    .line 299
    .line 300
    const v1, 0x7f0a0110

    .line 301
    .line 302
    .line 303
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    move-object/from16 v26, v2

    .line 308
    .line 309
    check-cast v26, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 310
    .line 311
    if-eqz v26, :cond_0

    .line 312
    .line 313
    const v1, 0x7f0a0111

    .line 314
    .line 315
    .line 316
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    move-object/from16 v27, v2

    .line 321
    .line 322
    check-cast v27, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 323
    .line 324
    if-eqz v27, :cond_0

    .line 325
    .line 326
    const v1, 0x7f0a0112

    .line 327
    .line 328
    .line 329
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    move-object/from16 v28, v2

    .line 334
    .line 335
    check-cast v28, Landroid/widget/ImageView;

    .line 336
    .line 337
    if-eqz v28, :cond_0

    .line 338
    .line 339
    const v1, 0x7f0a0113

    .line 340
    .line 341
    .line 342
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    move-object/from16 v29, v2

    .line 347
    .line 348
    check-cast v29, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 349
    .line 350
    if-eqz v29, :cond_0

    .line 351
    .line 352
    const v1, 0x7f0a0114

    .line 353
    .line 354
    .line 355
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    move-object/from16 v30, v2

    .line 360
    .line 361
    check-cast v30, Landroid/widget/ImageView;

    .line 362
    .line 363
    if-eqz v30, :cond_0

    .line 364
    .line 365
    const v1, 0x7f0a0115

    .line 366
    .line 367
    .line 368
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    move-object/from16 v31, v2

    .line 373
    .line 374
    check-cast v31, Landroid/widget/FrameLayout;

    .line 375
    .line 376
    if-eqz v31, :cond_0

    .line 377
    .line 378
    const v1, 0x7f0a0116

    .line 379
    .line 380
    .line 381
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    move-object/from16 v32, v2

    .line 386
    .line 387
    check-cast v32, Landroid/widget/ImageView;

    .line 388
    .line 389
    if-eqz v32, :cond_0

    .line 390
    .line 391
    const v1, 0x7f0a0118

    .line 392
    .line 393
    .line 394
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    move-object/from16 v33, v2

    .line 399
    .line 400
    check-cast v33, Landroid/widget/LinearLayout;

    .line 401
    .line 402
    if-eqz v33, :cond_0

    .line 403
    .line 404
    const v1, 0x7f0a0119

    .line 405
    .line 406
    .line 407
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    move-object/from16 v34, v2

    .line 412
    .line 413
    check-cast v34, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 414
    .line 415
    if-eqz v34, :cond_0

    .line 416
    .line 417
    const v1, 0x7f0a011a

    .line 418
    .line 419
    .line 420
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    move-object/from16 v35, v2

    .line 425
    .line 426
    check-cast v35, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 427
    .line 428
    if-eqz v35, :cond_0

    .line 429
    .line 430
    const v1, 0x7f0a011b

    .line 431
    .line 432
    .line 433
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    move-object/from16 v36, v2

    .line 438
    .line 439
    check-cast v36, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 440
    .line 441
    if-eqz v36, :cond_0

    .line 442
    .line 443
    const v1, 0x7f0a011c

    .line 444
    .line 445
    .line 446
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    move-object/from16 v37, v2

    .line 451
    .line 452
    check-cast v37, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 453
    .line 454
    if-eqz v37, :cond_0

    .line 455
    .line 456
    const v1, 0x7f0a011d

    .line 457
    .line 458
    .line 459
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 464
    .line 465
    if-eqz v2, :cond_0

    .line 466
    .line 467
    const v1, 0x7f0a015b

    .line 468
    .line 469
    .line 470
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    if-eqz v2, :cond_0

    .line 475
    .line 476
    invoke-static {v2}, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ErrorPanelBinding;

    .line 477
    .line 478
    .line 479
    const v1, 0x7f0a0218

    .line 480
    .line 481
    .line 482
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    check-cast v2, Landroid/widget/ProgressBar;

    .line 487
    .line 488
    if-eqz v2, :cond_0

    .line 489
    .line 490
    const v1, 0x7f0a02c1

    .line 491
    .line 492
    .line 493
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    move-object/from16 v38, v2

    .line 498
    .line 499
    check-cast v38, Landroid/widget/LinearLayout;

    .line 500
    .line 501
    if-eqz v38, :cond_0

    .line 502
    .line 503
    const v1, 0x7f0a02c2

    .line 504
    .line 505
    .line 506
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    move-object/from16 v39, v2

    .line 511
    .line 512
    check-cast v39, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 513
    .line 514
    if-eqz v39, :cond_0

    .line 515
    .line 516
    const v1, 0x7f0a02c3

    .line 517
    .line 518
    .line 519
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    move-object/from16 v40, v2

    .line 524
    .line 525
    check-cast v40, Landroid/widget/ImageButton;

    .line 526
    .line 527
    if-eqz v40, :cond_0

    .line 528
    .line 529
    const v1, 0x7f0a02c4

    .line 530
    .line 531
    .line 532
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 533
    .line 534
    .line 535
    move-result-object v2

    .line 536
    move-object/from16 v41, v2

    .line 537
    .line 538
    check-cast v41, Landroid/widget/RelativeLayout;

    .line 539
    .line 540
    if-eqz v41, :cond_0

    .line 541
    .line 542
    const v1, 0x7f0a02c5

    .line 543
    .line 544
    .line 545
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    move-object/from16 v42, v2

    .line 550
    .line 551
    check-cast v42, Landroid/widget/LinearLayout;

    .line 552
    .line 553
    if-eqz v42, :cond_0

    .line 554
    .line 555
    const v1, 0x7f0a02c6

    .line 556
    .line 557
    .line 558
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    move-object/from16 v43, v2

    .line 563
    .line 564
    check-cast v43, Landroid/widget/ImageButton;

    .line 565
    .line 566
    if-eqz v43, :cond_0

    .line 567
    .line 568
    const v1, 0x7f0a02c7

    .line 569
    .line 570
    .line 571
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    move-object/from16 v44, v2

    .line 576
    .line 577
    check-cast v44, Landroid/widget/ImageButton;

    .line 578
    .line 579
    if-eqz v44, :cond_0

    .line 580
    .line 581
    const v1, 0x7f0a02c8

    .line 582
    .line 583
    .line 584
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    move-object/from16 v45, v2

    .line 589
    .line 590
    check-cast v45, Landroid/widget/ImageButton;

    .line 591
    .line 592
    if-eqz v45, :cond_0

    .line 593
    .line 594
    const v1, 0x7f0a02c9

    .line 595
    .line 596
    .line 597
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    move-object/from16 v46, v2

    .line 602
    .line 603
    check-cast v46, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 604
    .line 605
    if-eqz v46, :cond_0

    .line 606
    .line 607
    const v1, 0x7f0a0307

    .line 608
    .line 609
    .line 610
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    move-object/from16 v47, v2

    .line 615
    .line 616
    check-cast v47, Landroid/widget/FrameLayout;

    .line 617
    .line 618
    if-eqz v47, :cond_0

    .line 619
    .line 620
    const v1, 0x7f0a0315

    .line 621
    .line 622
    .line 623
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    move-object/from16 v48, v2

    .line 628
    .line 629
    check-cast v48, Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 630
    .line 631
    if-eqz v48, :cond_0

    .line 632
    .line 633
    const v1, 0x7f0a0330

    .line 634
    .line 635
    .line 636
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    move-object/from16 v49, v1

    .line 641
    .line 642
    check-cast v49, Landroidx/fragment/app/FragmentContainerView;

    .line 643
    .line 644
    const v1, 0x7f0a03c3

    .line 645
    .line 646
    .line 647
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 648
    .line 649
    .line 650
    move-result-object v2

    .line 651
    move-object/from16 v50, v2

    .line 652
    .line 653
    check-cast v50, Lcom/google/android/material/tabs/TabLayout;

    .line 654
    .line 655
    if-eqz v50, :cond_0

    .line 656
    .line 657
    const v1, 0x7f0a0407

    .line 658
    .line 659
    .line 660
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    move-object/from16 v51, v2

    .line 665
    .line 666
    check-cast v51, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 667
    .line 668
    if-eqz v51, :cond_0

    .line 669
    .line 670
    move-object v4, v0

    .line 671
    check-cast v4, Landroid/widget/FrameLayout;

    .line 672
    .line 673
    const v1, 0x7f0a0428

    .line 674
    .line 675
    .line 676
    invoke-static {v1, v0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    move-object/from16 v52, v2

    .line 681
    .line 682
    check-cast v52, Landroidx/viewpager/widget/ViewPager;

    .line 683
    .line 684
    if-eqz v52, :cond_0

    .line 685
    .line 686
    new-instance v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 687
    .line 688
    invoke-direct/range {v3 .. v52}, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;-><init>(Landroid/widget/FrameLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/LinearLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/view/View;Landroid/view/View;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Lcom/google/android/material/imageview/ShapeableImageView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/LinearLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ImageButton;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/FrameLayout;Lorg/schabi/newpipe/views/AnimatedProgressBar;Landroidx/fragment/app/FragmentContainerView;Lcom/google/android/material/tabs/TabLayout;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/viewpager/widget/ViewPager;)V

    .line 689
    .line 690
    .line 691
    move-object/from16 v0, p0

    .line 692
    .line 693
    iput-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 694
    .line 695
    return-object v4

    .line 696
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    const-string v1, "Missing required view with ID: "

    .line 705
    .line 706
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    const/4 v0, 0x0

    .line 714
    return-object v0
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->stopService()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iput-object v2, v1, Lorg/schabi/newpipe/player/helper/PlayerHolder;->listener:Lorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;

    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 36
    .line 37
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->preferenceChangeListener:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda4;

    .line 42
    .line 43
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 47
    .line 48
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->broadcastReceiver:Lorg/schabi/newpipe/MainActivity$3;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->settingsContentObserver:Lorg/schabi/newpipe/player/ui/MainPlayerUi$1;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->positionSubscriber:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentWorker:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 79
    .line 80
    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 81
    .line 82
    .line 83
    iput-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->positionSubscriber:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 84
    .line 85
    iput-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentWorker:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 86
    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 88
    .line 89
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetCallback:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$4;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    iput-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 105
    .line 106
    iput-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 107
    .line 108
    new-instance p0, Ljava/util/LinkedList;

    .line 109
    .line 110
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 111
    .line 112
    .line 113
    sput-object p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 114
    .line 115
    :cond_3
    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 6
    .line 7
    return-void
.end method

.method public final onFullscreenStateChanged(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setupBrightness()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 5
    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerService:Lorg/schabi/newpipe/player/PlayerService;

    .line 9
    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 13
    .line 14
    const-class v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_5

    .line 25
    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 27
    .line 28
    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;

    .line 33
    .line 34
    const/16 v2, 0x15

    .line 35
    .line 36
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    const/16 v2, 0x16

    .line 46
    .line 47
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;

    .line 55
    .line 56
    const/16 v2, 0x19

    .line 57
    .line 58
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_0
    if-eqz p1, :cond_1

    .line 73
    .line 74
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->hideSystemUiIfNeeded()V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 78
    .line 79
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayPlayPauseButton:Landroid/widget/ImageButton;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showSystemUi()V

    .line 86
    .line 87
    .line 88
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 89
    .line 90
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->relatedItemsLayout:Landroidx/fragment/app/FragmentContainerView;

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    iget-boolean v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showRelatedItems:Z

    .line 95
    .line 96
    const/16 v2, 0x8

    .line 97
    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    if-eqz p1, :cond_2

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    const/4 v2, 0x0

    .line 104
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 112
    .line 113
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 114
    .line 115
    const/4 v0, 0x1

    .line 116
    invoke-virtual {p1, v0, v0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabLayoutVisibility()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tryAddVideoPlayerView()V

    .line 123
    .line 124
    .line 125
    :cond_5
    :goto_3
    return-void
.end method

.method public final onMetadataUpdate(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/schabi/newpipe/fragments/detail/StackItem;

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, p2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->equalStreams(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_0
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/fragments/detail/StackItem;->setTitle(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/fragments/detail/StackItem;->setUrl(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->equalStreams(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p0, v0, v1, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateOverlayData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 80
    .line 81
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    :goto_1
    return-void

    .line 92
    :cond_4
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 93
    .line 94
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {p0, v0, v1, v2, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setInitialData(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 107
    .line 108
    .line 109
    const/4 p2, 0x0

    .line 110
    iput-boolean p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    .line 111
    .line 112
    new-instance p2, Landroid/os/Handler;

    .line 113
    .line 114
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda1;

    .line 122
    .line 123
    const/4 v1, 0x1

    .line 124
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Z)V

    .line 125
    .line 126
    .line 127
    const-wide/16 p0, 0xc8

    .line 128
    .line 129
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final onMoreOptionsLongClicked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 12
    .line 13
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 14
    .line 15
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 16
    .line 17
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->playerPlaceholder:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    neg-int v1, v1

    .line 24
    const/4 v2, 0x0

    .line 25
    filled-new-array {v2, v1}, [I

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 34
    .line 35
    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Landroidx/core/view/ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    invoke-direct {v2, p0, v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 48
    .line 49
    .line 50
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    .line 51
    .line 52
    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 56
    .line 57
    .line 58
    const-wide/16 v2, 0x1f4

    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentWorker:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;->dispose()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->restoreDefaultBrightness()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const v1, 0x7f1304cb

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 34
    .line 35
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 36
    .line 37
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-virtual {v2, p0}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->getItemTitle(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onPlaybackUpdate(IIZLcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const v1, 0x7f080132

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const v1, 0x7f08013b

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 21
    .line 22
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayPlayPauseButton:Landroid/widget/ImageButton;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x7c

    .line 28
    .line 29
    move/from16 v2, p1

    .line 30
    .line 31
    if-eq v2, v1, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object v1, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 35
    .line 36
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/high16 v2, 0x3f800000    # 1.0f

    .line 43
    .line 44
    cmpl-float v1, v1, v2

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v1, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 49
    .line 50
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    iget-object v1, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 61
    .line 62
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 63
    .line 64
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    iget-object v1, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 81
    .line 82
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 83
    .line 84
    const/4 v9, 0x0

    .line 85
    const/16 v10, 0x1c

    .line 86
    .line 87
    const/4 v12, 0x1

    .line 88
    const-wide/16 v13, 0x64

    .line 89
    .line 90
    const/4 v6, 0x0

    .line 91
    const-wide/16 v7, 0x0

    .line 92
    .line 93
    move v3, v12

    .line 94
    move-wide v4, v13

    .line 95
    invoke-static/range {v2 .. v10}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 96
    .line 97
    .line 98
    iget-object v0, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 99
    .line 100
    iget-object v11, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailPositionView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 101
    .line 102
    const/16 v18, 0x0

    .line 103
    .line 104
    const/16 v19, 0x1c

    .line 105
    .line 106
    const/4 v15, 0x0

    .line 107
    const-wide/16 v16, 0x0

    .line 108
    .line 109
    invoke-static/range {v11 .. v19}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 110
    .line 111
    .line 112
    :cond_2
    :goto_1
    return-void
.end method

.method public final onPlayerConnected(Lorg/schabi/newpipe/player/Player;Z)V
    .locals 4

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->hideSystemUiIfNeeded()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 7
    .line 8
    iget-object p1, p1, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 9
    .line 10
    const-class v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 17
    .line 18
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lorg/schabi/newpipe/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 39
    .line 40
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 47
    .line 48
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 49
    .line 50
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 51
    .line 52
    if-ne v1, v3, :cond_2

    .line 53
    .line 54
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 55
    .line 56
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 57
    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    :cond_2
    iput-boolean v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    .line 61
    .line 62
    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 63
    .line 64
    iget-object v1, v1, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 71
    .line 72
    const/16 v3, 0x14

    .line 73
    .line 74
    invoke-direct {v1, v3}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 81
    .line 82
    invoke-static {v0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->globalScreenOrientationLocked(Landroid/content/Context;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 89
    .line 90
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 97
    .line 98
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->play()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;

    .line 103
    .line 104
    const/16 v1, 0x17

    .line 105
    .line 106
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 128
    .line 129
    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_5

    .line 134
    .line 135
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 136
    .line 137
    const/16 v1, 0x12

    .line 138
    .line 139
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 143
    .line 144
    .line 145
    :cond_5
    :goto_0
    if-nez p2, :cond_6

    .line 146
    .line 147
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 148
    .line 149
    if-eqz p2, :cond_7

    .line 150
    .line 151
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isAutoplayEnabled()Z

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-eqz p2, :cond_7

    .line 156
    .line 157
    invoke-virtual {p1}, Lj$/util/Optional;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_7

    .line 162
    .line 163
    :cond_6
    iput-boolean v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    .line 164
    .line 165
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openVideoPlayerAutoFullscreen()V

    .line 166
    .line 167
    .line 168
    :cond_7
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateOverlayPlayQueueButtonVisibility()V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method public final onProgressUpdate(III)V
    .locals 2

    .line 1
    iget-object p3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    invoke-virtual {p3}, Lorg/schabi/newpipe/player/Player;->isPlaying()Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-eqz p3, :cond_1

    .line 8
    .line 9
    iget-object p3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 15
    .line 16
    iget-object p3, p3, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 17
    .line 18
    invoke-virtual {p3}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-virtual {p3}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    int-to-long v0, p1

    .line 35
    int-to-long p1, p2

    .line 36
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updatePlaybackProgress(JJ)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public final onQueueUpdate(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->broadcastReceiver:Lio/reactivex/rxjava3/core/Flowable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lio/reactivex/rxjava3/internal/functions/Functions;->ON_ERROR_MISSING:Lokio/ByteString$Companion;

    .line 16
    .line 17
    new-instance v2, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;

    .line 18
    .line 19
    invoke-direct {v2, v1, p0}, Lio/reactivex/rxjava3/internal/subscribers/LambdaSubscriber;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Flowable;->subscribe(Lio/reactivex/rxjava3/core/FlowableSubscriber;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    sget-object p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lorg/schabi/newpipe/fragments/detail/StackItem;

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->equalStreams(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 52
    .line 53
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/StackItem;

    .line 54
    .line 55
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-direct {v1, v2, v3, p0, p1}, Lorg/schabi/newpipe/fragments/detail/StackItem;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    sget-object p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lorg/schabi/newpipe/fragments/detail/StackItem;

    .line 91
    .line 92
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->equalStreams(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_2

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    const/4 v0, 0x0

    .line 104
    :goto_0
    if-eqz v0, :cond_4

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/fragments/detail/StackItem;->setPlayQueue(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    new-instance v1, Landroid/content/Intent;

    .line 7
    .line 8
    const-string v2, "org.schabi.newpipe.VideoDetailFragment.ACTION_VIDEO_FRAGMENT_RESUMED"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateOverlayPlayQueueButtonVisibility()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setupBrightness()V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabSettingsChanged:Z

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabSettingsChanged:Z

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->initTabs()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabs(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->wasLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->startLoading(Z)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void
.end method

.method public final onScreenRotationButtonClicked()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 10
    .line 11
    invoke-static {v1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 18
    .line 19
    invoke-static {v1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 26
    .line 27
    invoke-static {v1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->globalScreenOrientationLocked(Landroid/content/Context;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x6

    .line 41
    :goto_0
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    :goto_1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 48
    .line 49
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 50
    .line 51
    const-class v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 58
    .line 59
    const/16 v1, 0x12

    .line 60
    .line 61
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final onServiceStopped()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const v1, 0x7f08013b

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayPlayPauseButton:Landroid/widget/ImageButton;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 22
    .line 23
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 28
    .line 29
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0, v0, v1, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateOverlayData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateOverlayPlayQueueButtonVisibility()V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 13
    .line 14
    new-instance v0, Landroid/content/Intent;

    .line 15
    .line 16
    const-string v1, "org.schabi.newpipe.VideoDetailFragment.ACTION_VIDEO_FRAGMENT_STOPPED"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onViewCreated()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tryAddVideoPlayerView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final openBackgroundPlayer(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    const v2, 0x7f130521

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->toggleFullscreenIfInFullscreenMode()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 31
    .line 32
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 33
    .line 34
    .line 35
    :cond_0
    const/4 v1, 0x1

    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lorg/schabi/newpipe/util/ListHelper;->getUrlAndNonTorrentStreams(Ljava/util/List;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 52
    .line 53
    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/ListHelper;->getFilteredAudioStreams(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 64
    .line 65
    const p1, 0x7f130361

    .line 66
    .line 67
    .line 68
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iget-object v3, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 81
    .line 82
    if-ne v0, v1, :cond_3

    .line 83
    .line 84
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 85
    .line 86
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 91
    .line 92
    invoke-virtual {p0, v3, v0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->startOnExternalPlayer(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/Stream;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    invoke-static {v3, p1}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultAudioFormat(Landroid/content/Context;Ljava/util/List;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    new-instance v3, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda59;

    .line 105
    .line 106
    invoke-direct {v3, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda59;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    new-instance v3, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda2;

    .line 114
    .line 115
    const/4 v4, 0x2

    .line 116
    invoke-direct {v3, v4}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda2;-><init>(I)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, [Ljava/lang/CharSequence;

    .line 124
    .line 125
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 126
    .line 127
    iget-object v4, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 128
    .line 129
    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    .line 131
    .line 132
    const v4, 0x7f130450

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 136
    .line 137
    .line 138
    new-instance v4, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda54;

    .line 139
    .line 140
    invoke-direct {v4, p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda54;-><init>(Ljava/lang/Object;I)V

    .line 141
    .line 142
    .line 143
    const v5, 0x7f13039a

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v5, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 147
    .line 148
    .line 149
    iget-object v4, v3, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 150
    .line 151
    iput-object v2, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 152
    .line 153
    const/4 v2, 0x0

    .line 154
    iput-object v2, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 155
    .line 156
    iput v0, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 157
    .line 158
    iput-boolean v1, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 159
    .line 160
    const v0, 0x7f130076

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;

    .line 168
    .line 169
    const/4 v2, 0x4

    .line 170
    invoke-direct {v1, p0, p1, v2}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 171
    .line 172
    .line 173
    const p0, 0x7f130397

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_4
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-nez v0, :cond_5

    .line 189
    .line 190
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 191
    .line 192
    invoke-virtual {v0, v2, p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->startService(ZLorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;)V

    .line 193
    .line 194
    .line 195
    :cond_5
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setupPlayQueueForIntent(Z)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-eqz p1, :cond_6

    .line 200
    .line 201
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 202
    .line 203
    sget-object p1, Lorg/schabi/newpipe/player/PlayerType;->AUDIO:Lorg/schabi/newpipe/player/PlayerType;

    .line 204
    .line 205
    invoke-static {p0, v0, p1}, Landroidx/sqlite/SQLite;->enqueueOnPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerType;)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_6
    new-instance p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda44;

    .line 210
    .line 211
    invoke-direct {p1, p0, v0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda44;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/player/playqueue/PlayQueue;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->replaceQueueIfUserConfirms(Ljava/lang/Runnable;)V

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method public final openChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 6
    .line 7
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v0, v1, p1, p2}, Landroidx/sqlite/SQLite;->openChannelFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const-string p2, "Opening channel fragment"

    .line 17
    .line 18
    invoke-static {p0, p2, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final openDownloadDialog()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    new-instance v0, Lorg/schabi/newpipe/download/DownloadDialog;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 9
    .line 10
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/download/DownloadDialog;-><init>(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "downloadDialog"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 29
    .line 30
    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 31
    .line 32
    const-string v3, "Showing download dialog"

    .line 33
    .line 34
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 35
    .line 36
    sget-object v4, Lorg/schabi/newpipe/error/UserAction;->DOWNLOAD_OPEN_DIALOG:Lorg/schabi/newpipe/error/UserAction;

    .line 37
    .line 38
    invoke-direct {v2, v0, v4, v3, p0}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2}, Lorg/schabi/newpipe/error/ErrorUtil;->showSnackbar(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final openPopupPlayer(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lus/shandian/giga/util/Utility;->isPopupEnabledElseAsk(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playerHolder:Lorg/schabi/newpipe/player/helper/PlayerHolder;

    .line 18
    .line 19
    invoke-virtual {v0, v1, p0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->startService(ZLorg/schabi/newpipe/player/event/PlayerServiceExtendedEventListener;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->toggleFullscreenIfInFullscreenMode()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setupPlayQueueForIntent(Z)Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 38
    .line 39
    sget-object p1, Lorg/schabi/newpipe/player/PlayerType;->POPUP:Lorg/schabi/newpipe/player/PlayerType;

    .line 40
    .line 41
    invoke-static {p0, v0, p1}, Landroidx/sqlite/SQLite;->enqueueOnPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerType;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    new-instance p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda44;

    .line 46
    .line 47
    invoke-direct {p1, p0, v0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda44;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/player/playqueue/PlayQueue;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->replaceQueueIfUserConfirms(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final openVideoPlayer(Z)V
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lorg/schabi/newpipe/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->globalScreenOrientationLocked(Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateBottomSheetState(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->onScreenRotationButtonClicked()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 31
    .line 32
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const v1, 0x7f130523

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/4 v1, 0x1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 52
    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 57
    .line 58
    iget-object v3, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 59
    .line 60
    invoke-direct {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    const v3, 0x7f130452

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 67
    .line 68
    .line 69
    new-instance v3, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda54;

    .line 70
    .line 71
    invoke-direct {v3, p0, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda54;-><init>(Ljava/lang/Object;I)V

    .line 72
    .line 73
    .line 74
    const v4, 0x7f13039a

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    iget-object v3, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 81
    .line 82
    iget-object v4, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 83
    .line 84
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v4}, Lorg/schabi/newpipe/util/ListHelper;->getUrlAndNonTorrentStreams(Ljava/util/List;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    iget-object v5, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 93
    .line 94
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoOnlyStreams()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-static {v5}, Lorg/schabi/newpipe/util/ListHelper;->getUrlAndNonTorrentStreams(Ljava/util/List;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-static {v3, v4, v5, v2}, Lorg/schabi/newpipe/util/ListHelper;->getSortedStreamVideosList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    const v4, 0x7f130397

    .line 111
    .line 112
    .line 113
    const/4 v5, 0x0

    .line 114
    if-eqz v3, :cond_2

    .line 115
    .line 116
    const p0, 0x7f130371

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    iget-object v3, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 127
    .line 128
    const v6, 0x7f1300e2

    .line 129
    .line 130
    .line 131
    const v7, 0x7f1300e4

    .line 132
    .line 133
    .line 134
    invoke-static {v3, v6, v7}, Lorg/schabi/newpipe/util/ListHelper;->computeDefaultResolution(Landroid/content/Context;II)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-static {v3, v6, v2}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    new-instance v7, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;

    .line 147
    .line 148
    const/16 v8, 0x18

    .line 149
    .line 150
    invoke-direct {v7, v8}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda1;-><init>(I)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v6, v7}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    new-instance v7, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda2;

    .line 158
    .line 159
    invoke-direct {v7, v1}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticLambda2;-><init>(I)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v6, v7}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    check-cast v6, [Ljava/lang/CharSequence;

    .line 167
    .line 168
    iget-object v7, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 169
    .line 170
    iput-object v6, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 171
    .line 172
    iput-object v5, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 173
    .line 174
    iput v3, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 175
    .line 176
    iput-boolean v1, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 177
    .line 178
    const v1, 0x7f130076

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v1, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 182
    .line 183
    .line 184
    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;

    .line 185
    .line 186
    invoke-direct {v1, p0, v2, v0}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v4, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 190
    .line 191
    .line 192
    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_3
    new-instance p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda0;

    .line 197
    .line 198
    invoke-direct {p1, p0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->replaceQueueIfUserConfirms(Ljava/lang/Runnable;)V

    .line 202
    .line 203
    .line 204
    return-void
.end method

.method public final openVideoPlayerAutoFullscreen()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->forceFullscreen:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const v3, 0x7f1304c2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 31
    :goto_1
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openVideoPlayer(Z)V

    .line 32
    .line 33
    .line 34
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->forceFullscreen:Z

    .line 35
    .line 36
    return-void
.end method

.method public final replaceQueueIfUserConfirms(Ljava/lang/Runnable;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 9
    .line 10
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    iget-object v2, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 15
    .line 16
    invoke-static {v2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const v4, 0x7f1300a3

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 41
    .line 42
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->isStopped()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->equalStreams(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 59
    .line 60
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    const p0, 0x7f1300a2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 69
    .line 70
    .line 71
    const p0, 0x7f130076

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda54;

    .line 79
    .line 80
    const/4 v1, 0x2

    .line 81
    invoke-direct {v0, p1, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda54;-><init>(Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    const p1, 0x7f130397

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final restoreDefaultBrightness()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 12
    .line 13
    const/high16 v2, -0x40800000    # -1.0f

    .line 14
    .line 15
    cmpl-float v1, v1, v2

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 21
    .line 22
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final restoreDefaultOrientation()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->toggleFullscreenIfInFullscreenMode()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {v0}, Lorg/schabi/newpipe/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 29
    .line 30
    const/4 v0, -0x1

    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final runWorker(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    .line 8
    .line 9
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1, v2, p1}, Lorg/schabi/newpipe/util/ExtractorHelper;->getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v1, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda8;

    .line 26
    .line 27
    invoke-direct {v2, p0, v0, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Landroid/content/SharedPreferences;Z)V

    .line 28
    .line 29
    .line 30
    new-instance p2, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-direct {p2, p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 37
    .line 38
    invoke-direct {v0, v2, p2}, Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)V

    .line 39
    .line 40
    .line 41
    :try_start_0
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;

    .line 42
    .line 43
    invoke-direct {p2, v0, v1}, Lio/reactivex/rxjava3/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;-><init>(Lio/reactivex/rxjava3/core/SingleObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentWorker:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    const-string/jumbo p1, "subscribeActual failed"

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    throw p0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    throw p0
.end method

.method public final selectAndLoadVideo(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 37
    .line 38
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->loadController:Lorg/schabi/newpipe/player/helper/LoadController;

    .line 39
    .line 40
    iput-boolean v1, v0, Lorg/schabi/newpipe/player/helper/LoadController;->preloadingEnabled:Z

    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setInitialData(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 43
    .line 44
    .line 45
    invoke-super {p0, v1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->startLoading(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->initTabs()V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 53
    .line 54
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentWorker:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, v1, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->runWorker(ZZ)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final setAutoPlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->autoPlayEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setHeightThumbnail()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 10
    .line 11
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 12
    .line 13
    if-le v1, v2, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->preDrawListener:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$2;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isFullscreen()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 38
    .line 39
    invoke-static {v1}, Lorg/schabi/newpipe/util/DeviceUtils;->isInMultiWindow(Landroidx/appcompat/app/AppCompatActivity;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0, v1, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setHeightThumbnail(ILandroid/util/DisplayMetrics;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    if-eqz v1, :cond_4

    .line 83
    .line 84
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 85
    .line 86
    int-to-float v1, v1

    .line 87
    const v2, 0x3fe38e39

    .line 88
    .line 89
    .line 90
    :goto_2
    div-float/2addr v1, v2

    .line 91
    goto :goto_3

    .line 92
    :cond_4
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 93
    .line 94
    int-to-float v1, v1

    .line 95
    const/high16 v2, 0x40000000    # 2.0f

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :goto_3
    float-to-int v1, v1

    .line 99
    invoke-virtual {p0, v1, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setHeightThumbnail(ILandroid/util/DisplayMetrics;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final setHeightThumbnail(ILandroid/util/DisplayMetrics;)V
    .locals 3

    .line 103
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 105
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p2, p2

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 107
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 108
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 109
    const-class v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda20;-><init>(II)V

    invoke-virtual {p0, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final setInitialData(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->title:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 8
    .line 9
    return-void
.end method

.method public final setOverlayElementsClickable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayThumbnail:Landroid/widget/ImageButton;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 9
    .line 10
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayThumbnail:Landroid/widget/ImageButton;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 16
    .line 17
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayMetadataLayout:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 23
    .line 24
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayMetadataLayout:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 30
    .line 31
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayButtonsLayout:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 37
    .line 38
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayPlayQueueButton:Landroid/widget/ImageButton;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 44
    .line 45
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayPlayPauseButton:Landroid/widget/ImageButton;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 51
    .line 52
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayCloseButton:Landroid/widget/ImageButton;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final setupBrightness()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isFullscreen()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_5

    .line 20
    .line 21
    iget v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetState:I

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 29
    .line 30
    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const v3, 0x7f130431

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const v4, 0x7f1300e5

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const v2, 0x7f13006e

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 66
    .line 67
    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const v4, 0x7f13023f

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const v5, 0x7f1300db

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 101
    .line 102
    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const v3, 0x7f130439

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    const-wide/16 v4, 0x0

    .line 114
    .line 115
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 116
    .line 117
    .line 118
    move-result-wide v3

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v5

    .line 123
    sub-long/2addr v5, v3

    .line 124
    const-wide/32 v3, 0xdbba00

    .line 125
    .line 126
    .line 127
    cmp-long v3, v5, v3

    .line 128
    .line 129
    const/high16 v4, -0x40800000    # -1.0f

    .line 130
    .line 131
    if-lez v3, :cond_3

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_3
    const v3, 0x7f130438

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 146
    .line 147
    cmpl-float v1, v4, v1

    .line 148
    .line 149
    if-nez v1, :cond_4

    .line 150
    .line 151
    :goto_1
    return-void

    .line 152
    :cond_4
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 153
    .line 154
    iget-object p0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->restoreDefaultBrightness()V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public final setupPlayQueueForIntent(Z)Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 8
    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return-object p1

    .line 23
    :cond_2
    :goto_0
    new-instance p1, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    .line 24
    .line 25
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 28
    .line 29
    .line 30
    return-object p1
.end method

.method public final showLoading()V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-super {v1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->showLoading()V

    .line 4
    .line 5
    .line 6
    iget v0, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->serviceId:I

    .line 7
    .line 8
    iget-object v2, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->url:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Lorg/schabi/newpipe/util/ExtractorHelper;->checkServiceId(I)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v3, v0, v4, v2}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda0;-><init>(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    invoke-direct {v2, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v3}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lio/reactivex/rxjava3/core/MaybeSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    .line 31
    :try_start_1
    check-cast v0, Lio/reactivex/rxjava3/core/Maybe;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :catch_0
    move-exception v0

    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    :catchall_1
    move-exception v0

    .line 44
    invoke-static {v0}, Lnet/newpipe/app/AppKt;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    sget-object v3, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    .line 48
    .line 49
    invoke-interface {v2, v3}, Lio/reactivex/rxjava3/core/MaybeObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v2, v0}, Lio/reactivex/rxjava3/core/MaybeObserver;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {v2}, Lio/reactivex/rxjava3/internal/observers/BlockingMultiObserver;->blockingGet()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v2, 0x4

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    iget-object v0, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 64
    .line 65
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailContentRootHiding:Landroid/widget/LinearLayout;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    :goto_1
    iget-object v0, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 71
    .line 72
    iget-object v6, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailPlayButton:Landroid/widget/ImageView;

    .line 73
    .line 74
    const/4 v13, 0x0

    .line 75
    const/16 v14, 0x1c

    .line 76
    .line 77
    const/16 v16, 0x0

    .line 78
    .line 79
    const-wide/16 v8, 0x32

    .line 80
    .line 81
    const/4 v10, 0x0

    .line 82
    const-wide/16 v11, 0x0

    .line 83
    .line 84
    move/from16 v7, v16

    .line 85
    .line 86
    invoke-static/range {v6 .. v14}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 87
    .line 88
    .line 89
    iget-object v0, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 90
    .line 91
    iget-object v15, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailDurationView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 92
    .line 93
    const/16 v22, 0x0

    .line 94
    .line 95
    const/16 v23, 0x1c

    .line 96
    .line 97
    const-wide/16 v17, 0x64

    .line 98
    .line 99
    const/16 v19, 0x0

    .line 100
    .line 101
    const-wide/16 v20, 0x0

    .line 102
    .line 103
    invoke-static/range {v15 .. v23}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 104
    .line 105
    .line 106
    move/from16 v0, v16

    .line 107
    .line 108
    iget-object v3, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 109
    .line 110
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailPositionView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 111
    .line 112
    const/16 v13, 0x8

    .line 113
    .line 114
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    iget-object v3, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 118
    .line 119
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 120
    .line 121
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    iget-object v3, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 125
    .line 126
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 127
    .line 128
    iget-object v4, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->title:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    iget-object v3, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 134
    .line 135
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 136
    .line 137
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 138
    .line 139
    .line 140
    iget-object v3, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 141
    .line 142
    iget-object v4, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 143
    .line 144
    const/4 v11, 0x0

    .line 145
    const/16 v12, 0x1c

    .line 146
    .line 147
    const-wide/16 v6, 0x0

    .line 148
    .line 149
    const/4 v8, 0x0

    .line 150
    const-wide/16 v9, 0x0

    .line 151
    .line 152
    invoke-static/range {v4 .. v12}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 153
    .line 154
    .line 155
    iget-object v3, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 156
    .line 157
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailToggleSecondaryControlsView:Landroid/widget/ImageView;

    .line 158
    .line 159
    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    iget-object v3, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 163
    .line 164
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailTitleRootLayout:Landroid/widget/FrameLayout;

    .line 165
    .line 166
    invoke-virtual {v3, v0}, Landroid/view/View;->setClickable(Z)V

    .line 167
    .line 168
    .line 169
    iget-object v0, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 170
    .line 171
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSecondaryControlPanel:Landroid/widget/LinearLayout;

    .line 172
    .line 173
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    iget-object v0, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 177
    .line 178
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->relatedItemsLayout:Landroidx/fragment/app/FragmentContainerView;

    .line 179
    .line 180
    if-eqz v0, :cond_3

    .line 181
    .line 182
    iget-boolean v3, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showRelatedItems:Z

    .line 183
    .line 184
    if-eqz v3, :cond_2

    .line 185
    .line 186
    invoke-virtual {v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isFullscreen()Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_1

    .line 191
    .line 192
    move v2, v13

    .line 193
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_2
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    :cond_3
    :goto_2
    iget-object v0, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 201
    .line 202
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailImageView:Landroid/widget/ImageView;

    .line 203
    .line 204
    invoke-static {v0}, Lokio/Okio;->getRequestManager(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcoil3/request/ViewTargetRequestManager;->dispose()V

    .line 209
    .line 210
    .line 211
    iget-object v0, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 212
    .line 213
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 214
    .line 215
    invoke-static {v0}, Lokio/Okio;->getRequestManager(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcoil3/request/ViewTargetRequestManager;->dispose()V

    .line 220
    .line 221
    .line 222
    iget-object v0, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 223
    .line 224
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayThumbnail:Landroid/widget/ImageButton;

    .line 225
    .line 226
    invoke-static {v0}, Lokio/Okio;->getRequestManager(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcoil3/request/ViewTargetRequestManager;->dispose()V

    .line 231
    .line 232
    .line 233
    iget-object v0, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 234
    .line 235
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailUploaderThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 236
    .line 237
    invoke-static {v0}, Lokio/Okio;->getRequestManager(Landroid/view/View;)Lcoil3/request/ViewTargetRequestManager;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcoil3/request/ViewTargetRequestManager;->dispose()V

    .line 242
    .line 243
    .line 244
    iget-object v0, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 245
    .line 246
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailThumbnailImageView:Landroid/widget/ImageView;

    .line 247
    .line 248
    const/4 v2, 0x0

    .line 249
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 250
    .line 251
    .line 252
    iget-object v0, v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 253
    .line 254
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailSubChannelThumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 255
    .line 256
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :goto_3
    const-string/jumbo v1, "subscribeActual failed"

    .line 261
    .line 262
    .line 263
    invoke-static {v0, v1, v0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    throw v0

    .line 268
    :goto_4
    throw v0
.end method

.method public final showSystemUi()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v2, 0x1c

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-lt v1, v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/16 v1, 0x400

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const v1, 0x1010433

    .line 59
    .line 60
    .line 61
    invoke-static {p0, v1}, Lokio/Options$Companion;->resolveColorFromAttr(Landroid/content/Context;I)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final startLoading(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->startLoading(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->initTabs()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 9
    .line 10
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentWorker:Lio/reactivex/rxjava3/internal/observers/ConsumerSingleObserver;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0, p1, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->runWorker(ZZ)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final startOnExternalPlayer(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/Stream;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 8
    .line 9
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getSubChannelName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {p1, v0, v1, p3}, Landroidx/sqlite/SQLite;->playOnExternalPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Stream;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-direct {p1, p3}, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    iget-object p3, p1, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->playlistTitleView:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p3, Landroid/content/SharedPreferences;

    .line 28
    .line 29
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;->uploaderAvatarView:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Ljava/lang/String;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-nez p3, :cond_0

    .line 39
    .line 40
    sget-object p1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;->INSTANCE:Lio/reactivex/rxjava3/internal/operators/maybe/MaybeEmpty;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sget-object p3, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    .line 44
    .line 45
    invoke-static {p3}, Lj$/time/OffsetDateTime;->now(Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    new-instance v0, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda9;

    .line 50
    .line 51
    invoke-direct {v0, p1, p2, p3, v1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/databinding/PlaylistHeaderBinding;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lj$/time/OffsetDateTime;I)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromCallable;

    .line 55
    .line 56
    invoke-direct {p1, v0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 57
    .line 58
    .line 59
    sget-object p2, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_0
    new-instance p2, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 66
    .line 67
    const/16 p3, 0xe

    .line 68
    .line 69
    invoke-direct {p2, p3}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 70
    .line 71
    .line 72
    new-instance p3, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;

    .line 73
    .line 74
    const/4 v0, 0x3

    .line 75
    invoke-direct {p3, p0, v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 76
    .line 77
    .line 78
    sget-object v0, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Landroidx/transition/Transition$1;

    .line 79
    .line 80
    new-instance v1, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 81
    .line 82
    invoke-direct {v1, p2, p3, v0}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 83
    .line 84
    .line 85
    :try_start_0
    new-instance p2, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;

    .line 86
    .line 87
    const/4 p3, 0x1

    .line 88
    invoke-direct {p2, v1, p3}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeFromSingle$FromSingleObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    const-string/jumbo p1, "subscribeActual failed"

    .line 102
    .line 103
    .line 104
    invoke-static {p0, p1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    throw p0

    .line 109
    :catch_0
    move-exception p0

    .line 110
    throw p0
.end method

.method public final toggleFullscreenIfInFullscreenMode()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->UIs:Lorg/schabi/newpipe/player/ui/PlayerUiList;

    .line 10
    .line 11
    const-class v0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    const/16 v1, 0x10

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final tryAddVideoPlayerView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isPlayerAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setHeightThumbnail()V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final updateBottomSheetState(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->bottomSheetState:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lastStableBottomSheetState:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final updateOverlayData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayTitleTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, ""

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move-object p1, v2

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 18
    .line 19
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayChannelTextView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 20
    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    move-object p2, v2

    .line 28
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 32
    .line 33
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayThumbnail:Landroid/widget/ImageButton;

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 40
    .line 41
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayThumbnail:Landroid/widget/ImageButton;

    .line 42
    .line 43
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {p3}, Lorg/schabi/newpipe/util/image/ImageStrategy;->choosePreferredImage(Ljava/util/List;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const p2, 0x7f0801b8

    .line 51
    .line 52
    .line 53
    const/4 p3, 0x0

    .line 54
    invoke-static {p0, p1, p2, p3}, Lokhttp3/Cookie$Companion;->loadImageDefault(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final updateOverlayPlayQueueButtonVisibility()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->player:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, v0, Lorg/schabi/newpipe/player/Player;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->isEmpty()Z

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
    move v0, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 20
    :goto_1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 21
    .line 22
    if-eqz p0, :cond_3

    .line 23
    .line 24
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->overlayPlayQueueButton:Landroid/widget/ImageButton;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const/16 v1, 0x8

    .line 29
    .line 30
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_3
    return-void
.end method

.method public final updatePlaybackProgress(JJ)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/core/os/BundleKt;->getResumePlaybackEnabled(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const-wide/16 v1, 0x3e8

    .line 13
    .line 14
    div-long v3, p1, v1

    .line 15
    .line 16
    long-to-int v3, v3

    .line 17
    div-long v1, p3, v1

    .line 18
    .line 19
    long-to-int v1, v1

    .line 20
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 21
    .line 22
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    sub-int/2addr v2, v3

    .line 29
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget-object v4, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 34
    .line 35
    iget-object v4, v4, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 36
    .line 37
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    if-le v2, v4, :cond_1

    .line 44
    .line 45
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Lorg/schabi/newpipe/views/AnimatedProgressBar;->setProgressAnimated(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 54
    .line 55
    .line 56
    :goto_0
    int-to-long v1, v3

    .line 57
    invoke-static {v1, v2}, Lorg/schabi/newpipe/util/Localization;->getDurationString(J)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 62
    .line 63
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailPositionView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 64
    .line 65
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-eq v1, v2, :cond_2

    .line 70
    .line 71
    iget-object v2, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 72
    .line 73
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailPositionView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    iget-object v1, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 79
    .line 80
    iget-object v1, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    iget-object v1, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 89
    .line 90
    iget-object v2, v1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->positionView:Lorg/schabi/newpipe/views/AnimatedProgressBar;

    .line 91
    .line 92
    const/4 v9, 0x0

    .line 93
    const/16 v10, 0x1c

    .line 94
    .line 95
    const/4 v12, 0x1

    .line 96
    const-wide/16 v13, 0x64

    .line 97
    .line 98
    const/4 v6, 0x0

    .line 99
    const-wide/16 v7, 0x0

    .line 100
    .line 101
    move v3, v12

    .line 102
    move-wide v4, v13

    .line 103
    invoke-static/range {v2 .. v10}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 104
    .line 105
    .line 106
    iget-object v0, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 107
    .line 108
    iget-object v11, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailPositionView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 109
    .line 110
    const/16 v18, 0x0

    .line 111
    .line 112
    const/16 v19, 0x1c

    .line 113
    .line 114
    const/4 v15, 0x0

    .line 115
    const-wide/16 v16, 0x0

    .line 116
    .line 117
    invoke-static/range {v11 .. v19}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 118
    .line 119
    .line 120
    :cond_3
    :goto_1
    return-void
.end method

.method public final updateTabIconsAndContentDescriptions()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabIcons:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 11
    .line 12
    iget-object v2, v2, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->tabContentDescriptions:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v3, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iput-object v1, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    const-string p0, "Tab not attached to a TabLayout"

    .line 64
    .line 65
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    return-void
.end method

.method public final updateTabLayoutVisibility()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 7
    .line 8
    iget-object v0, v0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-lt v0, v1, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 18
    .line 19
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 29
    .line 30
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 31
    .line 32
    new-instance v1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    :goto_0
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 43
    .line 44
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 45
    .line 46
    const/16 v0, 0x8

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final updateTabs(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showRelatedItems:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 8
    .line 9
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->relatedItemsLayout:Landroidx/fragment/app/FragmentContainerView;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 14
    .line 15
    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->getInstance(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, v0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentTitleList:Ljava/util/ArrayList;

    .line 20
    .line 21
    const-string v5, "NEXT VIDEO"

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eq v4, v1, :cond_2

    .line 28
    .line 29
    iget-object v0, v0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentList:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v3, Landroidx/fragment/app/BackStackRecord;

    .line 43
    .line 44
    invoke-direct {v3, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->getInstance(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v4, 0x0

    .line 52
    const v5, 0x7f0a0330

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v5, v0, v4}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-virtual {v3, v0, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(ZZ)I

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 63
    .line 64
    iget-object v0, v0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->relatedItemsLayout:Landroidx/fragment/app/FragmentContainerView;

    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->isFullscreen()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    const/16 v3, 0x8

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    move v3, v2

    .line 76
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showDescription:Z

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 84
    .line 85
    new-instance v3, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;

    .line 86
    .line 87
    invoke-direct {v3}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object p1, v3, Lorg/schabi/newpipe/fragments/detail/DescriptionFragment;->streamInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 91
    .line 92
    iget-object p1, v0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentTitleList:Ljava/util/ArrayList;

    .line 93
    .line 94
    const-string v4, "DESCRIPTION TAB"

    .line 95
    .line 96
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eq p1, v1, :cond_3

    .line 101
    .line 102
    iget-object v0, v0, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->mFragmentList:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v0, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    :cond_3
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 108
    .line 109
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 110
    .line 111
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabLayoutVisibility()V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->pageAdapter:Lorg/schabi/newpipe/fragments/detail/TabAdapter;

    .line 118
    .line 119
    invoke-virtual {p1}, Lorg/schabi/newpipe/fragments/detail/TabAdapter;->notifyDataSetUpdate()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabIconsAndContentDescriptions()V

    .line 123
    .line 124
    .line 125
    return-void
.end method

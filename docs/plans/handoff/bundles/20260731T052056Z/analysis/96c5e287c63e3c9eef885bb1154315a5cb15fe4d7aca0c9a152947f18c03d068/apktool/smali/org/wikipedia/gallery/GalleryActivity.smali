.class public final Lorg/wikipedia/gallery/GalleryActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$LoadPageCallback;
.implements Lorg/wikipedia/gallery/GalleryItemFragment$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0003\u0006\u0007\u0008B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/wikipedia/gallery/GalleryActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$LoadPageCallback;",
        "Lorg/wikipedia/gallery/GalleryItemFragment$Callback;",
        "<init>",
        "()V",
        "PageChangeCallback",
        "GalleryItemAdapter",
        "org/wikipedia/media/AvPlayer",
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


# static fields
.field public static TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;


# instance fields
.field public binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

.field public controlsShowing:Z

.field public final downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

.field public final downloadReceiverCallback:Lorg/wikipedia/media/AvPlayer;

.field public galleryAdapter:Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;

.field public imageEditType:Lorg/wikipedia/Constants$ImageEditType;

.field public initialImageIndex:I

.field public final linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

.field public final pageChangeListener:Lorg/wikipedia/main/MainFragment$PageChangeCallback;

.field public final requestAddCaptionLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final requestAddImageTagsLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public targetLanguageCode:Ljava/lang/String;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/gallery/GalleryActivity$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/gallery/GalleryActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/gallery/GalleryActivity;I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lokhttp3/Request$Builder;

    .line 11
    .line 12
    const-class v3, Lorg/wikipedia/gallery/GalleryViewModel;

    .line 13
    .line 14
    sget-object v4, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v4, Lorg/wikipedia/gallery/GalleryActivity$special$$inlined$viewModels$default$1;

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/gallery/GalleryActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/gallery/GalleryActivity;I)V

    .line 24
    .line 25
    .line 26
    new-instance v6, Lorg/wikipedia/gallery/GalleryActivity$special$$inlined$viewModels$default$1;

    .line 27
    .line 28
    const/4 v7, 0x2

    .line 29
    invoke-direct {v6, p0, v7}, Lorg/wikipedia/gallery/GalleryActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/gallery/GalleryActivity;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3, v4, v0, v6}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lorg/wikipedia/gallery/GalleryActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 36
    .line 37
    new-instance v0, Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    .line 38
    .line 39
    const/4 v2, 0x3

    .line 40
    invoke-direct {v0, v2, p0}, Lorg/wikipedia/main/MainFragment$PageChangeCallback;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->pageChangeListener:Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    .line 44
    .line 45
    iput-boolean v5, p0, Lorg/wikipedia/gallery/GalleryActivity;->controlsShowing:Z

    .line 46
    .line 47
    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->initialImageIndex:I

    .line 49
    .line 50
    new-instance v0, Lorg/wikipedia/gallery/MediaDownloadReceiver;

    .line 51
    .line 52
    invoke-direct {v0}, Lorg/wikipedia/gallery/MediaDownloadReceiver;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    .line 56
    .line 57
    new-instance v0, Lorg/wikipedia/media/AvPlayer;

    .line 58
    .line 59
    const/16 v3, 0x9

    .line 60
    .line 61
    invoke-direct {v0, v3, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->downloadReceiverCallback:Lorg/wikipedia/media/AvPlayer;

    .line 65
    .line 66
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 67
    .line 68
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 69
    .line 70
    .line 71
    new-instance v3, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda0;

    .line 72
    .line 73
    invoke-direct {v3, p0, v1}, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/gallery/GalleryActivity;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v3, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 81
    .line 82
    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->requestAddCaptionLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 83
    .line 84
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 85
    .line 86
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 87
    .line 88
    .line 89
    new-instance v1, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda0;

    .line 90
    .line 91
    invoke-direct {v1, p0, v7}, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/gallery/GalleryActivity;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 99
    .line 100
    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->requestAddImageTagsLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 101
    .line 102
    new-instance v0, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 103
    .line 104
    new-instance v1, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/gallery/GalleryActivity;I)V

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, v1}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 113
    .line 114
    return-void
.end method


# virtual methods
.method public final fetchGalleryDescription(Lorg/wikipedia/gallery/GalleryItemFragment;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_4

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p1, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object p1, v1

    .line 25
    :goto_0
    if-nez p1, :cond_3

    .line 26
    .line 27
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->infoContainer:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Landroid/widget/LinearLayout;

    .line 34
    .line 35
    const/16 p1, 0x8

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    const-string p0, "binding"

    .line 42
    .line 43
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v1

    .line 47
    :cond_3
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getViewModel()Lorg/wikipedia/gallery/GalleryViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getViewModel()Lorg/wikipedia/gallery/GalleryItemViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p1, p1, Lorg/wikipedia/gallery/GalleryItemViewModel;->imageTitle:Lorg/wikipedia/page/PageTitle;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryViewModel;->_descriptionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 61
    .line 62
    new-instance v2, Lorg/wikipedia/util/Resource$Loading;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v2, Lorg/wikipedia/gallery/GalleryViewModel$fetchGalleryItems$$inlined$CoroutineExceptionHandler$1;

    .line 78
    .line 79
    const/4 v3, 0x1

    .line 80
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/gallery/GalleryViewModel$fetchGalleryItems$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/gallery/GalleryViewModel;I)V

    .line 81
    .line 82
    .line 83
    new-instance v3, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 84
    .line 85
    invoke-direct {v3, p0, p1, v1}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Lorg/wikipedia/gallery/GalleryViewModel;Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/Continuation;)V

    .line 86
    .line 87
    .line 88
    const/4 p0, 0x2

    .line 89
    invoke-static {v0, v2, v1, v3, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 90
    .line 91
    .line 92
    :cond_4
    :goto_1
    return-void
.end method

.method public final getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->galleryAdapter:Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->pager:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-virtual {v0, p0}, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    const-string p0, "binding"

    .line 26
    .line 27
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v1

    .line 31
    :cond_1
    const-string p0, "galleryAdapter"

    .line 32
    .line 33
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1
.end method

.method public final getViewModel()Lorg/wikipedia/gallery/GalleryViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/gallery/GalleryViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final hideTransitionReceiver(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "binding"

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->transitionReceiver:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroid/widget/ImageView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v3, 0x8

    .line 17
    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object p1, v0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->transitionReceiver:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Landroid/widget/ImageView;

    .line 30
    .line 31
    new-instance v0, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda6;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda6;-><init>(Lorg/wikipedia/gallery/GalleryActivity;I)V

    .line 35
    .line 36
    .line 37
    const-wide/16 v1, 0xfa

    .line 38
    .line 39
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v1

    .line 47
    :cond_2
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget-object p0, v0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->transitionReceiver:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1

    .line 61
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5
    .line 6
    .line 7
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-ne p1, v0, :cond_3

    .line 11
    .line 12
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    const-string v1, "binding"

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->pager:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    add-int/lit8 v2, p1, -0x1

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget-object v4, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    iget-object v4, v4, Lorg/wikipedia/databinding/ActivityGalleryBinding;->pager:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v4, Landroidx/viewpager2/widget/ViewPager2;

    .line 41
    .line 42
    invoke-virtual {v4, v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 46
    .line 47
    if-eqz p0, :cond_0

    .line 48
    .line 49
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->pager:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    .line 52
    .line 53
    invoke-virtual {p0, p1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const v3, 0x7f0c0022

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const v3, 0x7f0900cc

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    move-object v9, v6

    .line 29
    check-cast v9, Landroid/widget/ImageView;

    .line 30
    .line 31
    if-eqz v9, :cond_21

    .line 32
    .line 33
    const v3, 0x7f090187

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    move-object v10, v6

    .line 41
    check-cast v10, Lorg/wikipedia/views/AppTextView;

    .line 42
    .line 43
    if-eqz v10, :cond_21

    .line 44
    .line 45
    const v3, 0x7f090188

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    move-object v11, v6

    .line 53
    check-cast v11, Landroid/widget/LinearLayout;

    .line 54
    .line 55
    if-eqz v11, :cond_21

    .line 56
    .line 57
    const v3, 0x7f090189

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    move-object v12, v6

    .line 65
    check-cast v12, Landroid/widget/TextView;

    .line 66
    .line 67
    if-eqz v12, :cond_21

    .line 68
    .line 69
    const v3, 0x7f09018a

    .line 70
    .line 71
    .line 72
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    move-object v13, v6

    .line 77
    check-cast v13, Landroid/widget/FrameLayout;

    .line 78
    .line 79
    if-eqz v13, :cond_21

    .line 80
    .line 81
    const v3, 0x7f0901a4

    .line 82
    .line 83
    .line 84
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    move-object v14, v6

    .line 89
    check-cast v14, Landroid/widget/LinearLayout;

    .line 90
    .line 91
    if-eqz v14, :cond_21

    .line 92
    .line 93
    const v3, 0x7f0901a5

    .line 94
    .line 95
    .line 96
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    move-object v15, v6

    .line 101
    check-cast v15, Lorg/wikipedia/views/AppTextView;

    .line 102
    .line 103
    if-eqz v15, :cond_21

    .line 104
    .line 105
    const v3, 0x7f090221

    .line 106
    .line 107
    .line 108
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    move-object/from16 v16, v6

    .line 113
    .line 114
    check-cast v16, Lorg/wikipedia/views/WikiErrorView;

    .line 115
    .line 116
    if-eqz v16, :cond_21

    .line 117
    .line 118
    move-object v8, v2

    .line 119
    check-cast v8, Landroid/widget/FrameLayout;

    .line 120
    .line 121
    const v3, 0x7f0902ed

    .line 122
    .line 123
    .line 124
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    move-object/from16 v17, v6

    .line 129
    .line 130
    check-cast v17, Landroid/widget/LinearLayout;

    .line 131
    .line 132
    if-eqz v17, :cond_21

    .line 133
    .line 134
    const v3, 0x7f0902ee

    .line 135
    .line 136
    .line 137
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v18

    .line 141
    if-eqz v18, :cond_21

    .line 142
    .line 143
    const v3, 0x7f09032d

    .line 144
    .line 145
    .line 146
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    move-object/from16 v19, v6

    .line 151
    .line 152
    check-cast v19, Landroid/widget/LinearLayout;

    .line 153
    .line 154
    if-eqz v19, :cond_21

    .line 155
    .line 156
    const v3, 0x7f09032e

    .line 157
    .line 158
    .line 159
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    move-object/from16 v20, v6

    .line 164
    .line 165
    check-cast v20, Landroid/widget/ImageView;

    .line 166
    .line 167
    if-eqz v20, :cond_21

    .line 168
    .line 169
    const v3, 0x7f09032f

    .line 170
    .line 171
    .line 172
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    move-object/from16 v21, v6

    .line 177
    .line 178
    check-cast v21, Landroid/widget/ImageView;

    .line 179
    .line 180
    if-eqz v21, :cond_21

    .line 181
    .line 182
    const v3, 0x7f090330

    .line 183
    .line 184
    .line 185
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    move-object/from16 v22, v6

    .line 190
    .line 191
    check-cast v22, Landroid/widget/ImageView;

    .line 192
    .line 193
    if-eqz v22, :cond_21

    .line 194
    .line 195
    const v3, 0x7f0904f0

    .line 196
    .line 197
    .line 198
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    move-object/from16 v23, v6

    .line 203
    .line 204
    check-cast v23, Landroidx/viewpager2/widget/ViewPager2;

    .line 205
    .line 206
    if-eqz v23, :cond_21

    .line 207
    .line 208
    const v3, 0x7f090514

    .line 209
    .line 210
    .line 211
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    move-object/from16 v24, v6

    .line 216
    .line 217
    check-cast v24, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 218
    .line 219
    if-eqz v24, :cond_21

    .line 220
    .line 221
    const v3, 0x7f0906cb

    .line 222
    .line 223
    .line 224
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    move-object/from16 v25, v6

    .line 229
    .line 230
    check-cast v25, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 231
    .line 232
    if-eqz v25, :cond_21

    .line 233
    .line 234
    const v3, 0x7f0906ce

    .line 235
    .line 236
    .line 237
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    move-object/from16 v26, v6

    .line 242
    .line 243
    check-cast v26, Landroid/widget/FrameLayout;

    .line 244
    .line 245
    if-eqz v26, :cond_21

    .line 246
    .line 247
    const v3, 0x7f0906d1

    .line 248
    .line 249
    .line 250
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v27

    .line 254
    if-eqz v27, :cond_21

    .line 255
    .line 256
    const v3, 0x7f0906eb

    .line 257
    .line 258
    .line 259
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    move-object/from16 v28, v6

    .line 264
    .line 265
    check-cast v28, Landroid/widget/ImageView;

    .line 266
    .line 267
    if-eqz v28, :cond_21

    .line 268
    .line 269
    new-instance v7, Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 270
    .line 271
    invoke-direct/range {v7 .. v28}, Lorg/wikipedia/databinding/ActivityGalleryBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lorg/wikipedia/views/AppTextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lorg/wikipedia/views/AppTextView;Lorg/wikipedia/views/WikiErrorView;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lcom/google/android/material/appbar/MaterialToolbar;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/ImageView;)V

    .line 272
    .line 273
    .line 274
    iput-object v7, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 275
    .line 276
    invoke-virtual {v0, v8}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 277
    .line 278
    .line 279
    iget-object v2, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 280
    .line 281
    const-string v3, "binding"

    .line 282
    .line 283
    if-eqz v2, :cond_20

    .line 284
    .line 285
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->toolbar:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v2, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 288
    .line 289
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    const/4 v6, 0x1

    .line 297
    if-eqz v2, :cond_0

    .line 298
    .line 299
    invoke-virtual {v2, v6}, Lcoil3/util/ContextsKt;->setDisplayHomeAsUpEnabled(Z)V

    .line 300
    .line 301
    .line 302
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    if-eqz v2, :cond_1

    .line 307
    .line 308
    const-string v7, ""

    .line 309
    .line 310
    invoke-virtual {v2, v7}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 311
    .line 312
    .line 313
    :cond_1
    const/high16 v2, -0x1000000

    .line 314
    .line 315
    invoke-virtual {v0, v2}, Lorg/wikipedia/activity/BaseActivity;->setNavigationBarColor(I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    new-instance v7, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 323
    .line 324
    const/16 v8, 0x8

    .line 325
    .line 326
    invoke-direct {v7, v8, v0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    invoke-static {v2, v0, v7}, Landroidx/compose/ui/unit/DpKt;->addCallback$default(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    .line 330
    .line 331
    .line 332
    iget-object v2, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 333
    .line 334
    if-eqz v2, :cond_1f

    .line 335
    .line 336
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->toolbarGradient:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast v2, Landroid/view/View;

    .line 339
    .line 340
    const v7, 0x7f0404da

    .line 341
    .line 342
    .line 343
    invoke-static {v0, v7}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 344
    .line 345
    .line 346
    move-result v9

    .line 347
    const/16 v10, 0x30

    .line 348
    .line 349
    invoke-static {v9, v10}, Lorg/jsoup/Jsoup;->getPowerGradient(II)Landroid/graphics/drawable/PaintDrawable;

    .line 350
    .line 351
    .line 352
    move-result-object v9

    .line 353
    invoke-virtual {v2, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 354
    .line 355
    .line 356
    iget-object v2, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 357
    .line 358
    if-eqz v2, :cond_1e

    .line 359
    .line 360
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->infoGradient:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast v2, Landroid/view/View;

    .line 363
    .line 364
    invoke-static {v0, v7}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 365
    .line 366
    .line 367
    move-result v7

    .line 368
    const/16 v9, 0x50

    .line 369
    .line 370
    invoke-static {v7, v9}, Lorg/jsoup/Jsoup;->getPowerGradient(II)Landroid/graphics/drawable/PaintDrawable;

    .line 371
    .line 372
    .line 373
    move-result-object v7

    .line 374
    invoke-virtual {v2, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 375
    .line 376
    .line 377
    iget-object v2, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 378
    .line 379
    if-eqz v2, :cond_1d

    .line 380
    .line 381
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->descriptionText:Ljava/lang/Object;

    .line 382
    .line 383
    check-cast v2, Lorg/wikipedia/views/AppTextView;

    .line 384
    .line 385
    iget-object v7, v0, Lorg/wikipedia/gallery/GalleryActivity;->linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 386
    .line 387
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 388
    .line 389
    .line 390
    iget-object v2, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 391
    .line 392
    if-eqz v2, :cond_1c

    .line 393
    .line 394
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->creditText:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v2, Lorg/wikipedia/views/AppTextView;

    .line 397
    .line 398
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 399
    .line 400
    .line 401
    iget-object v2, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 402
    .line 403
    if-eqz v2, :cond_1b

    .line 404
    .line 405
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->errorView:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast v2, Lorg/wikipedia/views/WikiErrorView;

    .line 408
    .line 409
    const v7, 0x7f0600a1

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, v7}, Landroid/content/Context;->getColor(I)I

    .line 413
    .line 414
    .line 415
    move-result v9

    .line 416
    invoke-virtual {v2, v9}, Lorg/wikipedia/views/WikiErrorView;->setIconColorFilter(I)V

    .line 417
    .line 418
    .line 419
    iget-object v2, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 420
    .line 421
    if-eqz v2, :cond_1a

    .line 422
    .line 423
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->errorView:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v2, Lorg/wikipedia/views/WikiErrorView;

    .line 426
    .line 427
    invoke-virtual {v0, v7}, Landroid/content/Context;->getColor(I)I

    .line 428
    .line 429
    .line 430
    move-result v7

    .line 431
    invoke-virtual {v2, v7}, Lorg/wikipedia/views/WikiErrorView;->setErrorTextColor(I)V

    .line 432
    .line 433
    .line 434
    iget-object v2, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 435
    .line 436
    if-eqz v2, :cond_19

    .line 437
    .line 438
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->errorView:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast v2, Lorg/wikipedia/views/WikiErrorView;

    .line 441
    .line 442
    new-instance v7, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda4;

    .line 443
    .line 444
    invoke-direct {v7, v0, v5}, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/gallery/GalleryActivity;I)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2, v7}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    .line 449
    .line 450
    iget-object v2, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 451
    .line 452
    if-eqz v2, :cond_18

    .line 453
    .line 454
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->errorView:Ljava/lang/Object;

    .line 455
    .line 456
    check-cast v2, Lorg/wikipedia/views/WikiErrorView;

    .line 457
    .line 458
    new-instance v7, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda4;

    .line 459
    .line 460
    const/4 v9, 0x2

    .line 461
    invoke-direct {v7, v0, v9}, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/gallery/GalleryActivity;I)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v2, v7}, Lorg/wikipedia/views/WikiErrorView;->setRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    .line 466
    .line 467
    new-instance v2, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;

    .line 468
    .line 469
    invoke-direct {v2, v0, v0}, Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;-><init>(Lorg/wikipedia/gallery/GalleryActivity;Lorg/wikipedia/gallery/GalleryActivity;)V

    .line 470
    .line 471
    .line 472
    iput-object v2, v0, Lorg/wikipedia/gallery/GalleryActivity;->galleryAdapter:Lorg/wikipedia/gallery/GalleryActivity$GalleryItemAdapter;

    .line 473
    .line 474
    iget-object v7, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 475
    .line 476
    if-eqz v7, :cond_17

    .line 477
    .line 478
    iget-object v7, v7, Lorg/wikipedia/databinding/ActivityGalleryBinding;->pager:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v7, Landroidx/viewpager2/widget/ViewPager2;

    .line 481
    .line 482
    invoke-virtual {v7, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 483
    .line 484
    .line 485
    iget-object v2, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 486
    .line 487
    if-eqz v2, :cond_16

    .line 488
    .line 489
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->pager:Ljava/lang/Object;

    .line 490
    .line 491
    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    .line 492
    .line 493
    iget-object v7, v0, Lorg/wikipedia/gallery/GalleryActivity;->pageChangeListener:Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    .line 494
    .line 495
    invoke-virtual {v2, v7}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 496
    .line 497
    .line 498
    iget-object v2, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 499
    .line 500
    if-eqz v2, :cond_15

    .line 501
    .line 502
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->pager:Ljava/lang/Object;

    .line 503
    .line 504
    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    .line 505
    .line 506
    invoke-virtual {v2, v9}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 507
    .line 508
    .line 509
    if-eqz v1, :cond_8

    .line 510
    .line 511
    const-string v2, "controlsShowing"

    .line 512
    .line 513
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    iput-boolean v2, v0, Lorg/wikipedia/gallery/GalleryActivity;->controlsShowing:Z

    .line 518
    .line 519
    const-string v2, "pagerIndex"

    .line 520
    .line 521
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    iput v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->initialImageIndex:I

    .line 526
    .line 527
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryActivity;->getViewModel()Lorg/wikipedia/gallery/GalleryViewModel;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    iput-object v4, v1, Lorg/wikipedia/gallery/GalleryViewModel;->initialFilename:Ljava/lang/String;

    .line 532
    .line 533
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 538
    .line 539
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 544
    .line 545
    if-eqz v1, :cond_2

    .line 546
    .line 547
    move v1, v6

    .line 548
    goto :goto_0

    .line 549
    :cond_2
    move v1, v5

    .line 550
    :goto_0
    add-int/2addr v2, v1

    .line 551
    if-lez v2, :cond_8

    .line 552
    .line 553
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    new-instance v2, Landroidx/fragment/app/BackStackRecord;

    .line 558
    .line 559
    invoke-direct {v2, v1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    iget-object v7, v1, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 567
    .line 568
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 569
    .line 570
    .line 571
    move-result v7

    .line 572
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 573
    .line 574
    if-eqz v1, :cond_3

    .line 575
    .line 576
    move v1, v6

    .line 577
    goto :goto_1

    .line 578
    :cond_3
    move v1, v5

    .line 579
    :goto_1
    add-int/2addr v7, v1

    .line 580
    move v1, v5

    .line 581
    :goto_2
    if-ge v1, v7, :cond_7

    .line 582
    .line 583
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 584
    .line 585
    .line 586
    move-result-object v10

    .line 587
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 588
    .line 589
    .line 590
    move-result-object v11

    .line 591
    iget-object v12, v11, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 592
    .line 593
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 594
    .line 595
    .line 596
    move-result v12

    .line 597
    if-ne v1, v12, :cond_5

    .line 598
    .line 599
    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mTransitioningOp:Landroidx/fragment/app/BackStackRecord;

    .line 600
    .line 601
    if-eqz v11, :cond_4

    .line 602
    .line 603
    goto :goto_3

    .line 604
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 605
    .line 606
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 607
    .line 608
    .line 609
    throw v0

    .line 610
    :cond_5
    iget-object v11, v11, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 611
    .line 612
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v11

    .line 616
    check-cast v11, Landroidx/fragment/app/BackStackRecord;

    .line 617
    .line 618
    :goto_3
    iget v11, v11, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 619
    .line 620
    invoke-virtual {v10, v11}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 621
    .line 622
    .line 623
    move-result-object v10

    .line 624
    instance-of v11, v10, Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 625
    .line 626
    if-eqz v11, :cond_6

    .line 627
    .line 628
    invoke-virtual {v2, v10}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    .line 629
    .line 630
    .line 631
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 632
    .line 633
    goto :goto_2

    .line 634
    :cond_7
    invoke-virtual {v2, v6, v6}, Landroidx/fragment/app/BackStackRecord;->commitInternal(ZZ)I

    .line 635
    .line 636
    .line 637
    :cond_8
    iget-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 638
    .line 639
    if-eqz v1, :cond_14

    .line 640
    .line 641
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->toolbarContainer:Ljava/lang/Object;

    .line 642
    .line 643
    check-cast v1, Landroid/widget/FrameLayout;

    .line 644
    .line 645
    new-instance v2, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda6;

    .line 646
    .line 647
    invoke-direct {v2, v0, v5}, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda6;-><init>(Lorg/wikipedia/gallery/GalleryActivity;I)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 651
    .line 652
    .line 653
    sget-object v1, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 654
    .line 655
    if-eqz v1, :cond_e

    .line 656
    .line 657
    iget v2, v1, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->width:F

    .line 658
    .line 659
    const/4 v7, 0x0

    .line 660
    cmpl-float v2, v2, v7

    .line 661
    .line 662
    if-lez v2, :cond_e

    .line 663
    .line 664
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 665
    .line 666
    .line 667
    iget v1, v1, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->height:F

    .line 668
    .line 669
    cmpl-float v1, v1, v7

    .line 670
    .line 671
    if-lez v1, :cond_e

    .line 672
    .line 673
    sget-object v1, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 674
    .line 675
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 676
    .line 677
    .line 678
    iget v1, v1, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->height:F

    .line 679
    .line 680
    sget-object v2, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 681
    .line 682
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 683
    .line 684
    .line 685
    iget v2, v2, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->width:F

    .line 686
    .line 687
    div-float/2addr v1, v2

    .line 688
    invoke-static {}, Lokio/Okio__OkioKt;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 689
    .line 690
    .line 691
    move-result-object v2

    .line 692
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 693
    .line 694
    invoke-static {}, Lokio/Okio__OkioKt;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 695
    .line 696
    .line 697
    move-result-object v7

    .line 698
    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 699
    .line 700
    if-ge v2, v7, :cond_9

    .line 701
    .line 702
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 703
    .line 704
    invoke-static {}, Lokio/Okio__OkioKt;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 705
    .line 706
    .line 707
    move-result-object v7

    .line 708
    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 709
    .line 710
    invoke-static {}, Lokio/Okio__OkioKt;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 711
    .line 712
    .line 713
    move-result-object v8

    .line 714
    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 715
    .line 716
    int-to-float v8, v8

    .line 717
    mul-float/2addr v8, v1

    .line 718
    float-to-int v1, v8

    .line 719
    invoke-direct {v2, v7, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 720
    .line 721
    .line 722
    goto :goto_4

    .line 723
    :cond_9
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 724
    .line 725
    invoke-static {}, Lokio/Okio__OkioKt;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 726
    .line 727
    .line 728
    move-result-object v7

    .line 729
    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 730
    .line 731
    int-to-float v7, v7

    .line 732
    div-float/2addr v7, v1

    .line 733
    float-to-int v1, v7

    .line 734
    invoke-static {}, Lokio/Okio__OkioKt;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 735
    .line 736
    .line 737
    move-result-object v7

    .line 738
    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 739
    .line 740
    invoke-direct {v2, v1, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 741
    .line 742
    .line 743
    :goto_4
    const/16 v1, 0x11

    .line 744
    .line 745
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 746
    .line 747
    iget-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 748
    .line 749
    if-eqz v1, :cond_d

    .line 750
    .line 751
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->transitionReceiver:Ljava/lang/Object;

    .line 752
    .line 753
    check-cast v1, Landroid/widget/ImageView;

    .line 754
    .line 755
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    .line 757
    .line 758
    iget-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 759
    .line 760
    if-eqz v1, :cond_c

    .line 761
    .line 762
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->transitionReceiver:Ljava/lang/Object;

    .line 763
    .line 764
    check-cast v1, Landroid/widget/ImageView;

    .line 765
    .line 766
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 767
    .line 768
    .line 769
    iget-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 770
    .line 771
    if-eqz v1, :cond_b

    .line 772
    .line 773
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->transitionReceiver:Ljava/lang/Object;

    .line 774
    .line 775
    check-cast v1, Landroid/widget/ImageView;

    .line 776
    .line 777
    sget-object v2, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 778
    .line 779
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 780
    .line 781
    .line 782
    iget-object v2, v2, Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;->src:Ljava/lang/String;

    .line 783
    .line 784
    const/16 v7, 0x1c

    .line 785
    .line 786
    invoke-static {v1, v2, v4, v7}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 787
    .line 788
    .line 789
    iget-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 790
    .line 791
    if-eqz v1, :cond_a

    .line 792
    .line 793
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->transitionReceiver:Ljava/lang/Object;

    .line 794
    .line 795
    check-cast v1, Landroid/widget/ImageView;

    .line 796
    .line 797
    new-instance v2, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda6;

    .line 798
    .line 799
    invoke-direct {v2, v0, v9}, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda6;-><init>(Lorg/wikipedia/gallery/GalleryActivity;I)V

    .line 800
    .line 801
    .line 802
    const-wide/16 v7, 0x1f4

    .line 803
    .line 804
    invoke-virtual {v1, v2, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 805
    .line 806
    .line 807
    goto :goto_5

    .line 808
    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    throw v4

    .line 812
    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    throw v4

    .line 816
    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    throw v4

    .line 820
    :cond_d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    throw v4

    .line 824
    :cond_e
    sput-object v4, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 825
    .line 826
    iget-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 827
    .line 828
    if-eqz v1, :cond_13

    .line 829
    .line 830
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->transitionReceiver:Ljava/lang/Object;

    .line 831
    .line 832
    check-cast v1, Landroid/widget/ImageView;

    .line 833
    .line 834
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 835
    .line 836
    .line 837
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryActivity;->getViewModel()Lorg/wikipedia/gallery/GalleryViewModel;

    .line 838
    .line 839
    .line 840
    move-result-object v1

    .line 841
    invoke-virtual {v1}, Lorg/wikipedia/gallery/GalleryViewModel;->fetchGalleryItems()V

    .line 842
    .line 843
    .line 844
    :goto_5
    iget-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 845
    .line 846
    if-eqz v1, :cond_12

    .line 847
    .line 848
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->captionEditButton:Ljava/lang/Object;

    .line 849
    .line 850
    check-cast v1, Landroid/widget/ImageView;

    .line 851
    .line 852
    new-instance v2, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda4;

    .line 853
    .line 854
    const/4 v7, 0x3

    .line 855
    invoke-direct {v2, v0, v7}, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/gallery/GalleryActivity;I)V

    .line 856
    .line 857
    .line 858
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 859
    .line 860
    .line 861
    iget-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 862
    .line 863
    if-eqz v1, :cond_11

    .line 864
    .line 865
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->ctaButton:Ljava/lang/Object;

    .line 866
    .line 867
    check-cast v1, Landroid/widget/LinearLayout;

    .line 868
    .line 869
    new-instance v2, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda4;

    .line 870
    .line 871
    const/4 v8, 0x4

    .line 872
    invoke-direct {v2, v0, v8}, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/gallery/GalleryActivity;I)V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 876
    .line 877
    .line 878
    iget-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 879
    .line 880
    if-eqz v1, :cond_10

    .line 881
    .line 882
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseContainer:Ljava/lang/Object;

    .line 883
    .line 884
    check-cast v1, Landroid/widget/LinearLayout;

    .line 885
    .line 886
    new-instance v2, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda4;

    .line 887
    .line 888
    invoke-direct {v2, v0, v6}, Lorg/wikipedia/gallery/GalleryActivity$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/gallery/GalleryActivity;I)V

    .line 889
    .line 890
    .line 891
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 892
    .line 893
    .line 894
    iget-object v1, v0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 895
    .line 896
    if-eqz v1, :cond_f

    .line 897
    .line 898
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseContainer:Ljava/lang/Object;

    .line 899
    .line 900
    check-cast v1, Landroid/widget/LinearLayout;

    .line 901
    .line 902
    new-instance v2, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;

    .line 903
    .line 904
    invoke-direct {v2, v7, v0}, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 905
    .line 906
    .line 907
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 908
    .line 909
    .line 910
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 911
    .line 912
    .line 913
    move-result-object v1

    .line 914
    new-instance v2, Lorg/wikipedia/gallery/GalleryActivity$onCreate$10;

    .line 915
    .line 916
    invoke-direct {v2, v0, v4, v5}, Lorg/wikipedia/gallery/GalleryActivity$onCreate$10;-><init>(Lorg/wikipedia/gallery/GalleryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 917
    .line 918
    .line 919
    invoke-static {v1, v4, v4, v2, v7}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 920
    .line 921
    .line 922
    return-void

    .line 923
    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    throw v4

    .line 927
    :cond_10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    throw v4

    .line 931
    :cond_11
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    throw v4

    .line 935
    :cond_12
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 936
    .line 937
    .line 938
    throw v4

    .line 939
    :cond_13
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    throw v4

    .line 943
    :cond_14
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    throw v4

    .line 947
    :cond_15
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 948
    .line 949
    .line 950
    throw v4

    .line 951
    :cond_16
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    throw v4

    .line 955
    :cond_17
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    throw v4

    .line 959
    :cond_18
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    throw v4

    .line 963
    :cond_19
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    throw v4

    .line 967
    :cond_1a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 968
    .line 969
    .line 970
    throw v4

    .line 971
    :cond_1b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    throw v4

    .line 975
    :cond_1c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 976
    .line 977
    .line 978
    throw v4

    .line 979
    :cond_1d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 980
    .line 981
    .line 982
    throw v4

    .line 983
    :cond_1e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    throw v4

    .line 987
    :cond_1f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 988
    .line 989
    .line 990
    throw v4

    .line 991
    :cond_20
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    throw v4

    .line 995
    :cond_21
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 996
    .line 997
    .line 998
    move-result-object v0

    .line 999
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v0

    .line 1003
    const-string v1, "Missing required view with ID: "

    .line 1004
    .line 1005
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v0

    .line 1009
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->pager:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    .line 11
    .line 12
    iget-object v0, v0, Lorg/wikipedia/main/MainFragment$PageChangeCallback;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v2, p0, Lorg/wikipedia/gallery/GalleryActivity;->pageChangeListener:Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    sput-object v1, Lorg/wikipedia/gallery/GalleryActivity;->TRANSITION_INFO:Lorg/wikipedia/bridge/JavaScriptActionHandler$ImageHitInfo;

    .line 22
    .line 23
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onDestroy()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string p0, "binding"

    .line 28
    .line 29
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v1
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "binding"

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->errorView:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    .line 14
    .line 15
    sget v3, Lorg/wikipedia/views/WikiErrorView;->$r8$clinit:I

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/views/WikiErrorView;->setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->errorView:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lorg/wikipedia/views/WikiErrorView;

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1
.end method

.method public final onLinkPreviewLoadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance p3, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v0, "org.wikipedia.load_in_current_tab"

    .line 10
    .line 11
    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-class v0, Lorg/wikipedia/page/PageActivity;

    .line 15
    .line 16
    invoke-virtual {p3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    const-string v0, "org.wikipedia.history.historyentry"

    .line 21
    .line 22
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string p3, "title"

    .line 27
    .line 28
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x1

    .line 36
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    iput-object p0, v0, Lorg/wikipedia/gallery/MediaDownloadReceiver;->callback:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public final onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lorg/wikipedia/gallery/ImageInfo;->commonsUrl:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0}, Landroid/app/assist/AssistContent;->setWebUri(Landroid/net/Uri;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity;->downloadReceiverCallback:Lorg/wikipedia/media/AvPlayer;

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lorg/wikipedia/gallery/MediaDownloadReceiver;->register(Landroid/content/Context;Lorg/wikipedia/gallery/MediaDownloadReceiver$Callback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "controlsShowing"

    .line 8
    .line 9
    iget-boolean v1, p0, Lorg/wikipedia/gallery/GalleryActivity;->controlsShowing:Z

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->pager:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const-string v0, "pagerIndex"

    .line 27
    .line 28
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const-string p0, "binding"

    .line 33
    .line 34
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    throw p0
.end method

.method public final setControlsShowing(Z)V
    .locals 5

    .line 1
    iput-boolean p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->controlsShowing:Z

    .line 2
    .line 3
    const-string v0, "binding"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    sget p1, Lorg/wikipedia/views/ViewAnimations;->$r8$clinit:I

    .line 9
    .line 10
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->toolbarContainer:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Landroid/widget/FrameLayout;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {p1, v2, v1}, Lorg/wikipedia/views/ViewAnimations;->ensureTranslationY(Landroid/view/View;ILorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->infoContainer:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Landroid/widget/LinearLayout;

    .line 29
    .line 30
    invoke-static {p1, v2, v1}, Lorg/wikipedia/views/ViewAnimations;->ensureTranslationY(Landroid/view/View;ILorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->infoContainer:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Landroid/widget/LinearLayout;

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1

    .line 53
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :cond_3
    sget p1, Lorg/wikipedia/views/ViewAnimations;->$r8$clinit:I

    .line 58
    .line 59
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 60
    .line 61
    if-eqz p1, :cond_8

    .line 62
    .line 63
    iget-object v2, p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->toolbarContainer:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Landroid/widget/FrameLayout;

    .line 66
    .line 67
    if-eqz p1, :cond_7

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    neg-int p1, p1

    .line 74
    invoke-static {v2, p1, v1}, Lorg/wikipedia/views/ViewAnimations;->ensureTranslationY(Landroid/view/View;ILorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 78
    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    iget-object v2, p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->infoContainer:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v2, Landroid/widget/LinearLayout;

    .line 84
    .line 85
    if-eqz p1, :cond_5

    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    new-instance v3, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    const/16 v4, 0xc

    .line 94
    .line 95
    invoke-direct {v3, v4, p0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v2, p1, v3}, Lorg/wikipedia/views/ViewAnimations;->ensureTranslationY(Landroid/view/View;ILorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 102
    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->descriptionText:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p1, Lorg/wikipedia/views/AppTextView;

    .line 108
    .line 109
    iget-boolean p0, p0, Lorg/wikipedia/gallery/GalleryActivity;->controlsShowing:Z

    .line 110
    .line 111
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v1

    .line 119
    :cond_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v1

    .line 123
    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v1

    .line 127
    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v1

    .line 131
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v1
.end method

.method public final setTheme()V
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/theme/Theme;->DARK:Lorg/wikipedia/theme/Theme;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->getResourceId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final showLinkPreview(Lorg/wikipedia/page/PageTitle;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    .line 6
    .line 7
    const/16 v1, 0x13

    .line 8
    .line 9
    invoke-direct {v0, v1, p1}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 13
    .line 14
    invoke-direct {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lkotlin/Pair;

    .line 18
    .line 19
    const-string v2, "entry"

    .line 20
    .line 21
    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lkotlin/Pair;

    .line 25
    .line 26
    const-string v2, "location"

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lkotlin/Pair;

    .line 33
    .line 34
    const-string v4, "lastKnownLocation"

    .line 35
    .line 36
    invoke-direct {v2, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x3

    .line 40
    new-array v3, v3, [Lkotlin/Pair;

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    aput-object v1, v3, v4

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    aput-object v0, v3, v1

    .line 47
    .line 48
    const/4 v0, 0x2

    .line 49
    aput-object v2, v3, v0

    .line 50
    .line 51
    invoke-static {v3}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p1}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final startCaptionEdit(Lorg/wikipedia/gallery/GalleryItemFragment;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    new-instance v4, Lorg/wikipedia/page/PageTitle;

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getViewModel()Lorg/wikipedia/gallery/GalleryItemViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Lorg/wikipedia/gallery/GalleryItemViewModel;->imageTitle:Lorg/wikipedia/page/PageTitle;

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v1, Lorg/wikipedia/dataclient/WikiSite;

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getViewModel()Lorg/wikipedia/gallery/GalleryViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v2, v2, Lorg/wikipedia/gallery/GalleryViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 26
    .line 27
    iget-object v2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 28
    .line 29
    const-string v3, "https://commons.wikimedia.org/"

    .line 30
    .line 31
    invoke-direct {v1, v3, v2}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v11, 0x0

    .line 35
    invoke-direct {v4, p1, v1, v11}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, v0, Lorg/wikipedia/gallery/ImageInfo;->captions:Ljava/util/Map;

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getViewModel()Lorg/wikipedia/gallery/GalleryViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v1, v1, Lorg/wikipedia/gallery/GalleryViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 45
    .line 46
    iget-object v1, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 47
    .line 48
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Ljava/lang/String;

    .line 53
    .line 54
    iput-object p1, v4, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 57
    .line 58
    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getViewModel()Lorg/wikipedia/gallery/GalleryViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object p1, p1, Lorg/wikipedia/gallery/GalleryViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 67
    .line 68
    iget-object v3, p1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    iget-object p1, v0, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 75
    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    invoke-virtual {p1}, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    move-object p1, v11

    .line 84
    :goto_0
    sget-object v6, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 85
    .line 86
    if-nez p1, :cond_1

    .line 87
    .line 88
    const-string p1, ""

    .line 89
    .line 90
    :cond_1
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    iget-object v7, v0, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 103
    .line 104
    const/4 v9, 0x0

    .line 105
    const/16 v10, 0x7c0

    .line 106
    .line 107
    const/4 v8, 0x0

    .line 108
    invoke-direct/range {v1 .. v10}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    sget-object p1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 112
    .line 113
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->GALLERY_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    new-instance v2, Landroid/content/Intent;

    .line 122
    .line 123
    const-class v3, Lorg/wikipedia/descriptions/DescriptionEditActivity;

    .line 124
    .line 125
    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .line 127
    .line 128
    const-string v3, "title"

    .line 129
    .line 130
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const-string v3, "highlightText"

    .line 135
    .line 136
    invoke-virtual {v2, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    const-string v3, "sourceSummary"

    .line 141
    .line 142
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const-string v2, "targetSummary"

    .line 147
    .line 148
    invoke-virtual {v1, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    const-string v2, "intentAction"

    .line 153
    .line 154
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-string v1, "invokeSource"

    .line 159
    .line 160
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity;->requestAddCaptionLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 168
    .line 169
    invoke-virtual {p0, p1, v11}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 170
    .line 171
    .line 172
    :cond_2
    return-void
.end method

.method public final updateGalleryDescription(IZ)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getCurrentItem()Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v2, v2, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v2, v1

    .line 18
    :goto_0
    const/16 v3, 0x8

    .line 19
    .line 20
    const-string v4, "binding"

    .line 21
    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->infoContainer:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Landroid/widget/LinearLayout;

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v1

    .line 40
    :cond_2
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_5

    .line 45
    .line 46
    iget-object v2, v2, Lorg/wikipedia/gallery/ImageInfo;->captions:Ljava/util/Map;

    .line 47
    .line 48
    if-eqz v2, :cond_5

    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getViewModel()Lorg/wikipedia/gallery/GalleryViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    iget-object v5, v5, Lorg/wikipedia/gallery/GalleryViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 55
    .line 56
    iget-object v5, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 57
    .line 58
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-nez v2, :cond_4

    .line 63
    .line 64
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 65
    .line 66
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    iget-object v2, v2, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    invoke-virtual {v2}, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    move-object v2, v1

    .line 82
    :goto_1
    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    :cond_4
    check-cast v2, Ljava/lang/CharSequence;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    move-object v2, v1

    .line 90
    :goto_2
    const/4 v5, 0x0

    .line 91
    if-eqz v2, :cond_9

    .line 92
    .line 93
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-nez v6, :cond_6

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_6
    iget-object v6, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 101
    .line 102
    if-eqz v6, :cond_8

    .line 103
    .line 104
    iget-object v6, v6, Lorg/wikipedia/databinding/ActivityGalleryBinding;->descriptionContainer:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v6, Landroid/widget/LinearLayout;

    .line 107
    .line 108
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    iget-object v6, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 112
    .line 113
    if-eqz v6, :cond_7

    .line 114
    .line 115
    iget-object v6, v6, Lorg/wikipedia/databinding/ActivityGalleryBinding;->descriptionText:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v6, Lorg/wikipedia/views/AppTextView;

    .line 118
    .line 119
    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v1

    .line 131
    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v1

    .line 135
    :cond_9
    :goto_3
    iget-object v2, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 136
    .line 137
    if-eqz v2, :cond_3a

    .line 138
    .line 139
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->descriptionContainer:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v2, Landroid/widget/LinearLayout;

    .line 142
    .line 143
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    :goto_4
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    const/4 v6, 0x1

    .line 151
    if-eqz v2, :cond_a

    .line 152
    .line 153
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    iget-object v2, v2, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 161
    .line 162
    const-string v7, "/wikipedia/commons/"

    .line 163
    .line 164
    invoke-static {v2, v7, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_a

    .line 169
    .line 170
    move v2, v6

    .line 171
    goto :goto_5

    .line 172
    :cond_a
    move v2, v5

    .line 173
    :goto_5
    iget-object v7, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 174
    .line 175
    if-eqz v7, :cond_39

    .line 176
    .line 177
    iget-object v7, v7, Lorg/wikipedia/databinding/ActivityGalleryBinding;->captionEditButton:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v7, Landroid/widget/ImageView;

    .line 180
    .line 181
    if-eqz v2, :cond_b

    .line 182
    .line 183
    move v8, v5

    .line 184
    goto :goto_6

    .line 185
    :cond_b
    move v8, v3

    .line 186
    :goto_6
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    iget-object v7, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 190
    .line 191
    if-eqz v7, :cond_38

    .line 192
    .line 193
    iget-object v7, v7, Lorg/wikipedia/databinding/ActivityGalleryBinding;->captionEditButton:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v7, Landroid/widget/ImageView;

    .line 196
    .line 197
    const v8, 0x7f0801a4

    .line 198
    .line 199
    .line 200
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    .line 202
    .line 203
    iget-object v7, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 204
    .line 205
    if-eqz v7, :cond_37

    .line 206
    .line 207
    iget-object v7, v7, Lorg/wikipedia/databinding/ActivityGalleryBinding;->captionEditButton:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v7, Landroid/widget/ImageView;

    .line 210
    .line 211
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    if-eqz p2, :cond_d

    .line 219
    .line 220
    iget-object p2, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 221
    .line 222
    if-eqz p2, :cond_c

    .line 223
    .line 224
    iget-object p2, p2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->captionEditButton:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast p2, Landroid/widget/ImageView;

    .line 227
    .line 228
    const v2, 0x7f080157

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    .line 233
    .line 234
    move v2, v5

    .line 235
    goto :goto_7

    .line 236
    :cond_c
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw v1

    .line 240
    :cond_d
    :goto_7
    iget-object p2, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 241
    .line 242
    if-eqz v2, :cond_19

    .line 243
    .line 244
    if-eqz p2, :cond_18

    .line 245
    .line 246
    iget-object p2, p2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->ctaContainer:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast p2, Landroid/widget/FrameLayout;

    .line 249
    .line 250
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    if-eqz p2, :cond_1a

    .line 258
    .line 259
    iput-object v1, p0, Lorg/wikipedia/gallery/GalleryActivity;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    .line 260
    .line 261
    iget-object v2, p2, Lorg/wikipedia/gallery/ImageInfo;->captions:Ljava/util/Map;

    .line 262
    .line 263
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getViewModel()Lorg/wikipedia/gallery/GalleryViewModel;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    iget-object v7, v7, Lorg/wikipedia/gallery/GalleryViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 268
    .line 269
    iget-object v7, v7, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 270
    .line 271
    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-nez v2, :cond_f

    .line 276
    .line 277
    sget-object p1, Lorg/wikipedia/Constants$ImageEditType;->ADD_CAPTION:Lorg/wikipedia/Constants$ImageEditType;

    .line 278
    .line 279
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    .line 280
    .line 281
    invoke-virtual {p0}, Lorg/wikipedia/gallery/GalleryActivity;->getViewModel()Lorg/wikipedia/gallery/GalleryViewModel;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    iget-object p1, p1, Lorg/wikipedia/gallery/GalleryViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 286
    .line 287
    iget-object p1, p1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 288
    .line 289
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->targetLanguageCode:Ljava/lang/String;

    .line 290
    .line 291
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 292
    .line 293
    if-eqz p1, :cond_e

    .line 294
    .line 295
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->ctaButtonText:Ljava/lang/Object;

    .line 296
    .line 297
    check-cast p1, Landroid/widget/TextView;

    .line 298
    .line 299
    const p2, 0x7f12024e

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    .line 308
    .line 309
    goto/16 :goto_b

    .line 310
    .line 311
    :cond_e
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    throw v1

    .line 315
    :cond_f
    if-nez p1, :cond_11

    .line 316
    .line 317
    sget-object p1, Lorg/wikipedia/Constants$ImageEditType;->ADD_TAGS:Lorg/wikipedia/Constants$ImageEditType;

    .line 318
    .line 319
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    .line 320
    .line 321
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 322
    .line 323
    if-eqz p1, :cond_10

    .line 324
    .line 325
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->ctaButtonText:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast p1, Landroid/widget/TextView;

    .line 328
    .line 329
    const p2, 0x7f1208b5

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_b

    .line 340
    .line 341
    :cond_10
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw v1

    .line 345
    :cond_11
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 346
    .line 347
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    check-cast v2, Ljava/util/ArrayList;

    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-le v2, v6, :cond_15

    .line 366
    .line 367
    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    check-cast p1, Ljava/util/ArrayList;

    .line 372
    .line 373
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    if-eqz v2, :cond_13

    .line 382
    .line 383
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    move-object v7, v2

    .line 388
    check-cast v7, Ljava/lang/String;

    .line 389
    .line 390
    iget-object v8, p2, Lorg/wikipedia/gallery/ImageInfo;->captions:Ljava/util/Map;

    .line 391
    .line 392
    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v7

    .line 396
    if-nez v7, :cond_12

    .line 397
    .line 398
    goto :goto_8

    .line 399
    :cond_13
    move-object v2, v1

    .line 400
    :goto_8
    check-cast v2, Ljava/lang/String;

    .line 401
    .line 402
    if-eqz v2, :cond_15

    .line 403
    .line 404
    iput-object v2, p0, Lorg/wikipedia/gallery/GalleryActivity;->targetLanguageCode:Ljava/lang/String;

    .line 405
    .line 406
    sget-object p1, Lorg/wikipedia/Constants$ImageEditType;->ADD_CAPTION_TRANSLATION:Lorg/wikipedia/Constants$ImageEditType;

    .line 407
    .line 408
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    .line 409
    .line 410
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 411
    .line 412
    if-eqz p1, :cond_14

    .line 413
    .line 414
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->ctaButtonText:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast p1, Landroid/widget/TextView;

    .line 417
    .line 418
    sget-object p2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 419
    .line 420
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 421
    .line 422
    .line 423
    move-result-object p2

    .line 424
    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 425
    .line 426
    .line 427
    move-result-object p2

    .line 428
    iget-object v2, p0, Lorg/wikipedia/gallery/GalleryActivity;->targetLanguageCode:Ljava/lang/String;

    .line 429
    .line 430
    invoke-virtual {p2, v2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object p2

    .line 434
    new-array v2, v6, [Ljava/lang/Object;

    .line 435
    .line 436
    aput-object p2, v2, v5

    .line 437
    .line 438
    const p2, 0x7f12024f

    .line 439
    .line 440
    .line 441
    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p2

    .line 445
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    .line 447
    .line 448
    goto :goto_9

    .line 449
    :cond_14
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    throw v1

    .line 453
    :cond_15
    :goto_9
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 454
    .line 455
    if-eqz p1, :cond_17

    .line 456
    .line 457
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->ctaContainer:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast p1, Landroid/widget/FrameLayout;

    .line 460
    .line 461
    iget-object p2, p0, Lorg/wikipedia/gallery/GalleryActivity;->imageEditType:Lorg/wikipedia/Constants$ImageEditType;

    .line 462
    .line 463
    if-eqz p2, :cond_16

    .line 464
    .line 465
    move p2, v5

    .line 466
    goto :goto_a

    .line 467
    :cond_16
    move p2, v3

    .line 468
    :goto_a
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 469
    .line 470
    .line 471
    goto :goto_b

    .line 472
    :cond_17
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    throw v1

    .line 476
    :cond_18
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    throw v1

    .line 480
    :cond_19
    if-eqz p2, :cond_36

    .line 481
    .line 482
    iget-object p1, p2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->ctaContainer:Ljava/lang/Object;

    .line 483
    .line 484
    check-cast p1, Landroid/widget/FrameLayout;

    .line 485
    .line 486
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 487
    .line 488
    .line 489
    :cond_1a
    :goto_b
    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 494
    .line 495
    .line 496
    iget-object p1, p1, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 497
    .line 498
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 499
    .line 500
    .line 501
    iget-object p2, p1, Lorg/wikipedia/gallery/ExtMetadata;->licenseUrl:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 502
    .line 503
    new-instance v0, Lorg/wikipedia/gallery/ImageLicense;

    .line 504
    .line 505
    iget-object v2, p1, Lorg/wikipedia/gallery/ExtMetadata;->license:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 506
    .line 507
    if-eqz v2, :cond_1b

    .line 508
    .line 509
    iget-object v2, v2, Lorg/wikipedia/gallery/ExtMetadata$Values;->value:Ljava/lang/String;

    .line 510
    .line 511
    goto :goto_c

    .line 512
    :cond_1b
    move-object v2, v1

    .line 513
    :goto_c
    const-string v7, ""

    .line 514
    .line 515
    if-nez v2, :cond_1c

    .line 516
    .line 517
    move-object v2, v7

    .line 518
    :cond_1c
    invoke-virtual {p1}, Lorg/wikipedia/gallery/ExtMetadata;->licenseShortName()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v8

    .line 522
    if-eqz p2, :cond_1d

    .line 523
    .line 524
    iget-object v9, p2, Lorg/wikipedia/gallery/ExtMetadata$Values;->value:Ljava/lang/String;

    .line 525
    .line 526
    goto :goto_d

    .line 527
    :cond_1d
    move-object v9, v1

    .line 528
    :goto_d
    if-nez v9, :cond_1e

    .line 529
    .line 530
    move-object v9, v7

    .line 531
    :cond_1e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 532
    .line 533
    .line 534
    iput-object v2, v0, Lorg/wikipedia/gallery/ImageLicense;->licenseName:Ljava/lang/String;

    .line 535
    .line 536
    iput-object v8, v0, Lorg/wikipedia/gallery/ImageLicense;->licenseShortName:Ljava/lang/String;

    .line 537
    .line 538
    iput-object v9, v0, Lorg/wikipedia/gallery/ImageLicense;->licenseUrl:Ljava/lang/String;

    .line 539
    .line 540
    invoke-virtual {v0}, Lorg/wikipedia/gallery/ImageLicense;->licenseIcon()I

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    iget-object v8, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 545
    .line 546
    const v9, 0x7f080192

    .line 547
    .line 548
    .line 549
    if-ne v2, v9, :cond_24

    .line 550
    .line 551
    if-eqz v8, :cond_23

    .line 552
    .line 553
    iget-object v0, v8, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseIcon:Ljava/lang/Object;

    .line 554
    .line 555
    check-cast v0, Landroid/widget/ImageView;

    .line 556
    .line 557
    const v2, 0x7f080193

    .line 558
    .line 559
    .line 560
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 561
    .line 562
    .line 563
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 564
    .line 565
    if-eqz v0, :cond_22

    .line 566
    .line 567
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseIconBy:Ljava/lang/Object;

    .line 568
    .line 569
    check-cast v0, Landroid/widget/ImageView;

    .line 570
    .line 571
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 572
    .line 573
    .line 574
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 575
    .line 576
    if-eqz v0, :cond_21

    .line 577
    .line 578
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseIconBy:Ljava/lang/Object;

    .line 579
    .line 580
    check-cast v0, Landroid/widget/ImageView;

    .line 581
    .line 582
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 583
    .line 584
    .line 585
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 586
    .line 587
    if-eqz v0, :cond_20

    .line 588
    .line 589
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseIconSa:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast v0, Landroid/widget/ImageView;

    .line 592
    .line 593
    const v2, 0x7f080196

    .line 594
    .line 595
    .line 596
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 597
    .line 598
    .line 599
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 600
    .line 601
    if-eqz v0, :cond_1f

    .line 602
    .line 603
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseIconSa:Ljava/lang/Object;

    .line 604
    .line 605
    check-cast v0, Landroid/widget/ImageView;

    .line 606
    .line 607
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    .line 609
    .line 610
    goto :goto_e

    .line 611
    :cond_1f
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    throw v1

    .line 615
    :cond_20
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    throw v1

    .line 619
    :cond_21
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    throw v1

    .line 623
    :cond_22
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    throw v1

    .line 627
    :cond_23
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    throw v1

    .line 631
    :cond_24
    if-eqz v8, :cond_35

    .line 632
    .line 633
    iget-object v2, v8, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseIcon:Ljava/lang/Object;

    .line 634
    .line 635
    check-cast v2, Landroid/widget/ImageView;

    .line 636
    .line 637
    invoke-virtual {v0}, Lorg/wikipedia/gallery/ImageLicense;->licenseIcon()I

    .line 638
    .line 639
    .line 640
    move-result v0

    .line 641
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 642
    .line 643
    .line 644
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 645
    .line 646
    if-eqz v0, :cond_34

    .line 647
    .line 648
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseIconBy:Ljava/lang/Object;

    .line 649
    .line 650
    check-cast v0, Landroid/widget/ImageView;

    .line 651
    .line 652
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 653
    .line 654
    .line 655
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 656
    .line 657
    if-eqz v0, :cond_33

    .line 658
    .line 659
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseIconSa:Ljava/lang/Object;

    .line 660
    .line 661
    check-cast v0, Landroid/widget/ImageView;

    .line 662
    .line 663
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 664
    .line 665
    .line 666
    :goto_e
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 667
    .line 668
    if-eqz v0, :cond_32

    .line 669
    .line 670
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseIcon:Ljava/lang/Object;

    .line 671
    .line 672
    check-cast v0, Landroid/widget/ImageView;

    .line 673
    .line 674
    invoke-virtual {p1}, Lorg/wikipedia/gallery/ExtMetadata;->licenseShortName()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 679
    .line 680
    .line 681
    move-result v3

    .line 682
    if-eqz v3, :cond_25

    .line 683
    .line 684
    const v2, 0x7f120253

    .line 685
    .line 686
    .line 687
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v2

    .line 691
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 692
    .line 693
    .line 694
    :cond_25
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 695
    .line 696
    .line 697
    iget-object v0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 698
    .line 699
    if-eqz v0, :cond_31

    .line 700
    .line 701
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseIcon:Ljava/lang/Object;

    .line 702
    .line 703
    check-cast v0, Landroid/widget/ImageView;

    .line 704
    .line 705
    if-eqz p2, :cond_26

    .line 706
    .line 707
    iget-object p2, p2, Lorg/wikipedia/gallery/ExtMetadata$Values;->value:Ljava/lang/String;

    .line 708
    .line 709
    goto :goto_f

    .line 710
    :cond_26
    move-object p2, v1

    .line 711
    :goto_f
    if-nez p2, :cond_27

    .line 712
    .line 713
    move-object p2, v7

    .line 714
    :cond_27
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 715
    .line 716
    .line 717
    iget-object p2, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 718
    .line 719
    if-eqz p2, :cond_30

    .line 720
    .line 721
    iget-object p2, p2, Lorg/wikipedia/databinding/ActivityGalleryBinding;->licenseContainer:Ljava/lang/Object;

    .line 722
    .line 723
    check-cast p2, Landroid/widget/LinearLayout;

    .line 724
    .line 725
    new-array v0, v6, [Landroid/view/View;

    .line 726
    .line 727
    aput-object p2, v0, v5

    .line 728
    .line 729
    aget-object p2, v0, v5

    .line 730
    .line 731
    new-instance v0, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda0;

    .line 732
    .line 733
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 734
    .line 735
    .line 736
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 737
    .line 738
    .line 739
    iget-object p2, p1, Lorg/wikipedia/gallery/ExtMetadata;->artist:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 740
    .line 741
    if-eqz p2, :cond_28

    .line 742
    .line 743
    iget-object p2, p2, Lorg/wikipedia/gallery/ExtMetadata$Values;->value:Ljava/lang/String;

    .line 744
    .line 745
    goto :goto_10

    .line 746
    :cond_28
    move-object p2, v1

    .line 747
    :goto_10
    if-nez p2, :cond_29

    .line 748
    .line 749
    move-object p2, v7

    .line 750
    :cond_29
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 751
    .line 752
    .line 753
    move-result v0

    .line 754
    if-nez v0, :cond_2c

    .line 755
    .line 756
    iget-object p1, p1, Lorg/wikipedia/gallery/ExtMetadata;->credit:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 757
    .line 758
    if-eqz p1, :cond_2a

    .line 759
    .line 760
    iget-object p1, p1, Lorg/wikipedia/gallery/ExtMetadata$Values;->value:Ljava/lang/String;

    .line 761
    .line 762
    goto :goto_11

    .line 763
    :cond_2a
    move-object p1, v1

    .line 764
    :goto_11
    if-nez p1, :cond_2b

    .line 765
    .line 766
    goto :goto_12

    .line 767
    :cond_2b
    move-object v7, p1

    .line 768
    :goto_12
    move-object p2, v7

    .line 769
    :cond_2c
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 770
    .line 771
    if-eqz p1, :cond_2f

    .line 772
    .line 773
    iget-object p1, p1, Lorg/wikipedia/databinding/ActivityGalleryBinding;->creditText:Ljava/lang/Object;

    .line 774
    .line 775
    check-cast p1, Lorg/wikipedia/views/AppTextView;

    .line 776
    .line 777
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 778
    .line 779
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 780
    .line 781
    .line 782
    move-result v0

    .line 783
    if-eqz v0, :cond_2d

    .line 784
    .line 785
    const p2, 0x7f12025b

    .line 786
    .line 787
    .line 788
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object p2

    .line 792
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 793
    .line 794
    .line 795
    :cond_2d
    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 796
    .line 797
    .line 798
    move-result-object p2

    .line 799
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    .line 801
    .line 802
    iget-object p0, p0, Lorg/wikipedia/gallery/GalleryActivity;->binding:Lorg/wikipedia/databinding/ActivityGalleryBinding;

    .line 803
    .line 804
    if-eqz p0, :cond_2e

    .line 805
    .line 806
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityGalleryBinding;->infoContainer:Ljava/lang/Object;

    .line 807
    .line 808
    check-cast p0, Landroid/widget/LinearLayout;

    .line 809
    .line 810
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 811
    .line 812
    .line 813
    return-void

    .line 814
    :cond_2e
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    throw v1

    .line 818
    :cond_2f
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    throw v1

    .line 822
    :cond_30
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    throw v1

    .line 826
    :cond_31
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    throw v1

    .line 830
    :cond_32
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    throw v1

    .line 834
    :cond_33
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    throw v1

    .line 838
    :cond_34
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    throw v1

    .line 842
    :cond_35
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 843
    .line 844
    .line 845
    throw v1

    .line 846
    :cond_36
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    throw v1

    .line 850
    :cond_37
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    throw v1

    .line 854
    :cond_38
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    throw v1

    .line 858
    :cond_39
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 859
    .line 860
    .line 861
    throw v1

    .line 862
    :cond_3a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    throw v1
.end method

.class public final Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0004\u0006\u0007\u0008\u0008B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;",
        "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;",
        "Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;",
        "Landroid/content/DialogInterface$OnDismissListener;",
        "<init>",
        "()V",
        "LoadPageCallback",
        "DismissCallback",
        "OverlayViewCallback",
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
.field public _binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

.field public articleLinkPreviewInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent;

.field public final galleryViewListener:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;

.field public final menuListener:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;

.field public navigateSuccess:Z

.field public overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

.field public final requestGalleryLauncher:Landroidx/fragment/app/Fragment$10;

.field public final requestStubArticleEditLauncher:Landroidx/fragment/app/Fragment$10;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    new-instance v1, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 6
    .line 7
    const/16 v2, 0x14

    .line 8
    .line 9
    invoke-direct {v1, v2, p0}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 13
    .line 14
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 15
    .line 16
    const/16 v4, 0x15

    .line 17
    .line 18
    invoke-direct {v3, v4, v1}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-class v2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 26
    .line 27
    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v3, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    invoke-direct {v3, v1, v4}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 37
    .line 38
    .line 39
    new-instance v5, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;

    .line 40
    .line 41
    const/4 v6, 0x2

    .line 42
    invoke-direct {v5, v1, v6}, Lorg/wikipedia/places/PlacesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 43
    .line 44
    .line 45
    new-instance v7, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;

    .line 46
    .line 47
    const/16 v8, 0xa

    .line 48
    .line 49
    invoke-direct {v7, p0, v1, v8}, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;I)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lokhttp3/Request$Builder;

    .line 53
    .line 54
    invoke-direct {v1, v2, v3, v7, v5}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 58
    .line 59
    new-instance v1, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;

    .line 60
    .line 61
    invoke-direct {v1, p0, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;I)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->menuListener:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;

    .line 65
    .line 66
    new-instance v0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;

    .line 67
    .line 68
    invoke-direct {v0, p0, v4}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;I)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->galleryViewListener:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;

    .line 72
    .line 73
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 74
    .line 75
    const/4 v1, 0x3

    .line 76
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 77
    .line 78
    .line 79
    new-instance v2, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;

    .line 80
    .line 81
    invoke-direct {v2, p0, v6}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 89
    .line 90
    iput-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->requestGalleryLauncher:Landroidx/fragment/app/Fragment$10;

    .line 91
    .line 92
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 93
    .line 94
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 95
    .line 96
    .line 97
    new-instance v2, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;

    .line 98
    .line 99
    invoke-direct {v2, p0, v1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 107
    .line 108
    iput-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->requestStubArticleEditLauncher:Landroidx/fragment/app/Fragment$10;

    .line 109
    .line 110
    return-void
.end method


# virtual methods
.method public final getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final goToLinkedPage(Z)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->navigateSuccess:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v2, v2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->historyEntry:Lorg/wikipedia/history/HistoryEntry;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-class v4, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$LoadPageCallback;

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v4, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 58
    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v4, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    goto :goto_0

    .line 87
    :cond_4
    const/4 v0, 0x0

    .line 88
    :goto_0
    check-cast v0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$LoadPageCallback;

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    invoke-interface {v0, v1, v2, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$LoadPageCallback;->onLinkPreviewLoadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Z)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    sget p1, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {v2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p0, v2, p1}, Lorg/wikipedia/login/LoginClient;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    goto :goto_1

    .line 117
    :cond_6
    sget p1, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {v2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    const/4 v1, 0x0

    .line 128
    invoke-static {p0, v2, p1, v1}, Lorg/wikipedia/login/LoginClient;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    :goto_1
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0c0182

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
    const v3, 0x7f0901b9

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    move-object v7, v4

    .line 26
    check-cast v7, Landroid/widget/LinearLayout;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v7, :cond_0

    .line 30
    .line 31
    const v3, 0x7f0901ba

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    move-object v8, v5

    .line 39
    check-cast v8, Landroid/widget/LinearLayout;

    .line 40
    .line 41
    if-eqz v8, :cond_0

    .line 42
    .line 43
    const v3, 0x7f0901bb

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    move-object v9, v5

    .line 51
    check-cast v9, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    .line 52
    .line 53
    if-eqz v9, :cond_0

    .line 54
    .line 55
    const v3, 0x7f090336

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    move-object v10, v5

    .line 63
    check-cast v10, Landroid/widget/TextView;

    .line 64
    .line 65
    if-eqz v10, :cond_0

    .line 66
    .line 67
    const v3, 0x7f090335

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    move-object v11, v5

    .line 75
    check-cast v11, Lcom/google/android/material/button/MaterialButton;

    .line 76
    .line 77
    if-eqz v11, :cond_0

    .line 78
    .line 79
    const v3, 0x7f090337

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    move-object v12, v5

    .line 87
    check-cast v12, Landroid/widget/TextView;

    .line 88
    .line 89
    if-eqz v12, :cond_0

    .line 90
    .line 91
    const v3, 0x7f090338

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    move-object v13, v5

    .line 99
    check-cast v13, Landroid/widget/ImageView;

    .line 100
    .line 101
    if-eqz v13, :cond_0

    .line 102
    .line 103
    const v3, 0x7f09033a

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    move-object v14, v5

    .line 111
    check-cast v14, Landroid/widget/ProgressBar;

    .line 112
    .line 113
    if-eqz v14, :cond_0

    .line 114
    .line 115
    const v3, 0x7f09033d

    .line 116
    .line 117
    .line 118
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    move-object v15, v5

    .line 123
    check-cast v15, Landroid/widget/ImageView;

    .line 124
    .line 125
    if-eqz v15, :cond_0

    .line 126
    .line 127
    const v3, 0x7f09033e

    .line 128
    .line 129
    .line 130
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    move-object/from16 v16, v5

    .line 135
    .line 136
    check-cast v16, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;

    .line 137
    .line 138
    if-eqz v16, :cond_0

    .line 139
    .line 140
    const v3, 0x7f09033f

    .line 141
    .line 142
    .line 143
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    move-object/from16 v17, v5

    .line 148
    .line 149
    check-cast v17, Landroid/widget/TextView;

    .line 150
    .line 151
    if-eqz v17, :cond_0

    .line 152
    .line 153
    const v3, 0x7f090340

    .line 154
    .line 155
    .line 156
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    move-object/from16 v18, v5

    .line 161
    .line 162
    check-cast v18, Landroid/widget/LinearLayout;

    .line 163
    .line 164
    if-eqz v18, :cond_0

    .line 165
    .line 166
    new-instance v5, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 167
    .line 168
    move-object v6, v1

    .line 169
    check-cast v6, Landroid/widget/FrameLayout;

    .line 170
    .line 171
    invoke-direct/range {v5 .. v18}, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Lorg/wikipedia/gallery/GalleryThumbnailScrollView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    .line 172
    .line 173
    .line 174
    move-object v1, v5

    .line 175
    move-object/from16 v5, v18

    .line 176
    .line 177
    iput-object v1, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 178
    .line 179
    new-instance v1, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda0;

    .line 180
    .line 181
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    iget-object v1, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    iget-object v1, v1, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewOverflowButton:Landroid/widget/ImageView;

    .line 193
    .line 194
    new-instance v3, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda0;

    .line 195
    .line 196
    const/4 v5, 0x1

    .line 197
    invoke-direct {v3, v0, v5}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    iget-object v1, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    iget-object v1, v1, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewEditButton:Lcom/google/android/material/button/MaterialButton;

    .line 209
    .line 210
    new-instance v3, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda0;

    .line 211
    .line 212
    const/4 v5, 0x2

    .line 213
    invoke-direct {v3, v0, v5}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    iget-object v1, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    iget-object v1, v1, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->rootView:Landroid/widget/FrameLayout;

    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    iget-object v3, v3, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 234
    .line 235
    iget-object v3, v3, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 236
    .line 237
    iget-object v3, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 238
    .line 239
    invoke-static {v1, v3}, Lcoil3/util/BitmapsKt;->setLayoutDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    new-instance v3, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$onCreateView$4;

    .line 247
    .line 248
    invoke-direct {v3, v0, v4, v2}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$onCreateView$4;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;Lkotlin/coroutines/Continuation;I)V

    .line 249
    .line 250
    .line 251
    const/4 v2, 0x3

    .line 252
    invoke-static {v1, v4, v4, v3, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 253
    .line 254
    .line 255
    iget-object v0, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->rootView:Landroid/widget/FrameLayout;

    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    return-object v0

    .line 266
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    const-string v1, "Missing required view with ID: "

    .line 275
    .line 276
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    return-object v4
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewThumbnailGallery:Lorg/wikipedia/gallery/GalleryThumbnailScrollView;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lorg/wikipedia/gallery/GalleryThumbnailScrollView;->setListener(Lorg/wikipedia/gallery/GalleryThumbnailScrollView$GalleryViewListener;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewToolbar:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lorg/wikipedia/databinding/DialogLinkPreviewBinding;->linkPreviewOverflowButton:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->setCallback(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    .line 40
    .line 41
    :cond_0
    iput-object v1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->_binding:Lorg/wikipedia/databinding/DialogLinkPreviewBinding;

    .line 42
    .line 43
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-class v1, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$DismissCallback;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const/4 p1, 0x0

    .line 73
    :goto_0
    check-cast p1, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$DismissCallback;

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    invoke-interface {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$DismissCallback;->onLinkPreviewDismiss()V

    .line 78
    .line 79
    .line 80
    :cond_4
    iget-boolean p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->navigateSuccess:Z

    .line 81
    .line 82
    if-nez p1, :cond_5

    .line 83
    .line 84
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->articleLinkPreviewInteractionEvent:Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent;

    .line 85
    .line 86
    if-eqz p0, :cond_5

    .line 87
    .line 88
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 89
    .line 90
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;

    .line 91
    .line 92
    iget v1, p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent;->source:I

    .line 93
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide v2

    .line 98
    iget-wide v4, p0, Lorg/wikipedia/analytics/eventplatform/TimedEvent;->startTime:J

    .line 99
    .line 100
    sub-long/2addr v2, v4

    .line 101
    long-to-int v2, v2

    .line 102
    iget-object v5, p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent;->wikiDb:Ljava/lang/String;

    .line 103
    .line 104
    iget v3, p0, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent;->pageId:I

    .line 105
    .line 106
    const-string v4, "cancel"

    .line 107
    .line 108
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/analytics/eventplatform/ArticleLinkPreviewInteractionEvent$ArticleLinkPreviewInteractionEventImpl;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    return-void
.end method

.method public final onResume()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->requireDialog()Landroid/app/Dialog;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const v2, 0x1020002

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/view/ViewGroup;

    .line 16
    .line 17
    iget-object v2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    .line 18
    .line 19
    if-nez v2, :cond_3

    .line 20
    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    new-instance v2, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v2, v3}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->overlayView:Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;

    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-boolean v3, v3, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->fromPlaces:Z

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iget-object v4, v4, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 51
    .line 52
    const v5, 0x7f12033b

    .line 53
    .line 54
    .line 55
    const v6, 0x7f120339

    .line 56
    .line 57
    .line 58
    const v7, 0x7f120338

    .line 59
    .line 60
    .line 61
    filled-new-array {v5, v6, v7}, [I

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-static {v3, v4, v8}, Lorg/wikipedia/extensions/ContextKt;->getStrings(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;[I)Landroid/util/SparseArray;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    new-instance v4, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;

    .line 70
    .line 71
    invoke-direct {v4, p0, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v4}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->setCallback(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Ljava/lang/CharSequence;

    .line 82
    .line 83
    invoke-virtual {v2, p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->setPrimaryButtonText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    check-cast p0, Ljava/lang/CharSequence;

    .line 91
    .line 92
    invoke-virtual {v2, p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->setSecondaryButtonText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    check-cast p0, Ljava/lang/CharSequence;

    .line 100
    .line 101
    invoke-virtual {v2, p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->setTertiaryButtonText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    iget-object v4, v4, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 114
    .line 115
    const v5, 0x7f1200ab

    .line 116
    .line 117
    .line 118
    const v6, 0x7f1200a9

    .line 119
    .line 120
    .line 121
    const v7, 0x7f1203e0

    .line 122
    .line 123
    .line 124
    filled-new-array {v5, v6, v7}, [I

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-static {v3, v4, v8}, Lorg/wikipedia/extensions/ContextKt;->getStrings(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;[I)Landroid/util/SparseArray;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    new-instance v4, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;

    .line 133
    .line 134
    const/4 v8, 0x0

    .line 135
    invoke-direct {v4, p0, v8}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$OverlayViewCallback;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v4}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->setCallback(Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView$Callback;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    iget-object v4, v4, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 146
    .line 147
    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    sget-object v8, Lorg/wikipedia/page/Namespace;->TALK:Lorg/wikipedia/page/Namespace;

    .line 152
    .line 153
    if-eq v4, v8, :cond_2

    .line 154
    .line 155
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 160
    .line 161
    invoke-virtual {p0}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    sget-object v4, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    .line 166
    .line 167
    if-ne p0, v4, :cond_1

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_1
    move v5, v6

    .line 171
    :cond_2
    :goto_0
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    check-cast p0, Ljava/lang/CharSequence;

    .line 176
    .line 177
    invoke-virtual {v2, p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->setPrimaryButtonText(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    check-cast p0, Ljava/lang/CharSequence;

    .line 185
    .line 186
    invoke-virtual {v2, p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->setSecondaryButtonText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    iget-object p0, v2, Lorg/wikipedia/page/linkpreview/LinkPreviewOverlayView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 190
    .line 191
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast p0, Landroid/widget/Button;

    .line 194
    .line 195
    const/16 v3, 0x8

    .line 196
    .line 197
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 201
    .line 202
    .line 203
    new-instance p0, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;

    .line 204
    .line 205
    invoke-direct {p0, v0}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 206
    .line 207
    .line 208
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 209
    .line 210
    invoke-static {v2, p0}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 211
    .line 212
    .line 213
    :cond_3
    return-void
.end method

.method public final sendPlacesEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->getViewModel()Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->historyEntry:Lorg/wikipedia/history/HistoryEntry;

    .line 6
    .line 7
    iget p0, p0, Lorg/wikipedia/history/HistoryEntry;->source:I

    .line 8
    .line 9
    const/16 v0, 0x9

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 14
    .line 15
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 16
    .line 17
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 18
    .line 19
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 24
    .line 25
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const-string v6, "app_places_interaction"

    .line 30
    .line 31
    const-string v3, ""

    .line 32
    .line 33
    move-object v1, p1

    .line 34
    move-object v2, p2

    .line 35
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

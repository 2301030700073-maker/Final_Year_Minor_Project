.class public final Lorg/wikipedia/commons/FilePageFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/wikipedia/commons/FilePageFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/core/view/MenuProvider;",
        "<init>",
        "()V",
        "okhttp3/ConnectionPool",
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
.field public _binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public final addImageCaptionLauncher:Landroidx/fragment/app/Fragment$10;

.field public final addImageTagsLauncher:Landroidx/fragment/app/Fragment$10;

.field public final downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

.field public final downloadReceiverCallback:Lokhttp3/ConnectionPool;

.field public final requestPermissionLauncher:Landroidx/fragment/app/Fragment$10;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lleakcanary/AndroidLeakFixes$Companion$onDecorViewReady$1;

    .line 5
    .line 6
    const/16 v1, 0x1b

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lleakcanary/AndroidLeakFixes$Companion$onDecorViewReady$1;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v2, Lleakcanary/AndroidLeakFixes$Companion$onDecorViewReady$1;

    .line 14
    .line 15
    const/16 v3, 0x1c

    .line 16
    .line 17
    invoke-direct {v2, v3, v0}, Lleakcanary/AndroidLeakFixes$Companion$onDecorViewReady$1;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-class v1, Lorg/wikipedia/commons/FilePageViewModel;

    .line 25
    .line 26
    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 33
    .line 34
    const/4 v3, 0x5

    .line 35
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 39
    .line 40
    const/4 v4, 0x6

    .line 41
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 42
    .line 43
    .line 44
    new-instance v4, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    .line 45
    .line 46
    const/16 v5, 0x1d

    .line 47
    .line 48
    invoke-direct {v4, v5, p0, v0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lokhttp3/Request$Builder;

    .line 52
    .line 53
    invoke-direct {v0, v1, v2, v4, v3}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lorg/wikipedia/commons/FilePageFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 57
    .line 58
    new-instance v0, Lorg/wikipedia/gallery/MediaDownloadReceiver;

    .line 59
    .line 60
    invoke-direct {v0}, Lorg/wikipedia/gallery/MediaDownloadReceiver;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lorg/wikipedia/commons/FilePageFragment;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    .line 64
    .line 65
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 66
    .line 67
    const/16 v1, 0x18

    .line 68
    .line 69
    invoke-direct {v0, v1, p0}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lorg/wikipedia/commons/FilePageFragment;->downloadReceiverCallback:Lokhttp3/ConnectionPool;

    .line 73
    .line 74
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 75
    .line 76
    const/4 v1, 0x2

    .line 77
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Lorg/wikipedia/commons/FilePageFragment$$ExternalSyntheticLambda0;

    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/commons/FilePageFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/commons/FilePageFragment;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 91
    .line 92
    iput-object v0, p0, Lorg/wikipedia/commons/FilePageFragment;->requestPermissionLauncher:Landroidx/fragment/app/Fragment$10;

    .line 93
    .line 94
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 95
    .line 96
    const/4 v2, 0x3

    .line 97
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 98
    .line 99
    .line 100
    new-instance v3, Lorg/wikipedia/commons/FilePageFragment$$ExternalSyntheticLambda0;

    .line 101
    .line 102
    const/4 v4, 0x1

    .line 103
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/commons/FilePageFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/commons/FilePageFragment;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v3, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 111
    .line 112
    iput-object v0, p0, Lorg/wikipedia/commons/FilePageFragment;->addImageCaptionLauncher:Landroidx/fragment/app/Fragment$10;

    .line 113
    .line 114
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 115
    .line 116
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 117
    .line 118
    .line 119
    new-instance v2, Lorg/wikipedia/commons/FilePageFragment$$ExternalSyntheticLambda0;

    .line 120
    .line 121
    invoke-direct {v2, p0, v1}, Lorg/wikipedia/commons/FilePageFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/commons/FilePageFragment;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 129
    .line 130
    iput-object v0, p0, Lorg/wikipedia/commons/FilePageFragment;->addImageTagsLauncher:Landroidx/fragment/app/Fragment$10;

    .line 131
    .line 132
    return-void
.end method


# virtual methods
.method public final downloadImage()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/commons/FilePageFragment;->getViewModel()Lorg/wikipedia/commons/FilePageViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lorg/wikipedia/commons/FilePageViewModel;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/wikipedia/commons/FilePageFragment;->getViewModel()Lorg/wikipedia/commons/FilePageViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v1, v1, Lorg/wikipedia/commons/FilePageViewModel;->mediaInfo:Lorg/wikipedia/gallery/ImageInfo;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v0, v0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 22
    .line 23
    iget-object v3, p0, Lorg/wikipedia/commons/FilePageFragment;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v0, v1}, Lorg/wikipedia/gallery/MediaDownloadReceiver;->download(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/gallery/ImageInfo;)V

    .line 29
    .line 30
    .line 31
    const v0, 0x7f120258

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p0}, Lorg/wikipedia/util/ShareUtil;->showMessage(ILandroidx/fragment/app/Fragment;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    if-nez v0, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    return-void

    .line 45
    :cond_2
    :goto_1
    const v0, 0x7f1201d4

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p0}, Lorg/wikipedia/util/ShareUtil;->showMessage(ILandroidx/fragment/app/Fragment;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final getViewModel()Lorg/wikipedia/commons/FilePageViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/commons/FilePageFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/commons/FilePageViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const p0, 0x7f0e000d

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p3, 0x7f0c0193

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
    const p2, 0x7f09021f

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
    check-cast v2, Lorg/wikipedia/views/WikiErrorView;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const p2, 0x7f090237

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout;

    .line 32
    .line 33
    if-eqz p3, :cond_0

    .line 34
    .line 35
    const p2, 0x7f090238

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    move-object v3, p3

    .line 43
    check-cast v3, Lorg/wikipedia/commons/FilePageView;

    .line 44
    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    const p2, 0x7f090513

    .line 48
    .line 49
    .line 50
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    move-object v4, p3

    .line 55
    check-cast v4, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 56
    .line 57
    if-eqz v4, :cond_0

    .line 58
    .line 59
    const p2, 0x7f090642

    .line 60
    .line 61
    .line 62
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    move-object v5, p3

    .line 67
    check-cast v5, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 68
    .line 69
    if-eqz v5, :cond_0

    .line 70
    .line 71
    const p2, 0x7f0906cb

    .line 72
    .line 73
    .line 74
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    move-object v6, p3

    .line 79
    check-cast v6, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 80
    .line 81
    if-eqz v6, :cond_0

    .line 82
    .line 83
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 84
    .line 85
    move-object v1, p1

    .line 86
    check-cast v1, Landroid/widget/LinearLayout;

    .line 87
    .line 88
    invoke-direct/range {v0 .. v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lorg/wikipedia/commons/FilePageFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    sget-object p3, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 102
    .line 103
    invoke-virtual {p1, p0, p2, p3}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/fragment/app/FragmentViewLifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object p2, p0, Lorg/wikipedia/commons/FilePageFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    iget-object p2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p2, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lorg/wikipedia/commons/FilePageFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast p1, Landroid/widget/LinearLayout;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lorg/wikipedia/commons/FilePageFragment;->getViewModel()Lorg/wikipedia/commons/FilePageViewModel;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    iget-object p2, p2, Lorg/wikipedia/commons/FilePageViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 139
    .line 140
    iget-object p2, p2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 141
    .line 142
    iget-object p2, p2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {p1, p2}, Lcoil3/util/BitmapsKt;->setLayoutDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, Lorg/wikipedia/commons/FilePageFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 148
    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p0, Landroid/widget/LinearLayout;

    .line 155
    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    return-object p0

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    const-string p1, "Missing required view with ID: "

    .line 169
    .line 170
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const/4 p0, 0x0

    .line 178
    return-object p0
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/wikipedia/commons/FilePageFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 6
    .line 7
    return-void
.end method

.method public final onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const v0, 0x7f0903ac

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p1, v0, :cond_2

    .line 13
    .line 14
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v0, 0x21

    .line 17
    .line 18
    if-ge p1, v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lorg/wikipedia/util/FileUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/commons/FilePageFragment;->requestPermissionLauncher:Landroidx/fragment/app/Fragment$10;

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment$10;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/wikipedia/commons/FilePageFragment;->downloadImage()V

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_2
    const v0, 0x7f0903ad

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    if-ne p1, v0, :cond_5

    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/wikipedia/commons/FilePageFragment;->getViewModel()Lorg/wikipedia/commons/FilePageViewModel;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p1, p1, Lorg/wikipedia/commons/FilePageViewModel;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 55
    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    invoke-virtual {p1}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->getPreferredSizeThumbnailUrl()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    new-instance v4, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;

    .line 67
    .line 68
    const/16 v5, 0x12

    .line 69
    .line 70
    invoke-direct {v4, p0, v0, p1, v5}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    sget-object p0, Lokio/Okio__OkioKt;->_implementation:Lokio/ByteString$Companion;

    .line 74
    .line 75
    if-eqz p0, :cond_3

    .line 76
    .line 77
    new-instance p0, Lcoil3/request/ImageRequest$Builder;

    .line 78
    .line 79
    invoke-direct {p0, v3}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcoil3/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    .line 83
    .line 84
    new-instance p1, Landroidx/compose/ui/draw/DrawResult;

    .line 85
    .line 86
    invoke-direct {p1, v4}, Landroidx/compose/ui/draw/DrawResult;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lcoil3/request/ImageRequest$Builder;->target:Lcoil3/target/Target;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {v3}, Lcoil3/SingletonImageLoader;->get(Landroid/content/Context;)Lcoil3/RealImageLoader;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1, p0}, Lcoil3/RealImageLoader;->enqueue(Lcoil3/request/ImageRequest;)V

    .line 100
    .line 101
    .line 102
    return v1

    .line 103
    :cond_3
    const-string p0, "ImageService has not been set, call ImageService.setImplementation() before using ImageService"

    .line 104
    .line 105
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return v2

    .line 109
    :cond_4
    return v1

    .line 110
    :cond_5
    return v2
.end method

.method public final onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object p0, p0, Lorg/wikipedia/commons/FilePageFragment;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lorg/wikipedia/gallery/MediaDownloadReceiver;->callback:Ljava/lang/Object;

    .line 18
    .line 19
    return-void
.end method

.method public final onPrepareMenu(Landroid/view/Menu;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/commons/FilePageFragment;->getViewModel()Lorg/wikipedia/commons/FilePageViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p0, p0, Lorg/wikipedia/commons/FilePageViewModel;->mediaInfo:Lorg/wikipedia/gallery/ImageInfo;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-lez p0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    :cond_1
    const p0, 0x7f0903ac

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 39
    .line 40
    .line 41
    const p0, 0x7f0903ad

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lorg/wikipedia/commons/FilePageFragment;->downloadReceiverCallback:Lokhttp3/ConnectionPool;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/commons/FilePageFragment;->downloadReceiver:Lorg/wikipedia/gallery/MediaDownloadReceiver;

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lorg/wikipedia/gallery/MediaDownloadReceiver;->register(Landroid/content/Context;Lorg/wikipedia/gallery/MediaDownloadReceiver$Callback;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lorg/wikipedia/commons/FilePageFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 14
    .line 15
    new-instance v2, Lorg/wikipedia/commons/FilePageFragment$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/commons/FilePageFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/commons/FilePageFragment;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lorg/wikipedia/commons/FilePageFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lorg/wikipedia/views/WikiErrorView;

    .line 32
    .line 33
    new-instance v2, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 v4, 0x7

    .line 36
    invoke-direct {v2, v4, v0}, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lorg/wikipedia/views/WikiErrorView;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v2, Lorg/wikipedia/commons/FilePageFragment$onViewCreated$3;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-direct {v2, v0, v5, v4}, Lorg/wikipedia/commons/FilePageFragment$onViewCreated$3;-><init>(Lorg/wikipedia/commons/FilePageFragment;Lkotlin/coroutines/Continuation;I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v5, v5, v2, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 58
    .line 59
    .line 60
    sget-object v6, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 61
    .line 62
    invoke-virtual {v0}, Lorg/wikipedia/commons/FilePageFragment;->getViewModel()Lorg/wikipedia/commons/FilePageViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Lorg/wikipedia/commons/FilePageViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 67
    .line 68
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    const/4 v15, 0x0

    .line 73
    const/16 v16, 0x1fe

    .line 74
    .line 75
    const/4 v8, 0x0

    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v10, 0x0

    .line 78
    const/4 v11, 0x0

    .line 79
    const/4 v12, 0x0

    .line 80
    const/4 v13, 0x0

    .line 81
    const/4 v14, 0x0

    .line 82
    invoke-static/range {v6 .. v16}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->getActionDataString$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const/4 v1, 0x4

    .line 87
    const-string v2, "imagedetails_dialog"

    .line 88
    .line 89
    invoke-static {v6, v2, v0, v1}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logImpression$default(Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

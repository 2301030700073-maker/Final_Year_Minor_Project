.class public final Lorg/wikipedia/commons/ImagePreviewDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/wikipedia/commons/ImagePreviewDialog;",
        "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;",
        "Landroid/content/DialogInterface$OnDismissListener;",
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
.field public _binding:Lcom/google/gson/GsonBuilder;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lleakcanary/AndroidLeakFixes$Companion$onDecorViewReady$1;

    .line 6
    .line 7
    const/16 v1, 0x1d

    .line 8
    .line 9
    invoke-direct {v0, v1, p0}, Lleakcanary/AndroidLeakFixes$Companion$onDecorViewReady$1;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 13
    .line 14
    new-instance v2, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v2, v3, v0}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$2;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lcoil3/util/ContextsKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-class v1, Lorg/wikipedia/commons/ImagePreviewViewModel;

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
    const/4 v4, 0x7

    .line 35
    invoke-direct {v2, v0, v4}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 36
    .line 37
    .line 38
    new-instance v4, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;

    .line 39
    .line 40
    const/16 v5, 0x8

    .line 41
    .line 42
    invoke-direct {v4, v0, v5}, Lorg/wikipedia/feed/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;I)V

    .line 43
    .line 44
    .line 45
    new-instance v5, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;

    .line 46
    .line 47
    invoke-direct {v5, p0, v0, v3}, Lorg/wikipedia/donate/DonateDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;I)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lokhttp3/Request$Builder;

    .line 51
    .line 52
    invoke-direct {v0, v1, v2, v5, v4}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lorg/wikipedia/commons/ImagePreviewDialog;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final getViewModel()Lorg/wikipedia/commons/ImagePreviewViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/commons/ImagePreviewDialog;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/commons/ImagePreviewViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p3, 0x7f0c017d

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
    const p2, 0x7f0901b0

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
    check-cast v2, Landroid/widget/LinearLayout;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const p2, 0x7f0901d6

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    check-cast p3, Landroid/widget/ImageView;

    .line 32
    .line 33
    if-eqz p3, :cond_0

    .line 34
    .line 35
    const p2, 0x7f09021f

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
    check-cast v3, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;

    .line 44
    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    const p2, 0x7f090238

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
    check-cast v4, Lorg/wikipedia/commons/FilePageView;

    .line 56
    .line 57
    if-eqz v4, :cond_0

    .line 58
    .line 59
    const p2, 0x7f090513

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
    check-cast v5, Landroid/widget/ProgressBar;

    .line 68
    .line 69
    if-eqz v5, :cond_0

    .line 70
    .line 71
    const p2, 0x7f0906c6

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
    check-cast v6, Landroid/widget/TextView;

    .line 80
    .line 81
    if-eqz v6, :cond_0

    .line 82
    .line 83
    const p2, 0x7f0906cd

    .line 84
    .line 85
    .line 86
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    move-object v7, p3

    .line 91
    check-cast v7, Landroid/widget/LinearLayout;

    .line 92
    .line 93
    if-eqz v7, :cond_0

    .line 94
    .line 95
    new-instance v0, Lcom/google/gson/GsonBuilder;

    .line 96
    .line 97
    move-object v1, p1

    .line 98
    check-cast v1, Landroid/widget/LinearLayout;

    .line 99
    .line 100
    const/16 v8, 0x9

    .line 101
    .line 102
    invoke-direct/range {v0 .. v8}, Lcom/google/gson/GsonBuilder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lorg/wikipedia/commons/ImagePreviewDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lorg/wikipedia/commons/ImagePreviewDialog;->getViewModel()Lorg/wikipedia/commons/ImagePreviewViewModel;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object p1, p1, Lorg/wikipedia/commons/ImagePreviewViewModel;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 115
    .line 116
    iget-object p1, p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->lang:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v1, p1}, Lcoil3/util/BitmapsKt;->setLayoutDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lorg/wikipedia/commons/ImagePreviewDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p0, Landroid/widget/LinearLayout;

    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    return-object p0

    .line 134
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    const-string p1, "Missing required view with ID: "

    .line 143
    .line 144
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const/4 p0, 0x0

    .line 152
    return-object p0
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/commons/ImagePreviewDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lorg/wikipedia/commons/ImagePreviewDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 15
    .line 16
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast p0, Landroid/view/View;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const v0, 0x7f0700ad

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lokio/Okio__OkioKt;->getDimension(I)F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {v0}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/wikipedia/commons/ImagePreviewDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Landroid/widget/LinearLayout;

    .line 12
    .line 13
    new-instance p2, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    invoke-direct {p2, v0, p0}, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lorg/wikipedia/commons/ImagePreviewDialog;->_binding:Lcom/google/gson/GsonBuilder;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Landroid/widget/TextView;

    .line 31
    .line 32
    sget-object p2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/wikipedia/commons/ImagePreviewDialog;->getViewModel()Lorg/wikipedia/commons/ImagePreviewViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iget-object p2, p2, Lorg/wikipedia/commons/ImagePreviewViewModel;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 39
    .line 40
    iget-object p2, p2, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->displayTitle:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance p2, Lorg/wikipedia/commons/ImagePreviewDialog$onViewCreated$2;

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-direct {p2, p0, v1, v0}, Lorg/wikipedia/commons/ImagePreviewDialog$onViewCreated$2;-><init>(Lorg/wikipedia/commons/ImagePreviewDialog;Lkotlin/coroutines/Continuation;I)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x3

    .line 69
    invoke-static {p1, v1, v1, p2, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 70
    .line 71
    .line 72
    return-void
.end method

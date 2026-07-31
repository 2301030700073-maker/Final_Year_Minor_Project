.class public final Lorg/wikipedia/descriptions/DescriptionEditFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/wikipedia/descriptions/DescriptionEditFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "Callback",
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


# instance fields
.field public _binding:Lretrofit2/OkHttpCall$1;

.field public final analyticsHelper:Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;

.field public captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

.field public final editSuccessLauncher:Landroidx/fragment/app/Fragment$10;

.field public final loginLauncher:Landroidx/fragment/app/Fragment$10;

.field public final successRunnable:Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;

.field public final voiceSearchLauncher:Landroidx/fragment/app/Fragment$10;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;

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
    new-instance v1, Lorg/wikipedia/descriptions/DescriptionEditFragment$special$$inlined$activityViewModels$default$1;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/descriptions/DescriptionEditFragment$special$$inlined$activityViewModels$default$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;I)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lorg/wikipedia/descriptions/DescriptionEditFragment$special$$inlined$activityViewModels$default$1;

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/descriptions/DescriptionEditFragment$special$$inlined$activityViewModels$default$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;I)V

    .line 22
    .line 23
    .line 24
    new-instance v5, Lorg/wikipedia/descriptions/DescriptionEditFragment$special$$inlined$activityViewModels$default$1;

    .line 25
    .line 26
    const/4 v6, 0x2

    .line 27
    invoke-direct {v5, p0, v6}, Lorg/wikipedia/descriptions/DescriptionEditFragment$special$$inlined$activityViewModels$default$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;I)V

    .line 28
    .line 29
    .line 30
    new-instance v7, Lokhttp3/Request$Builder;

    .line 31
    .line 32
    invoke-direct {v7, v0, v1, v5, v3}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    iput-object v7, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 36
    .line 37
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->analyticsHelper:Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;

    .line 43
    .line 44
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 45
    .line 46
    const/4 v1, 0x3

    .line 47
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 48
    .line 49
    .line 50
    new-instance v3, Lorg/wikipedia/descriptions/DescriptionEditFragment$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    invoke-direct {v3, p0, v2}, Lorg/wikipedia/descriptions/DescriptionEditFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v3, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 60
    .line 61
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->loginLauncher:Landroidx/fragment/app/Fragment$10;

    .line 62
    .line 63
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 64
    .line 65
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Lorg/wikipedia/descriptions/DescriptionEditFragment$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    invoke-direct {v2, p0, v4}, Lorg/wikipedia/descriptions/DescriptionEditFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 78
    .line 79
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->editSuccessLauncher:Landroidx/fragment/app/Fragment$10;

    .line 80
    .line 81
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 82
    .line 83
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Lorg/wikipedia/descriptions/DescriptionEditFragment$$ExternalSyntheticLambda0;

    .line 87
    .line 88
    invoke-direct {v1, p0, v6}, Lorg/wikipedia/descriptions/DescriptionEditFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroidx/fragment/app/Fragment$10;

    .line 96
    .line 97
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->voiceSearchLauncher:Landroidx/fragment/app/Fragment$10;

    .line 98
    .line 99
    new-instance v0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 100
    .line 101
    const/4 v1, 0x4

    .line 102
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->successRunnable:Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda5;

    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public final callback()Lorg/wikipedia/descriptions/DescriptionEditFragment$Callback;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-class v2, Lorg/wikipedia/descriptions/DescriptionEditFragment$Callback;

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/4 p0, 0x0

    .line 67
    :goto_0
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditFragment$Callback;

    .line 68
    .line 69
    return-object p0
.end method

.method public final editFailed(Ljava/lang/Throwable;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->setSaveState(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->shouldWriteToLocalWiki()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 29
    .line 30
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 34
    .line 35
    const-string v1, "https://www.wikidata.org/"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1, p1, v0}, Lorg/wikipedia/util/ShareUtil;->showError(Landroid/app/Activity;Ljava/lang/Throwable;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 59
    .line 60
    const-string p2, "other"

    .line 61
    .line 62
    const-string v0, "saveFailure"

    .line 63
    .line 64
    invoke-static {p1, p0, v0, p2, p0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method public final getEditComment()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 6
    .line 7
    sget-object v1, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->getWasSuggestionChosen()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->getWasSuggestionModified()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    const-string p0, "#machine-suggestion-modified"

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_0
    const-string p0, "#machine-suggestion"

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public final getEditTags()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v1, v1, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 11
    .line 12
    sget-object v2, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    const-string v1, "app-suggestededit"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v1, v1, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 26
    .line 27
    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    aget v1, v2, v1

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eq v1, v2, :cond_4

    .line 37
    .line 38
    const/4 p0, 0x2

    .line 39
    if-eq v1, p0, :cond_3

    .line 40
    .line 41
    const/4 p0, 0x3

    .line 42
    if-eq v1, p0, :cond_2

    .line 43
    .line 44
    const/4 p0, 0x4

    .line 45
    if-eq v1, p0, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const-string p0, "app-image-caption-translate"

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const-string p0, "app-description-translate"

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const-string p0, "app-image-caption-add"

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    iget-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object v1, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 74
    .line 75
    invoke-virtual {v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->getWasSuggestionChosen()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const-string v2, "app-description-add"

    .line 80
    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    const-string p0, "app-ai-assist"

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 97
    .line 98
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 99
    .line 100
    if-eqz p0, :cond_7

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-nez p0, :cond_6

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_6
    const-string p0, "app-description-change"

    .line 110
    .line 111
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_7
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    if-eqz p0, :cond_8

    .line 123
    .line 124
    const/4 p0, 0x0

    .line 125
    return-object p0

    .line 126
    :cond_8
    const/4 v4, 0x0

    .line 127
    const/16 v5, 0x3e

    .line 128
    .line 129
    const-string v1, ","

    .line 130
    .line 131
    const/4 v2, 0x0

    .line 132
    const/4 v3, 0x0

    .line 133
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0
.end method

.method public final getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 11
    .line 12
    const-string v0, "other"

    .line 13
    .line 14
    const-string v1, "init"

    .line 15
    .line 16
    invoke-static {p1, p0, v1, v0, p0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0c0191

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x0

    .line 13
    if-eqz p1, :cond_4

    .line 14
    .line 15
    check-cast p1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 16
    .line 17
    new-instance v0, Lretrofit2/OkHttpCall$1;

    .line 18
    .line 19
    const/4 v1, 0x6

    .line 20
    invoke-direct {v0, v1, p1, p1}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p1, v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->showProgressBar(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p1, p1, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 34
    .line 35
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->PAGE_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 36
    .line 37
    if-eq p1, v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p1, p1, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 44
    .line 45
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->PAGE_EDIT_PENCIL:Lorg/wikipedia/Constants$InvokeSource;

    .line 46
    .line 47
    if-eq p1, v0, :cond_0

    .line 48
    .line 49
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object p1, p1, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 54
    .line 55
    sget-object v0, Lorg/wikipedia/Constants$InvokeSource;->PAGE_EDIT_HIGHLIGHT:Lorg/wikipedia/Constants$InvokeSource;

    .line 56
    .line 57
    if-ne p1, v0, :cond_2

    .line 58
    .line 59
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p1, p1, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->sourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 64
    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    iget-object p1, p1, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->extractHtml:Ljava/lang/String;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    move-object p1, p2

    .line 71
    :goto_0
    if-eqz p1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {p0, p3}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->setUpEditView(Landroid/os/Bundle;)V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    sget-object v0, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 93
    .line 94
    new-instance v1, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 95
    .line 96
    const/16 v2, 0x8

    .line 97
    .line 98
    invoke-direct {v1, v0, v2}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lcoil3/RealImageLoader$execute$result$1;

    .line 102
    .line 103
    const/16 v2, 0xd

    .line 104
    .line 105
    invoke-direct {v0, v2, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 106
    .line 107
    .line 108
    const/4 p1, 0x2

    .line 109
    invoke-static {p3, v1, p2, v0, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 110
    .line 111
    .line 112
    :goto_2
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    iget-object p1, p1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 120
    .line 121
    new-instance p2, Lorg/wikipedia/descriptions/DescriptionEditFragment$$ExternalSyntheticLambda0;

    .line 122
    .line 123
    const/4 p3, 0x3

    .line 124
    invoke-direct {p2, p0, p3}, Lorg/wikipedia/descriptions/DescriptionEditFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Lorg/wikipedia/descriptions/DescriptionEditView;->setLoginCallback(Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;)V

    .line 128
    .line 129
    .line 130
    new-instance v0, Lorg/wikipedia/captcha/CaptchaHandler;

    .line 131
    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iget-object p1, p1, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 141
    .line 142
    iget-object v2, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 143
    .line 144
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    iget-object p1, p1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast p1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 152
    .line 153
    invoke-virtual {p1}, Lorg/wikipedia/descriptions/DescriptionEditView;->getCaptchaContainer()Lorg/wikipedia/databinding/GroupCaptchaBinding;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iget-object v3, p1, Lorg/wikipedia/databinding/GroupCaptchaBinding;->rootView:Landroid/widget/LinearLayout;

    .line 158
    .line 159
    iget-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    iget-object p1, p1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast p1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 167
    .line 168
    invoke-virtual {p1}, Lorg/wikipedia/descriptions/DescriptionEditView;->getDescriptionEditTextView()Landroid/widget/LinearLayout;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    const/4 v7, 0x0

    .line 173
    const/16 v8, 0xc0

    .line 174
    .line 175
    const-string v5, ""

    .line 176
    .line 177
    const/4 v6, 0x0

    .line 178
    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/captcha/CaptchaHandler;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/dataclient/WikiSite;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/caverock/androidsvg/SVGAndroidRenderer;I)V

    .line 179
    .line 180
    .line 181
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 182
    .line 183
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 184
    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 191
    .line 192
    return-object p0

    .line 193
    :cond_4
    const-string p0, "rootView"

    .line 194
    .line 195
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    return-object p2
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->captchaHandler:Lorg/wikipedia/captcha/CaptchaHandler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, v0, Lorg/wikipedia/captcha/CaptchaHandler;->clientJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->setCallback(Lorg/wikipedia/descriptions/DescriptionEditView$Callback;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const-string p0, "captchaHandler"

    .line 32
    .line 33
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditView;->getDescription()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "description"

    .line 15
    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/wikipedia/descriptions/DescriptionEditView;->showingReviewContent()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    const-string v0, "inReviewing"

    .line 33
    .line 34
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v0, p0, p2, v2, v1}, Lorg/wikipedia/descriptions/DescriptionEditFragment$onViewCreated$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditFragment;Landroid/os/Bundle;Lkotlin/coroutines/Continuation;I)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x3

    .line 20
    invoke-static {p1, v2, v2, v0, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setUpEditView(Landroid/os/Bundle;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v2, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 10
    .line 11
    sget-object v3, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v4, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->analyticsHelper:Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string v5, "machineSuggestions.start"

    .line 25
    .line 26
    invoke-virtual {v4, v2, v5}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->log(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v2, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v2, v2, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 37
    .line 38
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object v4, v4, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 43
    .line 44
    invoke-virtual {v2, v4}, Lorg/wikipedia/descriptions/DescriptionEditView;->setAction(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-object v2, v2, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 55
    .line 56
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget-object v4, v4, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 61
    .line 62
    invoke-virtual {v2, v4}, Lorg/wikipedia/descriptions/DescriptionEditView;->setPageTitle(Lorg/wikipedia/page/PageTitle;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iget-object v2, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->highlightText:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    iget-object v4, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iget-object v4, v4, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v4, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 81
    .line 82
    invoke-virtual {v4, v2}, Lorg/wikipedia/descriptions/DescriptionEditView;->setHighlightText(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object v2, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    iget-object v2, v2, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v2, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 93
    .line 94
    new-instance v4, Lorg/wikipedia/media/AvPlayer;

    .line 95
    .line 96
    const/4 v5, 0x1

    .line 97
    invoke-direct {v4, v5, v0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v4}, Lorg/wikipedia/descriptions/DescriptionEditView;->setCallback(Lorg/wikipedia/descriptions/DescriptionEditView$Callback;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iget-object v2, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->sourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 108
    .line 109
    const/4 v4, 0x3

    .line 110
    const/4 v6, 0x2

    .line 111
    const/4 v7, 0x0

    .line 112
    const/4 v8, 0x0

    .line 113
    if-eqz v2, :cond_f

    .line 114
    .line 115
    iget-object v9, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 116
    .line 117
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    iget-object v9, v9, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v9, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 123
    .line 124
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    iget-object v10, v10, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->targetSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 129
    .line 130
    iget-object v11, v9, Lorg/wikipedia/descriptions/DescriptionEditView;->binding:Lorg/wikipedia/databinding/ViewDescriptionEditBinding;

    .line 131
    .line 132
    iget-object v12, v2, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->lang:Ljava/lang/String;

    .line 133
    .line 134
    iget-boolean v13, v9, Lorg/wikipedia/descriptions/DescriptionEditView;->isTranslationEdit:Z

    .line 135
    .line 136
    if-eqz v13, :cond_2

    .line 137
    .line 138
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_2
    move-object v10, v2

    .line 143
    :goto_0
    iput-object v10, v9, Lorg/wikipedia/descriptions/DescriptionEditView;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 144
    .line 145
    iget-object v10, v11, Lorg/wikipedia/databinding/ViewDescriptionEditBinding;->viewDescriptionEditPageSummaryContainer:Landroid/widget/LinearLayout;

    .line 146
    .line 147
    iget-object v13, v11, Lorg/wikipedia/databinding/ViewDescriptionEditBinding;->viewDescriptionEditReadArticleBarContainer:Lorg/wikipedia/descriptions/DescriptionEditBottomBarView;

    .line 148
    .line 149
    iget-object v14, v11, Lorg/wikipedia/databinding/ViewDescriptionEditBinding;->viewDescriptionEditPageSummary:Landroid/widget/TextView;

    .line 150
    .line 151
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    iget-object v10, v11, Lorg/wikipedia/databinding/ViewDescriptionEditBinding;->viewDescriptionEditPageSummaryLabel:Landroid/widget/TextView;

    .line 155
    .line 156
    iget-object v15, v9, Lorg/wikipedia/descriptions/DescriptionEditView;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 157
    .line 158
    if-nez v15, :cond_3

    .line 159
    .line 160
    const/4 v15, -0x1

    .line 161
    goto :goto_1

    .line 162
    :cond_3
    sget-object v16, Lorg/wikipedia/descriptions/DescriptionEditView$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 163
    .line 164
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    aget v15, v16, v15

    .line 169
    .line 170
    :goto_1
    if-eq v15, v5, :cond_6

    .line 171
    .line 172
    if-eq v15, v6, :cond_5

    .line 173
    .line 174
    if-eq v15, v4, :cond_4

    .line 175
    .line 176
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 177
    .line 178
    .line 179
    move-result-object v15

    .line 180
    const v4, 0x7f120103

    .line 181
    .line 182
    .line 183
    invoke-virtual {v15, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    sget-object v15, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 196
    .line 197
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 198
    .line 199
    .line 200
    move-result-object v15

    .line 201
    invoke-virtual {v15}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 202
    .line 203
    .line 204
    move-result-object v15

    .line 205
    invoke-virtual {v15, v12}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v15

    .line 209
    new-array v6, v5, [Ljava/lang/Object;

    .line 210
    .line 211
    aput-object v15, v6, v8

    .line 212
    .line 213
    const v15, 0x7f12012a

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4, v15, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    const v6, 0x7f1200ff

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_6
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    sget-object v6, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 244
    .line 245
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-virtual {v6}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-virtual {v6, v12}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    new-array v15, v5, [Ljava/lang/Object;

    .line 258
    .line 259
    aput-object v6, v15, v8

    .line 260
    .line 261
    const v6, 0x7f120128

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4, v6, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    :goto_2
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    .line 273
    .line 274
    sget-object v4, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 275
    .line 276
    iget-boolean v4, v9, Lorg/wikipedia/descriptions/DescriptionEditView;->isTranslationEdit:Z

    .line 277
    .line 278
    if-nez v4, :cond_8

    .line 279
    .line 280
    iget-object v4, v9, Lorg/wikipedia/descriptions/DescriptionEditView;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 281
    .line 282
    sget-object v6, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 283
    .line 284
    if-ne v4, v6, :cond_7

    .line 285
    .line 286
    goto :goto_3

    .line 287
    :cond_7
    iget-object v4, v2, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->extractHtml:Ljava/lang/String;

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_8
    :goto_3
    iget-object v4, v2, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->description:Ljava/lang/String;

    .line 291
    .line 292
    :goto_4
    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-nez v4, :cond_9

    .line 320
    .line 321
    goto :goto_5

    .line 322
    :cond_9
    iget-object v4, v9, Lorg/wikipedia/descriptions/DescriptionEditView;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 323
    .line 324
    sget-object v6, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 325
    .line 326
    if-ne v4, v6, :cond_b

    .line 327
    .line 328
    iget-object v2, v2, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 329
    .line 330
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 331
    .line 332
    if-eqz v2, :cond_b

    .line 333
    .line 334
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    if-nez v2, :cond_a

    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_a
    :goto_5
    iget-object v2, v11, Lorg/wikipedia/databinding/ViewDescriptionEditBinding;->viewDescriptionEditPageSummaryContainer:Landroid/widget/LinearLayout;

    .line 342
    .line 343
    const/16 v4, 0x8

    .line 344
    .line 345
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 346
    .line 347
    .line 348
    :cond_b
    :goto_6
    iget-boolean v2, v9, Lorg/wikipedia/descriptions/DescriptionEditView;->isTranslationEdit:Z

    .line 349
    .line 350
    if-eqz v2, :cond_c

    .line 351
    .line 352
    goto :goto_7

    .line 353
    :cond_c
    iget-object v2, v9, Lorg/wikipedia/descriptions/DescriptionEditView;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 354
    .line 355
    if-eqz v2, :cond_e

    .line 356
    .line 357
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 358
    .line 359
    iget-object v12, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 360
    .line 361
    :goto_7
    invoke-static {v9, v12}, Lcoil3/util/BitmapsKt;->setLayoutDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    iget-object v2, v9, Lorg/wikipedia/descriptions/DescriptionEditView;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 365
    .line 366
    if-eqz v2, :cond_d

    .line 367
    .line 368
    invoke-virtual {v13, v2}, Lorg/wikipedia/descriptions/DescriptionEditBottomBarView;->setSummary(Lorg/wikipedia/suggestededits/PageSummaryForEdit;)V

    .line 369
    .line 370
    .line 371
    new-instance v2, Lorg/wikipedia/descriptions/DescriptionEditView$$ExternalSyntheticLambda2;

    .line 372
    .line 373
    invoke-direct {v2, v9, v5}, Lorg/wikipedia/descriptions/DescriptionEditView$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/descriptions/DescriptionEditView;I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v13, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    .line 378
    .line 379
    goto :goto_8

    .line 380
    :cond_d
    const-string v0, "pageSummaryForEdit"

    .line 381
    .line 382
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    throw v7

    .line 386
    :cond_e
    const-string v0, "pageTitle"

    .line 387
    .line 388
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    throw v7

    .line 392
    :cond_f
    :goto_8
    if-eqz v1, :cond_10

    .line 393
    .line 394
    iget-object v2, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 395
    .line 396
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    iget-object v2, v2, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v2, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 402
    .line 403
    const-string v4, "description"

    .line 404
    .line 405
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-virtual {v2, v4}, Lorg/wikipedia/descriptions/DescriptionEditView;->setDescription(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    iget-object v2, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 413
    .line 414
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    .line 416
    .line 417
    iget-object v2, v2, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 418
    .line 419
    check-cast v2, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 420
    .line 421
    const-string v4, "inReviewing"

    .line 422
    .line 423
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    invoke-virtual {v2, v1}, Lorg/wikipedia/descriptions/DescriptionEditView;->loadReviewContent(Z)V

    .line 428
    .line 429
    .line 430
    :cond_10
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 431
    .line 432
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    iget-object v1, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 436
    .line 437
    check-cast v1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 438
    .line 439
    invoke-virtual {v1, v8}, Lorg/wikipedia/descriptions/DescriptionEditView;->showProgressBar(Z)V

    .line 440
    .line 441
    .line 442
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 443
    .line 444
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    iget-object v1, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast v1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 450
    .line 451
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    iget-boolean v2, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->editingAllowed:Z

    .line 456
    .line 457
    invoke-virtual {v1, v2}, Lorg/wikipedia/descriptions/DescriptionEditView;->setEditAllowed(Z)V

    .line 458
    .line 459
    .line 460
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 461
    .line 462
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    iget-object v1, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 466
    .line 467
    check-cast v1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 468
    .line 469
    iget-object v2, v1, Lorg/wikipedia/descriptions/DescriptionEditView;->binding:Lorg/wikipedia/databinding/ViewDescriptionEditBinding;

    .line 470
    .line 471
    iget-object v2, v2, Lorg/wikipedia/databinding/ViewDescriptionEditBinding;->learnMoreButton:Lcom/google/android/material/button/MaterialButton;

    .line 472
    .line 473
    iget-object v4, v1, Lorg/wikipedia/descriptions/DescriptionEditView;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 474
    .line 475
    if-eq v4, v3, :cond_12

    .line 476
    .line 477
    sget-object v3, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->TRANSLATE_DESCRIPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 478
    .line 479
    if-ne v4, v3, :cond_11

    .line 480
    .line 481
    goto :goto_9

    .line 482
    :cond_11
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    const v3, 0x7f12010c

    .line 487
    .line 488
    .line 489
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    goto :goto_a

    .line 494
    :cond_12
    :goto_9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    const v3, 0x7f12010e

    .line 499
    .line 500
    .line 501
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    :goto_a
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    .line 507
    .line 508
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 509
    .line 510
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    .line 512
    .line 513
    iget-object v1, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 514
    .line 515
    check-cast v1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 516
    .line 517
    const-string v2, "beta"

    .line 518
    .line 519
    const-string v3, "org.wikipedia"

    .line 520
    .line 521
    invoke-static {v3, v2, v8}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    if-eqz v2, :cond_13

    .line 526
    .line 527
    move v4, v5

    .line 528
    goto :goto_b

    .line 529
    :cond_13
    const-string v2, "alpha"

    .line 530
    .line 531
    invoke-static {v3, v2, v8}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 532
    .line 533
    .line 534
    move-result v2

    .line 535
    if-eqz v2, :cond_14

    .line 536
    .line 537
    const/4 v4, 0x2

    .line 538
    goto :goto_b

    .line 539
    :cond_14
    const-string v2, "dev"

    .line 540
    .line 541
    invoke-static {v3, v2, v8}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 542
    .line 543
    .line 544
    move-result v2

    .line 545
    if-eqz v2, :cond_15

    .line 546
    .line 547
    const/4 v4, 0x3

    .line 548
    goto :goto_b

    .line 549
    :cond_15
    move v4, v8

    .line 550
    :goto_b
    if-eqz v4, :cond_17

    .line 551
    .line 552
    if-eq v4, v5, :cond_17

    .line 553
    .line 554
    sget-object v2, Lorg/wikipedia/views/SuggestedArticleDescriptionsDialog;->availableLanguages:Ljava/util/List;

    .line 555
    .line 556
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    iget-object v3, v3, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 561
    .line 562
    iget-object v3, v3, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 563
    .line 564
    iget-object v3, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 565
    .line 566
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v2

    .line 570
    if-eqz v2, :cond_17

    .line 571
    .line 572
    iget-object v2, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 573
    .line 574
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    iget-object v2, v2, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 578
    .line 579
    check-cast v2, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 580
    .line 581
    invoke-virtual {v2}, Lorg/wikipedia/descriptions/DescriptionEditView;->getDescription()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    if-eqz v2, :cond_16

    .line 586
    .line 587
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    if-nez v2, :cond_17

    .line 592
    .line 593
    :cond_16
    move v8, v5

    .line 594
    :cond_17
    invoke-virtual {v1, v8}, Lorg/wikipedia/descriptions/DescriptionEditView;->setSuggestionButtonEnabled(Z)V

    .line 595
    .line 596
    .line 597
    iget-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 598
    .line 599
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    .line 601
    .line 602
    iget-object v1, v1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 603
    .line 604
    check-cast v1, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 605
    .line 606
    iget-boolean v1, v1, Lorg/wikipedia/descriptions/DescriptionEditView;->isSuggestionButtonEnabled:Z

    .line 607
    .line 608
    if-eqz v1, :cond_18

    .line 609
    .line 610
    invoke-virtual {v0}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    new-instance v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescription$$inlined$CoroutineExceptionHandler$1;

    .line 619
    .line 620
    invoke-direct {v2, v0, v5}, Lorg/wikipedia/descriptions/DescriptionEditViewModel$postDescription$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditViewModel;I)V

    .line 621
    .line 622
    .line 623
    new-instance v3, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;

    .line 624
    .line 625
    invoke-direct {v3, v5, v0, v7}, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 626
    .line 627
    .line 628
    const/4 v0, 0x2

    .line 629
    invoke-static {v1, v2, v7, v3, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 630
    .line 631
    .line 632
    :cond_18
    return-void
.end method

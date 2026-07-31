.class public final synthetic Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-string v0, "revId"

    .line 18
    .line 19
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    :cond_0
    move-wide v6, v2

    .line 24
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const v0, 0x7f1201aa

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    const/16 v3, 0xc

    .line 42
    .line 43
    invoke-static {p1, v0, v2, v3}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda11;

    .line 48
    .line 49
    invoke-direct {v0, v1, v6, v7, p0}, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda11;-><init>(IJLjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const v1, 0x7f1201a5

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->_binding:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object v0, v0, Lorg/maplibre/android/maps/MapChangeReceiver;->onCameraIsChangingListenerList:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->setAnchorView(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 71
    .line 72
    .line 73
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 74
    .line 75
    const-string v0, "accepted"

    .line 76
    .line 77
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/4 v8, 0x0

    .line 82
    const/4 v2, 0x2

    .line 83
    invoke-static {p0, v0, v8, v1, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    const-string p1, "editsummary_success_confirm"

    .line 97
    .line 98
    const-string v3, "editsummary_dialog"

    .line 99
    .line 100
    invoke-static {p1, v3, v0, v1}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 104
    .line 105
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->getPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    const-string/jumbo p1, "wikitext"

    .line 117
    .line 118
    .line 119
    invoke-static {v0, p1}, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;->logSaveSuccess(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-static {v5}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-object v0, v5, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->handler:Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

    .line 131
    .line 132
    new-instance v4, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;

    .line 133
    .line 134
    const/4 v9, 0x6

    .line 135
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;-><init>(Ljava/lang/Object;JLkotlin/coroutines/Continuation;I)V

    .line 136
    .line 137
    .line 138
    invoke-static {p1, v0, v8, v4, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->callback()Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-interface {p1, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment$Callback;->nextPage(Landroidx/fragment/app/Fragment;)V

    .line 146
    .line 147
    .line 148
    :cond_1
    return-void
.end method

.method public onUrlClick(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0xe

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;

    .line 7
    .line 8
    const-string v2, "accepted"

    .line 9
    .line 10
    invoke-static {p0, v2, v0, v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string p1, "suggested_edit_return"

    .line 24
    .line 25
    const-string v2, "nosuggestions_dialog"

    .line 26
    .line 27
    invoke-static {p1, v2, v0, v1}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

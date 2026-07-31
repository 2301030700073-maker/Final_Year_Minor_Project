.class public final synthetic Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/diff/ArticleEditDetailsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/diff/ArticleEditDetailsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda26;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda26;->f$0:Lorg/wikipedia/diff/ArticleEditDetailsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 1
    iget p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda26;->$r8$classId:I

    .line 2
    .line 3
    const-string p2, "pt_thank"

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    const-string v1, "pt_edit"

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment$$ExternalSyntheticLambda26;->f$0:Lorg/wikipedia/diff/ArticleEditDetailsFragment;

    .line 11
    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    const-string p1, "rollback_cancel"

    .line 16
    .line 17
    invoke-virtual {p0, p1, v1, v2}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    const-string p1, "rollback_confirm"

    .line 22
    .line 23
    invoke-virtual {p0, p1, v1, v2}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->_binding:Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentArticleEditDetailsBinding;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p1, p1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    sget-object p2, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v1, v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 52
    .line 53
    const-string v2, "other"

    .line 54
    .line 55
    const-string v3, "saveAttempt"

    .line 56
    .line 57
    invoke-static {p2, v1, v3, v2, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    iget-object v5, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 69
    .line 70
    iget-object v6, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->user:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-static {v7}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    new-instance p1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;

    .line 83
    .line 84
    const/4 p2, 0x5

    .line 85
    invoke-direct {p1, v7, p2}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;I)V

    .line 86
    .line 87
    .line 88
    new-instance v4, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;

    .line 89
    .line 90
    const/4 v9, 0x2

    .line 91
    const/4 v8, 0x0

    .line 92
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 93
    .line 94
    .line 95
    invoke-static {p0, p1, v8, v4, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 96
    .line 97
    .line 98
    :cond_0
    return-void

    .line 99
    :pswitch_1
    const-string p1, "thank_cancel"

    .line 100
    .line 101
    invoke-virtual {p0, p1, p2, v2}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_2
    const-string p1, "thank_confirm"

    .line 106
    .line 107
    invoke-virtual {p0, p1, p2, v2}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->sendPatrollerExperienceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object p1, p1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 119
    .line 120
    iget-object v4, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 121
    .line 122
    invoke-virtual {p0}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;->getViewModel()Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    iget-wide v6, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 127
    .line 128
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-static {v5}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    new-instance p1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;

    .line 136
    .line 137
    const/4 p2, 0x6

    .line 138
    invoke-direct {p1, v5, p2}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;I)V

    .line 139
    .line 140
    .line 141
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 142
    .line 143
    const/4 v8, 0x0

    .line 144
    const/16 v9, 0x8

    .line 145
    .line 146
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLkotlin/coroutines/Continuation;I)V

    .line 147
    .line 148
    .line 149
    const/4 p2, 0x0

    .line 150
    invoke-static {p0, p1, p2, v3, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

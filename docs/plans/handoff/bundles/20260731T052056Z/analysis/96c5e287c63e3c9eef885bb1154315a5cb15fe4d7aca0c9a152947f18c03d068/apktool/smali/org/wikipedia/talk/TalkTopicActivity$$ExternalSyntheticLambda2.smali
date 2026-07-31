.class public final synthetic Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithTextAndCoords;
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/talk/TalkTopicActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/TalkTopicActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 5
    .line 6
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget v0, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget v0, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "subject"

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lorg/wikipedia/talk/TalkTopicViewModel;->undoSubject:Ljava/lang/CharSequence;

    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "body"

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, v0, Lorg/wikipedia/talk/TalkTopicViewModel;->undoBody:Ljava/lang/CharSequence;

    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string/jumbo v1, "topicId"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, v0, Lorg/wikipedia/talk/TalkTopicViewModel;->undoTopicId:Ljava/lang/String;

    .line 60
    .line 61
    const-string v0, "newRevisionId"

    .line 62
    .line 63
    const-wide/16 v1, -0x1

    .line 64
    .line 65
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    const-wide/16 v2, 0x0

    .line 70
    .line 71
    cmp-long p1, v0, v2

    .line 72
    .line 73
    if-ltz p1, :cond_0

    .line 74
    .line 75
    const p1, 0x7f12095a

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    const/16 v2, 0xc

    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    invoke-static {p0, p1, v3, v2}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance v2, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda11;

    .line 93
    .line 94
    invoke-direct {v2, v3, v0, v1, p0}, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda11;-><init>(IJLjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    const v0, 0x7f120962

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    new-instance v0, Lorg/wikipedia/talk/TalkTopicActivity$showUndoSnackbar$2;

    .line 104
    .line 105
    invoke-direct {v0, p0, v3}, Lorg/wikipedia/talk/TalkTopicActivity$showUndoSnackbar$2;-><init>(Landroid/app/Activity;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/Snackbar$Callback;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 112
    .line 113
    .line 114
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->loadTopics()V

    .line 115
    .line 116
    .line 117
    :cond_1
    return-void

    .line 118
    :pswitch_0
    sget v0, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 124
    .line 125
    if-ne p1, v1, :cond_2

    .line 126
    .line 127
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    new-instance v1, Lorg/wikipedia/talk/TalkTopicViewModel$undo$$inlined$CoroutineExceptionHandler$1;

    .line 136
    .line 137
    const/4 v2, 0x2

    .line 138
    invoke-direct {v1, p1, v2}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/talk/TalkTopicViewModel;I)V

    .line 139
    .line 140
    .line 141
    new-instance v3, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 142
    .line 143
    const/16 v4, 0x11

    .line 144
    .line 145
    const/4 v5, 0x0

    .line 146
    invoke-direct {v3, v4, p1, v5}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v0, v1, v5, v3, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 150
    .line 151
    .line 152
    const p1, 0x7f120351

    .line 153
    .line 154
    .line 155
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 156
    .line 157
    .line 158
    :cond_2
    return-void

    .line 159
    :pswitch_1
    sget v0, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 165
    .line 166
    if-ne p1, v1, :cond_3

    .line 167
    .line 168
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->loadTopics()V

    .line 169
    .line 170
    .line 171
    :cond_3
    return-void

    .line 172
    nop

    .line 173
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRefresh()V
    .locals 1

    .line 1
    sget v0, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->loadTopics()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onUrlClick(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget v0, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity;->linkHandler:Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;->lastX:I

    .line 10
    .line 11
    iput p2, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;->lastY:I

    .line 12
    .line 13
    invoke-virtual {p0, p3, p4, p5}, Lorg/wikipedia/page/LinkHandler;->onUrlClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p0, "linkHandler"

    .line 18
    .line 19
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    throw p0
.end method

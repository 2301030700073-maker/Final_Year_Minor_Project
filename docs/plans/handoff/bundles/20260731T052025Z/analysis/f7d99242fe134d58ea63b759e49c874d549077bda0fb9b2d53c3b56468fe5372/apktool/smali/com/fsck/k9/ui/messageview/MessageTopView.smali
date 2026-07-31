.class public final Lcom/fsck/k9/ui/messageview/MessageTopView;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# instance fields
.field public final animationManager$delegate:Lkotlin/Lazy;

.field public attachmentCallback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

.field public final contactRepository$delegate:Lkotlin/Lazy;

.field public containerView:Landroid/view/ViewGroup;

.field public downloadRemainderButton:Lcom/google/android/material/button/MaterialButton;

.field public extraHeaderContainer:Landroid/view/View;

.field public isShowingProgress:Z

.field public layoutInflater:Landroid/view/LayoutInflater;

.field public messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

.field public messageHeaderView:Lcom/fsck/k9/view/MessageHeader;

.field public messageReaderViewModel:Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;

.field public progressBar:Landroid/widget/ProgressBar;

.field public renderPlainFormat:Z

.field public showAccountIndicator:Z

.field public showPicturesButtonClicked:Z

.field public viewAnimator:Lcom/fsck/k9/view/ToolableViewAnimator;

.field public final visualSettingsPrefManager$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lcom/fsck/k9/ui/messageview/MessageTopView$special$$inlined$inject$default$1;

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-direct {p1, p0, p2}, Lcom/fsck/k9/ui/messageview/MessageTopView$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageTopView;I)V

    .line 11
    .line 12
    .line 13
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 14
    .line 15
    invoke-static {p2, p1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->contactRepository$delegate:Lkotlin/Lazy;

    .line 20
    .line 21
    new-instance p1, Lcom/fsck/k9/ui/messageview/MessageTopView$special$$inlined$inject$default$1;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-direct {p1, p0, v0}, Lcom/fsck/k9/ui/messageview/MessageTopView$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageTopView;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {p2, p1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->visualSettingsPrefManager$delegate:Lkotlin/Lazy;

    .line 32
    .line 33
    new-instance p1, Lcom/fsck/k9/ui/messageview/MessageTopView$special$$inlined$inject$default$1;

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    invoke-direct {p1, p0, v0}, Lcom/fsck/k9/ui/messageview/MessageTopView$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/messageview/MessageTopView;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {p2, p1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->animationManager$delegate:Lkotlin/Lazy;

    .line 44
    .line 45
    return-void
.end method

.method private final getAnimationManager()Lnet/thunderbird/core/ui/animation/manager/AnimationManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->animationManager$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/ui/animation/manager/AnimationManager;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getContactRepository()Lapp/k9mail/core/android/common/contact/ContactRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->contactRepository$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getVisualSettingsPrefManager()Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->visualSettingsPrefManager$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 8
    .line 9
    return-object p0
.end method

.method private final setShowDownloadButton(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 3

    .line 1
    iget-boolean p1, p1, Lcom/fsck/k9/mailstore/MessageViewInfo;->isMessageIncomplete:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->downloadRemainderButton:Lcom/google/android/material/button/MaterialButton;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "downloadRemainderButton"

    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->downloadRemainderButton:Lcom/google/android/material/button/MaterialButton;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v1

    .line 29
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v1

    .line 33
    :cond_2
    if-eqz v0, :cond_3

    .line 34
    .line 35
    const/16 p0, 0x8

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v1
.end method


# virtual methods
.method public final displayViewOnLoadFinished(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->isShowingProgress:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->progressBar:Landroid/widget/ProgressBar;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x3e8

    .line 18
    .line 19
    filled-new-array {v0, v1}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "progress"

    .line 24
    .line 25
    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v0, Landroidx/transition/Transition$3;

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    invoke-direct {v0, v1, p0}, Landroidx/transition/Transition$3;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v0, 0xb4

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    const-string p0, "progressBar"

    .line 48
    .line 49
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->viewAnimator:Lcom/fsck/k9/view/ToolableViewAnimator;

    .line 54
    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    const/4 p1, 0x2

    .line 58
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/ToolableViewAnimator;->setDisplayedChild(I)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    const-string/jumbo p0, "viewAnimator"

    .line 63
    .line 64
    .line 65
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0
.end method

.method public bridge getKoin()Lorg/koin/core/Koin;
    .locals 0

    .line 1
    invoke-static {}, Lkotlinx/io/Sink$-CC;->$default$getKoin()Lorg/koin/core/Koin;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->messageHeaderView:Lcom/fsck/k9/view/MessageHeader;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "messageHeaderView"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final getRenderPlainFormat()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->renderPlainFormat:Z

    .line 2
    .line 3
    return p0
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f090219

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    check-cast v0, Lcom/fsck/k9/view/MessageHeader;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setMessageHeaderView(Lcom/fsck/k9/view/MessageHeader;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->layoutInflater:Landroid/view/LayoutInflater;

    .line 31
    .line 32
    const v0, 0x7f0902a2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    check-cast v0, Lcom/fsck/k9/view/ToolableViewAnimator;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->viewAnimator:Lcom/fsck/k9/view/ToolableViewAnimator;

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getAnimationManager()Lnet/thunderbird/core/ui/animation/manager/AnimationManager;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lnet/thunderbird/core/ui/animation/manager/DefaultAnimationManager;

    .line 51
    .line 52
    invoke-virtual {v0}, Lnet/thunderbird/core/ui/animation/manager/DefaultAnimationManager;->shouldShowAnimations()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->viewAnimator:Lcom/fsck/k9/view/ToolableViewAnimator;

    .line 59
    .line 60
    const-string/jumbo v1, "viewAnimator"

    .line 61
    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->viewAnimator:Lcom/fsck/k9/view/ToolableViewAnimator;

    .line 70
    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v2

    .line 81
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v2

    .line 85
    :cond_2
    :goto_0
    const v0, 0x7f0902ad

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    check-cast v0, Landroid/widget/ProgressBar;

    .line 96
    .line 97
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->progressBar:Landroid/widget/ProgressBar;

    .line 98
    .line 99
    const v0, 0x7f0902ae

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 110
    .line 111
    const v0, 0x7f0901af

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 122
    .line 123
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->downloadRemainderButton:Lcom/google/android/material/button/MaterialButton;

    .line 124
    .line 125
    const/16 v1, 0x8

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    const v0, 0x7f0901db

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->extraHeaderContainer:Landroid/view/View;

    .line 141
    .line 142
    const v0, 0x7f0903ce

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 153
    .line 154
    new-instance v2, Lcom/fsck/k9/ui/messageview/MessageTopView$$ExternalSyntheticLambda0;

    .line 155
    .line 156
    const/4 v3, 0x2

    .line 157
    invoke-direct {v2, p0, v3}, Lcom/fsck/k9/ui/messageview/MessageTopView$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/messageview/MessageTopView;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    const v0, 0x7f090292

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    check-cast v0, Landroid/view/ViewGroup;

    .line 174
    .line 175
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    .line 176
    .line 177
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getVisualSettingsPrefManager()Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettingsPreferenceManager;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;

    .line 182
    .line 183
    invoke-virtual {v0}, Lnet/thunderbird/core/preference/display/visualSettings/DefaultDisplayVisualSettingsPreferenceManager;->getConfig()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 188
    .line 189
    iget-object v0, v0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->bodyContentType:Lnet/thunderbird/core/preference/BodyContentType;

    .line 190
    .line 191
    sget-object v2, Lnet/thunderbird/core/preference/BodyContentType;->TEXT_PLAIN:Lnet/thunderbird/core/preference/BodyContentType;

    .line 192
    .line 193
    if-ne v0, v2, :cond_3

    .line 194
    .line 195
    const/4 v0, 0x1

    .line 196
    goto :goto_1

    .line 197
    :cond_3
    const/4 v0, 0x0

    .line 198
    :goto_1
    iput-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->renderPlainFormat:Z

    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Lcom/fsck/k9/ui/messageview/MessageTopView$SavedState;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 11
    .line 12
    .line 13
    iget-boolean p1, p1, Lcom/fsck/k9/ui/messageview/MessageTopView$SavedState;->showPicturesButtonClicked:Z

    .line 14
    .line 15
    iput-boolean p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->showPicturesButtonClicked:Z

    .line 16
    .line 17
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/fsck/k9/ui/messageview/MessageTopView$SavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-boolean p0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->showPicturesButtonClicked:Z

    .line 11
    .line 12
    iput-boolean p0, v1, Lcom/fsck/k9/ui/messageview/MessageTopView$SavedState;->showPicturesButtonClicked:Z

    .line 13
    .line 14
    return-object v1
.end method

.method public final resetAndPrepareMessageView(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->downloadRemainderButton:Lcom/google/android/material/button/MaterialButton;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageTopView;->setShowDownloadButton(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string p0, "containerView"

    .line 23
    .line 24
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v1

    .line 28
    :cond_1
    const-string p0, "downloadRemainderButton"

    .line 29
    .line 30
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v1
.end method

.method public final setAttachmentCallback(Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->attachmentCallback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    .line 5
    .line 6
    return-void
.end method

.method public final setCryptoProviderIcon(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 2

    .line 1
    const v0, 0x7f090163

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Landroid/widget/ImageView;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const p1, 0x7f0801c7

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sget-object p1, Lcom/fsck/k9/view/ThemeUtils;->TYPED_VALUE:Landroid/util/TypedValue;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sget-object p1, Lcom/fsck/k9/view/ThemeUtils;->TYPED_VALUE:Landroid/util/TypedValue;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    const v1, 0x7f040473

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 39
    .line 40
    .line 41
    iget p0, p1, Landroid/util/TypedValue;->data:I

    .line 42
    .line 43
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final setMessageCryptoPresenter(Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    .line 2
    .line 3
    return-void
.end method

.method public final setMessageHeaderClickListener(Lcom/fsck/k9/ui/messageview/MessageHeaderClickListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/MessageHeader;->setMessageHeaderClickListener(Lcom/fsck/k9/ui/messageview/MessageHeaderClickListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setMessageHeaderView(Lcom/fsck/k9/view/MessageHeader;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->messageHeaderView:Lcom/fsck/k9/view/MessageHeader;

    .line 5
    .line 6
    return-void
.end method

.method public final setMessageReaderViewModel(Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->messageReaderViewModel:Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;

    .line 5
    .line 6
    return-void
.end method

.method public final setOnDownloadButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->downloadRemainderButton:Lcom/google/android/material/button/MaterialButton;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "downloadRemainderButton"

    .line 10
    .line 11
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    throw p0
.end method

.method public final setOnToggleFlagClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/MessageHeader;->setOnFlagListener(Landroid/view/View$OnClickListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setRenderPlainFormat(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->renderPlainFormat:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setShowAccountIndicator(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->showAccountIndicator:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSubject(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Lcom/fsck/k9/view/MessageHeader;->setSubject(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setToLoadingState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->viewAnimator:Lcom/fsck/k9/view/ToolableViewAnimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2}, Lcom/fsck/k9/view/ToolableViewAnimator;->setDisplayedChild(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->progressBar:Landroid/widget/ProgressBar;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 15
    .line 16
    .line 17
    iput-boolean v2, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->isShowingProgress:Z

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p0, "progressBar"

    .line 21
    .line 22
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v1

    .line 26
    :cond_1
    const-string/jumbo p0, "viewAnimator"

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v1
.end method

.method public final showMessage(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/MessageViewInfo;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/fsck/k9/ui/messageview/MessageTopView;->resetAndPrepareMessageView(Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getShowPictures()Lnet/thunderbird/core/android/account/ShowPictures;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p2, Lcom/fsck/k9/mailstore/MessageViewInfo;->message:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object v3, Lnet/thunderbird/core/android/account/ShowPictures;->ALWAYS:Lnet/thunderbird/core/android/account/ShowPictures;

    .line 20
    .line 21
    const/4 v8, 0x1

    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v10, 0x0

    .line 24
    if-eq v0, v3, :cond_6

    .line 25
    .line 26
    sget-object v3, Lnet/thunderbird/core/android/account/ShowPictures;->ONLY_FROM_CONTACTS:Lnet/thunderbird/core/android/account/ShowPictures;

    .line 27
    .line 28
    if-eq v0, v3, :cond_0

    .line 29
    .line 30
    :goto_0
    move v0, v10

    .line 31
    goto :goto_3

    .line 32
    :cond_0
    invoke-virtual {v2}, Lcom/fsck/k9/mail/internet/MimeMessage;->getFrom()[Lcom/fsck/k9/mail/Address;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    array-length v2, v0

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    aget-object v0, v0, v10

    .line 43
    .line 44
    iget-object v0, v0, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v0}, Lnet/thunderbird/core/common/mail/TokensKt;->toEmailAddressOrNull(Ljava/lang/String;)Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :goto_1
    move-object v0, v9

    .line 52
    :goto_2
    if-nez v0, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getContactRepository()Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lapp/k9mail/core/android/common/contact/CachingContactRepository;

    .line 60
    .line 61
    invoke-virtual {v2, v0}, Lapp/k9mail/core/android/common/contact/CachingContactRepository;->hasContactFor(Lnet/thunderbird/core/common/mail/EmailAddress;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    :goto_3
    if-eqz v0, :cond_4

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_4
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->showPicturesButtonClicked:Z

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_5
    move v4, v10

    .line 74
    goto :goto_5

    .line 75
    :cond_6
    :goto_4
    move v4, v8

    .line 76
    :goto_5
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->layoutInflater:Landroid/view/LayoutInflater;

    .line 77
    .line 78
    if-eqz v0, :cond_19

    .line 79
    .line 80
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    .line 81
    .line 82
    const-string v3, "containerView"

    .line 83
    .line 84
    if-eqz v2, :cond_18

    .line 85
    .line 86
    const v5, 0x7f0c02c9

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v5, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    check-cast v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    .line 99
    .line 100
    if-eqz v2, :cond_17

    .line 101
    .line 102
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->isOpenPgpHideSignOnly()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    iget-boolean v2, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->renderPlainFormat:Z

    .line 110
    .line 111
    new-instance v3, Landroidx/biometric/BiometricPrompt;

    .line 112
    .line 113
    invoke-direct {v3, v8, p0}, Landroidx/biometric/BiometricPrompt;-><init>(ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object v6, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->attachmentCallback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    .line 117
    .line 118
    if-eqz v6, :cond_16

    .line 119
    .line 120
    iget-object v7, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->messageReaderViewModel:Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;

    .line 121
    .line 122
    if-eqz v7, :cond_15

    .line 123
    .line 124
    move-object v1, p2

    .line 125
    invoke-virtual/range {v0 .. v7}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->displayMessageViewContainer(Lcom/fsck/k9/mailstore/MessageViewInfo;ZLandroidx/biometric/BiometricPrompt;ZZLcom/fsck/k9/ui/messageview/AttachmentViewCallback;Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;)V

    .line 126
    .line 127
    .line 128
    iget-boolean p1, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->hasHiddenExternalImages:Z

    .line 129
    .line 130
    const/16 v0, 0x8

    .line 131
    .line 132
    const-string v2, "extraHeaderContainer"

    .line 133
    .line 134
    if-eqz p1, :cond_8

    .line 135
    .line 136
    iget-boolean p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->showPicturesButtonClicked:Z

    .line 137
    .line 138
    if-nez p1, :cond_8

    .line 139
    .line 140
    iget-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->extraHeaderContainer:Landroid/view/View;

    .line 141
    .line 142
    if-eqz p1, :cond_7

    .line 143
    .line 144
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v9

    .line 152
    :cond_8
    iget-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->extraHeaderContainer:Landroid/view/View;

    .line 153
    .line 154
    if-eqz p1, :cond_14

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    :goto_6
    iget-object p1, p2, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachments:Ljava/util/List;

    .line 160
    .line 161
    if-eqz p1, :cond_a

    .line 162
    .line 163
    new-instance v2, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    :cond_9
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_b

    .line 177
    .line 178
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    move-object v4, v3

    .line 183
    check-cast v4, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 184
    .line 185
    iget-boolean v4, v4, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->inlineAttachment:Z

    .line 186
    .line 187
    if-nez v4, :cond_9

    .line 188
    .line 189
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_a
    move-object v2, v9

    .line 194
    :cond_b
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 195
    .line 196
    if-nez v2, :cond_c

    .line 197
    .line 198
    move-object v2, p1

    .line 199
    :cond_c
    iget-object v1, p2, Lcom/fsck/k9/mailstore/MessageViewInfo;->extraAttachments:Ljava/util/List;

    .line 200
    .line 201
    if-eqz v1, :cond_e

    .line 202
    .line 203
    new-instance v9, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    :cond_d
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_e

    .line 217
    .line 218
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    move-object v4, v3

    .line 223
    check-cast v4, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 224
    .line 225
    iget-boolean v4, v4, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->inlineAttachment:Z

    .line 226
    .line 227
    if-nez v4, :cond_d

    .line 228
    .line 229
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    goto :goto_8

    .line 233
    :cond_e
    if-nez v9, :cond_f

    .line 234
    .line 235
    goto :goto_9

    .line 236
    :cond_f
    move-object p1, v9

    .line 237
    :goto_9
    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_10

    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    iget-object p0, p0, Lcom/fsck/k9/view/MessageHeader;->attachmentSummaryContainer:Landroid/view/View;

    .line 252
    .line 253
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :cond_10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    const-wide/16 v2, 0x0

    .line 266
    .line 267
    move-wide v4, v2

    .line 268
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    if-eqz v6, :cond_12

    .line 273
    .line 274
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    check-cast v6, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 279
    .line 280
    iget-wide v6, v6, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->size:J

    .line 281
    .line 282
    cmp-long v9, v6, v2

    .line 283
    .line 284
    if-gez v9, :cond_11

    .line 285
    .line 286
    move-wide v6, v2

    .line 287
    :cond_11
    add-long/2addr v4, v6

    .line 288
    goto :goto_a

    .line 289
    :cond_12
    new-instance v1, Lcom/fsck/k9/ui/helper/SizeFormatter;

    .line 290
    .line 291
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    invoke-direct {v1, v2}, Lcom/fsck/k9/ui/helper/SizeFormatter;-><init>(Landroid/content/res/Resources;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v4, v5}, Lcom/fsck/k9/ui/helper/SizeFormatter;->formatSize(J)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    const/4 v2, 0x2

    .line 310
    if-ne v0, v8, :cond_13

    .line 311
    .line 312
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    check-cast p1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 317
    .line 318
    iget-object p1, p1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->displayName:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    new-array v2, v2, [Ljava/lang/Object;

    .line 325
    .line 326
    aput-object p1, v2, v10

    .line 327
    .line 328
    aput-object v1, v2, v8

    .line 329
    .line 330
    const p1, 0x7f12046d

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    const v1, 0x7f120461

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    goto :goto_b

    .line 355
    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    new-array v2, v2, [Ljava/lang/Object;

    .line 368
    .line 369
    aput-object v3, v2, v10

    .line 370
    .line 371
    aput-object v1, v2, v8

    .line 372
    .line 373
    const v1, 0x7f100006

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    const v1, 0x7f120462

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    :goto_b
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageTopView;->getMessageHeaderView()Lcom/fsck/k9/view/MessageHeader;

    .line 398
    .line 399
    .line 400
    move-result-object p0

    .line 401
    iget-object v1, p0, Lcom/fsck/k9/view/MessageHeader;->attachmentSummaryText:Lcom/google/android/material/textview/MaterialTextView;

    .line 402
    .line 403
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    .line 405
    .line 406
    iget-object p1, p0, Lcom/fsck/k9/view/MessageHeader;->viewAllAttachmentsButton:Lcom/google/android/material/textview/MaterialTextView;

    .line 407
    .line 408
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    .line 410
    .line 411
    iget-object p0, p0, Lcom/fsck/k9/view/MessageHeader;->attachmentSummaryContainer:Landroid/view/View;

    .line 412
    .line 413
    invoke-virtual {p0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 414
    .line 415
    .line 416
    return-void

    .line 417
    :cond_14
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    throw v9

    .line 421
    :cond_15
    const-string p0, "messageReaderViewModel"

    .line 422
    .line 423
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    throw v9

    .line 427
    :cond_16
    const-string p0, "attachmentCallback"

    .line 428
    .line 429
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    throw v9

    .line 433
    :cond_17
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    throw v9

    .line 437
    :cond_18
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    throw v9

    .line 441
    :cond_19
    const-string p0, "layoutInflater"

    .line 442
    .line 443
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw v9
.end method

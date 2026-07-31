.class public final synthetic Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/messagelist/MessageListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda15;->f$0:Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda15;->f$0:Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->onCompose()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->recentChangesViewModel$delegate:Lkotlin/Lazy;

    .line 13
    .line 14
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel;

    .line 19
    .line 20
    iget-object p1, p1, Lnet/thunderbird/feature/changelog/internal/RecentChangesViewModel;->shouldShowRecentChangesHint:Landroidx/lifecycle/CoroutineLiveData;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->shouldShowRecentChangesHintObserver:Landroidx/camera/core/impl/LiveDataObservable$$ExternalSyntheticLambda3;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 25
    .line 26
    .line 27
    sget p1, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;->$r8$clinit:I

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance p1, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Changelog;

    .line 34
    .line 35
    sget-object v0, Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;->RECENT_CHANGES:Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;

    .line 36
    .line 37
    invoke-direct {p1, v0}, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Changelog;-><init>(Lnet/thunderbird/feature/navigation/changelog/api/ChangeLogMode;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p1}, Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;->launch(Landroid/content/Context;Lnet/openid/appauth/JsonUtil$Field;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    new-instance v1, Landroidx/compose/ui/platform/ComposeView;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const/4 v5, 0x6

    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v3, 0x0

    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    .line 66
    .line 67
    const v3, 0x7f09047d

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    const v0, 0x7f090480

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Landroidx/compose/ui/platform/AndroidFontResourceLoader;->INSTANCE:Landroidx/compose/ui/platform/AndroidFontResourceLoader;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroidx/compose/ui/platform/AbstractComposeView;->setViewCompositionStrategy(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;

    .line 85
    .line 86
    const/4 v3, 0x5

    .line 87
    invoke-direct {v0, p0, v3, v4}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/messagelist/MessageListFragment;IB)V

    .line 88
    .line 89
    .line 90
    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 91
    .line 92
    const v4, 0x56497647

    .line 93
    .line 94
    .line 95
    const/4 v5, 0x1

    .line 96
    invoke-direct {v3, v4, v0, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Landroid/widget/FrameLayout;

    .line 103
    .line 104
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    const v2, 0x1020002

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 111
    .line 112
    .line 113
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 114
    .line 115
    invoke-static {v0, p0, v5}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->createLifecycleAwareWindowRecomposer$default(Landroid/view/View;Landroidx/lifecycle/Lifecycle;I)Landroidx/compose/runtime/Recomposer;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    const v2, 0x7f090078

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    .line 126
    .line 127
    const/4 v2, -0x2

    .line 128
    invoke-direct {p0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    new-instance p0, Landroid/widget/PopupWindow;

    .line 138
    .line 139
    invoke-direct {p0, v0, v2, v2, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    nop

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

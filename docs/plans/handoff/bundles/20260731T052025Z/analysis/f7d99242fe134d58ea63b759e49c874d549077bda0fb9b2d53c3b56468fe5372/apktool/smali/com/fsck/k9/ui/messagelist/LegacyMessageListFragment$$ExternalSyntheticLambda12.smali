.class public final synthetic Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda12;->f$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

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
    .locals 1

    .line 1
    iget p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda12;->f$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->onCompose()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->recentChangesViewModel$delegate:Lkotlin/Lazy;

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
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->shouldShowRecentChangesHintObserver:Landroidx/camera/core/impl/LiveDataObservable$$ExternalSyntheticLambda3;

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
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 1
    const p0, 0x7f0f0004

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 5
    .line 6
    .line 7
    sget p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->$r8$clinit:I

    .line 8
    .line 9
    return-void
.end method

.method public final synthetic onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0a0245

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    xor-int/2addr v0, v3

    .line 19
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 20
    .line 21
    .line 22
    sget p1, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->$r8$clinit:I

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->setNotify(Z)V

    .line 25
    .line 26
    .line 27
    return v3

    .line 28
    :cond_0
    const p1, 0x7f0a004b

    .line 29
    .line 30
    .line 31
    if-ne v0, p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance p1, Landroid/content/Intent;

    .line 38
    .line 39
    const-class v0, Lorg/schabi/newpipe/settings/SettingsActivity;

    .line 40
    .line 41
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    .line 46
    .line 47
    return v3

    .line 48
    :cond_1
    const p1, 0x7f0a024c

    .line 49
    .line 50
    .line 51
    if-ne v0, p1, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 62
    .line 63
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getFeedUrl()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p1, p0}, Landroidx/transition/Transition$Impl26;->openUrlInApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return v3

    .line 71
    :cond_2
    const p1, 0x7f0a0246

    .line 72
    .line 73
    .line 74
    if-ne v0, p1, :cond_3

    .line 75
    .line 76
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 85
    .line 86
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getOriginalUrl()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p1, p0}, Landroidx/transition/Transition$Impl26;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return v3

    .line 94
    :cond_3
    const p1, 0x7f0a024d

    .line 95
    .line 96
    .line 97
    if-ne v0, p1, :cond_5

    .line 98
    .line 99
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 100
    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->name:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 110
    .line 111
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getOriginalUrl()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 116
    .line 117
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getAvatars()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {p1, v0, v1, p0}, Landroidx/transition/Transition$Impl26;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    return v3

    .line 125
    :cond_5
    return v2
.end method

.method public final onPrepareMenu(Landroid/view/Menu;)V
    .locals 1

    .line 1
    const v0, 0x7f0a024c

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    .line 9
    .line 10
    iput-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->menuRssButton:Landroid/view/MenuItem;

    .line 11
    .line 12
    const v0, 0x7f0a0245

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->menuNotifyButton:Landroid/view/MenuItem;

    .line 20
    .line 21
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->menuRssButton:Landroid/view/MenuItem;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->currentInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getFeedUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    xor-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->channelSubscription:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->updateNotifyButton(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

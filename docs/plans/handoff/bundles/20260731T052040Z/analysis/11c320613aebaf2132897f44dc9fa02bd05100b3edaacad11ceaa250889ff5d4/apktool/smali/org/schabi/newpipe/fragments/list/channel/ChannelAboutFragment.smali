.class public Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;
.super Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field protected channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/Description;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;->channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getDescription()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final getService()Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;->channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getServiceId()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;->channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getStreamUrl()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getTags()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;->channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getTags()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 2
    .line 3
    iget-object p1, p1, Lorg/koin/core/Koin;->resolver:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    const/16 p2, 0x8

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0, p2}, Lorg/schabi/newpipe/util/DeviceUtils;->dpToPx(Landroid/content/Context;I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-virtual {p1, p2, p0, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final setupMetadata(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->binding:Lorg/koin/core/Koin;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/koin/core/Koin;->optionRegistry:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;->channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getSubscriberCount()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-wide/16 v2, -0x1

    .line 22
    .line 23
    cmp-long v0, v0, v2

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;->channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 28
    .line 29
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getSubscriberCount()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    long-to-double v0, v0

    .line 34
    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/Localization;->localizeNumber(D)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    const/4 v5, 0x0

    .line 39
    const v6, 0x7f1302e4

    .line 40
    .line 41
    .line 42
    move-object v2, p0

    .line 43
    move-object v3, p1

    .line 44
    move-object v4, p2

    .line 45
    invoke-virtual/range {v2 .. v7}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ZILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move-object v2, p0

    .line 50
    move-object v3, p1

    .line 51
    move-object v4, p2

    .line 52
    :goto_0
    iget-object p0, v2, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;->channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getAvatars()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const p1, 0x7f1302d4

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3, v4, p1, p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addImagesMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ILjava/util/List;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, v2, Lorg/schabi/newpipe/fragments/list/channel/ChannelAboutFragment;->channelInfo:Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getBanners()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const p1, 0x7f1302d5

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3, v4, p1, p0}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->addImagesMetadataItem(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;ILjava/util/List;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

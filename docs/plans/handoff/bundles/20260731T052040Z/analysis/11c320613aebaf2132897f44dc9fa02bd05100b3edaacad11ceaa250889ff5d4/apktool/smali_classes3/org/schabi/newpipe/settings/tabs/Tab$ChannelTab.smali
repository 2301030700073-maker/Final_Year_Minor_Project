.class public final Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;
.super Lorg/schabi/newpipe/settings/tabs/Tab;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public channelName:Ljava/lang/String;

.field public channelServiceId:I

.field public channelUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelServiceId:I

    .line 5
    .line 6
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelUrl:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelName:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move-object v0, p1

    .line 7
    check-cast v0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;

    .line 8
    .line 9
    invoke-super {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelServiceId:I

    .line 16
    .line 17
    iget v1, v0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelServiceId:I

    .line 18
    .line 19
    if-ne p1, v1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelUrl:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, v0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelUrl:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelName:Ljava/lang/String;

    .line 32
    .line 33
    iget-object p1, v0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public final getFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelServiceId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelUrl:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1, v0, p0}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->getInstance(Ljava/lang/String;ILjava/lang/String;)Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getTabIconRes(Landroid/content/Context;)I
    .locals 0

    .line 1
    const p0, 0x7f08015e

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getTabId()I
    .locals 0

    .line 1
    const/4 p0, 0x6

    .line 2
    return p0
.end method

.method public final getTabName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelServiceId:I

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelUrl:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelName:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    new-array v3, v3, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    aput-object v0, v3, v4

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    aput-object v1, v3, v0

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    aput-object v2, v3, v0

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    aput-object p0, v3, v0

    .line 30
    .line 31
    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public final readDataFromJson(Lcom/grack/nanojson/JsonObject;)V
    .locals 2

    .line 1
    const-string v0, "channel_service_id"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelServiceId:I

    .line 9
    .line 10
    const-string v0, "channel_url"

    .line 11
    .line 12
    const-string v1, "<no-url>"

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelUrl:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "channel_name"

    .line 21
    .line 22
    const-string v1, "<no-name>"

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelName:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method

.method public final writeDataToJson(Lcom/grack/nanojson/JsonStringWriter;)V
    .locals 2

    .line 1
    const-string v0, "channel_service_id"

    .line 2
    .line 3
    iget v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelServiceId:I

    .line 4
    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/grack/nanojson/JsonStringWriter;->value(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "channel_url"

    .line 9
    .line 10
    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelUrl:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "channel_name"

    .line 16
    .line 17
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v0, p0}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

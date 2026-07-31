.class public final Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;
.super Lorg/schabi/newpipe/settings/tabs/Tab;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public feedGroupId:Ljava/lang/Long;

.field public feedGroupName:Ljava/lang/String;

.field public iconId:I


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupId:Ljava/lang/Long;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupName:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->iconId:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;

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
    check-cast v0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;

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
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupId:Ljava/lang/Long;

    .line 16
    .line 17
    iget-object v1, v0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupId:Ljava/lang/Long;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupName:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, v0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->iconId:I

    .line 36
    .line 37
    iget p1, v0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->iconId:I

    .line 38
    .line 39
    if-ne p0, p1, :cond_1

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
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupId:Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->newInstance(Ljava/lang/String;J)Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final getTabIconRes(Landroid/content/Context;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->iconId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTabId()I
    .locals 0

    .line 1
    const/16 p0, 0x9

    .line 2
    .line 3
    return p0
.end method

.method public final getTabName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    const p0, 0x7f1301f2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupId:Ljava/lang/Long;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupName:Ljava/lang/String;

    .line 10
    .line 11
    iget p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->iconId:I

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v3, 0x4

    .line 18
    new-array v3, v3, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v0, v3, v4

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    aput-object v1, v3, v0

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    aput-object v2, v3, v0

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    aput-object p0, v3, v0

    .line 31
    .line 32
    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public final readDataFromJson(Lcom/grack/nanojson/JsonObject;)V
    .locals 3

    .line 1
    const-string v0, "feed_group_id"

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupId:Ljava/lang/Long;

    .line 14
    .line 15
    const-string v0, "feed_group_name"

    .line 16
    .line 17
    const-string v1, "<no-name>"

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupName:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "feed_group_icon"

    .line 26
    .line 27
    const v1, 0x7f0800e7

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->iconId:I

    .line 35
    .line 36
    return-void
.end method

.method public final writeDataToJson(Lcom/grack/nanojson/JsonStringWriter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupId:Ljava/lang/Long;

    .line 2
    .line 3
    const-string v1, "feed_group_id"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonStringWriter;->preValue(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/grack/nanojson/JsonStringWriter;->NULL:[C

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonStringWriter;->raw([C)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonStringWriter;->preValue(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonStringWriter;->raw(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    const-string v0, "feed_group_name"

    .line 27
    .line 28
    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "feed_group_icon"

    .line 34
    .line 35
    iget p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->iconId:I

    .line 36
    .line 37
    invoke-virtual {p1, p0, v0}, Lcom/grack/nanojson/JsonStringWriter;->value(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

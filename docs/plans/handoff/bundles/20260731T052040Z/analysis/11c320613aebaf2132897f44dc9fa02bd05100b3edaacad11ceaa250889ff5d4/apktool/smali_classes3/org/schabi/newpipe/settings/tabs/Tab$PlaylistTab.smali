.class public final Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;
.super Lorg/schabi/newpipe/settings/tabs/Tab;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public playlistId:J

.field public playlistName:Ljava/lang/String;

.field public playlistServiceId:I

.field public playlistType:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

.field public playlistUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistId:J

    .line 7
    .line 8
    sget-object p1, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_LOCAL_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 9
    .line 10
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistType:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 11
    .line 12
    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistServiceId:I

    .line 14
    .line 15
    const-string p1, "<no-url>"

    .line 16
    .line 17
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistUrl:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;

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
    check-cast v0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;

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
    iget p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistServiceId:I

    .line 16
    .line 17
    iget v1, v0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistServiceId:I

    .line 18
    .line 19
    if-ne p1, v1, :cond_1

    .line 20
    .line 21
    iget-wide v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistId:J

    .line 22
    .line 23
    iget-wide v3, v0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistId:J

    .line 24
    .line 25
    cmp-long p1, v1, v3

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistUrl:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v1, v0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistUrl:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v1, v0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistType:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 50
    .line 51
    iget-object p1, v0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistType:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 52
    .line 53
    if-ne p0, p1, :cond_1

    .line 54
    .line 55
    const/4 p0, 0x1

    .line 56
    return p0

    .line 57
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 58
    return p0
.end method

.method public final getFragment()Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistType:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 2
    .line 3
    sget-object v1, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_LOCAL_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistId:J

    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->getInstance(Ljava/lang/String;J)Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    iget v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistServiceId:I

    .line 17
    .line 18
    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistUrl:Ljava/lang/String;

    .line 19
    .line 20
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v2, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    .line 23
    .line 24
    invoke-direct {v2}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1, v0, p0}, Lorg/schabi/newpipe/fragments/list/BaseListInfoFragment;->setInitialData(Ljava/lang/String;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v2
.end method

.method public final getTabIconRes(Landroid/content/Context;)I
    .locals 0

    .line 1
    const p0, 0x7f0800ea

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getTabId()I
    .locals 0

    .line 1
    const/16 p0, 0x8

    .line 2
    .line 3
    return p0
.end method

.method public final getTabName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistServiceId:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-wide v2, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistId:J

    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistUrl:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistType:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 24
    .line 25
    const/4 v5, 0x6

    .line 26
    new-array v5, v5, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    aput-object v0, v5, v6

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aput-object v1, v5, v0

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    aput-object v2, v5, v0

    .line 36
    .line 37
    const/4 v0, 0x3

    .line 38
    aput-object v3, v5, v0

    .line 39
    .line 40
    const/4 v0, 0x4

    .line 41
    aput-object v4, v5, v0

    .line 42
    .line 43
    const/4 v0, 0x5

    .line 44
    aput-object p0, v5, v0

    .line 45
    .line 46
    invoke-static {v5}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0
.end method

.method public final readDataFromJson(Lcom/grack/nanojson/JsonObject;)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string v1, "playlist_service_id"

    .line 3
    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iput v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistServiceId:I

    .line 9
    .line 10
    const-string v1, "playlist_url"

    .line 11
    .line 12
    const-string v2, "<no-url>"

    .line 13
    .line 14
    invoke-virtual {p1, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistUrl:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "playlist_name"

    .line 21
    .line 22
    const-string v2, "<no-name>"

    .line 23
    .line 24
    invoke-virtual {p1, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "playlist_id"

    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    int-to-long v0, v0

    .line 37
    iput-wide v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistId:J

    .line 38
    .line 39
    const-string v0, "PLAYLIST_LOCAL_ITEM"

    .line 40
    .line 41
    const-string v1, "playlist_type"

    .line 42
    .line 43
    invoke-virtual {p1, v1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistType:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 52
    .line 53
    return-void
.end method

.method public final writeDataToJson(Lcom/grack/nanojson/JsonStringWriter;)V
    .locals 3

    .line 1
    const-string v0, "playlist_service_id"

    .line 2
    .line 3
    iget v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistServiceId:I

    .line 4
    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/grack/nanojson/JsonStringWriter;->value(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "playlist_url"

    .line 9
    .line 10
    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistUrl:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "playlist_name"

    .line 16
    .line 17
    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-wide v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistId:J

    .line 23
    .line 24
    const-string v2, "playlist_id"

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Lcom/grack/nanojson/JsonStringWriter;->preValue(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonStringWriter;->raw(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistType:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string v0, "playlist_type"

    .line 43
    .line 44
    invoke-virtual {p1, v0, p0}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.class public final Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final avatarUrl:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final errors:Ljava/util/ArrayList;

.field public final name:Ljava/lang/String;

.field public newStreams:Ljava/util/ArrayList;

.field public final notificationMode:I

.field public final serviceId:I

.field public final streams:Ljava/util/List;

.field public final subscriberCount:Ljava/lang/Long;

.field public final uid:J

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;Lorg/schabi/newpipe/extractor/Info;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-wide v0, p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    .line 5
    .line 6
    iget v2, p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->notificationMode:I

    .line 7
    .line 8
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    instance-of v4, p2, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    move-object v6, p2

    .line 21
    check-cast v6, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v6, v5

    .line 25
    :goto_0
    if-eqz v6, :cond_1

    .line 26
    .line 27
    invoke-virtual {v6}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getAvatars()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    if-eqz v6, :cond_1

    .line 32
    .line 33
    invoke-static {v6}, Lorg/schabi/newpipe/util/image/ImageStrategy;->imageListToDbUrl(Ljava/util/List;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    if-nez v6, :cond_2

    .line 38
    .line 39
    :cond_1
    iget-object v6, p1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->avatarUrl:Ljava/lang/String;

    .line 40
    .line 41
    :cond_2
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    move-object v8, p2

    .line 55
    check-cast v8, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move-object v8, v5

    .line 59
    :goto_1
    if-eqz v8, :cond_4

    .line 60
    .line 61
    invoke-virtual {v8}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getDescription()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    goto :goto_2

    .line 66
    :cond_4
    move-object v8, v5

    .line 67
    :goto_2
    if-eqz v4, :cond_5

    .line 68
    .line 69
    check-cast p2, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_5
    move-object p2, v5

    .line 73
    :goto_3
    if-eqz p2, :cond_6

    .line 74
    .line 75
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getSubscriberCount()J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-wide v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->uid:J

    .line 87
    .line 88
    iput v2, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->notificationMode:I

    .line 89
    .line 90
    iput-object v3, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->name:Ljava/lang/String;

    .line 91
    .line 92
    iput-object v6, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->avatarUrl:Ljava/lang/String;

    .line 93
    .line 94
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->url:Ljava/lang/String;

    .line 95
    .line 96
    iput v7, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->serviceId:I

    .line 97
    .line 98
    iput-object v8, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->description:Ljava/lang/String;

    .line 99
    .line 100
    iput-object v5, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->subscriberCount:Ljava/lang/Long;

    .line 101
    .line 102
    iput-object p3, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->streams:Ljava/util/List;

    .line 103
    .line 104
    iput-object p4, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->errors:Ljava/util/ArrayList;

    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    .line 12
    .line 13
    iget-wide v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->uid:J

    .line 14
    .line 15
    iget-wide v2, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->uid:J

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->notificationMode:I

    .line 23
    .line 24
    iget v1, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->notificationMode:I

    .line 25
    .line 26
    if-eq v0, v1, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->name:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v1, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->name:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->avatarUrl:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v1, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->avatarUrl:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_5

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->url:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v1, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->url:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_6
    iget v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->serviceId:I

    .line 63
    .line 64
    iget v1, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->serviceId:I

    .line 65
    .line 66
    if-eq v0, v1, :cond_7

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_7
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->description:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v1, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->description:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_8

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_8
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->subscriberCount:Ljava/lang/Long;

    .line 81
    .line 82
    iget-object v1, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->subscriberCount:Ljava/lang/Long;

    .line 83
    .line 84
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_9

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_9
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->streams:Ljava/util/List;

    .line 92
    .line 93
    iget-object v1, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->streams:Ljava/util/List;

    .line 94
    .line 95
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_a

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_a
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->errors:Ljava/util/ArrayList;

    .line 103
    .line 104
    iget-object p1, p1, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->errors:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-nez p0, :cond_b

    .line 111
    .line 112
    :goto_0
    const/4 p0, 0x0

    .line 113
    return p0

    .line 114
    :cond_b
    :goto_1
    const/4 p0, 0x1

    .line 115
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    iget-wide v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->uid:J

    .line 4
    .line 5
    ushr-long v3, v1, v0

    .line 6
    .line 7
    xor-long/2addr v1, v3

    .line 8
    long-to-int v0, v1

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget v2, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->notificationMode:I

    .line 13
    .line 14
    add-int/2addr v0, v2

    .line 15
    mul-int/2addr v0, v1

    .line 16
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->name:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x0

    .line 23
    iget-object v3, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->avatarUrl:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    move v3, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    :goto_0
    add-int/2addr v0, v3

    .line 34
    mul-int/2addr v0, v1

    .line 35
    iget-object v3, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->url:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0, v1, v3}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget v3, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->serviceId:I

    .line 42
    .line 43
    add-int/2addr v0, v3

    .line 44
    mul-int/2addr v0, v1

    .line 45
    iget-object v3, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->description:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    move v3, v2

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    :goto_1
    add-int/2addr v0, v3

    .line 56
    mul-int/2addr v0, v1

    .line 57
    iget-object v3, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->subscriberCount:Ljava/lang/Long;

    .line 58
    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    :goto_2
    add-int/2addr v0, v2

    .line 67
    mul-int/2addr v0, v1

    .line 68
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->streams:Ljava/util/List;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    add-int/2addr v2, v0

    .line 75
    mul-int/2addr v2, v1

    .line 76
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->errors:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    add-int/2addr p0, v2

    .line 83
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FeedUpdateInfo(uid="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->uid:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", notificationMode="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->notificationMode:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", name="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->name:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", avatarUrl="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->avatarUrl:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", url="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->url:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", serviceId="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->serviceId:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", description="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->description:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", subscriberCount="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->subscriberCount:Ljava/lang/Long;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", streams="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->streams:Ljava/util/List;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", errors="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->errors:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p0, ")"

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0
.end method

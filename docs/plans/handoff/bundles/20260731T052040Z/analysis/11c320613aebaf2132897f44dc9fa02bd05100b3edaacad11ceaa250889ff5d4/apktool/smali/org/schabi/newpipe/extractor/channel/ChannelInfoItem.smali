.class public final Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;
.super Lorg/schabi/newpipe/extractor/InfoItem;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private description:Ljava/lang/String;

.field private streamCount:J

.field private subscriberCount:J

.field private verified:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->CHANNEL:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 2
    .line 3
    invoke-direct {p0, v0, p2, p1, p3}, Lorg/schabi/newpipe/extractor/InfoItem;-><init>(Lorg/schabi/newpipe/extractor/InfoItem$InfoType;ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, -0x1

    .line 7
    .line 8
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->subscriberCount:J

    .line 9
    .line 10
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->streamCount:J

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->verified:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStreamCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->streamCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSubscriberCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->subscriberCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setStreamCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->streamCount:J

    .line 2
    .line 3
    return-void
.end method

.method public final setSubscriberCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->subscriberCount:J

    .line 2
    .line 3
    return-void
.end method

.method public final setVerified(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->verified:Z

    .line 2
    .line 3
    return-void
.end method

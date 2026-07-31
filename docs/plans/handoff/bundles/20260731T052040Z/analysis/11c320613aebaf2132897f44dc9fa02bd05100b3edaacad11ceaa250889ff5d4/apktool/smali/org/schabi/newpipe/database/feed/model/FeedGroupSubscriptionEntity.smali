.class public final Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity$Companion;


# instance fields
.field public feedGroupId:J

.field public subscriptionId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;->Companion:Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity$Companion;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;->feedGroupId:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;->feedGroupId:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget-wide v3, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;->subscriptionId:J

    .line 23
    .line 24
    iget-wide p0, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;->subscriptionId:J

    .line 25
    .line 26
    cmp-long p0, v3, p0

    .line 27
    .line 28
    if-eqz p0, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;->feedGroupId:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v3, v0, v2

    .line 6
    .line 7
    xor-long/2addr v0, v3

    .line 8
    long-to-int v0, v0

    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-wide v3, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;->subscriptionId:J

    .line 12
    .line 13
    ushr-long v1, v3, v2

    .line 14
    .line 15
    xor-long/2addr v1, v3

    .line 16
    long-to-int p0, v1

    .line 17
    add-int/2addr v0, p0

    .line 18
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;->feedGroupId:J

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/schabi/newpipe/database/feed/model/FeedGroupSubscriptionEntity;->subscriptionId:J

    .line 4
    .line 5
    const-string p0, "FeedGroupSubscriptionEntity(feedGroupId="

    .line 6
    .line 7
    const-string v4, ", subscriptionId="

    .line 8
    .line 9
    invoke-static {v0, v1, p0, v4}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, ")"

    .line 14
    .line 15
    invoke-static {v2, v3, v0, p0}, Landroidx/compose/ui/Modifier$-CC;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

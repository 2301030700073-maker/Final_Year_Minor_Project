.class public final Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private final id:J

.field private final notificationMode:I

.field private final serviceId:I

.field private final title:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-wide p1, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->id:J

    .line 11
    .line 12
    iput-object p3, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->title:Ljava/lang/String;

    .line 13
    .line 14
    iput p4, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->notificationMode:I

    .line 15
    .line 16
    iput p5, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->serviceId:I

    .line 17
    .line 18
    iput-object p6, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->url:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic copy$default(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;JLjava/lang/String;IILjava/lang/String;ILjava/lang/Object;)Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;
    .locals 7

    .line 1
    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->id:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->title:Ljava/lang/String;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget p4, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->notificationMode:I

    :cond_2
    move v4, p4

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget p5, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->serviceId:I

    :cond_3
    move v5, p5

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    iget-object p6, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->url:Ljava/lang/String;

    :cond_4
    move-object v0, p0

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->copy(JLjava/lang/String;IILjava/lang/String;)Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getNotificationMode$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->notificationMode:I

    .line 2
    .line 3
    return p0
.end method

.method public final component4()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->serviceId:I

    .line 2
    .line 3
    return p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(JLjava/lang/String;IILjava/lang/String;)Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    .line 8
    .line 9
    invoke-direct/range {p0 .. p6}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;-><init>(JLjava/lang/String;IILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
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
    instance-of v1, p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

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
    check-cast p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->id:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->id:J

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
    iget-object v1, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->title:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->title:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    iget v1, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->notificationMode:I

    .line 34
    .line 35
    iget v3, p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->notificationMode:I

    .line 36
    .line 37
    if-eq v1, v3, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget v1, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->serviceId:I

    .line 41
    .line 42
    iget v3, p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->serviceId:I

    .line 43
    .line 44
    if-eq v1, v3, :cond_5

    .line 45
    .line 46
    return v2

    .line 47
    :cond_5
    iget-object p0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->url:Ljava/lang/String;

    .line 48
    .line 49
    iget-object p1, p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->url:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    return v0
.end method

.method public final getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getNotificationMode()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->notificationMode:I

    .line 2
    .line 3
    return p0
.end method

.method public final getServiceId()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->serviceId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->id:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v2, v0, v2

    .line 6
    .line 7
    xor-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-object v2, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->title:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v2, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->notificationMode:I

    .line 19
    .line 20
    add-int/2addr v0, v2

    .line 21
    mul-int/2addr v0, v1

    .line 22
    iget v2, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->serviceId:I

    .line 23
    .line 24
    add-int/2addr v0, v2

    .line 25
    mul-int/2addr v0, v1

    .line 26
    iget-object p0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->url:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    add-int/2addr p0, v0

    .line 33
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->id:J

    .line 2
    .line 3
    iget-object v2, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->title:Ljava/lang/String;

    .line 4
    .line 5
    iget v3, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->notificationMode:I

    .line 6
    .line 7
    iget v4, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->serviceId:I

    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->url:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v6, "SubscriptionItem(id="

    .line 14
    .line 15
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, ", title="

    .line 22
    .line 23
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, ", notificationMode="

    .line 30
    .line 31
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ", serviceId="

    .line 38
    .line 39
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, ", url="

    .line 46
    .line 47
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ")"

    .line 54
    .line 55
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

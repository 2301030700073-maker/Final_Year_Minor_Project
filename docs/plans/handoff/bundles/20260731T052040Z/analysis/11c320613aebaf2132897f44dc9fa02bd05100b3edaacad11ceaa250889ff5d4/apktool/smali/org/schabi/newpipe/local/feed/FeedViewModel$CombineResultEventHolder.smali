.class public final Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

.field public final t2:Z

.field public final t3:Z

.field public final t4:Z

.field public final t5:J

.field public final t6:Lj$/time/OffsetDateTime;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;ZZZJLj$/time/OffsetDateTime;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t2:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t3:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t4:Z

    .line 11
    .line 12
    iput-wide p5, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t5:J

    .line 13
    .line 14
    iput-object p7, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t6:Lj$/time/OffsetDateTime;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;

    .line 10
    .line 11
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    .line 12
    .line 13
    iget-object v1, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t2:Z

    .line 23
    .line 24
    iget-boolean v1, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t2:Z

    .line 25
    .line 26
    if-eq v0, v1, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t3:Z

    .line 30
    .line 31
    iget-boolean v1, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t3:Z

    .line 32
    .line 33
    if-eq v0, v1, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t4:Z

    .line 37
    .line 38
    iget-boolean v1, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t4:Z

    .line 39
    .line 40
    if-eq v0, v1, :cond_5

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_5
    iget-wide v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t5:J

    .line 44
    .line 45
    iget-wide v2, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t5:J

    .line 46
    .line 47
    cmp-long v0, v0, v2

    .line 48
    .line 49
    if-eqz v0, :cond_6

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_6
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t6:Lj$/time/OffsetDateTime;

    .line 53
    .line 54
    iget-object p1, p1, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t6:Lj$/time/OffsetDateTime;

    .line 55
    .line 56
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_7

    .line 61
    .line 62
    :goto_0
    const/4 p0, 0x0

    .line 63
    return p0

    .line 64
    :cond_7
    :goto_1
    const/4 p0, 0x1

    .line 65
    return p0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t2:Z

    .line 10
    .line 11
    const/16 v2, 0x4d5

    .line 12
    .line 13
    const/16 v3, 0x4cf

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    move v1, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-boolean v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t3:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    move v1, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_1
    add-int/2addr v0, v1

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    iget-boolean v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t4:Z

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    move v2, v3

    .line 38
    :cond_2
    add-int/2addr v0, v2

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    const/16 v1, 0x20

    .line 42
    .line 43
    iget-wide v2, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t5:J

    .line 44
    .line 45
    ushr-long v4, v2, v1

    .line 46
    .line 47
    xor-long/2addr v2, v4

    .line 48
    long-to-int v1, v2

    .line 49
    add-int/2addr v0, v1

    .line 50
    mul-int/lit8 v0, v0, 0x1f

    .line 51
    .line 52
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t6:Lj$/time/OffsetDateTime;

    .line 53
    .line 54
    if-nez p0, :cond_3

    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    :goto_2
    add-int/2addr v0, p0

    .line 63
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CombineResultEventHolder(t1="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t1:Lorg/schabi/newpipe/local/feed/service/FeedEventManager$Event;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", t2="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t2:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", t3="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t3:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", t4="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t4:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", t5="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t5:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", t6="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedViewModel$CombineResultEventHolder;->t6:Lj$/time/OffsetDateTime;

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p0, ")"

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method

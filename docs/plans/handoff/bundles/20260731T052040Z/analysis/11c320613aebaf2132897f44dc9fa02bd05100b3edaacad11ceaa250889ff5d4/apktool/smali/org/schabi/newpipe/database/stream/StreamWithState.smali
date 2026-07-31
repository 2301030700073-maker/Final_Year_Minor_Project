.class public final Lorg/schabi/newpipe/database/stream/StreamWithState;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final stateProgressMillis:Ljava/lang/Long;

.field public final stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/database/stream/model/StreamEntity;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/StreamWithState;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/database/stream/StreamWithState;->stateProgressMillis:Ljava/lang/Long;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lorg/schabi/newpipe/database/stream/StreamWithState;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/stream/StreamWithState;

    .line 10
    .line 11
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/StreamWithState;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 12
    .line 13
    iget-object v1, p1, Lorg/schabi/newpipe/database/stream/StreamWithState;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->equals(Ljava/lang/Object;)Z

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
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/StreamWithState;->stateProgressMillis:Ljava/lang/Long;

    .line 23
    .line 24
    iget-object p1, p1, Lorg/schabi/newpipe/database/stream/StreamWithState;->stateProgressMillis:Ljava/lang/Long;

    .line 25
    .line 26
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_3

    .line 31
    .line 32
    :goto_0
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/StreamWithState;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/StreamWithState;->stateProgressMillis:Ljava/lang/Long;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    :goto_0
    add-int/2addr v0, p0

    .line 20
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "StreamWithState(stream="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/StreamWithState;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", stateProgressMillis="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lorg/schabi/newpipe/database/stream/StreamWithState;->stateProgressMillis:Ljava/lang/Long;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

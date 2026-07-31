.class public final Lorg/schabi/newpipe/fragments/detail/StackItem;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

.field private final serviceId:I

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->serviceId:I

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->url:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->title:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getServiceId()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->serviceId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setPlayQueue(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    .line 2
    .line 3
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->serviceId:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ":"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->url:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " > "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->title:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

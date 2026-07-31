.class public final Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$RemoveEvent;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent;


# instance fields
.field private final queueIndex:I

.field private final removeIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$RemoveEvent;->removeIndex:I

    .line 5
    .line 6
    iput p2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$RemoveEvent;->queueIndex:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getQueueIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$RemoveEvent;->queueIndex:I

    .line 2
    .line 3
    return p0
.end method

.method public final getRemoveIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$RemoveEvent;->removeIndex:I

    .line 2
    .line 3
    return p0
.end method

.method public final type()Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$Type;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$Type;->REMOVE:Lorg/schabi/newpipe/player/playqueue/PlayQueueEvent$Type;

    .line 2
    .line 3
    return-object p0
.end method

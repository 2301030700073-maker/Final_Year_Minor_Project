.class public final synthetic Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/Player;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/Player;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda45;->f$0:Lorg/schabi/newpipe/player/Player;

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda45;->f$1:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda45;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda45;->f$0:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda45;->f$1:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-boolean p0, p0, Lorg/schabi/newpipe/player/Player$$ExternalSyntheticLambda45;->f$2:Z

    .line 11
    .line 12
    if-nez p0, :cond_1

    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->setRecovery()V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->reloadPlayQueueManager()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

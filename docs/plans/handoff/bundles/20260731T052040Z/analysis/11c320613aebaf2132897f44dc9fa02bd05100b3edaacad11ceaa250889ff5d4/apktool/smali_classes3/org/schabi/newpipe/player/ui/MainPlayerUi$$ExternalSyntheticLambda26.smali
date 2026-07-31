.class public final synthetic Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$Callback;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/Player;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/Player;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda26;->f$0:Lorg/schabi/newpipe/player/Player;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPlaybackParameterChanged(FFZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi$$ExternalSyntheticLambda26;->f$0:Lorg/schabi/newpipe/player/Player;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/player/Player;->setPlaybackParameters(FFZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

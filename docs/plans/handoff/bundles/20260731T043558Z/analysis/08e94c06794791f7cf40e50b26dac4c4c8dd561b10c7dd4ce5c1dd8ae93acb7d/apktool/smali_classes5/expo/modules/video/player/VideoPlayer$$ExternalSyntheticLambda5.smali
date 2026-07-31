.class public final synthetic Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lexpo/modules/video/player/VideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda5;->f$0:Lexpo/modules/video/player/VideoPlayer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda5;->f$0:Lexpo/modules/video/player/VideoPlayer;

    check-cast p1, Landroidx/media3/common/PlaybackParameters;

    check-cast p2, Landroidx/media3/common/PlaybackParameters;

    invoke-static {v0, p1, p2}, Lexpo/modules/video/player/VideoPlayer;->$r8$lambda$uDx8q0sAh_wkO_jumdmVZS5rOpY(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/PlaybackParameters;Landroidx/media3/common/PlaybackParameters;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

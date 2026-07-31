.class public final synthetic Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lexpo/modules/video/player/VideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/video/player/VideoPlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda4;->f$0:Lexpo/modules/video/player/VideoPlayer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda4;->f$0:Lexpo/modules/video/player/VideoPlayer;

    check-cast p1, Landroidx/media3/common/PlaybackParameters;

    invoke-static {v0, p1}, Lexpo/modules/video/player/VideoPlayer;->$r8$lambda$lm-IOfDujo6ESaG8wpQOkjyRufI(Lexpo/modules/video/player/VideoPlayer;Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlaybackParameters;

    move-result-object p1

    return-object p1
.end method

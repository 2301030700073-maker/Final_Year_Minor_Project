.class public final synthetic Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda2;
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

    iput-object p1, p0, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda2;->f$0:Lexpo/modules/video/player/VideoPlayer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/video/player/VideoPlayer$$ExternalSyntheticLambda2;->f$0:Lexpo/modules/video/player/VideoPlayer;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {v0, p1, p2}, Lexpo/modules/video/player/VideoPlayer;->$r8$lambda$Tu5ugX8jZsZBxuBz0_8Anp5taPs(Lexpo/modules/video/player/VideoPlayer;FF)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.class public final Lexpo/modules/video/PlayerViewExtensionKt;
.super Ljava/lang/Object;
.source "PlayerViewExtension.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0001\u001a\u0014\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0001\u001a\u0014\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0004H\u0001\u00a8\u0006\t"
    }
    d2 = {
        "applyRequiresLinearPlayback",
        "",
        "Landroidx/media3/ui/PlayerView;",
        "requireLinearPlayback",
        "",
        "setTimeBarInteractive",
        "interactive",
        "setFullscreenButtonVisibility",
        "visible",
        "expo-video_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final applyRequiresLinearPlayback(Landroidx/media3/ui/PlayerView;Z)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v0, p1, 0x1

    .line 9
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->setShowFastForwardButton(Z)V

    xor-int/lit8 v0, p1, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->setShowRewindButton(Z)V

    xor-int/lit8 v0, p1, 0x1

    .line 11
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->setShowPreviousButton(Z)V

    xor-int/lit8 v0, p1, 0x1

    .line 12
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->setShowNextButton(Z)V

    .line 13
    invoke-static {p0, p1}, Lexpo/modules/video/PlayerViewExtensionKt;->setTimeBarInteractive(Landroidx/media3/ui/PlayerView;Z)V

    return-void
.end method

.method public static final setFullscreenButtonVisibility(Landroidx/media3/ui/PlayerView;Z)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget v0, Landroidx/media3/ui/R$id;->exo_fullscreen:I

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 31
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static final setTimeBarInteractive(Landroidx/media3/ui/PlayerView;Z)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget v0, Landroidx/media3/ui/R$id;->exo_progress:I

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/media3/ui/DefaultTimeBar;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Landroidx/media3/ui/DefaultTimeBar;->setScrubberColor(I)V

    :cond_0
    if-eqz p0, :cond_3

    .line 21
    invoke-virtual {p0, p1}, Landroidx/media3/ui/DefaultTimeBar;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    const/4 p1, -0x1

    .line 23
    invoke-virtual {p0, p1}, Landroidx/media3/ui/DefaultTimeBar;->setScrubberColor(I)V

    :cond_2
    if-eqz p0, :cond_3

    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Landroidx/media3/ui/DefaultTimeBar;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method

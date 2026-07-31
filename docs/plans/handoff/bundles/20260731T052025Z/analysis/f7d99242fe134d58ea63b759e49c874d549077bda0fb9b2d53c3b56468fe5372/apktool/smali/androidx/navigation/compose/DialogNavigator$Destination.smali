.class public final Landroidx/navigation/compose/DialogNavigator$Destination;
.super Landroidx/navigation/NavDestination;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/navigation/FloatingWindow;


# instance fields
.field public final content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final dialogProperties:Landroidx/compose/ui/window/DialogProperties;


# direct methods
.method public constructor <init>(Landroidx/navigation/compose/DialogNavigator;)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/navigation/compose/ComposableSingletons$DialogNavigatorKt;->lambda$-1092249270:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/ui/window/DialogProperties;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x7

    .line 7
    invoke-direct {v1, v3, v2, v2}, Landroidx/compose/ui/window/DialogProperties;-><init>(IZZ)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroidx/navigation/NavDestination;-><init>(Landroidx/navigation/Navigator;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Landroidx/navigation/compose/DialogNavigator$Destination;->dialogProperties:Landroidx/compose/ui/window/DialogProperties;

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/navigation/compose/DialogNavigator$Destination;->content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 16
    .line 17
    return-void
.end method

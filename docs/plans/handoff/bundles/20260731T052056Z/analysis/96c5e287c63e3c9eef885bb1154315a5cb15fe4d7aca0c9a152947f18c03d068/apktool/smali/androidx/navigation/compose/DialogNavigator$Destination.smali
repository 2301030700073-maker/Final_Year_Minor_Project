.class public final Landroidx/navigation/compose/DialogNavigator$Destination;
.super Landroidx/navigation/NavDestination;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final dialogProperties:Landroidx/compose/ui/window/DialogProperties;


# direct methods
.method public constructor <init>(Landroidx/navigation/compose/DialogNavigator;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/navigation/compose/ComposableSingletons$DialogNavigatorKt;->lambda$-1092249270:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/ui/window/DialogProperties;

    .line 4
    .line 5
    invoke-direct {v1}, Landroidx/compose/ui/window/DialogProperties;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroidx/navigation/NavDestination;-><init>(Landroidx/navigation/Navigator;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Landroidx/navigation/compose/DialogNavigator$Destination;->dialogProperties:Landroidx/compose/ui/window/DialogProperties;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/navigation/compose/DialogNavigator$Destination;->content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 14
    .line 15
    return-void
.end method

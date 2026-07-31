.class public final synthetic Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic f$0:Landroidx/activity/OnBackPressedDispatcher;

.field public final synthetic f$1:Landroidx/activity/ComponentActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/ComponentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda12;->f$0:Landroidx/activity/OnBackPressedDispatcher;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda12;->f$1:Landroidx/activity/ComponentActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda12;->f$0:Landroidx/activity/OnBackPressedDispatcher;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda12;->f$1:Landroidx/activity/ComponentActivity;

    .line 4
    .line 5
    invoke-static {v0, p0, p1, p2}, Landroidx/activity/ComponentActivity;->$r8$lambda$XCwb6u5X87zpWrZW4Zmu6tsKQC8(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/ComponentActivity;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

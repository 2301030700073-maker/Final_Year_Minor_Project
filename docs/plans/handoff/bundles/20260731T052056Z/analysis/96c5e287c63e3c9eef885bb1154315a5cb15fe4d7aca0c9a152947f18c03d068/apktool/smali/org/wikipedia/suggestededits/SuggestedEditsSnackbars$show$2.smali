.class public final Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$2;
.super Lcom/google/android/material/snackbar/Snackbar$Callback;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

.field public final synthetic $activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$2;->$activity:Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$2;->$action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismissed(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    .line 2
    .line 3
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$2;->$activity:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->snackbarSessionMap:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$show$2;->$action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 15
    .line 16
    invoke-static {p1, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars;->showFeedLinkSnackbar(Landroid/app/Activity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

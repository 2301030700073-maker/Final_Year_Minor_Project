.class public final Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItem;
.super Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItemModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final item:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$RecentEditsItem;->item:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 8
    .line 9
    return-void
.end method

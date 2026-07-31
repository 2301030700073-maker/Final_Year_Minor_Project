.class public final Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterHeaderViewHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final headerText:Landroid/widget/TextView;

.field public final synthetic this$0:Lorg/wikipedia/places/PlacesFilterActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/places/PlacesFilterActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterHeaderViewHolder;->this$0:Lorg/wikipedia/places/PlacesFilterActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f09024d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast p1, Landroid/widget/TextView;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterHeaderViewHolder;->headerText:Landroid/widget/TextView;

    .line 19
    .line 20
    return-void
.end method

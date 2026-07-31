.class public final Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterItemViewHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final callback:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

.field public final itemViewBinding:Lokio/internal/DefaultSocket;


# direct methods
.method public constructor <init>(Lokio/internal/DefaultSocket;Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterItemViewHolder;->itemViewBinding:Lokio/internal/DefaultSocket;

    .line 12
    .line 13
    iput-object p2, p0, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterItemViewHolder;->callback:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 14
    .line 15
    return-void
.end method

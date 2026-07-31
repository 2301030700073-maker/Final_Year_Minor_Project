.class public final Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lorg/wikipedia/readinglist/ReadingListItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic getView()Landroid/view/View;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;->getView()Lorg/wikipedia/readinglist/ReadingListItemView;

    move-result-object p0

    return-object p0
.end method

.method public final getView()Lorg/wikipedia/readinglist/ReadingListItemView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 7
    .line 8
    return-object p0
.end method

.class public final Lorg/wikipedia/search/RecentSearchesFragment$NamespaceItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/search/RecentSearchesFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/search/RecentSearchesFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/search/RecentSearchesFragment$NamespaceItemViewHolder;->this$0:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/search/RecentSearchesFragment$NamespaceItemViewHolder;->this$0:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->callback:Lorg/wikipedia/search/SearchFragment;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    check-cast p1, Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lorg/wikipedia/search/SearchFragment;->switchToSearch(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

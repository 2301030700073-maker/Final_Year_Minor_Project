.class public final Lcom/xwray/groupie/GroupieViewHolder$2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic this$0:Lcom/xwray/groupie/GroupieViewHolder;


# direct methods
.method public constructor <init>(Lcom/xwray/groupie/GroupieViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/xwray/groupie/GroupieViewHolder$2;->this$0:Lcom/xwray/groupie/GroupieViewHolder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/xwray/groupie/GroupieViewHolder$2;->this$0:Lcom/xwray/groupie/GroupieViewHolder;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/xwray/groupie/GroupieViewHolder;->onItemLongClickListener:Lcom/xwray/groupie/OnItemLongClickListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/xwray/groupie/GroupieViewHolder;->onItemLongClickListener:Lcom/xwray/groupie/OnItemLongClickListener;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/xwray/groupie/GroupieViewHolder;->item:Lcom/xwray/groupie/Item;

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lcom/xwray/groupie/OnItemLongClickListener;->onItemLongClick(Lcom/xwray/groupie/Item;Landroid/view/View;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

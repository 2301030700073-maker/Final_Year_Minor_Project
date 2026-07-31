.class public Lcom/xwray/groupie/GroupieViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public item:Lcom/xwray/groupie/Item;

.field public final onClickListener:Landroidx/preference/Preference$1;

.field public onItemClickListener:Lcom/xwray/groupie/OnItemClickListener;

.field public onItemLongClickListener:Lcom/xwray/groupie/OnItemLongClickListener;

.field public final onLongClickListener:Lcom/xwray/groupie/GroupieViewHolder$2;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroidx/preference/Preference$1;

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    invoke-direct {p1, p0, v0}, Landroidx/preference/Preference$1;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/xwray/groupie/GroupieViewHolder;->onClickListener:Landroidx/preference/Preference$1;

    .line 12
    .line 13
    new-instance p1, Lcom/xwray/groupie/GroupieViewHolder$2;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/xwray/groupie/GroupieViewHolder$2;-><init>(Lcom/xwray/groupie/GroupieViewHolder;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/xwray/groupie/GroupieViewHolder;->onLongClickListener:Lcom/xwray/groupie/GroupieViewHolder$2;

    .line 19
    .line 20
    return-void
.end method

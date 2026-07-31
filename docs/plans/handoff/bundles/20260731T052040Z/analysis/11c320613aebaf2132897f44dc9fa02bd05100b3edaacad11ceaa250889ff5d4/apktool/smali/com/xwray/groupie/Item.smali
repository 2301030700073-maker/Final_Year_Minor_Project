.class public abstract Lcom/xwray/groupie/Item;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/xwray/groupie/Group;


# static fields
.field public static final ID_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final id:J

.field public parentDataObserver:Lcom/xwray/groupie/GroupDataObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/xwray/groupie/Item;->ID_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/xwray/groupie/Item;->ID_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-wide v0, p0, Lcom/xwray/groupie/Item;->id:J

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public abstract bind(Lcom/xwray/groupie/GroupieViewHolder;)V
.end method

.method public bind(Lcom/xwray/groupie/GroupieViewHolder;ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xwray/groupie/Item;->bind(Lcom/xwray/groupie/GroupieViewHolder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public createViewHolder(Landroid/view/View;)Lcom/xwray/groupie/GroupieViewHolder;
    .locals 0

    .line 1
    new-instance p0, Lcom/xwray/groupie/GroupieViewHolder;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/xwray/groupie/GroupieViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public getDragDirs()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xwray/groupie/Item;->id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getItem(I)Lcom/xwray/groupie/Item;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    const-string p0, "Wanted item at position "

    .line 5
    .line 6
    const-string v0, " but an Item is a Group of size 1"

    .line 7
    .line 8
    invoke-static {p0, p1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public abstract getLayout()I
.end method

.method public final getPosition(Lorg/schabi/newpipe/info_list/StreamSegmentItem;)I
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 p0, -0x1

    .line 6
    return p0
.end method

.method public getSpanSize(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public isLongClickable()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final registerGroupDataObserver(Lcom/xwray/groupie/GroupDataObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xwray/groupie/Item;->parentDataObserver:Lcom/xwray/groupie/GroupDataObserver;

    .line 2
    .line 3
    return-void
.end method

.method public unbind(Lcom/xwray/groupie/GroupieViewHolder;)V
    .locals 1

    .line 1
    iget-object p0, p1, Lcom/xwray/groupie/GroupieViewHolder;->onItemClickListener:Lcom/xwray/groupie/OnItemClickListener;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    iget-object p0, p1, Lcom/xwray/groupie/GroupieViewHolder;->item:Lcom/xwray/groupie/Item;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p0, p1, Lcom/xwray/groupie/GroupieViewHolder;->onItemLongClickListener:Lcom/xwray/groupie/OnItemLongClickListener;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    iget-object p0, p1, Lcom/xwray/groupie/GroupieViewHolder;->item:Lcom/xwray/groupie/Item;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/xwray/groupie/Item;->isLongClickable()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iput-object v0, p1, Lcom/xwray/groupie/GroupieViewHolder;->item:Lcom/xwray/groupie/Item;

    .line 34
    .line 35
    iput-object v0, p1, Lcom/xwray/groupie/GroupieViewHolder;->onItemClickListener:Lcom/xwray/groupie/OnItemClickListener;

    .line 36
    .line 37
    iput-object v0, p1, Lcom/xwray/groupie/GroupieViewHolder;->onItemLongClickListener:Lcom/xwray/groupie/OnItemLongClickListener;

    .line 38
    .line 39
    return-void
.end method

.method public final unregisterGroupDataObserver(Lcom/xwray/groupie/GroupDataObserver;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/xwray/groupie/Item;->parentDataObserver:Lcom/xwray/groupie/GroupDataObserver;

    .line 3
    .line 4
    return-void
.end method

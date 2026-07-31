.class public final Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;


# instance fields
.field public entry:Lorg/wikipedia/history/HistoryEntry;

.field public final synthetic this$0:Lorg/wikipedia/history/HistoryFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/history/HistoryFragment;Lorg/wikipedia/views/PageItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isSwipeable()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onSwipe()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/history/HistoryFragment;->selectedEntries:Ljava/util/LinkedHashSet;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryFragment;->deleteSelectedPages$1()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string p0, "entry"

    .line 17
    .line 18
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    throw p0
.end method

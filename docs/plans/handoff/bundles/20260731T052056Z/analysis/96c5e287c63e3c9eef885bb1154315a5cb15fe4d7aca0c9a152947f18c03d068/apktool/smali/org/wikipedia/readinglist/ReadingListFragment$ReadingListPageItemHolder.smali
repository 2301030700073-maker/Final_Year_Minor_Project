.class public final Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/views/SwipeableItemTouchHelperCallback$Callback;


# instance fields
.field public page:Lorg/wikipedia/readinglist/database/ReadingListPage;

.field public pageTitle:Lorg/wikipedia/page/PageTitle;

.field public final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/views/PageItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

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
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 4
    .line 5
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListMode;->DEFAULT:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final onSwipe()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 4
    .line 5
    sget-object v2, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget v1, v2, v1

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    const/4 p0, 0x2

    .line 17
    if-eq v1, p0, :cond_4

    .line 18
    .line 19
    const/4 p0, 0x3

    .line 20
    if-ne v1, p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v1, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 28
    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->currentSearchQuery:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_4

    .line 40
    .line 41
    :cond_2
    sget-object v2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->page:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 52
    .line 53
    if-eqz p0, :cond_3

    .line 54
    .line 55
    new-instance v3, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;

    .line 56
    .line 57
    const/16 v4, 0xf

    .line 58
    .line 59
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 60
    .line 61
    .line 62
    new-instance v4, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;

    .line 63
    .line 64
    const/16 v5, 0x10

    .line 65
    .line 66
    invoke-direct {v4, v0, v5}, Lorg/wikipedia/readinglist/ReadingListFragment$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v1, p0, v3, v4}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->deletePages(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    const-string p0, "page"

    .line 74
    .line 75
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x0

    .line 79
    throw p0

    .line 80
    :cond_4
    :goto_0
    return-void
.end method

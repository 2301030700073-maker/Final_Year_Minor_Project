.class public final Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;
.super Landroidx/recyclerview/widget/DiffUtil;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $diffCallback:Landroidx/recyclerview/widget/DiffUtil;

.field public final synthetic $newList:Landroidx/paging/PageStore;

.field public final synthetic $newSize:I

.field public final synthetic $oldSize:I

.field public final synthetic $this_computeDiff:Landroidx/paging/PageStore;


# direct methods
.method public constructor <init>(Landroidx/paging/PageStore;Landroidx/paging/PageStore;Landroidx/recyclerview/widget/DiffUtil;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$this_computeDiff:Landroidx/paging/PageStore;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$newList:Landroidx/paging/PageStore;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$diffCallback:Landroidx/recyclerview/widget/DiffUtil;

    .line 9
    .line 10
    iput p4, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$oldSize:I

    .line 11
    .line 12
    iput p5, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$newSize:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final areContentsTheSame(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$this_computeDiff:Landroidx/paging/PageStore;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/paging/PageStore;->getItem(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$newList:Landroidx/paging/PageStore;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Landroidx/paging/PageStore;->getItem(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    iget-object p0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$diffCallback:Landroidx/recyclerview/widget/DiffUtil;

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final areItemsTheSame(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$this_computeDiff:Landroidx/paging/PageStore;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/paging/PageStore;->getItem(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$newList:Landroidx/paging/PageStore;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Landroidx/paging/PageStore;->getItem(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    iget-object p0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$diffCallback:Landroidx/recyclerview/widget/DiffUtil;

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final getChangePayload(II)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$this_computeDiff:Landroidx/paging/PageStore;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/paging/PageStore;->getItem(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$newList:Landroidx/paging/PageStore;

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Landroidx/paging/PageStore;->getItem(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-ne p1, p0, :cond_0

    .line 14
    .line 15
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public final getNewListSize()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$newSize:I

    .line 2
    .line 3
    return p0
.end method

.method public final getOldListSize()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/paging/PlaceholderPaddedListDiffHelperKt$computeDiff$diffResult$1;->$oldSize:I

    .line 2
    .line 3
    return p0
.end method

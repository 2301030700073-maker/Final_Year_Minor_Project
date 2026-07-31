.class public Lorg/wikipedia/views/AutoFitRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0017\u0018\u00002\u00020\u0001:\u0002\u0016\u0017B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\"\u0010\t\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/wikipedia/views/AutoFitRecyclerView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "columns",
        "I",
        "getColumns",
        "()I",
        "setColumns",
        "(I)V",
        "Lorg/wikipedia/views/AutoFitRecyclerView$Callback;",
        "callback",
        "Lorg/wikipedia/views/AutoFitRecyclerView$Callback;",
        "getCallback",
        "()Lorg/wikipedia/views/AutoFitRecyclerView$Callback;",
        "setCallback",
        "(Lorg/wikipedia/views/AutoFitRecyclerView$Callback;)V",
        "Callback",
        "org/wikipedia/views/ViewUtil",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public callback:Lorg/wikipedia/views/AutoFitRecyclerView$Callback;

.field public columns:I

.field public final minColumnCount:I

.field public final minColumnWidth:I

.field public final recyclerLayoutManager:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->minColumnCount:I

    .line 9
    .line 10
    new-instance v1, Lorg/wikipedia/views/ViewUtil;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->callback:Lorg/wikipedia/views/AutoFitRecyclerView$Callback;

    .line 16
    .line 17
    sget-object v1, Lorg/wikipedia/R$styleable;->AutoFitRecyclerView:[I

    .line 18
    .line 19
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput v1, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->minColumnWidth:I

    .line 32
    .line 33
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iput p2, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->minColumnCount:I

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    .line 41
    .line 42
    iput p2, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->columns:I

    .line 43
    .line 44
    new-instance p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 45
    .line 46
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(I)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->recyclerLayoutManager:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final getCallback()Lorg/wikipedia/views/AutoFitRecyclerView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->callback:Lorg/wikipedia/views/AutoFitRecyclerView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getColumns()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->columns:I

    .line 2
    .line 3
    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception v0

    .line 6
    move-object p0, v0

    .line 7
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->logRemoteErrorIfProd(Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget p2, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->minColumnWidth:I

    .line 9
    .line 10
    iget v0, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->minColumnCount:I

    .line 11
    .line 12
    if-lez p2, :cond_0

    .line 13
    .line 14
    div-int/2addr p1, p2

    .line 15
    if-ge v0, p1, :cond_0

    .line 16
    .line 17
    move v0, p1

    .line 18
    :cond_0
    iget p1, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->columns:I

    .line 19
    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    iput v0, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->columns:I

    .line 23
    .line 24
    iget-object p1, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->recyclerLayoutManager:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->callback:Lorg/wikipedia/views/AutoFitRecyclerView$Callback;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final setCallback(Lorg/wikipedia/views/AutoFitRecyclerView$Callback;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->callback:Lorg/wikipedia/views/AutoFitRecyclerView$Callback;

    .line 5
    .line 6
    return-void
.end method

.method public final setColumns(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/views/AutoFitRecyclerView;->columns:I

    .line 2
    .line 3
    return-void
.end method

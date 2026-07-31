.class public final synthetic Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic f$1:Lcom/mikepenz/fastadapter/listeners/EventHook;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/mikepenz/fastadapter/listeners/EventHook;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$$ExternalSyntheticLambda2;->f$0:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$$ExternalSyntheticLambda2;->f$1:Lcom/mikepenz/fastadapter/listeners/EventHook;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$$ExternalSyntheticLambda2;->f$1:Lcom/mikepenz/fastadapter/listeners/EventHook;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/mikepenz/fastadapter/utils/EventHookUtilKt$$ExternalSyntheticLambda2;->f$0:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 9
    .line 10
    const v2, 0x7f0901de

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    instance-of v3, v2, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    check-cast v2, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 23
    .line 24
    move-object v9, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v9, v4

    .line 27
    :goto_0
    if-nez v9, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    const/4 p0, -0x1

    .line 35
    if-eq v8, p0, :cond_3

    .line 36
    .line 37
    const p0, 0x7f0901dd

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    instance-of v1, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    move-object v4, p0

    .line 49
    check-cast v4, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 50
    .line 51
    :cond_2
    move-object v10, v4

    .line 52
    if-eqz v10, :cond_3

    .line 53
    .line 54
    move-object v5, v0

    .line 55
    check-cast v5, Lcom/mikepenz/fastadapter/listeners/TouchEventHook;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-object v6, p1

    .line 64
    move-object v7, p2

    .line 65
    invoke-virtual/range {v5 .. v10}, Lcom/mikepenz/fastadapter/listeners/TouchEventHook;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/items/AbstractItem;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    return p0

    .line 70
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 71
    return p0
.end method

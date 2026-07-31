.class public final Lcom/fsck/k9/ui/settings/DragHandleTouchEvent;
.super Lcom/mikepenz/fastadapter/listeners/TouchEventHook;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final action:Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/DragHandleTouchEvent;->action:Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/fsck/k9/ui/settings/AccountItem$ViewHolder;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/fsck/k9/ui/settings/AccountItem$ViewHolder;

    .line 6
    .line 7
    iget-object p0, p1, Lcom/fsck/k9/ui/settings/AccountItem$ViewHolder;->dragHandle:Landroid/widget/ImageView;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;ILcom/mikepenz/fastadapter/FastAdapter;Lcom/mikepenz/fastadapter/items/AbstractItem;)Z
    .locals 0

    .line 1
    check-cast p5, Lcom/fsck/k9/ui/settings/AccountItem;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/DragHandleTouchEvent;->action:Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

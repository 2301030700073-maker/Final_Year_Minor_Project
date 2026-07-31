.class public final Lorg/wikipedia/views/SwipeableListView;
.super Landroid/widget/ListView;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0016\u0017B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/wikipedia/views/SwipeableListView;",
        "Landroid/widget/ListView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;",
        "listener",
        "Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;",
        "getListener",
        "()Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;",
        "setListener",
        "(Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;)V",
        "",
        "rtl",
        "Z",
        "getRtl",
        "()Z",
        "setRtl",
        "(Z)V",
        "OnSwipeOutListener",
        "ViewGestureListener",
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


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public listener:Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;

.field public rtl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    new-instance p2, Landroid/view/GestureDetector;

    .line 8
    .line 9
    new-instance v0, Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/views/SwipeableListView$ViewGestureListener;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lorg/wikipedia/views/SwipeableListView$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {p1, v1, p2}, Lorg/wikipedia/views/SwipeableListView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final getListener()Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/SwipeableListView;->listener:Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRtl()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/wikipedia/views/SwipeableListView;->rtl:Z

    .line 2
    .line 3
    return p0
.end method

.method public final setListener(Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/views/SwipeableListView;->listener:Lorg/wikipedia/views/SwipeableListView$OnSwipeOutListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setRtl(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/wikipedia/views/SwipeableListView;->rtl:Z

    .line 2
    .line 3
    return-void
.end method

.class public final synthetic Lorg/wikipedia/views/EditHistoryFilterOverflowView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/views/ReadingListsOverflowView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/views/ReadingListsOverflowView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/views/EditHistoryFilterOverflowView$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/views/ReadingListsOverflowView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/EditHistoryFilterOverflowView$$ExternalSyntheticLambda3;->f$0:Lorg/wikipedia/views/ReadingListsOverflowView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/wikipedia/views/ReadingListsOverflowView;->popupWindowHost:Landroid/widget/PopupWindow;

    .line 5
    .line 6
    return-void
.end method

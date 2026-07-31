.class public abstract Lcom/fsck/k9/ui/messagelist/item/MessageListInAppNotificationViewHolder;
.super Lcom/fsck/k9/ui/messagelist/item/MessageListViewHolder;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final view:Landroidx/compose/ui/platform/ComposeView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/platform/ComposeView;->$r8$clinit:I

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/ComposeView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/item/MessageListInAppNotificationViewHolder;->view:Landroidx/compose/ui/platform/ComposeView;

    .line 5
    .line 6
    return-void
.end method

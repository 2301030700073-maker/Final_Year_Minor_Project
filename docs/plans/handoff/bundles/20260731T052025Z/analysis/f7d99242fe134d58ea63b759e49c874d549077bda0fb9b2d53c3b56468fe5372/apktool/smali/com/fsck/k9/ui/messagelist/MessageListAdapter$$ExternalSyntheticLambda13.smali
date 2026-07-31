.class public final synthetic Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagelist/MessageListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda13;->f$0:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda13;->f$0:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->getItemFromView(Landroid/view/View;)Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->listItemListener:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->toggleMessageSelect(Lcom/fsck/k9/ui/messagelist/MessageListItem;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

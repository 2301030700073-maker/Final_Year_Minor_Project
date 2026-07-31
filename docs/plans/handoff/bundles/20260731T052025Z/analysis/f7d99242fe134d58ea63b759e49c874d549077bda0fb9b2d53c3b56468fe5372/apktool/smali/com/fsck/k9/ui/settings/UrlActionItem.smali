.class public final Lcom/fsck/k9/ui/settings/UrlActionItem;
.super Lcom/mikepenz/fastadapter/items/AbstractItem;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public identifier:J

.field public final text:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/fsck/k9/ui/settings/UrlActionItem;->identifier:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/UrlActionItem;->text:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/fsck/k9/ui/settings/UrlActionItem;->url:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getIdentifier()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/fsck/k9/ui/settings/UrlActionItem;->identifier:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getLayoutRes()I
    .locals 0

    .line 1
    const p0, 0x7f0c057c

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getType()I
    .locals 0

    .line 1
    const p0, 0x7f0903c4

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lcom/fsck/k9/ui/settings/UrlActionItem$ViewHolder;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/ui/settings/UrlActionItem$ViewHolder;-><init>(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public final setIdentifier(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/fsck/k9/ui/settings/UrlActionItem;->identifier:J

    .line 2
    .line 3
    return-void
.end method

.class public final Lcom/fsck/k9/ui/settings/SettingsActionItem;
.super Lcom/mikepenz/fastadapter/items/AbstractItem;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final icon:I

.field public identifier:J

.field public final navigationAction:I

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p3, p0, Lcom/fsck/k9/ui/settings/SettingsActionItem;->identifier:J

    .line 5
    .line 6
    iput-object p5, p0, Lcom/fsck/k9/ui/settings/SettingsActionItem;->text:Ljava/lang/String;

    .line 7
    .line 8
    iput p1, p0, Lcom/fsck/k9/ui/settings/SettingsActionItem;->navigationAction:I

    .line 9
    .line 10
    iput p2, p0, Lcom/fsck/k9/ui/settings/SettingsActionItem;->icon:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getIdentifier()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/fsck/k9/ui/settings/SettingsActionItem;->identifier:J

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
    const p0, 0x7f0903c1

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
    const/4 v0, 0x2

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
    iput-wide p1, p0, Lcom/fsck/k9/ui/settings/SettingsActionItem;->identifier:J

    .line 2
    .line 3
    return-void
.end method

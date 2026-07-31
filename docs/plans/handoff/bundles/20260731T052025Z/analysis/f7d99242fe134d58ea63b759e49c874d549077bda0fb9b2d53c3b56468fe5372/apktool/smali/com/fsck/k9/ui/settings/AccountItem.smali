.class public final Lcom/fsck/k9/ui/settings/AccountItem;
.super Lcom/mikepenz/fastadapter/items/AbstractItem;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public identifier:J

.field public final isDraggable:Z

.field public final layoutRes:I

.field public final type:I


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/AccountItem;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/fsck/k9/ui/settings/AccountItem;->isDraggable:Z

    .line 7
    .line 8
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getAccountNumber()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    int-to-long p1, p1

    .line 13
    const-wide/16 v0, 0xc8

    .line 14
    .line 15
    add-long/2addr p1, v0

    .line 16
    iput-wide p1, p0, Lcom/fsck/k9/ui/settings/AccountItem;->identifier:J

    .line 17
    .line 18
    const p1, 0x7f0903c0

    .line 19
    .line 20
    .line 21
    iput p1, p0, Lcom/fsck/k9/ui/settings/AccountItem;->type:I

    .line 22
    .line 23
    const p1, 0x7f0c001d

    .line 24
    .line 25
    .line 26
    iput p1, p0, Lcom/fsck/k9/ui/settings/AccountItem;->layoutRes:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final getIdentifier()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/fsck/k9/ui/settings/AccountItem;->identifier:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getLayoutRes()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/fsck/k9/ui/settings/AccountItem;->layoutRes:I

    .line 2
    .line 3
    return p0
.end method

.method public final getType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/fsck/k9/ui/settings/AccountItem;->type:I

    .line 2
    .line 3
    return p0
.end method

.method public final getViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lcom/fsck/k9/ui/settings/AccountItem$ViewHolder;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/fsck/k9/ui/settings/AccountItem$ViewHolder;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public final setIdentifier(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/fsck/k9/ui/settings/AccountItem;->identifier:J

    .line 2
    .line 3
    return-void
.end method

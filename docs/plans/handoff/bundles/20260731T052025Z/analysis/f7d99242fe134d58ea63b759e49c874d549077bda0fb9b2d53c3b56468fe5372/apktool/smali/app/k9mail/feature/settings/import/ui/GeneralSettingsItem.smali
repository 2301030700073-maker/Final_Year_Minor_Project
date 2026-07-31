.class public final Lapp/k9mail/feature/settings/import/ui/GeneralSettingsItem;
.super Lapp/k9mail/feature/settings/import/ui/ImportListItem;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final layoutRes:I

.field public final type:I


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/settings/import/ui/ImportStatus;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    invoke-direct {p0, v0, v1, p1}, Lapp/k9mail/feature/settings/import/ui/ImportListItem;-><init>(JLapp/k9mail/feature/settings/import/ui/ImportStatus;)V

    .line 7
    .line 8
    .line 9
    const p1, 0x7f0903be

    .line 10
    .line 11
    .line 12
    iput p1, p0, Lapp/k9mail/feature/settings/import/ui/GeneralSettingsItem;->type:I

    .line 13
    .line 14
    const p1, 0x7f0c056f

    .line 15
    .line 16
    .line 17
    iput p1, p0, Lapp/k9mail/feature/settings/import/ui/GeneralSettingsItem;->layoutRes:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final getLayoutRes()I
    .locals 0

    .line 1
    iget p0, p0, Lapp/k9mail/feature/settings/import/ui/GeneralSettingsItem;->layoutRes:I

    .line 2
    .line 3
    return p0
.end method

.method public final getType()I
    .locals 0

    .line 1
    iget p0, p0, Lapp/k9mail/feature/settings/import/ui/GeneralSettingsItem;->type:I

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
    new-instance p0, Lapp/k9mail/feature/settings/import/ui/ImportCheckBoxViewHolder;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lapp/k9mail/feature/settings/import/ui/ImportCheckBoxViewHolder;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

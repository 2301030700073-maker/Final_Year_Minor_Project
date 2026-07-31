.class public Lapp/k9mail/feature/settings/import/ui/ImportCheckBoxViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field public final statusIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0900d1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast v0, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 18
    .line 19
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/ImportCheckBoxViewHolder;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 20
    .line 21
    const v0, 0x7f0903fe

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    check-cast p1, Landroid/widget/ImageView;

    .line 32
    .line 33
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/ImportCheckBoxViewHolder;->statusIcon:Landroid/widget/ImageView;

    .line 34
    .line 35
    return-void
.end method

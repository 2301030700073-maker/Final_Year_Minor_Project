.class public abstract Lapp/k9mail/feature/settings/import/ui/ImportListItem;
.super Lcom/mikepenz/fastadapter/items/AbstractItem;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public identifier:J

.field public final importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;


# direct methods
.method public constructor <init>(JLapp/k9mail/feature/settings/import/ui/ImportStatus;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Lapp/k9mail/feature/settings/import/ui/ImportListItem;->identifier:J

    .line 8
    .line 9
    iput-object p3, p0, Lapp/k9mail/feature/settings/import/ui/ImportListItem;->importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V
    .locals 0

    .line 133
    check-cast p1, Lapp/k9mail/feature/settings/import/ui/ImportCheckBoxViewHolder;

    invoke-virtual {p0, p1, p2}, Lapp/k9mail/feature/settings/import/ui/ImportListItem;->bindView(Lapp/k9mail/feature/settings/import/ui/ImportCheckBoxViewHolder;Ljava/util/List;)V

    return-void
.end method

.method public bindView(Lapp/k9mail/feature/settings/import/ui/ImportCheckBoxViewHolder;Ljava/util/List;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lapp/k9mail/feature/settings/import/ui/ImportCheckBoxViewHolder;->statusIcon:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/mikepenz/fastadapter/items/AbstractItem;->bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p1, Lapp/k9mail/feature/settings/import/ui/ImportCheckBoxViewHolder;->checkBox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->isSelected:Z

    .line 12
    .line 13
    invoke-virtual {p2, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->isEnabled:Z

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 21
    .line 22
    .line 23
    iget-boolean p1, p0, Lcom/mikepenz/fastadapter/items/AbstractItem;->isEnabled:Z

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 26
    .line 27
    .line 28
    const/16 p1, 0x8

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/ImportListItem;->importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 32
    .line 33
    sget-object v2, Lapp/k9mail/feature/settings/import/ui/ImportStatus;->NOT_AVAILABLE:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 34
    .line 35
    if-ne p0, v2, :cond_0

    .line 36
    .line 37
    move v3, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v3, p1

    .line 40
    :goto_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    if-eq p0, v2, :cond_1

    .line 44
    .line 45
    move p1, v1

    .line 46
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    if-eq p0, v2, :cond_c

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/4 p2, 0x5

    .line 56
    const/4 v2, 0x4

    .line 57
    const/4 v3, 0x3

    .line 58
    const/4 v4, 0x2

    .line 59
    const/4 v5, 0x1

    .line 60
    if-eq p1, v5, :cond_5

    .line 61
    .line 62
    if-eq p1, v4, :cond_6

    .line 63
    .line 64
    if-eq p1, v3, :cond_4

    .line 65
    .line 66
    if-eq p1, v2, :cond_3

    .line 67
    .line 68
    if-ne p1, p2, :cond_2

    .line 69
    .line 70
    move v1, v2

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    move v1, v4

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    move v1, v5

    .line 79
    goto :goto_1

    .line 80
    :cond_5
    move v1, v3

    .line 81
    :cond_6
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-eq p0, v5, :cond_b

    .line 89
    .line 90
    if-eq p0, v4, :cond_a

    .line 91
    .line 92
    if-eq p0, v3, :cond_9

    .line 93
    .line 94
    if-eq p0, v2, :cond_8

    .line 95
    .line 96
    if-ne p0, p2, :cond_7

    .line 97
    .line 98
    const p0, 0x7f1205ba

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_7
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_8
    const p0, 0x7f1205bb

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_9
    const p0, 0x7f1205bd

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_a
    const p0, 0x7f1205be

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_b
    const p0, 0x7f1205bc

    .line 119
    .line 120
    .line 121
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    :cond_c
    return-void
.end method

.method public final getIdentifier()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lapp/k9mail/feature/settings/import/ui/ImportListItem;->identifier:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final setIdentifier(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lapp/k9mail/feature/settings/import/ui/ImportListItem;->identifier:J

    .line 2
    .line 3
    return-void
.end method

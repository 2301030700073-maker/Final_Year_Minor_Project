.class public final Lcom/fsck/k9/activity/compose/IdentityAdapter;
.super Landroid/widget/BaseAdapter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final identityFormatter:Lcom/fsck/k9/ui/identity/IdentityFormatter;

.field public final mItems:Ljava/util/ArrayList;

.field public final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/fsck/k9/ui/identity/IdentityFormatter;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/fsck/k9/ui/identity/IdentityFormatter;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter;->identityFormatter:Lcom/fsck/k9/ui/identity/IdentityFormatter;

    .line 13
    .line 14
    const-string v0, "layout_inflater"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/view/LayoutInflater;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 23
    .line 24
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    const-class v0, Lcom/fsck/k9/Preferences;

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdentities()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_0

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lnet/thunderbird/core/android/account/Identity;

    .line 81
    .line 82
    new-instance v4, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;

    .line 83
    .line 84
    invoke-direct {v4, v3, v1}, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;-><init>(Lnet/thunderbird/core/android/account/Identity;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter;->mItems:Ljava/util/ArrayList;

    .line 92
    .line 93
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter;->mItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter;->mItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    int-to-long p0, p1

    .line 2
    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter;->mItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    instance-of p0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 8
    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    return p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter;->mItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of v0, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 8
    .line 9
    const v1, 0x7f0902e2

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iget-object v3, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    instance-of p0, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const p0, 0x7f0c00f5

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    new-instance p0, Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;

    .line 36
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    check-cast p3, Lcom/google/android/material/textview/MaterialTextView;

    .line 45
    .line 46
    iput-object p3, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;->name:Lcom/google/android/material/textview/MaterialTextView;

    .line 47
    .line 48
    const p3, 0x7f090130

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    iput-object p3, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;->chip:Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    check-cast p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;

    .line 67
    .line 68
    iget-object p3, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;->name:Lcom/google/android/material/textview/MaterialTextView;

    .line 69
    .line 70
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getDisplayName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter$AccountHolder;->chip:Landroid/view/View;

    .line 78
    .line 79
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 84
    .line 85
    .line 86
    return-object p2

    .line 87
    :cond_1
    instance-of v0, p1, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    if-eqz p2, :cond_2

    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    instance-of v0, v0, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityHolder;

    .line 98
    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    const p2, 0x7f0c00f6

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    new-instance p3, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityHolder;

    .line 110
    .line 111
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 119
    .line 120
    iput-object v0, p3, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityHolder;->name:Lcom/google/android/material/textview/MaterialTextView;

    .line 121
    .line 122
    const v0, 0x7f090193

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 130
    .line 131
    iput-object v0, p3, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityHolder;->description:Lcom/google/android/material/textview/MaterialTextView;

    .line 132
    .line 133
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :goto_1
    check-cast p1, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;

    .line 137
    .line 138
    iget-object p1, p1, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;->identity:Lnet/thunderbird/core/android/account/Identity;

    .line 139
    .line 140
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    check-cast p3, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityHolder;

    .line 145
    .line 146
    iget-object v0, p3, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityHolder;->name:Lcom/google/android/material/textview/MaterialTextView;

    .line 147
    .line 148
    iget-object v1, p1, Lnet/thunderbird/core/android/account/Identity;->description:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    iget-object p3, p3, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityHolder;->description:Lcom/google/android/material/textview/MaterialTextView;

    .line 154
    .line 155
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter;->identityFormatter:Lcom/fsck/k9/ui/identity/IdentityFormatter;

    .line 156
    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    invoke-static {p1}, Lcom/fsck/k9/ui/identity/IdentityFormatter;->getEmailDisplayName(Lnet/thunderbird/core/android/account/Identity;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    return-object p2

    .line 168
    :cond_3
    const/4 p0, 0x0

    .line 169
    return-object p0
.end method

.method public final getViewTypeCount()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public final hasStableIds()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isEnabled(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter;->mItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    instance-of p0, p0, Lcom/fsck/k9/activity/compose/IdentityAdapter$IdentityContainer;

    .line 8
    .line 9
    return p0
.end method

.class public final Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public dataset:Ljava/util/ArrayList;

.field public onItemClickListener:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;

.field public searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;->dataset:Ljava/util/ArrayList;

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

.method public final getItemViewType(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;->dataset:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/bytehamster/lib/preferencesearch/ListItem;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/bytehamster/lib/preferencesearch/ListItem;->getType()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 1
    check-cast p1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$ViewHolder;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;->dataset:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/bytehamster/lib/preferencesearch/ListItem;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;->getItemViewType(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    move-object p2, p1

    .line 19
    check-cast p2, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$HistoryViewHolder;

    .line 20
    .line 21
    move-object v1, v0

    .line 22
    check-cast v1, Lcom/bytehamster/lib/preferencesearch/HistoryItem;

    .line 23
    .line 24
    iget-object p2, p2, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$HistoryViewHolder;->term:Landroid/widget/TextView;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/bytehamster/lib/preferencesearch/HistoryItem;->term:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {p0, p2}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;->getItemViewType(I)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    const/4 v1, 0x2

    .line 37
    if-ne p2, v1, :cond_3

    .line 38
    .line 39
    move-object p2, p1

    .line 40
    check-cast p2, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$PreferenceViewHolder;

    .line 41
    .line 42
    move-object v1, v0

    .line 43
    check-cast v1, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;

    .line 44
    .line 45
    iget-object v2, p2, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$PreferenceViewHolder;->title:Landroid/widget/TextView;

    .line 46
    .line 47
    iget-object v3, p2, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$PreferenceViewHolder;->breadcrumbs:Landroid/widget/TextView;

    .line 48
    .line 49
    iget-object p2, p2, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$PreferenceViewHolder;->summary:Landroid/widget/TextView;

    .line 50
    .line 51
    iget-object v4, v1, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->title:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, v1, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->summary:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const/16 v4, 0x8

    .line 63
    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object v2, v1, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->summary:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    iget-object v2, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;->searchConfiguration:Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;

    .line 80
    .line 81
    iget-boolean v2, v2, Lcom/bytehamster/lib/preferencesearch/SearchConfiguration;->breadcrumbsEnabled:Z

    .line 82
    .line 83
    const v5, 0x3f19999a    # 0.6f

    .line 84
    .line 85
    .line 86
    if-eqz v2, :cond_2

    .line 87
    .line 88
    iget-object v1, v1, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->breadcrumbs:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 94
    .line 95
    .line 96
    const/high16 v1, 0x3f800000    # 1.0f

    .line 97
    .line 98
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 106
    .line 107
    .line 108
    :cond_3
    :goto_1
    iget-object p2, p1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$ViewHolder;->root:Landroid/view/View;

    .line 109
    .line 110
    new-instance v1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    invoke-direct {v1, p0, v0, p1}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;Lcom/bytehamster/lib/preferencesearch/ListItem;Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$ViewHolder;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    const/4 p0, 0x2

    .line 2
    const/4 v0, 0x0

    .line 3
    if-ne p2, p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$PreferenceViewHolder;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const v1, 0x7f0c0565

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    const p2, 0x7f090439

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Landroid/widget/TextView;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$PreferenceViewHolder;->title:Landroid/widget/TextView;

    .line 35
    .line 36
    const p2, 0x7f090405

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object p2, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$PreferenceViewHolder;->summary:Landroid/widget/TextView;

    .line 46
    .line 47
    const p2, 0x7f0900b6

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/widget/TextView;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$PreferenceViewHolder;->breadcrumbs:Landroid/widget/TextView;

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_0
    new-instance p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$HistoryViewHolder;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    const v1, 0x7f0c0564

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    const p2, 0x7f090420

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Landroid/widget/TextView;

    .line 87
    .line 88
    iput-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$HistoryViewHolder;->term:Landroid/widget/TextView;

    .line 89
    .line 90
    return-object p0
.end method

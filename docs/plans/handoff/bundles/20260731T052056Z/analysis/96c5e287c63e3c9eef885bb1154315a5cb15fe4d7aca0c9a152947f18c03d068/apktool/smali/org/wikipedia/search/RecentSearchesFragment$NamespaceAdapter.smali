.class public final Lorg/wikipedia/search/RecentSearchesFragment$NamespaceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/search/RecentSearchesFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/search/RecentSearchesFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/search/RecentSearchesFragment$NamespaceAdapter;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/search/RecentSearchesFragment$NamespaceAdapter;->this$0:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/search/RecentSearchesFragment$NamespaceAdapter;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/search/RecentSearchesFragment$NamespaceAdapter;->this$0:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->recentSearchList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->namespaceHints:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-int/lit8 p0, p0, 0x1

    .line 22
    .line 23
    return p0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/search/RecentSearchesFragment$NamespaceAdapter;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchItemViewHolder;

    .line 8
    .line 9
    iget-object p0, p1, Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchItemViewHolder;->this$0:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->recentSearchList:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lorg/wikipedia/search/db/RecentSearch;

    .line 18
    .line 19
    iput-object p0, p1, Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchItemViewHolder;->recentSearch:Lorg/wikipedia/search/db/RecentSearch;

    .line 20
    .line 21
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    check-cast p0, Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object p1, p1, Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchItemViewHolder;->recentSearch:Lorg/wikipedia/search/db/RecentSearch;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p1, Lorg/wikipedia/search/db/RecentSearch;->text:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const-string p0, "recentSearch"

    .line 39
    .line 40
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v1

    .line 44
    :pswitch_0
    check-cast p1, Lorg/wikipedia/search/RecentSearchesFragment$NamespaceItemViewHolder;

    .line 45
    .line 46
    iget-object p0, p0, Lorg/wikipedia/search/RecentSearchesFragment$NamespaceAdapter;->this$0:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 47
    .line 48
    iget-object p0, p0, Lorg/wikipedia/search/RecentSearchesFragment;->namespaceHints:Ljava/util/List;

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    sub-int/2addr p2, v0

    .line 52
    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Lorg/wikipedia/page/Namespace;

    .line 57
    .line 58
    if-nez p0, :cond_1

    .line 59
    .line 60
    move p2, v0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 p2, 0x0

    .line 63
    :goto_0
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    check-cast v2, Landroid/widget/TextView;

    .line 69
    .line 70
    iget-object v3, p1, Lorg/wikipedia/search/RecentSearchesFragment$NamespaceItemViewHolder;->this$0:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 71
    .line 72
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    const p0, 0x7f12084a

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, p0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    goto :goto_3

    .line 85
    :cond_2
    iget-object p1, v3, Lorg/wikipedia/search/RecentSearchesFragment;->namespaceMap:Lj$/util/concurrent/ConcurrentHashMap;

    .line 86
    .line 87
    iget-object v4, v3, Lorg/wikipedia/search/RecentSearchesFragment;->callback:Lorg/wikipedia/search/SearchFragment;

    .line 88
    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    iget-object v4, v4, Lorg/wikipedia/search/SearchFragment;->searchLanguageCode:Ljava/lang/String;

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    move-object v4, v1

    .line 95
    :goto_1
    invoke-virtual {p1, v4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Ljava/util/Map;

    .line 100
    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    check-cast p0, Ljava/lang/String;

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    move-object p0, v1

    .line 111
    :goto_2
    if-nez p0, :cond_5

    .line 112
    .line 113
    const-string p0, ""

    .line 114
    .line 115
    :cond_5
    const-string p1, ":"

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    :goto_3
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    xor-int/lit8 p0, p2, 0x1

    .line 125
    .line 126
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    if-eqz p2, :cond_6

    .line 134
    .line 135
    const p1, 0x7f04051a

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_6
    const p1, 0x7f040520

    .line 140
    .line 141
    .line 142
    :goto_4
    new-instance p2, Landroid/util/TypedValue;

    .line 143
    .line 144
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    if-eqz p0, :cond_7

    .line 156
    .line 157
    move-object v1, p2

    .line 158
    :cond_7
    if-eqz v1, :cond_8

    .line 159
    .line 160
    iget p0, v1, Landroid/util/TypedValue;->data:I

    .line 161
    .line 162
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_8
    const-string p0, "Attribute not found; ID="

    .line 167
    .line 168
    invoke-static {p1, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :goto_5
    return-void

    .line 176
    nop

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    iget p2, p0, Lorg/wikipedia/search/RecentSearchesFragment$NamespaceAdapter;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lorg/wikipedia/search/RecentSearchesFragment$NamespaceAdapter;->this$0:Lorg/wikipedia/search/RecentSearchesFragment;

    .line 5
    .line 6
    packed-switch p2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance p2, Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchItemViewHolder;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const v2, 0x7f0c0314

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p0, p1}, Lorg/wikipedia/search/RecentSearchesFragment$RecentSearchItemViewHolder;-><init>(Lorg/wikipedia/search/RecentSearchesFragment;Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    return-object p2

    .line 33
    :pswitch_0
    new-instance p2, Lorg/wikipedia/search/RecentSearchesFragment$NamespaceItemViewHolder;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const v2, 0x7f0c0309

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-direct {p2, p0, p1}, Lorg/wikipedia/search/RecentSearchesFragment$NamespaceItemViewHolder;-><init>(Lorg/wikipedia/search/RecentSearchesFragment;Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    return-object p2

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

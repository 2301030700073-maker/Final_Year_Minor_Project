.class public final Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView$Callback;


# instance fields
.field public final context:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;

.field public final filtersList:Ljava/util/ArrayList;

.field public final includedTypeCodes:Ljava/util/Set;

.field public final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterAdapter;->context:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterAdapter;->filtersList:Ljava/util/ArrayList;

    .line 9
    .line 10
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 11
    .line 12
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsIncludedTypeCodes()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Iterable;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterAdapter;->includedTypeCodes:Ljava/util/Set;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterAdapter;->filtersList:Ljava/util/ArrayList;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterAdapter;->filtersList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v1, v1, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;

    .line 16
    .line 17
    const v2, 0x7f120490

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x2

    .line 31
    return p0

    .line 32
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    instance-of p0, p0, Ljava/lang/String;

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return p0

    .line 42
    :cond_1
    const/4 p0, 0x1

    .line 43
    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    .line 2
    .line 3
    instance-of v0, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterHeaderViewHolder;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterAdapter;->filtersList:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterHeaderViewHolder;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    check-cast p0, Ljava/lang/String;

    .line 19
    .line 20
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterHeaderViewHolder;->headerText:Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    instance-of v0, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterItemViewAddLanguageViewHolder;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterItemViewAddLanguageViewHolder;

    .line 31
    .line 32
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    check-cast p0, Ljava/lang/String;

    .line 40
    .line 41
    iget-object p2, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterItemViewAddLanguageViewHolder;->filterItemView:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;->setCallback(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView$Callback;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;->setSingleLabel(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterItemViewHolder;

    .line 51
    .line 52
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$Filter;

    .line 60
    .line 61
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    check-cast p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;->setContents(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$Filter;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final onCheckedChanged(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$Filter;)V
    .locals 10

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    iget-object v5, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$Filter;->filterCode:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 6
    .line 7
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsIncludedTypeCodes()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    const/4 v8, 0x0

    .line 16
    const/16 v9, 0x35f

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    invoke-static/range {v0 .. v9}, Lokhttp3/Cookie$Companion;->getActionDataString$default(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "filters_state_change"

    .line 29
    .line 30
    const-string v2, "pt_filters"

    .line 31
    .line 32
    invoke-static {v1, v2, v0}, Lokhttp3/Cookie$Companion;->submitPatrollerActivityEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-boolean p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$Filter;->isCheckBox:Z

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterAdapter;->includedTypeCodes:Ljava/util/Set;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-interface {v1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_0
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :cond_1
    sget-object p1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->access$getMINOR_EDITS_GROUP$cp()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->access$getBOT_EDITS_GROUP$cp()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->access$getLATEST_REVISIONS_GROUP$cp()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const/4 v4, 0x3

    .line 79
    new-array v4, v4, [Ljava/util/List;

    .line 80
    .line 81
    aput-object p1, v4, v0

    .line 82
    .line 83
    const/4 p1, 0x1

    .line 84
    aput-object v2, v4, p1

    .line 85
    .line 86
    const/4 p1, 0x2

    .line 87
    aput-object v3, v4, p1

    .line 88
    .line 89
    invoke-static {v4}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_3

    .line 102
    .line 103
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    move-object v3, v2

    .line 108
    check-cast v3, Ljava/util/List;

    .line 109
    .line 110
    sget-object v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {v5}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;->find(Ljava/lang/String;)Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_2

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    const/4 v2, 0x0

    .line 127
    :goto_0
    check-cast v2, Ljava/util/List;

    .line 128
    .line 129
    if-nez v2, :cond_4

    .line 130
    .line 131
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 132
    .line 133
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .line 134
    .line 135
    const/16 v3, 0xa

    .line 136
    .line 137
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .line 143
    .line 144
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_5

    .line 153
    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    check-cast v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 159
    .line 160
    invoke-virtual {v3}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->getId()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_5
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Ljava/util/Collection;

    .line 173
    .line 174
    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 175
    .line 176
    .line 177
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    :goto_2
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 181
    .line 182
    check-cast v1, Ljava/util/Collection;

    .line 183
    .line 184
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setRecentEditsIncludedTypeCodes(Ljava/util/Collection;)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterAdapter;->filtersList:Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 194
    .line 195
    .line 196
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;

    .line 197
    .line 198
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 199
    .line 200
    .line 201
    :cond_6
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterAdapter;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterAdapter;->context:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p2, v1, :cond_0

    .line 9
    .line 10
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;

    .line 11
    .line 12
    invoke-direct {p2, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;->setCallback(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView$Callback;)V

    .line 16
    .line 17
    .line 18
    new-instance p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterItemViewHolder;

    .line 19
    .line 20
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterItemViewAddLanguageViewHolder;

    .line 25
    .line 26
    new-instance p2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0, p2}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterItemViewAddLanguageViewHolder;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity;Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterItemView;)V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    new-instance p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterHeaderViewHolder;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const v0, 0x7f0c05ec

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterActivity$RecentEditsFilterHeaderViewHolder;-><init>(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    return-object p0
.end method

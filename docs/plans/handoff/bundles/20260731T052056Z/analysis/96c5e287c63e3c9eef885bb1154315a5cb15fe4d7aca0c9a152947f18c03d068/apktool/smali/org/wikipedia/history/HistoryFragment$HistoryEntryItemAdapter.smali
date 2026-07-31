.class public final Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public historyEntries:Ljava/util/ArrayList;

.field public final synthetic this$0:Lorg/wikipedia/history/HistoryFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/history/HistoryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->this$0:Lorg/wikipedia/history/HistoryFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/ArrayList;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lorg/wikipedia/history/HistoryFragment$SearchBar;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    instance-of p0, p0, Ljava/lang/String;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_1
    const/4 p0, 0x2

    .line 26
    return p0
.end method

.method public final isEmpty()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x0

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    instance-of p0, p0, Lorg/wikipedia/history/HistoryFragment$SearchBar;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return v2

    .line 31
    :cond_1
    :goto_0
    return v1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    .line 2
    .line 3
    instance-of v0, p1, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    check-cast p1, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;

    .line 9
    .line 10
    iget-object p0, p1, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->clearHistoryButton:Landroid/widget/ImageView;

    .line 11
    .line 12
    iget-object p2, p1, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    .line 13
    .line 14
    iget-object p2, p2, Lorg/wikipedia/history/HistoryFragment;->adapter:Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;

    .line 15
    .line 16
    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    move v0, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v1

    .line 27
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p1, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;->historyFilterButton:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {p2}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    move v1, v2

    .line 39
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    instance-of v0, p1, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    check-cast p1, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;

    .line 48
    .line 49
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    check-cast p0, Lorg/wikipedia/history/HistoryEntry;

    .line 59
    .line 60
    iput-object p0, p1, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 61
    .line 62
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    check-cast p2, Lorg/wikipedia/views/PageItemView;

    .line 68
    .line 69
    invoke-virtual {p2, p0}, Lorg/wikipedia/views/PageItemView;->setItem(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p2, v0}, Lorg/wikipedia/views/PageItemView;->setTitle(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v1}, Lorg/wikipedia/views/PageItemView;->setTitleTypeface(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p2, v0}, Lorg/wikipedia/views/PageItemView;->setDescription(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p2, v0}, Lorg/wikipedia/views/PageItemView;->setImageUrl(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p1, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;->this$0:Lorg/wikipedia/history/HistoryFragment;

    .line 105
    .line 106
    invoke-virtual {v0}, Lorg/wikipedia/history/HistoryFragment;->getViewModel()Lorg/wikipedia/history/HistoryViewModel;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iget-object v1, v1, Lorg/wikipedia/history/HistoryViewModel;->searchQuery:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {p2, v1}, Lorg/wikipedia/views/PageItemView;->setSearchQuery(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lorg/wikipedia/history/HistoryFragment;->selectedEntries:Ljava/util/LinkedHashSet;

    .line 116
    .line 117
    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-virtual {p2, v1}, Lorg/wikipedia/views/PageItemView;->setSelected(Z)V

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 133
    .line 134
    const/16 v1, 0x14

    .line 135
    .line 136
    invoke-direct {v0, v1, p1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 140
    .line 141
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_3

    .line 150
    .line 151
    const/4 p0, 0x1

    .line 152
    invoke-virtual {v0, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->onFinish(Z)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_3
    new-instance p1, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 157
    .line 158
    invoke-direct {p1, v0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;)V

    .line 159
    .line 160
    .line 161
    new-instance v1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 162
    .line 163
    const/16 v2, 0x13

    .line 164
    .line 165
    const/4 v3, 0x0

    .line 166
    invoke-direct {v1, p0, v0, v3, v2}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 167
    .line 168
    .line 169
    const/4 p0, 0x2

    .line 170
    invoke-static {p2, p1, v3, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_4
    check-cast p1, Lorg/wikipedia/history/HistoryFragment$HeaderViewHolder;

    .line 175
    .line 176
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->historyEntries:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    check-cast p0, Ljava/lang/String;

    .line 186
    .line 187
    iget-object p1, p1, Lorg/wikipedia/history/HistoryFragment$HeaderViewHolder;->headerText:Landroid/widget/TextView;

    .line 188
    .line 189
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->this$0:Lorg/wikipedia/history/HistoryFragment;

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq p2, v1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;

    .line 10
    .line 11
    new-instance p2, Lorg/wikipedia/views/PageItemView;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p2, v0}, Lorg/wikipedia/views/PageItemView;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;-><init>(Lorg/wikipedia/history/HistoryFragment;Lorg/wikipedia/views/PageItemView;)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const p2, 0x7f0c05f2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance p1, Lorg/wikipedia/history/HistoryFragment$HeaderViewHolder;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    const p2, 0x7f0905df

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    check-cast p0, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object p0, p1, Lorg/wikipedia/history/HistoryFragment$HeaderViewHolder;->headerText:Landroid/widget/TextView;

    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const v1, 0x7f0c05cc

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance p2, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-direct {p2, p0, p1}, Lorg/wikipedia/history/HistoryFragment$SearchCardViewHolder;-><init>(Lorg/wikipedia/history/HistoryFragment;Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    return-object p2
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    .line 2
    .line 3
    instance-of v0, p1, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;

    .line 8
    .line 9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    check-cast p1, Lorg/wikipedia/views/PageItemView;

    .line 15
    .line 16
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemAdapter;->this$0:Lorg/wikipedia/history/HistoryFragment;

    .line 17
    .line 18
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment;->itemCallback:Lorg/wikipedia/media/AvPlayer;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lorg/wikipedia/views/PageItemView;->setCallback(Lorg/wikipedia/views/PageItemView$Callback;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    .line 2
    .line 3
    instance-of p0, p1, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lorg/wikipedia/history/HistoryFragment$HistoryEntryItemHolder;

    .line 8
    .line 9
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    check-cast p0, Lorg/wikipedia/views/PageItemView;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lorg/wikipedia/views/PageItemView;->setCallback(Lorg/wikipedia/views/PageItemView$Callback;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.class public final Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public listener:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/DiffUtil;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;

    .line 14
    .line 15
    iget-object v0, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;->binding:Lokhttp3/Dispatcher;

    .line 16
    .line 17
    iget-object v0, v0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    iget-object v2, p2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->title:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->breadcrumbs:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p2, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchItem;->summary:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget-object v4, p1, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;->binding:Lokhttp3/Dispatcher;

    .line 35
    .line 36
    const/16 v5, 0x8

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    iget-object v0, v4, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v2, v4, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object v2, v4, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    iget-object v0, v4, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    iget-object v0, v4, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v4, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 91
    .line 92
    new-instance v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 93
    .line 94
    const/16 v1, 0x12

    .line 95
    .line 96
    invoke-direct {v0, p0, p2, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    iget-object p1, p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;->binding:Lcoil3/ComponentRegistry$Builder;

    .line 118
    .line 119
    iget-object v0, p1, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Landroid/widget/ImageView;

    .line 122
    .line 123
    iget-object v2, p1, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v2, Landroid/widget/LinearLayout;

    .line 126
    .line 127
    iget-boolean v3, p2, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->fromHistory:Z

    .line 128
    .line 129
    if-eqz v3, :cond_2

    .line 130
    .line 131
    const v3, 0x7f080116

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_2
    const v3, 0x7f08014c

    .line 136
    .line 137
    .line 138
    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p1, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v0, Landroid/widget/TextView;

    .line 144
    .line 145
    iget-object v3, p2, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->query:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda0;

    .line 151
    .line 152
    invoke-direct {v0, p0, p2, v1}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda1;

    .line 159
    .line 160
    invoke-direct {v0, p0, p2}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p1, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast p1, Landroid/widget/LinearLayout;

    .line 169
    .line 170
    new-instance v0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda0;

    .line 171
    .line 172
    const/4 v1, 0x1

    .line 173
    invoke-direct {v0, p0, p2, v1}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 10

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter;->$r8$classId:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    const-string v0, "Missing required view with ID: "

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p0, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const v3, 0x7f0d0100

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const v1, 0x7f0a008e

    .line 28
    .line 29
    .line 30
    invoke-static {v1, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    move-object v5, v2

    .line 35
    check-cast v5, Landroid/widget/TextView;

    .line 36
    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    const v1, 0x7f0a03b6

    .line 40
    .line 41
    .line 42
    invoke-static {v1, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    move-object v6, v2

    .line 47
    check-cast v6, Landroid/widget/TextView;

    .line 48
    .line 49
    if-eqz v6, :cond_0

    .line 50
    .line 51
    const v1, 0x7f0a03f7

    .line 52
    .line 53
    .line 54
    invoke-static {v1, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    move-object v7, v2

    .line 59
    check-cast v7, Landroid/widget/TextView;

    .line 60
    .line 61
    if-eqz v7, :cond_0

    .line 62
    .line 63
    new-instance v3, Lokhttp3/Dispatcher;

    .line 64
    .line 65
    move-object v4, p1

    .line 66
    check-cast v4, Landroid/widget/LinearLayout;

    .line 67
    .line 68
    const/16 v8, 0x12

    .line 69
    .line 70
    invoke-direct/range {v3 .. v8}, Lokhttp3/Dispatcher;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v3}, Lorg/schabi/newpipe/settings/preferencesearch/PreferenceSearchAdapter$PreferenceViewHolder;-><init>(Lokhttp3/Dispatcher;)V

    .line 74
    .line 75
    .line 76
    move-object p2, p0

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    return-object p2

    .line 94
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    new-instance p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const v3, 0x7f0d006f

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const v1, 0x7f0a01fc

    .line 115
    .line 116
    .line 117
    invoke-static {v1, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    move-object v5, v2

    .line 122
    check-cast v5, Landroid/widget/ImageView;

    .line 123
    .line 124
    if-eqz v5, :cond_1

    .line 125
    .line 126
    const v1, 0x7f0a01fd

    .line 127
    .line 128
    .line 129
    invoke-static {v1, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    move-object v6, v2

    .line 134
    check-cast v6, Landroid/widget/TextView;

    .line 135
    .line 136
    if-eqz v6, :cond_1

    .line 137
    .line 138
    const v1, 0x7f0a03b2

    .line 139
    .line 140
    .line 141
    invoke-static {v1, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    move-object v7, v2

    .line 146
    check-cast v7, Landroid/widget/LinearLayout;

    .line 147
    .line 148
    if-eqz v7, :cond_1

    .line 149
    .line 150
    const v1, 0x7f0a03b3

    .line 151
    .line 152
    .line 153
    invoke-static {v1, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    move-object v8, v2

    .line 158
    check-cast v8, Landroid/widget/LinearLayout;

    .line 159
    .line 160
    if-eqz v8, :cond_1

    .line 161
    .line 162
    new-instance v3, Lcoil3/ComponentRegistry$Builder;

    .line 163
    .line 164
    move-object v4, p1

    .line 165
    check-cast v4, Landroid/widget/RelativeLayout;

    .line 166
    .line 167
    const/16 v9, 0xf

    .line 168
    .line 169
    invoke-direct/range {v3 .. v9}, Lcoil3/ComponentRegistry$Builder;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 170
    .line 171
    .line 172
    invoke-direct {p0, v3}, Lorg/schabi/newpipe/fragments/list/search/SuggestionListAdapter$SuggestionItemHolder;-><init>(Lcoil3/ComponentRegistry$Builder;)V

    .line 173
    .line 174
    .line 175
    move-object p2, p0

    .line 176
    goto :goto_1

    .line 177
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :goto_1
    return-object p2

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

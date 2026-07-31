.class public final Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/fragment/app/DialogFragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/DialogFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;->this$0:Landroidx/fragment/app/DialogFragment;

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
    iget v0, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;->this$0:Landroidx/fragment/app/DialogFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->playlists:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;

    .line 18
    .line 19
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->feedGroups:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/settings/SelectChannelFragment;

    .line 27
    .line 28
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment;->subscriptions:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;->this$0:Landroidx/fragment/app/DialogFragment;

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;

    .line 11
    .line 12
    check-cast v2, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;

    .line 13
    .line 14
    iget-object v0, v2, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->playlists:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;

    .line 21
    .line 22
    instance-of v2, v0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 23
    .line 24
    const v4, 0x7f0801b7

    .line 25
    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    check-cast v0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 30
    .line 31
    iget-object v2, p1, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;->titleView:Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getOrderingName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p1, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;->view:Landroid/view/View;

    .line 41
    .line 42
    new-instance v5, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    invoke-direct {v5, p0, p2, v1}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p1, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getThumbnailUrl()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {p0, p1, v4, v3}, Lokhttp3/Cookie$Companion;->loadImageDefault(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    instance-of v1, v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    check-cast v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 68
    .line 69
    iget-object v1, p1, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;->titleView:Landroid/widget/TextView;

    .line 70
    .line 71
    iget-object v2, v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->orderingName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p1, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;->view:Landroid/view/View;

    .line 77
    .line 78
    new-instance v2, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    invoke-direct {v2, p0, p2, v3}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;II)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p1, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 87
    .line 88
    iget-object p1, v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->thumbnailUrl:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-static {p0, p1, v4, v3}, Lokhttp3/Cookie$Companion;->loadImageDefault(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    .line 94
    .line 95
    .line 96
    :cond_1
    :goto_0
    return-void

    .line 97
    :pswitch_0
    check-cast p1, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder;

    .line 98
    .line 99
    check-cast v2, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;

    .line 100
    .line 101
    iget-object v0, v2, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment;->feedGroups:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    .line 108
    .line 109
    iget-object v1, p1, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder;->titleView:Landroid/widget/TextView;

    .line 110
    .line 111
    iget-object v2, v0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->name:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p1, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder;->view:Landroid/view/View;

    .line 117
    .line 118
    new-instance v2, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$$ExternalSyntheticLambda0;

    .line 119
    .line 120
    invoke-direct {v2, p0, p2, v3}, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;II)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    iget-object p0, p1, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 127
    .line 128
    iget-object p1, v0, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 129
    .line 130
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getDrawableResource()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :pswitch_1
    check-cast p1, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;

    .line 139
    .line 140
    check-cast v2, Lorg/schabi/newpipe/settings/SelectChannelFragment;

    .line 141
    .line 142
    iget-object v0, v2, Lorg/schabi/newpipe/settings/SelectChannelFragment;->subscriptions:Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 149
    .line 150
    iget-object v2, p1, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;->titleView:Landroid/widget/TextView;

    .line 151
    .line 152
    iget-object v4, v0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    iget-object v2, p1, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;->view:Landroid/view/View;

    .line 158
    .line 159
    new-instance v4, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$$ExternalSyntheticLambda0;

    .line 160
    .line 161
    invoke-direct {v4, p0, p2, v1}, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;II)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    iget-object p0, p1, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 168
    .line 169
    iget-object p1, v0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->avatarUrl:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    const p2, 0x7f0801b6

    .line 175
    .line 176
    .line 177
    invoke-static {p0, p1, p2, v3}, Lokhttp3/Cookie$Companion;->loadImageDefault(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;->$r8$classId:I

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const v0, 0x7f0d007f

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$SelectPlaylistItemHolder;-><init>(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const v0, 0x7f0d00f6

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    new-instance p1, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Lorg/schabi/newpipe/settings/SelectFeedGroupFragment$SelectFeedGroupAdapter$SelectFeedGroupItemHolder;-><init>(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    return-object p1

    .line 49
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const v0, 0x7f0d00f1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    new-instance p1, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;

    .line 65
    .line 66
    invoke-direct {p1, p0}, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;-><init>(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    return-object p1

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

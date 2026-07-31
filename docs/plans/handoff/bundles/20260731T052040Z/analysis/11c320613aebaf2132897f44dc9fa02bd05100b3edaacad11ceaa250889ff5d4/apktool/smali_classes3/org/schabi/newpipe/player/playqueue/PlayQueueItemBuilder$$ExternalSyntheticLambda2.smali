.class public final synthetic Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;

    .line 13
    .line 14
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 15
    .line 16
    iget-object p0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;

    .line 17
    .line 18
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter;->getItemCount()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-le p0, v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v1, v2

    .line 39
    :goto_0
    return v1

    .line 40
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;

    .line 41
    .line 42
    check-cast v3, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->dragCallback:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 51
    .line 52
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v1, v2

    .line 57
    :goto_1
    return v1

    .line 58
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/local/holder/RemoteBookmarkPlaylistItemHolder;

    .line 59
    .line 60
    check-cast v3, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/jsoup/parser/TokenData;

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    iget-object v0, p1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lorg/schabi/newpipe/util/OnClickGesture;

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-nez p2, :cond_2

    .line 80
    .line 81
    iget-object p1, p1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, Lorg/schabi/newpipe/util/OnClickGesture;

    .line 84
    .line 85
    invoke-interface {p1, v3, p0}, Lorg/schabi/newpipe/util/OnClickGesture;->drag(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    return v2

    .line 89
    :pswitch_2
    check-cast p0, Lorg/schabi/newpipe/local/holder/LocalPlaylistStreamItemHolder;

    .line 90
    .line 91
    check-cast v3, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/jsoup/parser/TokenData;

    .line 97
    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    iget-object v0, p1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v0, Lorg/schabi/newpipe/util/OnClickGesture;

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-nez p2, :cond_3

    .line 111
    .line 112
    iget-object p1, p1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast p1, Lorg/schabi/newpipe/util/OnClickGesture;

    .line 115
    .line 116
    invoke-interface {p1, v3, p0}, Lorg/schabi/newpipe/util/OnClickGesture;->drag(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    return v2

    .line 120
    :pswitch_3
    check-cast p0, Lorg/schabi/newpipe/local/holder/LocalBookmarkPlaylistItemHolder;

    .line 121
    .line 122
    check-cast v3, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lorg/schabi/newpipe/local/holder/LocalItemHolder;->itemBuilder:Lorg/jsoup/parser/TokenData;

    .line 128
    .line 129
    if-eqz p1, :cond_4

    .line 130
    .line 131
    iget-object v0, p1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v0, Lorg/schabi/newpipe/util/OnClickGesture;

    .line 134
    .line 135
    if-eqz v0, :cond_4

    .line 136
    .line 137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-nez p2, :cond_4

    .line 142
    .line 143
    iget-object p1, p1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast p1, Lorg/schabi/newpipe/util/OnClickGesture;

    .line 146
    .line 147
    invoke-interface {p1, v3, p0}, Lorg/schabi/newpipe/util/OnClickGesture;->drag(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 148
    .line 149
    .line 150
    :cond_4
    return v2

    .line 151
    :pswitch_4
    check-cast p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;

    .line 152
    .line 153
    check-cast v3, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;

    .line 154
    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-nez p1, :cond_5

    .line 166
    .line 167
    iget-object p0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder;->onItemClickListener:Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;

    .line 168
    .line 169
    if-eqz p0, :cond_5

    .line 170
    .line 171
    invoke-interface {p0, v3}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$OnSelectedListener;->onStartDrag(Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;)V

    .line 172
    .line 173
    .line 174
    :cond_5
    return v2

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

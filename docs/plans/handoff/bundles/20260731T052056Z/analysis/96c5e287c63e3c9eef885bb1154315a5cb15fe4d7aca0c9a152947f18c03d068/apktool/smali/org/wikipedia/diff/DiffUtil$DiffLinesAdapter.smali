.class public final Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final diffLines:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 10
    iput p1, p0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->$r8$classId:I

    iput-object p2, p0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->diffLines:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->diffLines:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/places/PlacesFilterActivity;Lorg/wikipedia/places/PlacesFilterActivity;)V
    .locals 0

    const/4 p2, 0x5

    iput p2, p0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->$r8$classId:I

    .line 11
    iput-object p1, p0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->diffLines:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaderCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->diffLines:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->currentSearchQuery:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method public final getItemCount()I
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->diffLines:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v2, Lorg/wikipedia/views/UserMentionInputView;

    .line 10
    .line 11
    iget-object p0, v2, Lorg/wikipedia/views/UserMentionInputView;->userNameList:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :pswitch_0
    check-cast v2, Lorg/wikipedia/views/EditNoticesDialog;

    .line 19
    .line 20
    iget-object p0, v2, Lorg/wikipedia/views/EditNoticesDialog;->editNotices:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :pswitch_1
    check-cast v2, Lorg/wikipedia/views/CustomDatePicker;

    .line 30
    .line 31
    iget-object p0, v2, Lorg/wikipedia/views/CustomDatePicker;->selectedDay:Ljava/util/Calendar;

    .line 32
    .line 33
    const/4 v0, 0x5

    .line 34
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :pswitch_2
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :pswitch_3
    check-cast v2, Lorg/wikipedia/readinglist/SortReadingListsDialog;

    .line 42
    .line 43
    iget-object p0, v2, Lorg/wikipedia/readinglist/SortReadingListsDialog;->sortOptions:Ljava/util/List;

    .line 44
    .line 45
    if-eqz p0, :cond_0

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_0
    const-string p0, "sortOptions"

    .line 53
    .line 54
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v1

    .line 58
    :pswitch_4
    check-cast v2, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 59
    .line 60
    iget-object p0, v2, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    return p0

    .line 67
    :pswitch_5
    check-cast v2, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;

    .line 68
    .line 69
    iget-object p0, v2, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 70
    .line 71
    if-eqz p0, :cond_1

    .line 72
    .line 73
    iget-object p0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    return p0

    .line 80
    :cond_1
    const-string p0, "readingList"

    .line 81
    .line 82
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v1

    .line 86
    :pswitch_6
    invoke-virtual {p0}, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->getHeaderCount()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    check-cast v2, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 91
    .line 92
    iget-object v0, v2, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    add-int/2addr v0, p0

    .line 99
    return v0

    .line 100
    :pswitch_7
    check-cast v2, Lorg/wikipedia/readinglist/AddToReadingListDialog;

    .line 101
    .line 102
    iget-object p0, v2, Lorg/wikipedia/readinglist/AddToReadingListDialog;->displayedLists:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    return p0

    .line 109
    :pswitch_8
    check-cast v2, Lorg/wikipedia/places/PlacesFilterActivity;

    .line 110
    .line 111
    iget-object p0, v2, Lorg/wikipedia/places/PlacesFilterActivity;->filtersList:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    return p0

    .line 118
    :pswitch_9
    check-cast v2, Lorg/wikipedia/page/tabs/TabActivity;

    .line 119
    .line 120
    iget-object p0, v2, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 121
    .line 122
    iget-object p0, p0, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    return p0

    .line 129
    :pswitch_a
    check-cast v2, Lorg/wikipedia/views/EditNoticesDialog;

    .line 130
    .line 131
    iget-object p0, v2, Lorg/wikipedia/views/EditNoticesDialog;->wikiSite:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast p0, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    return p0

    .line 140
    :pswitch_b
    check-cast v2, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;

    .line 141
    .line 142
    invoke-virtual {v2}, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;->getViewModel()Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    iget-object p0, p0, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->fullList:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    return p0

    .line 153
    :pswitch_c
    check-cast v2, Lorg/wikipedia/notifications/NotificationActivity;

    .line 154
    .line 155
    iget-object p0, v2, Lorg/wikipedia/notifications/NotificationActivity;->notificationContainerList:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    return p0

    .line 162
    :pswitch_d
    check-cast v2, Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    return p0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object v4, p0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->diffLines:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    :pswitch_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :pswitch_1
    check-cast v4, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 17
    .line 18
    iget-object p0, v4, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    instance-of p0, p0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 25
    .line 26
    xor-int/2addr p0, v3

    .line 27
    return p0

    .line 28
    :pswitch_2
    invoke-virtual {p0}, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->getHeaderCount()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-ne v0, v3, :cond_0

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    move v1, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    check-cast v4, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 39
    .line 40
    iget-object v0, v4, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    .line 41
    .line 42
    invoke-virtual {p0}, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->getHeaderCount()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    sub-int/2addr p1, p0

    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    instance-of p0, p0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 52
    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    move v1, v3

    .line 56
    :cond_1
    :goto_0
    return v1

    .line 57
    :pswitch_3
    check-cast v4, Lorg/wikipedia/places/PlacesFilterActivity;

    .line 58
    .line 59
    iget-object p0, v4, Lorg/wikipedia/places/PlacesFilterActivity;->filtersList:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v4, "header"

    .line 66
    .line 67
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    move v1, v2

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string p1, "footer"

    .line 80
    .line 81
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    move v1, v3

    .line 88
    :cond_3
    :goto_1
    return v1

    .line 89
    :pswitch_4
    check-cast v4, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;

    .line 90
    .line 91
    invoke-virtual {v4}, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;->getViewModel()Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    iget-object p0, p0, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->fullList:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    check-cast p0, Lkotlin/Pair;

    .line 102
    .line 103
    iget-object p0, p0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p0, Ljava/lang/Number;

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    return p0

    .line 112
    :pswitch_5
    check-cast v4, Lorg/wikipedia/notifications/NotificationActivity;

    .line 113
    .line 114
    iget-object p0, v4, Lorg/wikipedia/notifications/NotificationActivity;->notificationContainerList:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    check-cast p0, Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 121
    .line 122
    iget p0, p0, Lorg/wikipedia/notifications/NotificationListItemContainer;->type:I

    .line 123
    .line 124
    return p0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->$r8$classId:I

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    const/4 v6, -0x1

    .line 12
    const v7, 0x7f120759

    .line 13
    .line 14
    .line 15
    const/16 v10, 0x64

    .line 16
    .line 17
    const v11, 0x7f0404e7

    .line 18
    .line 19
    .line 20
    const v12, 0x7f04051a

    .line 21
    .line 22
    .line 23
    const v13, 0x7f040520

    .line 24
    .line 25
    .line 26
    const/4 v14, 0x2

    .line 27
    const/16 v15, 0x8

    .line 28
    .line 29
    const/4 v9, 0x1

    .line 30
    iget-object v5, v0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->diffLines:Ljava/lang/Object;

    .line 31
    .line 32
    const/16 v17, 0x0

    .line 33
    .line 34
    const/4 v8, 0x0

    .line 35
    packed-switch v3, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    move-object v0, v1

    .line 39
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView$UserNameViewHolder;

    .line 40
    .line 41
    iget-object v1, v0, Lorg/wikipedia/views/UserMentionInputView$UserNameViewHolder;->this$0:Lorg/wikipedia/views/UserMentionInputView;

    .line 42
    .line 43
    iget-object v1, v1, Lorg/wikipedia/views/UserMentionInputView;->userNameList:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/String;

    .line 50
    .line 51
    iput-object v1, v0, Lorg/wikipedia/views/UserMentionInputView$UserNameViewHolder;->userName:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    check-cast v1, Landroid/widget/TextView;

    .line 59
    .line 60
    iget-object v0, v0, Lorg/wikipedia/views/UserMentionInputView$UserNameViewHolder;->userName:Ljava/lang/String;

    .line 61
    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    const-string/jumbo v0, "userName"

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v17

    .line 75
    :pswitch_0
    move-object v0, v1

    .line 76
    check-cast v0, Lorg/wikipedia/views/EditNoticesDialog$DefaultViewHolder;

    .line 77
    .line 78
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    check-cast v1, Landroid/widget/TextView;

    .line 84
    .line 85
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 86
    .line 87
    iget-object v0, v0, Lorg/wikipedia/views/EditNoticesDialog$DefaultViewHolder;->this$0:Lorg/wikipedia/views/EditNoticesDialog;

    .line 88
    .line 89
    iget-object v0, v0, Lorg/wikipedia/views/EditNoticesDialog;->editNotices:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_1
    move-object v0, v1

    .line 112
    check-cast v0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;

    .line 113
    .line 114
    add-int/lit8 v1, v2, 0x1

    .line 115
    .line 116
    iget-object v2, v0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->binding:Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 117
    .line 118
    iget-object v0, v0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->this$0:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 119
    .line 120
    iget-object v0, v0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->diffLines:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Lorg/wikipedia/views/CustomDatePicker;

    .line 123
    .line 124
    iget-object v3, v0, Lorg/wikipedia/views/CustomDatePicker;->callbackDay:Ljava/util/Calendar;

    .line 125
    .line 126
    iget-object v4, v0, Lorg/wikipedia/views/CustomDatePicker;->selectedDay:Ljava/util/Calendar;

    .line 127
    .line 128
    iget-object v5, v0, Lorg/wikipedia/views/CustomDatePicker;->today:Ljava/util/Calendar;

    .line 129
    .line 130
    const/4 v6, 0x5

    .line 131
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-ne v1, v7, :cond_1

    .line 136
    .line 137
    invoke-virtual {v5, v14}, Ljava/util/Calendar;->get(I)I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    invoke-virtual {v4, v14}, Ljava/util/Calendar;->get(I)I

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    if-ne v5, v7, :cond_1

    .line 146
    .line 147
    iget-object v5, v2, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayText:Landroid/widget/TextView;

    .line 148
    .line 149
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-static {v7, v13}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_1
    iget-object v5, v2, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayText:Landroid/widget/TextView;

    .line 162
    .line 163
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    invoke-static {v7, v12}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    .line 173
    .line 174
    :goto_0
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-ne v1, v5, :cond_2

    .line 179
    .line 180
    invoke-virtual {v4, v14}, Ljava/util/Calendar;->get(I)I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    invoke-virtual {v3, v14}, Ljava/util/Calendar;->get(I)I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-ne v4, v3, :cond_2

    .line 189
    .line 190
    iget-object v3, v2, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayText:Landroid/widget/TextView;

    .line 191
    .line 192
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v0, v11}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    .line 202
    .line 203
    iget-object v0, v2, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayText:Landroid/widget/TextView;

    .line 204
    .line 205
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 206
    .line 207
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, v2, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayCircleBackground:Landroid/widget/ImageView;

    .line 211
    .line 212
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_2
    iget-object v0, v2, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayText:Landroid/widget/TextView;

    .line 217
    .line 218
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 219
    .line 220
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 221
    .line 222
    .line 223
    iget-object v0, v2, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayCircleBackground:Landroid/widget/ImageView;

    .line 224
    .line 225
    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    .line 227
    .line 228
    :goto_1
    iget-object v0, v2, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->dayText:Landroid/widget/TextView;

    .line 229
    .line 230
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    new-array v3, v9, [Ljava/lang/Object;

    .line 239
    .line 240
    aput-object v1, v3, v8

    .line 241
    .line 242
    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    const-string v3, "%d"

    .line 247
    .line 248
    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :pswitch_2
    move-object v0, v1

    .line 257
    check-cast v0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$EmptyViewHolder;

    .line 258
    .line 259
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 260
    .line 261
    const v2, 0x7f09021f

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    check-cast v2, Lorg/wikipedia/views/WikiErrorView;

    .line 269
    .line 270
    const v3, 0x7f090513

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    const v4, 0x7f090212

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    check-cast v1, Landroid/widget/TextView;

    .line 285
    .line 286
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    .line 296
    .line 297
    .line 298
    iget-object v0, v0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$EmptyViewHolder;->this$0:Lorg/wikipedia/talk/ArchivedTalkPagesActivity;

    .line 299
    .line 300
    const v2, 0x7f12008f

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    :pswitch_3
    move-object v0, v1

    .line 315
    check-cast v0, Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;

    .line 316
    .line 317
    iget-object v1, v0, Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;->binding:Lokhttp3/MultipartBody$Builder;

    .line 318
    .line 319
    iget-object v3, v1, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v3, Landroid/widget/TextView;

    .line 322
    .line 323
    iget-object v4, v0, Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;->this$0:Lorg/wikipedia/readinglist/SortReadingListsDialog;

    .line 324
    .line 325
    iget-object v6, v4, Lorg/wikipedia/readinglist/SortReadingListsDialog;->sortOptions:Ljava/util/List;

    .line 326
    .line 327
    if-eqz v6, :cond_4

    .line 328
    .line 329
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    check-cast v6, Ljava/lang/CharSequence;

    .line 334
    .line 335
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    .line 337
    .line 338
    iget v3, v4, Lorg/wikipedia/readinglist/SortReadingListsDialog;->chosenSortOption:I

    .line 339
    .line 340
    iget-object v1, v1, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v1, Landroid/widget/ImageView;

    .line 343
    .line 344
    if-ne v3, v2, :cond_3

    .line 345
    .line 346
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    .line 348
    .line 349
    goto :goto_2

    .line 350
    :cond_3
    invoke-virtual {v1, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    .line 352
    .line 353
    :goto_2
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 354
    .line 355
    check-cast v5, Lorg/wikipedia/readinglist/SortReadingListsDialog;

    .line 356
    .line 357
    new-instance v1, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda0;

    .line 358
    .line 359
    invoke-direct {v1, v2, v9, v5}, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    .line 364
    .line 365
    return-void

    .line 366
    :cond_4
    const-string v0, "sortOptions"

    .line 367
    .line 368
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    throw v17

    .line 372
    :pswitch_4
    move-object v0, v1

    .line 373
    check-cast v0, Lorg/wikipedia/views/DefaultViewHolder;

    .line 374
    .line 375
    check-cast v5, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 376
    .line 377
    instance-of v1, v0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;

    .line 378
    .line 379
    if-eqz v1, :cond_6

    .line 380
    .line 381
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;

    .line 382
    .line 383
    iget-object v1, v5, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 384
    .line 385
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 393
    .line 394
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;->getView()Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    sget-object v3, Lorg/wikipedia/readinglist/ReadingListItemView$Description;->SUMMARY:Lorg/wikipedia/readinglist/ReadingListItemView$Description;

    .line 399
    .line 400
    iget-object v4, v0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 401
    .line 402
    iget-boolean v5, v4, Lorg/wikipedia/readinglist/ReadingListsFragment;->selectMode:Z

    .line 403
    .line 404
    iget-object v6, v4, Lorg/wikipedia/readinglist/ReadingListsFragment;->recentPreviewSavedReadingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 405
    .line 406
    if-eqz v6, :cond_5

    .line 407
    .line 408
    iget-wide v10, v1, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 409
    .line 410
    iget-wide v6, v6, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 411
    .line 412
    cmp-long v6, v10, v6

    .line 413
    .line 414
    if-nez v6, :cond_5

    .line 415
    .line 416
    goto :goto_3

    .line 417
    :cond_5
    move v9, v8

    .line 418
    :goto_3
    invoke-virtual {v2, v1, v3, v5, v9}, Lorg/wikipedia/readinglist/ReadingListItemView;->setReadingList(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListItemView$Description;ZZ)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;->getView()Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    iget-object v2, v4, Lorg/wikipedia/readinglist/ReadingListsFragment;->currentSearchQuery:Ljava/lang/String;

    .line 426
    .line 427
    invoke-virtual {v1, v2}, Lorg/wikipedia/readinglist/ReadingListItemView;->setSearchQuery(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;->getView()Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda4;

    .line 435
    .line 436
    const/4 v2, 0x6

    .line 437
    invoke-direct {v1, v4, v2}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/ReadingListItemView;->setSaveClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_8

    .line 444
    .line 445
    :cond_6
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemHolder;

    .line 446
    .line 447
    iget-object v1, v5, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 448
    .line 449
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 457
    .line 458
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 459
    .line 460
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 461
    .line 462
    .line 463
    check-cast v2, Lorg/wikipedia/views/PageItemView;

    .line 464
    .line 465
    iget-object v3, v2, Lorg/wikipedia/views/PageItemView;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 466
    .line 467
    invoke-virtual {v2, v1}, Lorg/wikipedia/views/PageItemView;->setItem(Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    iget-object v4, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 471
    .line 472
    invoke-virtual {v2, v4}, Lorg/wikipedia/views/PageItemView;->setTitle(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v2, v14}, Lorg/wikipedia/views/PageItemView;->setTitleMaxLines(I)V

    .line 476
    .line 477
    .line 478
    iget-object v4, v3, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v4, Landroid/widget/TextView;

    .line 481
    .line 482
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 483
    .line 484
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 485
    .line 486
    .line 487
    iget-object v4, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 488
    .line 489
    invoke-virtual {v2, v4}, Lorg/wikipedia/views/PageItemView;->setDescription(Ljava/lang/CharSequence;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v2, v14}, Lorg/wikipedia/views/PageItemView;->setDescriptionMaxLines(I)V

    .line 493
    .line 494
    .line 495
    iget-object v3, v3, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 496
    .line 497
    check-cast v3, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 498
    .line 499
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 500
    .line 501
    .line 502
    iget-object v3, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 503
    .line 504
    invoke-virtual {v2, v3}, Lorg/wikipedia/views/PageItemView;->setImageUrl(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    iget-boolean v3, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->selected:Z

    .line 508
    .line 509
    invoke-virtual {v2, v3}, Lorg/wikipedia/views/PageItemView;->setSelected(Z)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->getSaving()Z

    .line 513
    .line 514
    .line 515
    move-result v3

    .line 516
    if-eqz v3, :cond_7

    .line 517
    .line 518
    const v3, 0x7f080154

    .line 519
    .line 520
    .line 521
    goto :goto_4

    .line 522
    :cond_7
    const v3, 0x7f080153

    .line 523
    .line 524
    .line 525
    :goto_4
    iget-boolean v4, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 526
    .line 527
    if-eqz v4, :cond_9

    .line 528
    .line 529
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->getSaving()Z

    .line 530
    .line 531
    .line 532
    move-result v4

    .line 533
    if-eqz v4, :cond_8

    .line 534
    .line 535
    goto :goto_5

    .line 536
    :cond_8
    move v4, v8

    .line 537
    goto :goto_6

    .line 538
    :cond_9
    :goto_5
    move v4, v9

    .line 539
    :goto_6
    invoke-virtual {v2, v3, v4}, Lorg/wikipedia/views/PageItemView;->setSecondaryActionIcon(IZ)V

    .line 540
    .line 541
    .line 542
    iget v3, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress:I

    .line 543
    .line 544
    if-lez v3, :cond_a

    .line 545
    .line 546
    if-ge v3, v10, :cond_a

    .line 547
    .line 548
    move v3, v9

    .line 549
    goto :goto_7

    .line 550
    :cond_a
    move v3, v8

    .line 551
    :goto_7
    invoke-virtual {v2, v3}, Lorg/wikipedia/views/PageItemView;->setCircularProgressVisibility(Z)V

    .line 552
    .line 553
    .line 554
    iget v3, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress:I

    .line 555
    .line 556
    if-ne v3, v10, :cond_b

    .line 557
    .line 558
    move v3, v8

    .line 559
    :cond_b
    invoke-virtual {v2, v3}, Lorg/wikipedia/views/PageItemView;->setProgress(I)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v2, v7}, Lorg/wikipedia/views/PageItemView;->setActionHint(I)V

    .line 563
    .line 564
    .line 565
    iget-object v0, v0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 566
    .line 567
    iget-object v0, v0, Lorg/wikipedia/readinglist/ReadingListsFragment;->currentSearchQuery:Ljava/lang/String;

    .line 568
    .line 569
    invoke-virtual {v2, v0}, Lorg/wikipedia/views/PageItemView;->setSearchQuery(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 573
    .line 574
    invoke-static {v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->getListsContainPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Ljava/util/ArrayList;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    invoke-virtual {v2, v0}, Lorg/wikipedia/views/PageItemView;->setUpChipGroup(Ljava/util/List;)V

    .line 579
    .line 580
    .line 581
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 582
    .line 583
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    if-nez v0, :cond_c

    .line 592
    .line 593
    iget-boolean v0, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 594
    .line 595
    if-eqz v0, :cond_d

    .line 596
    .line 597
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->getSaving()Z

    .line 598
    .line 599
    .line 600
    move-result v0

    .line 601
    if-nez v0, :cond_d

    .line 602
    .line 603
    :cond_c
    move v8, v9

    .line 604
    :cond_d
    xor-int/lit8 v0, v8, 0x1

    .line 605
    .line 606
    invoke-virtual {v2, v0}, Lorg/wikipedia/views/PageItemView;->setViewsGreyedOut(Z)V

    .line 607
    .line 608
    .line 609
    :goto_8
    return-void

    .line 610
    :pswitch_5
    move-object v0, v1

    .line 611
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView$ReadingListItemHolder;

    .line 612
    .line 613
    check-cast v5, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;

    .line 614
    .line 615
    iget-object v1, v5, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 616
    .line 617
    if-eqz v1, :cond_10

    .line 618
    .line 619
    iget-object v1, v1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 620
    .line 621
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 626
    .line 627
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 628
    .line 629
    .line 630
    iput-object v1, v0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView$ReadingListItemHolder;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 631
    .line 632
    iget-object v2, v0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView$ReadingListItemHolder;->itemBinding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 633
    .line 634
    iget-object v3, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 635
    .line 636
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 637
    .line 638
    iget-object v4, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 639
    .line 640
    check-cast v4, Landroid/widget/TextView;

    .line 641
    .line 642
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 643
    .line 644
    const/4 v7, -0x2

    .line 645
    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    .line 650
    .line 651
    iget-object v5, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 652
    .line 653
    check-cast v5, Landroid/widget/TextView;

    .line 654
    .line 655
    sget-object v6, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 656
    .line 657
    iget-object v6, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 658
    .line 659
    invoke-static {v6}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 660
    .line 661
    .line 662
    move-result-object v6

    .line 663
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    .line 665
    .line 666
    iget-object v5, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 667
    .line 668
    if-eqz v5, :cond_f

    .line 669
    .line 670
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 671
    .line 672
    .line 673
    move-result v5

    .line 674
    if-nez v5, :cond_e

    .line 675
    .line 676
    goto :goto_9

    .line 677
    :cond_e
    move v15, v8

    .line 678
    :cond_f
    :goto_9
    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    .line 679
    .line 680
    .line 681
    iget-object v5, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 682
    .line 683
    invoke-static {v5}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 684
    .line 685
    .line 686
    move-result-object v5

    .line 687
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    .line 689
    .line 690
    iget-object v4, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 691
    .line 692
    check-cast v4, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 693
    .line 694
    iget-object v1, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 695
    .line 696
    const/16 v5, 0x1c

    .line 697
    .line 698
    move-object/from16 v6, v17

    .line 699
    .line 700
    invoke-static {v4, v1, v6, v5}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    .line 705
    .line 706
    iget-object v1, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 707
    .line 708
    check-cast v1, Landroid/widget/CheckBox;

    .line 709
    .line 710
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView$ReadingListItemHolder;->updateState()V

    .line 714
    .line 715
    .line 716
    return-void

    .line 717
    :cond_10
    move-object/from16 v6, v17

    .line 718
    .line 719
    const-string v0, "readingList"

    .line 720
    .line 721
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    throw v6

    .line 725
    :pswitch_6
    check-cast v5, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 726
    .line 727
    iget-object v3, v5, Lorg/wikipedia/readinglist/ReadingListFragment;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 728
    .line 729
    if-eqz v3, :cond_1e

    .line 730
    .line 731
    instance-of v3, v1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;

    .line 732
    .line 733
    if-eqz v3, :cond_11

    .line 734
    .line 735
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;

    .line 736
    .line 737
    iget-object v3, v5, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    .line 738
    .line 739
    invoke-virtual {v0}, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->getHeaderCount()I

    .line 740
    .line 741
    .line 742
    move-result v0

    .line 743
    sub-int v0, v2, v0

    .line 744
    .line 745
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    .line 751
    .line 752
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 753
    .line 754
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;->getView()Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 755
    .line 756
    .line 757
    move-result-object v2

    .line 758
    sget-object v3, Lorg/wikipedia/readinglist/ReadingListItemView$Description;->SUMMARY:Lorg/wikipedia/readinglist/ReadingListItemView$Description;

    .line 759
    .line 760
    sget v4, Lorg/wikipedia/readinglist/ReadingListItemView;->$r8$clinit:I

    .line 761
    .line 762
    invoke-virtual {v2, v0, v3, v8, v8}, Lorg/wikipedia/readinglist/ReadingListItemView;->setReadingList(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListItemView$Description;ZZ)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;->getView()Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    iget-object v2, v1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 770
    .line 771
    iget-object v3, v2, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 772
    .line 773
    invoke-virtual {v0, v3}, Lorg/wikipedia/readinglist/ReadingListItemView;->setMode(Lorg/wikipedia/readinglist/ReadingListMode;)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;->getView()Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    iget-object v1, v2, Lorg/wikipedia/readinglist/ReadingListFragment;->currentSearchQuery:Ljava/lang/String;

    .line 781
    .line 782
    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/ReadingListItemView;->setSearchQuery(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    goto/16 :goto_f

    .line 786
    .line 787
    :cond_11
    instance-of v3, v1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;

    .line 788
    .line 789
    if-eqz v3, :cond_1e

    .line 790
    .line 791
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;

    .line 792
    .line 793
    iget-object v3, v5, Lorg/wikipedia/readinglist/ReadingListFragment;->displayedLists:Ljava/util/List;

    .line 794
    .line 795
    invoke-virtual {v0}, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->getHeaderCount()I

    .line 796
    .line 797
    .line 798
    move-result v0

    .line 799
    sub-int v0, v2, v0

    .line 800
    .line 801
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 806
    .line 807
    .line 808
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 809
    .line 810
    iget-object v2, v1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->this$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 811
    .line 812
    iput-object v0, v1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->page:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 813
    .line 814
    iget-object v3, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 815
    .line 816
    iget-object v4, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 817
    .line 818
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 819
    .line 820
    .line 821
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 822
    .line 823
    .line 824
    iput-object v4, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 825
    .line 826
    new-instance v18, Lorg/wikipedia/page/PageTitle;

    .line 827
    .line 828
    iget-object v4, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 829
    .line 830
    iget-object v5, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 831
    .line 832
    iget-object v6, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 833
    .line 834
    iget-object v11, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 835
    .line 836
    move-object/from16 v20, v3

    .line 837
    .line 838
    move-object/from16 v19, v4

    .line 839
    .line 840
    move-object/from16 v21, v5

    .line 841
    .line 842
    move-object/from16 v22, v6

    .line 843
    .line 844
    move-object/from16 v23, v11

    .line 845
    .line 846
    invoke-direct/range {v18 .. v23}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    move-object/from16 v3, v18

    .line 850
    .line 851
    iput-object v3, v1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 852
    .line 853
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 854
    .line 855
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 856
    .line 857
    .line 858
    check-cast v3, Lorg/wikipedia/views/PageItemView;

    .line 859
    .line 860
    iget-object v4, v3, Lorg/wikipedia/views/PageItemView;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 861
    .line 862
    invoke-virtual {v3, v0}, Lorg/wikipedia/views/PageItemView;->setItem(Ljava/lang/Object;)V

    .line 863
    .line 864
    .line 865
    iget-object v5, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 866
    .line 867
    invoke-virtual {v3, v5}, Lorg/wikipedia/views/PageItemView;->setTitle(Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    iget-object v5, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 871
    .line 872
    invoke-virtual {v3, v5}, Lorg/wikipedia/views/PageItemView;->setDescription(Ljava/lang/CharSequence;)V

    .line 873
    .line 874
    .line 875
    iget-object v5, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 876
    .line 877
    invoke-virtual {v3, v5}, Lorg/wikipedia/views/PageItemView;->setImageUrl(Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    iget-boolean v5, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->selected:Z

    .line 881
    .line 882
    invoke-virtual {v3, v5}, Lorg/wikipedia/views/PageItemView;->setSelected(Z)V

    .line 883
    .line 884
    .line 885
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->getSaving()Z

    .line 886
    .line 887
    .line 888
    move-result v5

    .line 889
    if-eqz v5, :cond_12

    .line 890
    .line 891
    const v5, 0x7f080154

    .line 892
    .line 893
    .line 894
    goto :goto_a

    .line 895
    :cond_12
    const v5, 0x7f080153

    .line 896
    .line 897
    .line 898
    :goto_a
    iget-object v6, v2, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 899
    .line 900
    sget-object v11, Lorg/wikipedia/readinglist/ReadingListMode;->DEFAULT:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 901
    .line 902
    if-eq v6, v11, :cond_14

    .line 903
    .line 904
    :cond_13
    move v6, v8

    .line 905
    goto :goto_b

    .line 906
    :cond_14
    iget-boolean v6, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 907
    .line 908
    if-eqz v6, :cond_15

    .line 909
    .line 910
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->getSaving()Z

    .line 911
    .line 912
    .line 913
    move-result v6

    .line 914
    if-eqz v6, :cond_13

    .line 915
    .line 916
    :cond_15
    move v6, v9

    .line 917
    :goto_b
    invoke-virtual {v3, v5, v6}, Lorg/wikipedia/views/PageItemView;->setSecondaryActionIcon(IZ)V

    .line 918
    .line 919
    .line 920
    iget v5, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress:I

    .line 921
    .line 922
    if-lez v5, :cond_16

    .line 923
    .line 924
    if-ge v5, v10, :cond_16

    .line 925
    .line 926
    move v5, v9

    .line 927
    goto :goto_c

    .line 928
    :cond_16
    move v5, v8

    .line 929
    :goto_c
    invoke-virtual {v3, v5}, Lorg/wikipedia/views/PageItemView;->setCircularProgressVisibility(Z)V

    .line 930
    .line 931
    .line 932
    iget v5, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress:I

    .line 933
    .line 934
    if-ne v5, v10, :cond_17

    .line 935
    .line 936
    move v5, v8

    .line 937
    :cond_17
    invoke-virtual {v3, v5}, Lorg/wikipedia/views/PageItemView;->setProgress(I)V

    .line 938
    .line 939
    .line 940
    invoke-virtual {v3, v7}, Lorg/wikipedia/views/PageItemView;->setActionHint(I)V

    .line 941
    .line 942
    .line 943
    iget-object v5, v2, Lorg/wikipedia/readinglist/ReadingListFragment;->currentSearchQuery:Ljava/lang/String;

    .line 944
    .line 945
    invoke-virtual {v3, v5}, Lorg/wikipedia/views/PageItemView;->setSearchQuery(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    sget-object v5, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 949
    .line 950
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 951
    .line 952
    .line 953
    move-result-object v5

    .line 954
    invoke-virtual {v5}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    .line 955
    .line 956
    .line 957
    move-result v5

    .line 958
    if-nez v5, :cond_18

    .line 959
    .line 960
    iget-boolean v5, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 961
    .line 962
    if-eqz v5, :cond_19

    .line 963
    .line 964
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->getSaving()Z

    .line 965
    .line 966
    .line 967
    move-result v5

    .line 968
    if-nez v5, :cond_19

    .line 969
    .line 970
    :cond_18
    move v8, v9

    .line 971
    :cond_19
    xor-int/lit8 v5, v8, 0x1

    .line 972
    .line 973
    invoke-virtual {v3, v5}, Lorg/wikipedia/views/PageItemView;->setViewsGreyedOut(Z)V

    .line 974
    .line 975
    .line 976
    invoke-virtual {v2}, Lorg/wikipedia/readinglist/ReadingListFragment;->isRecommendedList()Z

    .line 977
    .line 978
    .line 979
    move-result v5

    .line 980
    if-eqz v5, :cond_1b

    .line 981
    .line 982
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 983
    .line 984
    .line 985
    move-result-object v5

    .line 986
    invoke-static {v5}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 987
    .line 988
    .line 989
    move-result-object v5

    .line 990
    iget-object v6, v1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 991
    .line 992
    if-eqz v6, :cond_1a

    .line 993
    .line 994
    new-instance v7, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;

    .line 995
    .line 996
    invoke-direct {v7, v14, v1}, Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 997
    .line 998
    .line 999
    new-instance v1, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 1000
    .line 1001
    invoke-direct {v1, v7}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/search/SearchFragment$$ExternalSyntheticLambda1;)V

    .line 1002
    .line 1003
    .line 1004
    new-instance v8, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 1005
    .line 1006
    const/16 v9, 0x14

    .line 1007
    .line 1008
    const/4 v10, 0x0

    .line 1009
    invoke-direct {v8, v6, v7, v10, v9}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1010
    .line 1011
    .line 1012
    invoke-static {v5, v1, v10, v8, v14}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1013
    .line 1014
    .line 1015
    goto :goto_d

    .line 1016
    :cond_1a
    const/4 v10, 0x0

    .line 1017
    const-string v0, "pageTitle"

    .line 1018
    .line 1019
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    throw v10

    .line 1023
    :cond_1b
    :goto_d
    iget-object v1, v2, Lorg/wikipedia/readinglist/ReadingListFragment;->currentSearchQuery:Ljava/lang/String;

    .line 1024
    .line 1025
    if-eqz v1, :cond_1d

    .line 1026
    .line 1027
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1028
    .line 1029
    .line 1030
    move-result v1

    .line 1031
    if-nez v1, :cond_1c

    .line 1032
    .line 1033
    goto :goto_e

    .line 1034
    :cond_1c
    invoke-virtual {v3, v14}, Lorg/wikipedia/views/PageItemView;->setTitleMaxLines(I)V

    .line 1035
    .line 1036
    .line 1037
    iget-object v1, v4, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewLoginError:Ljava/lang/Object;

    .line 1038
    .line 1039
    check-cast v1, Landroid/widget/TextView;

    .line 1040
    .line 1041
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 1042
    .line 1043
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v3, v14}, Lorg/wikipedia/views/PageItemView;->setDescriptionMaxLines(I)V

    .line 1047
    .line 1048
    .line 1049
    iget-object v1, v4, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 1050
    .line 1051
    check-cast v1, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 1052
    .line 1053
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1054
    .line 1055
    .line 1056
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 1057
    .line 1058
    invoke-static {v0}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->getListsContainPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Ljava/util/ArrayList;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v0

    .line 1062
    invoke-virtual {v3, v0}, Lorg/wikipedia/views/PageItemView;->setUpChipGroup(Ljava/util/List;)V

    .line 1063
    .line 1064
    .line 1065
    goto :goto_f

    .line 1066
    :cond_1d
    :goto_e
    iget-object v0, v4, Lorg/wikipedia/databinding/ActivityLoginBinding;->captchaContainer:Ljava/lang/Object;

    .line 1067
    .line 1068
    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 1069
    .line 1070
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    .line 1072
    .line 1073
    :cond_1e
    :goto_f
    return-void

    .line 1074
    :pswitch_7
    move-object v0, v1

    .line 1075
    check-cast v0, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;

    .line 1076
    .line 1077
    check-cast v5, Lorg/wikipedia/readinglist/AddToReadingListDialog;

    .line 1078
    .line 1079
    iget-object v1, v5, Lorg/wikipedia/readinglist/AddToReadingListDialog;->displayedLists:Ljava/util/ArrayList;

    .line 1080
    .line 1081
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v1

    .line 1085
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 1086
    .line 1087
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1088
    .line 1089
    .line 1090
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1091
    .line 1092
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1093
    .line 1094
    .line 1095
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 1096
    .line 1097
    sget-object v2, Lorg/wikipedia/readinglist/ReadingListItemView$Description;->SUMMARY:Lorg/wikipedia/readinglist/ReadingListItemView$Description;

    .line 1098
    .line 1099
    sget v3, Lorg/wikipedia/readinglist/ReadingListItemView;->$r8$clinit:I

    .line 1100
    .line 1101
    invoke-virtual {v0, v1, v2, v8, v8}, Lorg/wikipedia/readinglist/ReadingListItemView;->setReadingList(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/ReadingListItemView$Description;ZZ)V

    .line 1102
    .line 1103
    .line 1104
    return-void

    .line 1105
    :pswitch_8
    move-object v0, v1

    .line 1106
    check-cast v0, Lorg/wikipedia/views/DefaultViewHolder;

    .line 1107
    .line 1108
    check-cast v5, Lorg/wikipedia/places/PlacesFilterActivity;

    .line 1109
    .line 1110
    instance-of v1, v0, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterHeaderViewHolder;

    .line 1111
    .line 1112
    if-eqz v1, :cond_21

    .line 1113
    .line 1114
    check-cast v0, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterHeaderViewHolder;

    .line 1115
    .line 1116
    const v1, 0x7f120a35

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v1

    .line 1123
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1124
    .line 1125
    .line 1126
    iget-object v2, v0, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterHeaderViewHolder;->headerText:Landroid/widget/TextView;

    .line 1127
    .line 1128
    iget-object v0, v0, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterHeaderViewHolder;->this$0:Lorg/wikipedia/places/PlacesFilterActivity;

    .line 1129
    .line 1130
    new-instance v3, Landroid/util/TypedValue;

    .line 1131
    .line 1132
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v0

    .line 1139
    invoke-virtual {v0, v12, v3, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1140
    .line 1141
    .line 1142
    move-result v0

    .line 1143
    if-eqz v0, :cond_1f

    .line 1144
    .line 1145
    move-object v8, v3

    .line 1146
    goto :goto_10

    .line 1147
    :cond_1f
    const/4 v8, 0x0

    .line 1148
    :goto_10
    if-eqz v8, :cond_20

    .line 1149
    .line 1150
    iget v0, v8, Landroid/util/TypedValue;->data:I

    .line 1151
    .line 1152
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    .line 1157
    .line 1158
    goto :goto_11

    .line 1159
    :cond_20
    const-string v0, "Attribute not found; ID=2130969882"

    .line 1160
    .line 1161
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1162
    .line 1163
    .line 1164
    goto :goto_11

    .line 1165
    :cond_21
    instance-of v1, v0, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterFooterViewHolder;

    .line 1166
    .line 1167
    if-eqz v1, :cond_22

    .line 1168
    .line 1169
    check-cast v0, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterFooterViewHolder;

    .line 1170
    .line 1171
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1172
    .line 1173
    iget-object v2, v0, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterFooterViewHolder;->this$0:Lorg/wikipedia/places/PlacesFilterActivity;

    .line 1174
    .line 1175
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 1176
    .line 1177
    const/16 v4, 0x13

    .line 1178
    .line 1179
    invoke-direct {v3, v4, v2, v0}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1183
    .line 1184
    .line 1185
    goto :goto_11

    .line 1186
    :cond_22
    check-cast v0, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterItemViewHolder;

    .line 1187
    .line 1188
    iget-object v1, v5, Lorg/wikipedia/places/PlacesFilterActivity;->filtersList:Ljava/util/ArrayList;

    .line 1189
    .line 1190
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v1

    .line 1194
    check-cast v1, Ljava/lang/String;

    .line 1195
    .line 1196
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1197
    .line 1198
    .line 1199
    iget-object v2, v0, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterItemViewHolder;->itemViewBinding:Lokio/internal/DefaultSocket;

    .line 1200
    .line 1201
    iget-object v3, v2, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 1202
    .line 1203
    check-cast v3, Landroid/widget/TextView;

    .line 1204
    .line 1205
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 1206
    .line 1207
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v4

    .line 1211
    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v4

    .line 1215
    invoke-virtual {v4, v1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v4

    .line 1219
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    .line 1221
    .line 1222
    iget-object v3, v2, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 1223
    .line 1224
    check-cast v3, Lorg/wikipedia/views/LangCodeView;

    .line 1225
    .line 1226
    invoke-virtual {v3, v1}, Lorg/wikipedia/views/LangCodeView;->setLangCode(Ljava/lang/String;)V

    .line 1227
    .line 1228
    .line 1229
    iget-object v3, v2, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 1230
    .line 1231
    check-cast v3, Landroid/widget/ImageView;

    .line 1232
    .line 1233
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 1234
    .line 1235
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getPlacesWikiCode()Ljava/lang/String;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v4

    .line 1239
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1240
    .line 1241
    .line 1242
    move-result v4

    .line 1243
    if-eqz v4, :cond_23

    .line 1244
    .line 1245
    move v15, v8

    .line 1246
    :cond_23
    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1247
    .line 1248
    .line 1249
    iget-object v2, v2, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 1250
    .line 1251
    check-cast v2, Landroid/widget/LinearLayout;

    .line 1252
    .line 1253
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 1254
    .line 1255
    const/16 v9, 0x14

    .line 1256
    .line 1257
    invoke-direct {v3, v9, v1, v0}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1258
    .line 1259
    .line 1260
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1261
    .line 1262
    .line 1263
    :goto_11
    return-void

    .line 1264
    :pswitch_9
    move-object v0, v1

    .line 1265
    check-cast v0, Lorg/wikipedia/page/tabs/TabActivity$TabViewHolder;

    .line 1266
    .line 1267
    check-cast v5, Lorg/wikipedia/page/tabs/TabActivity;

    .line 1268
    .line 1269
    iget-object v1, v5, Lorg/wikipedia/page/tabs/TabActivity;->app:Lorg/wikipedia/WikipediaApp;

    .line 1270
    .line 1271
    iget-object v1, v1, Lorg/wikipedia/WikipediaApp;->tabList:Ljava/util/ArrayList;

    .line 1272
    .line 1273
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1274
    .line 1275
    .line 1276
    move-result v3

    .line 1277
    sub-int/2addr v3, v2

    .line 1278
    sub-int/2addr v3, v9

    .line 1279
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v1

    .line 1283
    check-cast v1, Lorg/wikipedia/page/tabs/Tab;

    .line 1284
    .line 1285
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1286
    .line 1287
    .line 1288
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1289
    .line 1290
    const v5, 0x7f09064b

    .line 1291
    .line 1292
    .line 1293
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v5

    .line 1297
    check-cast v5, Landroid/widget/TextView;

    .line 1298
    .line 1299
    sget-object v6, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 1300
    .line 1301
    invoke-virtual {v1}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v6

    .line 1305
    if-eqz v6, :cond_24

    .line 1306
    .line 1307
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v6

    .line 1311
    goto :goto_12

    .line 1312
    :cond_24
    const/4 v6, 0x0

    .line 1313
    :goto_12
    if-nez v6, :cond_25

    .line 1314
    .line 1315
    move-object v6, v4

    .line 1316
    :cond_25
    invoke-static {v6}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v6

    .line 1320
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1321
    .line 1322
    .line 1323
    const v5, 0x7f09064a

    .line 1324
    .line 1325
    .line 1326
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v5

    .line 1330
    check-cast v5, Landroid/widget/TextView;

    .line 1331
    .line 1332
    invoke-virtual {v1}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v1

    .line 1336
    if-eqz v1, :cond_26

    .line 1337
    .line 1338
    iget-object v1, v1, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 1339
    .line 1340
    goto :goto_13

    .line 1341
    :cond_26
    const/4 v1, 0x0

    .line 1342
    :goto_13
    if-nez v1, :cond_27

    .line 1343
    .line 1344
    goto :goto_14

    .line 1345
    :cond_27
    move-object v4, v1

    .line 1346
    :goto_14
    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v1

    .line 1350
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1351
    .line 1352
    .line 1353
    const v1, 0x7f09064e

    .line 1354
    .line 1355
    .line 1356
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v1

    .line 1360
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1361
    .line 1362
    .line 1363
    const v1, 0x7f09064d

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v1

    .line 1370
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1371
    .line 1372
    .line 1373
    const v0, 0x7f09064c

    .line 1374
    .line 1375
    .line 1376
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v0

    .line 1380
    check-cast v0, Lorg/wikipedia/views/WikiCardView;

    .line 1381
    .line 1382
    if-nez v2, :cond_28

    .line 1383
    .line 1384
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 1385
    .line 1386
    goto :goto_15

    .line 1387
    :cond_28
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1388
    .line 1389
    :goto_15
    invoke-static {v1}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 1390
    .line 1391
    .line 1392
    move-result v1

    .line 1393
    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 1394
    .line 1395
    .line 1396
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v1

    .line 1400
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1401
    .line 1402
    .line 1403
    if-nez v2, :cond_29

    .line 1404
    .line 1405
    goto :goto_16

    .line 1406
    :cond_29
    const v13, 0x7f040094

    .line 1407
    .line 1408
    .line 1409
    :goto_16
    new-instance v2, Landroid/util/TypedValue;

    .line 1410
    .line 1411
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v1

    .line 1418
    invoke-virtual {v1, v13, v2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1419
    .line 1420
    .line 1421
    move-result v1

    .line 1422
    if-eqz v1, :cond_2a

    .line 1423
    .line 1424
    move-object v8, v2

    .line 1425
    goto :goto_17

    .line 1426
    :cond_2a
    const/4 v8, 0x0

    .line 1427
    :goto_17
    if-eqz v8, :cond_2b

    .line 1428
    .line 1429
    iget v1, v8, Landroid/util/TypedValue;->data:I

    .line 1430
    .line 1431
    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 1432
    .line 1433
    .line 1434
    goto :goto_18

    .line 1435
    :cond_2b
    const-string v0, "Attribute not found; ID="

    .line 1436
    .line 1437
    invoke-static {v13, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v0

    .line 1441
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1442
    .line 1443
    .line 1444
    :goto_18
    return-void

    .line 1445
    :pswitch_a
    move-object v0, v1

    .line 1446
    check-cast v0, Lorg/wikipedia/page/issues/PageIssuesDialog$DefaultViewHolder;

    .line 1447
    .line 1448
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1449
    .line 1450
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1451
    .line 1452
    .line 1453
    check-cast v1, Landroid/widget/TextView;

    .line 1454
    .line 1455
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 1456
    .line 1457
    iget-object v0, v0, Lorg/wikipedia/page/issues/PageIssuesDialog$DefaultViewHolder;->this$0:Lorg/wikipedia/views/EditNoticesDialog;

    .line 1458
    .line 1459
    iget-object v0, v0, Lorg/wikipedia/views/EditNoticesDialog;->wikiSite:Ljava/lang/Object;

    .line 1460
    .line 1461
    check-cast v0, Ljava/util/ArrayList;

    .line 1462
    .line 1463
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v0

    .line 1467
    check-cast v0, Ljava/lang/String;

    .line 1468
    .line 1469
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v0

    .line 1473
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v0

    .line 1477
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1478
    .line 1479
    .line 1480
    return-void

    .line 1481
    :pswitch_b
    move-object v0, v1

    .line 1482
    check-cast v0, Lorg/wikipedia/views/DefaultViewHolder;

    .line 1483
    .line 1484
    check-cast v5, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;

    .line 1485
    .line 1486
    instance-of v1, v0, Lorg/wikipedia/page/customize/CustomizeToolbarFragment$ItemHolder;

    .line 1487
    .line 1488
    if-eqz v1, :cond_2c

    .line 1489
    .line 1490
    check-cast v0, Lorg/wikipedia/page/customize/CustomizeToolbarFragment$ItemHolder;

    .line 1491
    .line 1492
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1493
    .line 1494
    invoke-virtual {v5}, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;->getViewModel()Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v1

    .line 1498
    iget-object v1, v1, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->fullList:Ljava/util/ArrayList;

    .line 1499
    .line 1500
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v1

    .line 1504
    check-cast v1, Lkotlin/Pair;

    .line 1505
    .line 1506
    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 1507
    .line 1508
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1509
    .line 1510
    .line 1511
    check-cast v1, Lorg/wikipedia/page/action/PageActionItem;

    .line 1512
    .line 1513
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1514
    .line 1515
    .line 1516
    check-cast v0, Lorg/wikipedia/page/customize/CustomizeToolbarItemView;

    .line 1517
    .line 1518
    iget-object v2, v0, Lorg/wikipedia/page/customize/CustomizeToolbarItemView;->binding:Lorg/wikipedia/databinding/ItemCustomizeToolbarBinding;

    .line 1519
    .line 1520
    iget-object v3, v2, Lorg/wikipedia/databinding/ItemCustomizeToolbarBinding;->listItem:Landroid/widget/TextView;

    .line 1521
    .line 1522
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v4

    .line 1526
    invoke-virtual {v1}, Lorg/wikipedia/page/action/PageActionItem;->getTitleResId()I

    .line 1527
    .line 1528
    .line 1529
    move-result v5

    .line 1530
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v4

    .line 1534
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1535
    .line 1536
    .line 1537
    iget-object v2, v2, Lorg/wikipedia/databinding/ItemCustomizeToolbarBinding;->listItem:Landroid/widget/TextView;

    .line 1538
    .line 1539
    invoke-virtual {v1}, Lorg/wikipedia/page/action/PageActionItem;->getIconResId()I

    .line 1540
    .line 1541
    .line 1542
    move-result v1

    .line 1543
    invoke-virtual {v2, v1, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 1544
    .line 1545
    .line 1546
    invoke-virtual {v0, v9}, Lorg/wikipedia/page/customize/CustomizeToolbarItemView;->setDragHandleEnabled(Z)V

    .line 1547
    .line 1548
    .line 1549
    goto :goto_19

    .line 1550
    :cond_2c
    instance-of v1, v0, Lorg/wikipedia/page/customize/CustomizeToolbarFragment$HeaderViewHolder;

    .line 1551
    .line 1552
    if-eqz v1, :cond_2d

    .line 1553
    .line 1554
    check-cast v0, Lorg/wikipedia/page/customize/CustomizeToolbarFragment$HeaderViewHolder;

    .line 1555
    .line 1556
    invoke-virtual {v5}, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;->getViewModel()Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v1

    .line 1560
    iget-object v1, v1, Lorg/wikipedia/page/customize/CustomizeToolbarViewModel;->fullList:Ljava/util/ArrayList;

    .line 1561
    .line 1562
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v1

    .line 1566
    check-cast v1, Lkotlin/Pair;

    .line 1567
    .line 1568
    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 1569
    .line 1570
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1571
    .line 1572
    .line 1573
    check-cast v1, Ljava/lang/Integer;

    .line 1574
    .line 1575
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1576
    .line 1577
    .line 1578
    move-result v1

    .line 1579
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1580
    .line 1581
    const v2, 0x7f090297

    .line 1582
    .line 1583
    .line 1584
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v0

    .line 1588
    check-cast v0, Landroid/widget/TextView;

    .line 1589
    .line 1590
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1591
    .line 1592
    .line 1593
    :cond_2d
    :goto_19
    return-void

    .line 1594
    :pswitch_c
    check-cast v5, Lorg/wikipedia/notifications/NotificationActivity;

    .line 1595
    .line 1596
    iget-object v0, v5, Lorg/wikipedia/notifications/NotificationActivity;->notificationContainerList:Ljava/util/ArrayList;

    .line 1597
    .line 1598
    instance-of v3, v1, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;

    .line 1599
    .line 1600
    if-eqz v3, :cond_46

    .line 1601
    .line 1602
    check-cast v1, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;

    .line 1603
    .line 1604
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v3

    .line 1608
    check-cast v3, Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 1609
    .line 1610
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1611
    .line 1612
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1613
    .line 1614
    .line 1615
    iput-object v3, v1, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->container:Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 1616
    .line 1617
    iput v2, v1, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->itemPosition:I

    .line 1618
    .line 1619
    iget-object v10, v3, Lorg/wikipedia/notifications/NotificationListItemContainer;->notification:Lorg/wikipedia/notifications/db/Notification;

    .line 1620
    .line 1621
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1622
    .line 1623
    .line 1624
    iget-object v13, v10, Lorg/wikipedia/notifications/db/Notification;->contents:Lorg/wikipedia/notifications/db/Notification$Contents;

    .line 1625
    .line 1626
    sget-object v14, Lorg/wikipedia/notifications/NotificationCategory;->Companion:Lorg/wikipedia/notifications/NotificationCategory$Companion;

    .line 1627
    .line 1628
    move/from16 v16, v9

    .line 1629
    .line 1630
    iget-object v9, v10, Lorg/wikipedia/notifications/db/Notification;->category:Ljava/lang/String;

    .line 1631
    .line 1632
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1633
    .line 1634
    .line 1635
    invoke-static {v9}, Lorg/wikipedia/notifications/NotificationCategory$Companion;->find(Ljava/lang/String;)Lorg/wikipedia/notifications/NotificationCategory;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v9

    .line 1639
    iget-object v14, v1, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    .line 1640
    .line 1641
    invoke-virtual {v9}, Lorg/wikipedia/notifications/NotificationCategory;->getIconColor()I

    .line 1642
    .line 1643
    .line 1644
    move-result v11

    .line 1645
    invoke-static {v14, v11}, Lokhttp3/Cache$Companion;->getThemedAttributeId(Landroid/content/Context;I)I

    .line 1646
    .line 1647
    .line 1648
    move-result v11

    .line 1649
    iget-object v6, v14, Lorg/wikipedia/notifications/NotificationActivity;->typefaceSansSerifBold:Landroid/graphics/Typeface;

    .line 1650
    .line 1651
    invoke-static {v14, v11}, Lorg/wikipedia/util/FileUtil;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v11

    .line 1655
    invoke-static {v14, v12}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v12

    .line 1659
    const v8, 0x7f0402dd

    .line 1660
    .line 1661
    .line 1662
    invoke-static {v14, v8}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 1663
    .line 1664
    .line 1665
    move-result-object v8

    .line 1666
    new-instance v15, Lorg/wikipedia/notifications/NotificationLinkHandler;

    .line 1667
    .line 1668
    invoke-direct {v15, v14, v9}, Lorg/wikipedia/notifications/NotificationLinkHandler;-><init>(Landroid/content/Context;Lorg/wikipedia/notifications/NotificationCategory;)V

    .line 1669
    .line 1670
    .line 1671
    iput-object v15, v1, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->linkHandler:Lorg/wikipedia/notifications/NotificationLinkHandler;

    .line 1672
    .line 1673
    iget-object v15, v1, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 1674
    .line 1675
    move-object/from16 v20, v0

    .line 1676
    .line 1677
    iget-object v0, v15, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemImage:Ljava/lang/Object;

    .line 1678
    .line 1679
    check-cast v0, Landroid/widget/ImageView;

    .line 1680
    .line 1681
    move-object/from16 v21, v4

    .line 1682
    .line 1683
    iget-object v4, v15, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 1684
    .line 1685
    check-cast v4, Landroid/widget/ImageView;

    .line 1686
    .line 1687
    move-object/from16 v22, v6

    .line 1688
    .line 1689
    iget-object v6, v15, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 1690
    .line 1691
    check-cast v6, Landroid/widget/TextView;

    .line 1692
    .line 1693
    move-object/from16 p0, v8

    .line 1694
    .line 1695
    iget-object v8, v15, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationDescription:Ljava/lang/Object;

    .line 1696
    .line 1697
    check-cast v8, Landroid/widget/TextView;

    .line 1698
    .line 1699
    move-object/from16 p1, v9

    .line 1700
    .line 1701
    iget-object v9, v15, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 1702
    .line 1703
    check-cast v9, Landroid/widget/TextView;

    .line 1704
    .line 1705
    move-object/from16 v23, v11

    .line 1706
    .line 1707
    iget-object v11, v15, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 1708
    .line 1709
    check-cast v11, Lorg/wikipedia/views/LangCodeView;

    .line 1710
    .line 1711
    move-object/from16 v24, v12

    .line 1712
    .line 1713
    iget-object v12, v15, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeContainer:Ljava/lang/Object;

    .line 1714
    .line 1715
    check-cast v12, Landroid/widget/FrameLayout;

    .line 1716
    .line 1717
    move-object/from16 v25, v5

    .line 1718
    .line 1719
    iget-object v5, v15, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeImage:Ljava/lang/Object;

    .line 1720
    .line 1721
    check-cast v5, Landroid/widget/ImageView;

    .line 1722
    .line 1723
    iget-object v2, v15, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTitle:Ljava/lang/Object;

    .line 1724
    .line 1725
    check-cast v2, Landroid/widget/TextView;

    .line 1726
    .line 1727
    move-object/from16 v26, v1

    .line 1728
    .line 1729
    iget-object v1, v15, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSource:Ljava/lang/Object;

    .line 1730
    .line 1731
    check-cast v1, Landroid/widget/TextView;

    .line 1732
    .line 1733
    move-object/from16 v27, v15

    .line 1734
    .line 1735
    invoke-virtual/range {p1 .. p1}, Lorg/wikipedia/notifications/NotificationCategory;->getIconResId()I

    .line 1736
    .line 1737
    .line 1738
    move-result v15

    .line 1739
    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1740
    .line 1741
    .line 1742
    invoke-virtual {v10}, Lorg/wikipedia/notifications/db/Notification;->isUnread()Z

    .line 1743
    .line 1744
    .line 1745
    move-result v15

    .line 1746
    if-eqz v15, :cond_2e

    .line 1747
    .line 1748
    move-object/from16 v15, v23

    .line 1749
    .line 1750
    goto :goto_1a

    .line 1751
    :cond_2e
    const v15, 0x7f0404fb

    .line 1752
    .line 1753
    .line 1754
    invoke-static {v14, v15}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v15

    .line 1758
    :goto_1a
    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1759
    .line 1760
    .line 1761
    if-eqz v13, :cond_33

    .line 1762
    .line 1763
    iget-object v15, v13, Lorg/wikipedia/notifications/db/Notification$Contents;->body:Ljava/lang/String;

    .line 1764
    .line 1765
    sget-object v28, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 1766
    .line 1767
    move-object/from16 v28, v15

    .line 1768
    .line 1769
    iget-object v15, v13, Lorg/wikipedia/notifications/db/Notification$Contents;->header:Ljava/lang/String;

    .line 1770
    .line 1771
    if-nez v15, :cond_2f

    .line 1772
    .line 1773
    move-object/from16 v15, v21

    .line 1774
    .line 1775
    :cond_2f
    invoke-static {v15}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 1776
    .line 1777
    .line 1778
    move-result-object v15

    .line 1779
    invoke-static {v15}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v15

    .line 1783
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v15

    .line 1787
    sget v21, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 1788
    .line 1789
    move-object/from16 v21, v0

    .line 1790
    .line 1791
    invoke-virtual {v14}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 1792
    .line 1793
    .line 1794
    move-result-object v0

    .line 1795
    iget-object v0, v0, Lorg/wikipedia/notifications/NotificationViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 1796
    .line 1797
    invoke-static {v9, v15, v0}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1798
    .line 1799
    .line 1800
    invoke-static/range {v28 .. v28}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 1801
    .line 1802
    .line 1803
    move-result v0

    .line 1804
    if-nez v0, :cond_30

    .line 1805
    .line 1806
    const/4 v15, 0x0

    .line 1807
    goto :goto_1b

    .line 1808
    :cond_30
    const/16 v15, 0x8

    .line 1809
    .line 1810
    :goto_1b
    invoke-virtual {v8, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1811
    .line 1812
    .line 1813
    if-nez v0, :cond_31

    .line 1814
    .line 1815
    invoke-static/range {v28 .. v28}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 1816
    .line 1817
    .line 1818
    move-result-object v0

    .line 1819
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 1820
    .line 1821
    .line 1822
    move-result-object v0

    .line 1823
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v0

    .line 1827
    invoke-virtual {v14}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 1828
    .line 1829
    .line 1830
    move-result-object v15

    .line 1831
    iget-object v15, v15, Lorg/wikipedia/notifications/NotificationViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 1832
    .line 1833
    invoke-static {v8, v0, v15}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1834
    .line 1835
    .line 1836
    :cond_31
    iget-object v0, v13, Lorg/wikipedia/notifications/db/Notification$Contents;->links:Lorg/wikipedia/notifications/db/Notification$Links;

    .line 1837
    .line 1838
    if-eqz v0, :cond_32

    .line 1839
    .line 1840
    iget-object v0, v0, Lorg/wikipedia/notifications/db/Notification$Links;->secondary:Ljava/util/List;

    .line 1841
    .line 1842
    if-eqz v0, :cond_32

    .line 1843
    .line 1844
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1845
    .line 1846
    .line 1847
    move-result-object v0

    .line 1848
    check-cast v0, Lorg/wikipedia/notifications/db/Notification$Link;

    .line 1849
    .line 1850
    if-eqz v0, :cond_32

    .line 1851
    .line 1852
    iget-object v0, v0, Lorg/wikipedia/notifications/db/Notification$Link;->label:Ljava/lang/String;

    .line 1853
    .line 1854
    invoke-virtual {v14}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 1855
    .line 1856
    .line 1857
    move-result-object v8

    .line 1858
    iget-object v8, v8, Lorg/wikipedia/notifications/NotificationViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 1859
    .line 1860
    invoke-static {v2, v0, v8}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1861
    .line 1862
    .line 1863
    goto :goto_1c

    .line 1864
    :cond_32
    invoke-virtual/range {p1 .. p1}, Lorg/wikipedia/notifications/NotificationCategory;->getTitle()I

    .line 1865
    .line 1866
    .line 1867
    move-result v0

    .line 1868
    invoke-virtual {v14, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1869
    .line 1870
    .line 1871
    move-result-object v0

    .line 1872
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1873
    .line 1874
    .line 1875
    goto :goto_1c

    .line 1876
    :cond_33
    move-object/from16 v21, v0

    .line 1877
    .line 1878
    :goto_1c
    invoke-virtual {v10}, Lorg/wikipedia/notifications/db/Notification;->date()Ljava/util/Date;

    .line 1879
    .line 1880
    .line 1881
    move-result-object v0

    .line 1882
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 1883
    .line 1884
    .line 1885
    move-result-wide v28

    .line 1886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1887
    .line 1888
    .line 1889
    move-result-wide v30

    .line 1890
    const-wide/16 v32, 0x0

    .line 1891
    .line 1892
    invoke-static/range {v28 .. v33}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    .line 1893
    .line 1894
    .line 1895
    move-result-object v0

    .line 1896
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1897
    .line 1898
    .line 1899
    invoke-virtual {v10}, Lorg/wikipedia/notifications/db/Notification;->isUnread()Z

    .line 1900
    .line 1901
    .line 1902
    move-result v0

    .line 1903
    if-eqz v0, :cond_34

    .line 1904
    .line 1905
    move-object/from16 v0, v24

    .line 1906
    .line 1907
    goto :goto_1d

    .line 1908
    :cond_34
    move-object/from16 v0, p0

    .line 1909
    .line 1910
    :goto_1d
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1911
    .line 1912
    .line 1913
    invoke-virtual {v10}, Lorg/wikipedia/notifications/db/Notification;->isUnread()Z

    .line 1914
    .line 1915
    .line 1916
    move-result v0

    .line 1917
    if-eqz v0, :cond_35

    .line 1918
    .line 1919
    move-object/from16 v8, v24

    .line 1920
    .line 1921
    goto :goto_1e

    .line 1922
    :cond_35
    move-object/from16 v8, p0

    .line 1923
    .line 1924
    :goto_1e
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1925
    .line 1926
    .line 1927
    invoke-virtual {v10}, Lorg/wikipedia/notifications/db/Notification;->isUnread()Z

    .line 1928
    .line 1929
    .line 1930
    move-result v0

    .line 1931
    if-eqz v0, :cond_36

    .line 1932
    .line 1933
    move-object/from16 v0, v22

    .line 1934
    .line 1935
    goto :goto_1f

    .line 1936
    :cond_36
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 1937
    .line 1938
    :goto_1f
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1939
    .line 1940
    .line 1941
    invoke-virtual {v10}, Lorg/wikipedia/notifications/db/Notification;->isUnread()Z

    .line 1942
    .line 1943
    .line 1944
    move-result v0

    .line 1945
    if-eqz v0, :cond_37

    .line 1946
    .line 1947
    move-object/from16 v0, v23

    .line 1948
    .line 1949
    goto :goto_20

    .line 1950
    :cond_37
    move-object/from16 v0, v24

    .line 1951
    .line 1952
    :goto_20
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1953
    .line 1954
    .line 1955
    invoke-virtual {v10}, Lorg/wikipedia/notifications/db/Notification;->isUnread()Z

    .line 1956
    .line 1957
    .line 1958
    move-result v0

    .line 1959
    if-eqz v0, :cond_38

    .line 1960
    .line 1961
    move-object/from16 v6, v22

    .line 1962
    .line 1963
    goto :goto_21

    .line 1964
    :cond_38
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 1965
    .line 1966
    :goto_21
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1967
    .line 1968
    .line 1969
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 1970
    .line 1971
    iget-object v0, v10, Lorg/wikipedia/notifications/db/Notification;->wiki:Ljava/lang/String;

    .line 1972
    .line 1973
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->dbNameToLangCode(Ljava/lang/String;)Ljava/lang/String;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v0

    .line 1977
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1978
    .line 1979
    .line 1980
    invoke-static {v7, v0}, Lcoil3/util/BitmapsKt;->setLayoutDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 1981
    .line 1982
    .line 1983
    iget-object v6, v10, Lorg/wikipedia/notifications/db/Notification;->title:Lorg/wikipedia/notifications/db/Notification$Title;

    .line 1984
    .line 1985
    if-eqz v6, :cond_42

    .line 1986
    .line 1987
    iget-object v6, v6, Lorg/wikipedia/notifications/db/Notification$Title;->full:Ljava/lang/String;

    .line 1988
    .line 1989
    sget v8, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 1990
    .line 1991
    invoke-virtual {v14}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 1992
    .line 1993
    .line 1994
    move-result-object v8

    .line 1995
    iget-object v8, v8, Lorg/wikipedia/notifications/NotificationViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 1996
    .line 1997
    invoke-static {v1, v6, v8}, Lorg/wikipedia/util/StringUtil;->setHighlightedAndBoldenedText(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1998
    .line 1999
    .line 2000
    if-eqz v13, :cond_3b

    .line 2001
    .line 2002
    iget-object v6, v13, Lorg/wikipedia/notifications/db/Notification$Contents;->links:Lorg/wikipedia/notifications/db/Notification$Links;

    .line 2003
    .line 2004
    if-eqz v6, :cond_3b

    .line 2005
    .line 2006
    invoke-virtual {v6}, Lorg/wikipedia/notifications/db/Notification$Links;->getPrimary()Lorg/wikipedia/notifications/db/Notification$Link;

    .line 2007
    .line 2008
    .line 2009
    move-result-object v6

    .line 2010
    if-eqz v6, :cond_3b

    .line 2011
    .line 2012
    iget-object v6, v6, Lorg/wikipedia/notifications/db/Notification$Link;->url:Ljava/lang/String;

    .line 2013
    .line 2014
    if-eqz v6, :cond_3b

    .line 2015
    .line 2016
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2017
    .line 2018
    .line 2019
    move-result-object v6

    .line 2020
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2021
    .line 2022
    .line 2023
    invoke-static {v6}, Lorg/wikipedia/util/UriUtil;->isAppSupportedLink(Landroid/net/Uri;)Z

    .line 2024
    .line 2025
    .line 2026
    move-result v6

    .line 2027
    if-eqz v6, :cond_39

    .line 2028
    .line 2029
    const/4 v6, 0x0

    .line 2030
    const/4 v8, 0x0

    .line 2031
    goto :goto_22

    .line 2032
    :cond_39
    iget-object v6, v14, Lorg/wikipedia/notifications/NotificationActivity;->externalLinkIcon:Landroid/graphics/drawable/Drawable;

    .line 2033
    .line 2034
    const/4 v8, 0x0

    .line 2035
    if-eqz v6, :cond_3a

    .line 2036
    .line 2037
    :goto_22
    invoke-virtual {v1, v8, v8, v6, v8}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2038
    .line 2039
    .line 2040
    goto :goto_23

    .line 2041
    :cond_3a
    const-string v0, "externalLinkIcon"

    .line 2042
    .line 2043
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 2044
    .line 2045
    .line 2046
    throw v8

    .line 2047
    :cond_3b
    :goto_23
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2048
    .line 2049
    .line 2050
    move-result-object v6

    .line 2051
    const-string v8, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 2052
    .line 2053
    if-eqz v6, :cond_41

    .line 2054
    .line 2055
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2056
    .line 2057
    const/high16 v9, 0x41000000    # 8.0f

    .line 2058
    .line 2059
    invoke-static {v9}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 2060
    .line 2061
    .line 2062
    move-result v9

    .line 2063
    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2064
    .line 2065
    iget v15, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2066
    .line 2067
    move-object/from16 p0, v8

    .line 2068
    .line 2069
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2070
    .line 2071
    invoke-virtual {v6, v9, v13, v15, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2072
    .line 2073
    .line 2074
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2075
    .line 2076
    .line 2077
    const-string/jumbo v6, "wikidata"

    .line 2078
    .line 2079
    .line 2080
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2081
    .line 2082
    .line 2083
    move-result v6

    .line 2084
    if-eqz v6, :cond_3c

    .line 2085
    .line 2086
    const/16 v6, 0x8

    .line 2087
    .line 2088
    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2089
    .line 2090
    .line 2091
    const/4 v8, 0x0

    .line 2092
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2093
    .line 2094
    .line 2095
    const v0, 0x7f080214

    .line 2096
    .line 2097
    .line 2098
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2099
    .line 2100
    .line 2101
    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2102
    .line 2103
    .line 2104
    goto :goto_25

    .line 2105
    :cond_3c
    const/16 v6, 0x8

    .line 2106
    .line 2107
    const/4 v8, 0x0

    .line 2108
    const-string v9, "commons"

    .line 2109
    .line 2110
    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2111
    .line 2112
    .line 2113
    move-result v9

    .line 2114
    if-eqz v9, :cond_3d

    .line 2115
    .line 2116
    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2117
    .line 2118
    .line 2119
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2120
    .line 2121
    .line 2122
    const v0, 0x7f080147

    .line 2123
    .line 2124
    .line 2125
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2126
    .line 2127
    .line 2128
    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2129
    .line 2130
    .line 2131
    goto :goto_25

    .line 2132
    :cond_3d
    sget-object v6, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2133
    .line 2134
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 2135
    .line 2136
    .line 2137
    move-result-object v6

    .line 2138
    invoke-virtual {v6}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 2139
    .line 2140
    .line 2141
    move-result-object v6

    .line 2142
    iget-object v6, v6, Lorg/wikipedia/language/AppLanguageState;->appLanguageLookUpTable:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2143
    .line 2144
    invoke-virtual {v6, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->indexOfCode(Ljava/lang/String;)I

    .line 2145
    .line 2146
    .line 2147
    move-result v6

    .line 2148
    if-gez v6, :cond_3e

    .line 2149
    .line 2150
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 2151
    .line 2152
    .line 2153
    move-result-object v6

    .line 2154
    invoke-virtual {v6}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 2155
    .line 2156
    .line 2157
    move-result-object v6

    .line 2158
    invoke-virtual {v6, v0}, Lorg/wikipedia/language/AppLanguageState;->getLanguageVariants(Ljava/lang/String;)Ljava/util/List;

    .line 2159
    .line 2160
    .line 2161
    move-result-object v6

    .line 2162
    if-eqz v6, :cond_3f

    .line 2163
    .line 2164
    :cond_3e
    const/16 v6, 0x8

    .line 2165
    .line 2166
    const/4 v8, 0x0

    .line 2167
    goto :goto_24

    .line 2168
    :cond_3f
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2169
    .line 2170
    .line 2171
    move-result-object v0

    .line 2172
    if-eqz v0, :cond_40

    .line 2173
    .line 2174
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2175
    .line 2176
    const/high16 v5, 0x41400000    # 12.0f

    .line 2177
    .line 2178
    invoke-static {v5}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 2179
    .line 2180
    .line 2181
    move-result v5

    .line 2182
    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2183
    .line 2184
    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2185
    .line 2186
    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2187
    .line 2188
    invoke-virtual {v0, v6, v5, v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2189
    .line 2190
    .line 2191
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2192
    .line 2193
    .line 2194
    const/16 v6, 0x8

    .line 2195
    .line 2196
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2197
    .line 2198
    .line 2199
    const/4 v8, 0x0

    .line 2200
    goto :goto_25

    .line 2201
    :cond_40
    invoke-static/range {p0 .. p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 2202
    .line 2203
    .line 2204
    goto/16 :goto_2c

    .line 2205
    .line 2206
    :goto_24
    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2207
    .line 2208
    .line 2209
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2210
    .line 2211
    .line 2212
    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2213
    .line 2214
    .line 2215
    invoke-virtual {v11, v0}, Lorg/wikipedia/views/LangCodeView;->setLangCode(Ljava/lang/String;)V

    .line 2216
    .line 2217
    .line 2218
    :goto_25
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2219
    .line 2220
    .line 2221
    goto :goto_26

    .line 2222
    :cond_41
    move-object/from16 p0, v8

    .line 2223
    .line 2224
    invoke-static/range {p0 .. p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 2225
    .line 2226
    .line 2227
    goto/16 :goto_2c

    .line 2228
    .line 2229
    :cond_42
    const/16 v6, 0x8

    .line 2230
    .line 2231
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2232
    .line 2233
    .line 2234
    const/4 v8, 0x0

    .line 2235
    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2236
    .line 2237
    .line 2238
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2239
    .line 2240
    .line 2241
    :goto_26
    iget-boolean v0, v3, Lorg/wikipedia/notifications/NotificationListItemContainer;->selected:Z

    .line 2242
    .line 2243
    move-object/from16 v1, v27

    .line 2244
    .line 2245
    iget-object v1, v1, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 2246
    .line 2247
    check-cast v1, Landroid/widget/ImageView;

    .line 2248
    .line 2249
    const/4 v3, 0x4

    .line 2250
    if-eqz v0, :cond_43

    .line 2251
    .line 2252
    const/4 v8, 0x0

    .line 2253
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2254
    .line 2255
    .line 2256
    move-object/from16 v0, v21

    .line 2257
    .line 2258
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2259
    .line 2260
    .line 2261
    const v0, 0x7f040061

    .line 2262
    .line 2263
    .line 2264
    invoke-static {v14, v0}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 2265
    .line 2266
    .line 2267
    move-result v0

    .line 2268
    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2269
    .line 2270
    .line 2271
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2272
    .line 2273
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 2274
    .line 2275
    .line 2276
    move-result-object v0

    .line 2277
    iget-object v0, v0, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 2278
    .line 2279
    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 2280
    .line 2281
    .line 2282
    move-result v0

    .line 2283
    if-eqz v0, :cond_44

    .line 2284
    .line 2285
    const/4 v0, -0x1

    .line 2286
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2287
    .line 2288
    .line 2289
    goto :goto_27

    .line 2290
    :cond_43
    move-object/from16 v0, v21

    .line 2291
    .line 2292
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2293
    .line 2294
    .line 2295
    const/4 v8, 0x0

    .line 2296
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2297
    .line 2298
    .line 2299
    const v0, 0x7f0404e7

    .line 2300
    .line 2301
    .line 2302
    invoke-static {v14, v0}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 2303
    .line 2304
    .line 2305
    move-result v0

    .line 2306
    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2307
    .line 2308
    .line 2309
    :cond_44
    :goto_27
    invoke-virtual {v10}, Lorg/wikipedia/notifications/db/Notification;->isUnread()Z

    .line 2310
    .line 2311
    .line 2312
    move-result v0

    .line 2313
    const v1, 0x7f120933

    .line 2314
    .line 2315
    .line 2316
    const v2, 0x7f120934

    .line 2317
    .line 2318
    .line 2319
    if-eqz v0, :cond_45

    .line 2320
    .line 2321
    const v0, 0x7f1204a3

    .line 2322
    .line 2323
    .line 2324
    invoke-virtual {v14, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2325
    .line 2326
    .line 2327
    move-result-object v0

    .line 2328
    invoke-virtual {v7, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2329
    .line 2330
    .line 2331
    const v0, 0x7f0801c4

    .line 2332
    .line 2333
    .line 2334
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2335
    .line 2336
    .line 2337
    move-result-object v0

    .line 2338
    invoke-virtual {v7, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2339
    .line 2340
    .line 2341
    goto :goto_28

    .line 2342
    :cond_45
    const v0, 0x7f1204a4

    .line 2343
    .line 2344
    .line 2345
    invoke-virtual {v14, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2346
    .line 2347
    .line 2348
    move-result-object v0

    .line 2349
    invoke-virtual {v7, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2350
    .line 2351
    .line 2352
    const v0, 0x7f0801c5

    .line 2353
    .line 2354
    .line 2355
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2356
    .line 2357
    .line 2358
    move-result-object v0

    .line 2359
    invoke-virtual {v7, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2360
    .line 2361
    .line 2362
    :goto_28
    new-instance v0, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;

    .line 2363
    .line 2364
    const/16 v1, 0xe

    .line 2365
    .line 2366
    move-object/from16 v2, v26

    .line 2367
    .line 2368
    invoke-direct {v0, v1, v2}, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 2369
    .line 2370
    .line 2371
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2372
    .line 2373
    .line 2374
    goto :goto_2b

    .line 2375
    :cond_46
    move-object/from16 v20, v0

    .line 2376
    .line 2377
    move-object/from16 v25, v5

    .line 2378
    .line 2379
    move/from16 v16, v9

    .line 2380
    .line 2381
    move v6, v15

    .line 2382
    instance-of v0, v1, Lorg/wikipedia/notifications/NotificationActivity$NotificationSearchBarHolder;

    .line 2383
    .line 2384
    if-eqz v0, :cond_4a

    .line 2385
    .line 2386
    move-object v0, v1

    .line 2387
    check-cast v0, Lorg/wikipedia/notifications/NotificationActivity$NotificationSearchBarHolder;

    .line 2388
    .line 2389
    iget-object v1, v0, Lorg/wikipedia/notifications/NotificationActivity$NotificationSearchBarHolder;->notificationFilterCountView:Landroid/widget/TextView;

    .line 2390
    .line 2391
    iget-object v2, v0, Lorg/wikipedia/notifications/NotificationActivity$NotificationSearchBarHolder;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    .line 2392
    .line 2393
    sget v3, Lorg/wikipedia/notifications/NotificationActivity;->$r8$clinit:I

    .line 2394
    .line 2395
    invoke-virtual {v2}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 2396
    .line 2397
    .line 2398
    move-result-object v3

    .line 2399
    invoke-virtual {v3}, Lorg/wikipedia/notifications/NotificationViewModel;->excludedFiltersCount()I

    .line 2400
    .line 2401
    .line 2402
    move-result v3

    .line 2403
    if-eqz v3, :cond_47

    .line 2404
    .line 2405
    move/from16 v8, v16

    .line 2406
    .line 2407
    goto :goto_29

    .line 2408
    :cond_47
    const/4 v8, 0x0

    .line 2409
    :goto_29
    if-eqz v8, :cond_48

    .line 2410
    .line 2411
    move v12, v13

    .line 2412
    :cond_48
    if-eqz v8, :cond_49

    .line 2413
    .line 2414
    const/4 v15, 0x0

    .line 2415
    goto :goto_2a

    .line 2416
    :cond_49
    move v15, v6

    .line 2417
    :goto_2a
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2418
    .line 2419
    .line 2420
    invoke-virtual {v2}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 2421
    .line 2422
    .line 2423
    move-result-object v3

    .line 2424
    invoke-virtual {v3}, Lorg/wikipedia/notifications/NotificationViewModel;->excludedFiltersCount()I

    .line 2425
    .line 2426
    .line 2427
    move-result v3

    .line 2428
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2429
    .line 2430
    .line 2431
    move-result-object v3

    .line 2432
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2433
    .line 2434
    .line 2435
    iget-object v0, v0, Lorg/wikipedia/notifications/NotificationActivity$NotificationSearchBarHolder;->notificationFilterButton:Landroidx/appcompat/widget/AppCompatImageView;

    .line 2436
    .line 2437
    invoke-static {v2, v12}, Lokhttp3/Cache$Companion;->getThemedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 2438
    .line 2439
    .line 2440
    move-result-object v1

    .line 2441
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 2442
    .line 2443
    .line 2444
    :cond_4a
    :goto_2b
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    .line 2445
    .line 2446
    .line 2447
    move-result v0

    .line 2448
    add-int/lit8 v0, v0, -0x1

    .line 2449
    .line 2450
    move/from16 v2, p2

    .line 2451
    .line 2452
    if-ne v2, v0, :cond_4b

    .line 2453
    .line 2454
    move-object/from16 v5, v25

    .line 2455
    .line 2456
    iget-boolean v0, v5, Lorg/wikipedia/notifications/NotificationActivity;->fromContinuation:Z

    .line 2457
    .line 2458
    if-eqz v0, :cond_4b

    .line 2459
    .line 2460
    invoke-virtual {v5}, Lorg/wikipedia/notifications/NotificationActivity;->getViewModel()Lorg/wikipedia/notifications/NotificationViewModel;

    .line 2461
    .line 2462
    .line 2463
    move-result-object v0

    .line 2464
    const/4 v8, 0x0

    .line 2465
    invoke-virtual {v0, v8}, Lorg/wikipedia/notifications/NotificationViewModel;->fetchAndSave(Z)V

    .line 2466
    .line 2467
    .line 2468
    :cond_4b
    :goto_2c
    return-void

    .line 2469
    :pswitch_d
    instance-of v0, v1, Lorg/wikipedia/diff/DiffUtil$DiffLineHolder;

    .line 2470
    .line 2471
    if-eqz v0, :cond_4c

    .line 2472
    .line 2473
    move-object v0, v1

    .line 2474
    check-cast v0, Lorg/wikipedia/diff/DiffUtil$DiffLineHolder;

    .line 2475
    .line 2476
    check-cast v5, Ljava/util/List;

    .line 2477
    .line 2478
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2479
    .line 2480
    .line 2481
    move-result-object v3

    .line 2482
    check-cast v3, Lorg/wikipedia/diff/DiffUtil$DiffLine;

    .line 2483
    .line 2484
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2485
    .line 2486
    .line 2487
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2488
    .line 2489
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2490
    .line 2491
    .line 2492
    check-cast v0, Lorg/wikipedia/diff/DiffLineView;

    .line 2493
    .line 2494
    invoke-virtual {v0, v3}, Lorg/wikipedia/diff/DiffLineView;->setItem(Lorg/wikipedia/diff/DiffUtil$DiffLine;)V

    .line 2495
    .line 2496
    .line 2497
    :cond_4c
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2498
    .line 2499
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2500
    .line 2501
    .line 2502
    move-result-object v1

    .line 2503
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2504
    .line 2505
    .line 2506
    return-void

    .line 2507
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->$r8$classId:I

    .line 8
    .line 9
    const/high16 v4, 0x41800000    # 16.0f

    .line 10
    .line 11
    const/4 v5, -0x2

    .line 12
    const/4 v6, -0x1

    .line 13
    const/4 v7, 0x1

    .line 14
    const-string v8, "Missing required view with ID: "

    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    iget-object v10, v0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->diffLines:Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    packed-switch v3, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    new-instance v0, Lorg/wikipedia/views/UserMentionInputView$UserNameViewHolder;

    .line 24
    .line 25
    check-cast v10, Lorg/wikipedia/views/UserMentionInputView;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const v3, 0x7f0c0314

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v10, v1}, Lorg/wikipedia/views/UserMentionInputView$UserNameViewHolder;-><init>(Lorg/wikipedia/views/UserMentionInputView;Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :pswitch_0
    new-instance v0, Landroid/widget/TextView;

    .line 50
    .line 51
    check-cast v10, Lorg/wikipedia/views/EditNoticesDialog;

    .line 52
    .line 53
    iget-object v1, v10, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 56
    .line 57
    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 58
    .line 59
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 63
    .line 64
    invoke-direct {v1, v6, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v10, Lorg/wikipedia/views/EditNoticesDialog;->movementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v4}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-static {v4}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-virtual {v0, v11, v1, v11, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Lorg/wikipedia/views/EditNoticesDialog$DefaultViewHolder;

    .line 87
    .line 88
    invoke-direct {v1, v10, v0}, Lorg/wikipedia/views/EditNoticesDialog$DefaultViewHolder;-><init>(Lorg/wikipedia/views/EditNoticesDialog;Landroid/widget/TextView;)V

    .line 89
    .line 90
    .line 91
    return-object v1

    .line 92
    :pswitch_1
    new-instance v2, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;

    .line 93
    .line 94
    check-cast v10, Lorg/wikipedia/views/CustomDatePicker;

    .line 95
    .line 96
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    const v4, 0x7f0c05bc

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v4, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const v3, 0x7f090197

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    check-cast v4, Landroid/widget/ImageView;

    .line 119
    .line 120
    if-eqz v4, :cond_0

    .line 121
    .line 122
    const v3, 0x7f09019a

    .line 123
    .line 124
    .line 125
    invoke-static {v1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    check-cast v5, Landroid/widget/TextView;

    .line 130
    .line 131
    if-eqz v5, :cond_0

    .line 132
    .line 133
    new-instance v3, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 134
    .line 135
    check-cast v1, Landroid/widget/FrameLayout;

    .line 136
    .line 137
    invoke-direct {v3, v1, v4, v5}, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 138
    .line 139
    .line 140
    invoke-direct {v2, v0, v3}, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;-><init>(Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;)V

    .line 141
    .line 142
    .line 143
    move-object v9, v2

    .line 144
    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :goto_0
    return-object v9

    .line 161
    :pswitch_2
    new-instance v0, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$EmptyViewHolder;

    .line 162
    .line 163
    check-cast v10, Lorg/wikipedia/talk/ArchivedTalkPagesActivity;

    .line 164
    .line 165
    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    const v3, 0x7f0c0308

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v3, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-direct {v0, v10, v1}, Lorg/wikipedia/talk/ArchivedTalkPagesActivity$EmptyViewHolder;-><init>(Lorg/wikipedia/talk/ArchivedTalkPagesActivity;Landroid/view/View;)V

    .line 180
    .line 181
    .line 182
    return-object v0

    .line 183
    :pswitch_3
    new-instance v0, Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;

    .line 184
    .line 185
    check-cast v10, Lorg/wikipedia/readinglist/SortReadingListsDialog;

    .line 186
    .line 187
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    const v3, 0x7f0c05eb

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v3, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    const v2, 0x7f0900e5

    .line 203
    .line 204
    .line 205
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    check-cast v3, Landroid/widget/ImageView;

    .line 210
    .line 211
    if-eqz v3, :cond_1

    .line 212
    .line 213
    const v2, 0x7f090617

    .line 214
    .line 215
    .line 216
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    check-cast v4, Landroid/widget/TextView;

    .line 221
    .line 222
    if-eqz v4, :cond_1

    .line 223
    .line 224
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    .line 225
    .line 226
    check-cast v1, Landroid/widget/LinearLayout;

    .line 227
    .line 228
    invoke-direct {v2, v1, v3, v4}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-direct {v0, v10, v2}, Lorg/wikipedia/readinglist/SortReadingListsDialog$SortItemHolder;-><init>(Lorg/wikipedia/readinglist/SortReadingListsDialog;Lokhttp3/MultipartBody$Builder;)V

    .line 232
    .line 233
    .line 234
    move-object v9, v0

    .line 235
    goto :goto_1

    .line 236
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    :goto_1
    return-object v9

    .line 252
    :pswitch_4
    check-cast v10, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 253
    .line 254
    if-nez v2, :cond_2

    .line 255
    .line 256
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;

    .line 257
    .line 258
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 259
    .line 260
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-direct {v1, v2, v11}, Lorg/wikipedia/readinglist/ReadingListItemView;-><init>(Landroid/content/Context;I)V

    .line 265
    .line 266
    .line 267
    invoke-direct {v0, v10, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lorg/wikipedia/readinglist/ReadingListItemView;)V

    .line 268
    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_2
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemHolder;

    .line 272
    .line 273
    new-instance v1, Lorg/wikipedia/views/PageItemView;

    .line 274
    .line 275
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    invoke-direct {v1, v2}, Lorg/wikipedia/views/PageItemView;-><init>(Landroid/content/Context;)V

    .line 280
    .line 281
    .line 282
    invoke-direct {v0, v10, v1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemHolder;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Lorg/wikipedia/views/PageItemView;)V

    .line 283
    .line 284
    .line 285
    :goto_2
    return-object v0

    .line 286
    :pswitch_5
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView$ReadingListItemHolder;

    .line 287
    .line 288
    check-cast v10, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;

    .line 289
    .line 290
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    const v2, 0x7f0c0313

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v2, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    const v2, 0x7f090073

    .line 306
    .line 307
    .line 308
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    move-object v13, v3

    .line 313
    check-cast v13, Landroid/widget/TextView;

    .line 314
    .line 315
    if-eqz v13, :cond_3

    .line 316
    .line 317
    const v2, 0x7f09007a

    .line 318
    .line 319
    .line 320
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    move-object v14, v3

    .line 325
    check-cast v14, Landroid/widget/TextView;

    .line 326
    .line 327
    if-eqz v14, :cond_3

    .line 328
    .line 329
    const v2, 0x7f09007f

    .line 330
    .line 331
    .line 332
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    move-object v15, v3

    .line 337
    check-cast v15, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 338
    .line 339
    if-eqz v15, :cond_3

    .line 340
    .line 341
    const v2, 0x7f0900ef

    .line 342
    .line 343
    .line 344
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    move-object/from16 v16, v3

    .line 349
    .line 350
    check-cast v16, Landroid/widget/CheckBox;

    .line 351
    .line 352
    if-eqz v16, :cond_3

    .line 353
    .line 354
    move-object v12, v1

    .line 355
    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 356
    .line 357
    new-instance v11, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 358
    .line 359
    move-object/from16 v17, v12

    .line 360
    .line 361
    invoke-direct/range {v11 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 362
    .line 363
    .line 364
    invoke-direct {v0, v10, v11}, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView$ReadingListItemHolder;-><init>(Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    .line 365
    .line 366
    .line 367
    move-object v9, v0

    .line 368
    goto :goto_3

    .line 369
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    :goto_3
    return-object v9

    .line 385
    :pswitch_6
    check-cast v10, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 386
    .line 387
    if-eqz v2, :cond_5

    .line 388
    .line 389
    if-eq v2, v7, :cond_4

    .line 390
    .line 391
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;

    .line 392
    .line 393
    new-instance v1, Lorg/wikipedia/views/PageItemView;

    .line 394
    .line 395
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    invoke-direct {v1, v2}, Lorg/wikipedia/views/PageItemView;-><init>(Landroid/content/Context;)V

    .line 400
    .line 401
    .line 402
    invoke-direct {v0, v10, v1}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/views/PageItemView;)V

    .line 403
    .line 404
    .line 405
    goto :goto_4

    .line 406
    :cond_4
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 407
    .line 408
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-direct {v0, v1, v11}, Lorg/wikipedia/readinglist/ReadingListItemView;-><init>(Landroid/content/Context;I)V

    .line 413
    .line 414
    .line 415
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;

    .line 416
    .line 417
    invoke-direct {v1, v10, v0}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;-><init>(Lorg/wikipedia/readinglist/ReadingListFragment;Lorg/wikipedia/readinglist/ReadingListItemView;)V

    .line 418
    .line 419
    .line 420
    move-object v0, v1

    .line 421
    goto :goto_4

    .line 422
    :cond_5
    new-instance v0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$FooterViewHolder;

    .line 423
    .line 424
    iget-object v1, v10, Lorg/wikipedia/readinglist/ReadingListFragment;->headerView:Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 425
    .line 426
    if-eqz v1, :cond_6

    .line 427
    .line 428
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 429
    .line 430
    .line 431
    :goto_4
    return-object v0

    .line 432
    :cond_6
    const-string v0, "headerView"

    .line 433
    .line 434
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    throw v9

    .line 438
    :pswitch_7
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 439
    .line 440
    check-cast v10, Lorg/wikipedia/readinglist/AddToReadingListDialog;

    .line 441
    .line 442
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-direct {v0, v1, v11}, Lorg/wikipedia/readinglist/ReadingListItemView;-><init>(Landroid/content/Context;I)V

    .line 447
    .line 448
    .line 449
    new-instance v1, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;

    .line 450
    .line 451
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, v11}, Landroid/view/View;->setLongClickable(Z)V

    .line 455
    .line 456
    .line 457
    return-object v1

    .line 458
    :pswitch_8
    check-cast v10, Lorg/wikipedia/places/PlacesFilterActivity;

    .line 459
    .line 460
    if-eqz v2, :cond_9

    .line 461
    .line 462
    if-eq v2, v7, :cond_8

    .line 463
    .line 464
    new-instance v1, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterItemViewHolder;

    .line 465
    .line 466
    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    const v3, 0x7f0c05e3

    .line 471
    .line 472
    .line 473
    invoke-virtual {v2, v3, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    const v3, 0x7f0904ff

    .line 478
    .line 479
    .line 480
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    move-object v12, v4

    .line 485
    check-cast v12, Lorg/wikipedia/views/LangCodeView;

    .line 486
    .line 487
    if-eqz v12, :cond_7

    .line 488
    .line 489
    const v3, 0x7f090500

    .line 490
    .line 491
    .line 492
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    move-object v13, v4

    .line 497
    check-cast v13, Landroid/widget/ImageView;

    .line 498
    .line 499
    if-eqz v13, :cond_7

    .line 500
    .line 501
    const v3, 0x7f090501

    .line 502
    .line 503
    .line 504
    invoke-static {v2, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    move-object v14, v4

    .line 509
    check-cast v14, Landroid/widget/TextView;

    .line 510
    .line 511
    if-eqz v14, :cond_7

    .line 512
    .line 513
    new-instance v10, Lokio/internal/DefaultSocket;

    .line 514
    .line 515
    move-object v11, v2

    .line 516
    check-cast v11, Landroid/widget/LinearLayout;

    .line 517
    .line 518
    const/16 v15, 0x17

    .line 519
    .line 520
    invoke-direct/range {v10 .. v15}, Lokio/internal/DefaultSocket;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 521
    .line 522
    .line 523
    invoke-direct {v1, v10, v0}, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterItemViewHolder;-><init>(Lokio/internal/DefaultSocket;Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;)V

    .line 524
    .line 525
    .line 526
    move-object v9, v1

    .line 527
    goto :goto_5

    .line 528
    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    goto :goto_5

    .line 544
    :cond_8
    new-instance v9, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterFooterViewHolder;

    .line 545
    .line 546
    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    const v2, 0x7f0c05e4

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0, v2, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    .line 559
    .line 560
    invoke-direct {v9, v10, v0}, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterFooterViewHolder;-><init>(Lorg/wikipedia/places/PlacesFilterActivity;Landroid/view/View;)V

    .line 561
    .line 562
    .line 563
    goto :goto_5

    .line 564
    :cond_9
    new-instance v9, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterHeaderViewHolder;

    .line 565
    .line 566
    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    const v2, 0x7f0c05fb

    .line 571
    .line 572
    .line 573
    invoke-virtual {v0, v2, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    invoke-direct {v9, v10, v0}, Lorg/wikipedia/places/PlacesFilterActivity$PlacesFilterHeaderViewHolder;-><init>(Lorg/wikipedia/places/PlacesFilterActivity;Landroid/view/View;)V

    .line 581
    .line 582
    .line 583
    :goto_5
    return-object v9

    .line 584
    :pswitch_9
    new-instance v0, Lorg/wikipedia/page/tabs/TabActivity$TabViewHolder;

    .line 585
    .line 586
    check-cast v10, Lorg/wikipedia/page/tabs/TabActivity;

    .line 587
    .line 588
    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    const v3, 0x7f0c0318

    .line 593
    .line 594
    .line 595
    invoke-virtual {v2, v3, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    .line 601
    .line 602
    invoke-direct {v0, v10, v1}, Lorg/wikipedia/page/tabs/TabActivity$TabViewHolder;-><init>(Lorg/wikipedia/page/tabs/TabActivity;Landroid/view/View;)V

    .line 603
    .line 604
    .line 605
    return-object v0

    .line 606
    :pswitch_a
    new-instance v0, Landroid/widget/TextView;

    .line 607
    .line 608
    check-cast v10, Lorg/wikipedia/views/EditNoticesDialog;

    .line 609
    .line 610
    iget-object v1, v10, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 611
    .line 612
    check-cast v1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 613
    .line 614
    iget-object v2, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 615
    .line 616
    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 617
    .line 618
    .line 619
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 620
    .line 621
    invoke-direct {v2, v6, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    .line 626
    .line 627
    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 628
    .line 629
    new-instance v2, Landroid/util/TypedValue;

    .line 630
    .line 631
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    const v3, 0x7f04051a

    .line 639
    .line 640
    .line 641
    invoke-virtual {v1, v3, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 642
    .line 643
    .line 644
    move-result v1

    .line 645
    if-eqz v1, :cond_a

    .line 646
    .line 647
    goto :goto_6

    .line 648
    :cond_a
    move-object v2, v9

    .line 649
    :goto_6
    if-eqz v2, :cond_b

    .line 650
    .line 651
    iget v1, v2, Landroid/util/TypedValue;->data:I

    .line 652
    .line 653
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 654
    .line 655
    .line 656
    const/high16 v1, 0x40c00000    # 6.0f

    .line 657
    .line 658
    invoke-static {v1}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 659
    .line 660
    .line 661
    move-result v1

    .line 662
    const/high16 v2, 0x3f800000    # 1.0f

    .line 663
    .line 664
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 665
    .line 666
    .line 667
    iget-object v1, v10, Lorg/wikipedia/views/EditNoticesDialog;->movementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 668
    .line 669
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 670
    .line 671
    .line 672
    invoke-static {v4}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 673
    .line 674
    .line 675
    move-result v1

    .line 676
    invoke-static {v4}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 677
    .line 678
    .line 679
    move-result v2

    .line 680
    invoke-virtual {v0, v11, v1, v11, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 681
    .line 682
    .line 683
    new-instance v9, Lorg/wikipedia/page/issues/PageIssuesDialog$DefaultViewHolder;

    .line 684
    .line 685
    invoke-direct {v9, v10, v0}, Lorg/wikipedia/page/issues/PageIssuesDialog$DefaultViewHolder;-><init>(Lorg/wikipedia/views/EditNoticesDialog;Landroid/widget/TextView;)V

    .line 686
    .line 687
    .line 688
    goto :goto_7

    .line 689
    :cond_b
    const-string v0, "Attribute not found; ID=2130969882"

    .line 690
    .line 691
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    :goto_7
    return-object v9

    .line 695
    :pswitch_b
    if-eqz v2, :cond_13

    .line 696
    .line 697
    if-eq v2, v7, :cond_12

    .line 698
    .line 699
    const/4 v0, 0x3

    .line 700
    if-eq v2, v0, :cond_11

    .line 701
    .line 702
    const/4 v0, 0x4

    .line 703
    if-eq v2, v0, :cond_10

    .line 704
    .line 705
    new-instance v0, Lorg/wikipedia/page/customize/CustomizeToolbarFragment$ItemHolder;

    .line 706
    .line 707
    new-instance v2, Lorg/wikipedia/page/customize/CustomizeToolbarItemView;

    .line 708
    .line 709
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 710
    .line 711
    .line 712
    move-result-object v1

    .line 713
    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 721
    .line 722
    .line 723
    move-result-object v1

    .line 724
    const v3, 0x7f0c02f4

    .line 725
    .line 726
    .line 727
    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 728
    .line 729
    .line 730
    const v1, 0x7f0901db

    .line 731
    .line 732
    .line 733
    invoke-static {v2, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 734
    .line 735
    .line 736
    move-result-object v3

    .line 737
    check-cast v3, Landroid/widget/ImageView;

    .line 738
    .line 739
    if-eqz v3, :cond_f

    .line 740
    .line 741
    const v1, 0x7f090343

    .line 742
    .line 743
    .line 744
    invoke-static {v2, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 745
    .line 746
    .line 747
    move-result-object v4

    .line 748
    check-cast v4, Landroid/widget/TextView;

    .line 749
    .line 750
    if-eqz v4, :cond_f

    .line 751
    .line 752
    new-instance v1, Lorg/wikipedia/databinding/ItemCustomizeToolbarBinding;

    .line 753
    .line 754
    invoke-direct {v1, v2, v3, v4}, Lorg/wikipedia/databinding/ItemCustomizeToolbarBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 755
    .line 756
    .line 757
    iput-object v1, v2, Lorg/wikipedia/page/customize/CustomizeToolbarItemView;->binding:Lorg/wikipedia/databinding/ItemCustomizeToolbarBinding;

    .line 758
    .line 759
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 760
    .line 761
    invoke-direct {v1, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 772
    .line 773
    .line 774
    new-instance v5, Landroid/util/TypedValue;

    .line 775
    .line 776
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    const v6, 0x7f0404e7

    .line 784
    .line 785
    .line 786
    invoke-virtual {v1, v6, v5, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 787
    .line 788
    .line 789
    move-result v1

    .line 790
    if-eqz v1, :cond_c

    .line 791
    .line 792
    goto :goto_8

    .line 793
    :cond_c
    move-object v5, v9

    .line 794
    :goto_8
    if-eqz v5, :cond_e

    .line 795
    .line 796
    iget v1, v5, Landroid/util/TypedValue;->data:I

    .line 797
    .line 798
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 799
    .line 800
    .line 801
    const/4 v1, 0x2

    .line 802
    new-array v5, v1, [Landroid/view/View;

    .line 803
    .line 804
    aput-object v4, v5, v11

    .line 805
    .line 806
    aput-object v3, v5, v7

    .line 807
    .line 808
    :goto_9
    if-ge v11, v1, :cond_d

    .line 809
    .line 810
    aget-object v3, v5, v11

    .line 811
    .line 812
    sget-object v4, Lorg/wikipedia/util/ShareUtil;->TOOLBAR_ON_CLICK_LISTENER:Lorg/wikipedia/util/FeedbackUtil$$ExternalSyntheticLambda0;

    .line 813
    .line 814
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    .line 816
    .line 817
    add-int/lit8 v11, v11, 0x1

    .line 818
    .line 819
    goto :goto_9

    .line 820
    :cond_d
    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 821
    .line 822
    .line 823
    move-object v9, v0

    .line 824
    goto/16 :goto_a

    .line 825
    .line 826
    :cond_e
    const-string v0, "Attribute not found; ID=2130969831"

    .line 827
    .line 828
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    goto/16 :goto_a

    .line 832
    .line 833
    :cond_f
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    goto :goto_a

    .line 849
    :cond_10
    new-instance v9, Lorg/wikipedia/page/customize/CustomizeToolbarFragment$DescriptionViewHolder;

    .line 850
    .line 851
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 852
    .line 853
    .line 854
    move-result-object v0

    .line 855
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    const v2, 0x7f0c02f6

    .line 860
    .line 861
    .line 862
    invoke-virtual {v0, v2, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 867
    .line 868
    .line 869
    invoke-direct {v9, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 870
    .line 871
    .line 872
    goto :goto_a

    .line 873
    :cond_11
    new-instance v9, Lorg/wikipedia/page/customize/CustomizeToolbarFragment$DescriptionViewHolder;

    .line 874
    .line 875
    check-cast v10, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;

    .line 876
    .line 877
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    const v2, 0x7f0c02f9

    .line 886
    .line 887
    .line 888
    invoke-virtual {v0, v2, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 889
    .line 890
    .line 891
    move-result-object v0

    .line 892
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 893
    .line 894
    .line 895
    invoke-direct {v9, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 896
    .line 897
    .line 898
    const v1, 0x7f090582

    .line 899
    .line 900
    .line 901
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    check-cast v0, Landroid/widget/TextView;

    .line 906
    .line 907
    new-instance v1, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;

    .line 908
    .line 909
    const/16 v2, 0x10

    .line 910
    .line 911
    invoke-direct {v1, v2, v10}, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 915
    .line 916
    .line 917
    goto :goto_a

    .line 918
    :cond_12
    new-instance v9, Lorg/wikipedia/page/customize/CustomizeToolbarFragment$HeaderViewHolder;

    .line 919
    .line 920
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    const v2, 0x7f0c02f7

    .line 929
    .line 930
    .line 931
    invoke-virtual {v0, v2, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 932
    .line 933
    .line 934
    move-result-object v0

    .line 935
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 936
    .line 937
    .line 938
    invoke-direct {v9, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 939
    .line 940
    .line 941
    goto :goto_a

    .line 942
    :cond_13
    new-instance v9, Lorg/wikipedia/page/customize/CustomizeToolbarFragment$DescriptionViewHolder;

    .line 943
    .line 944
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 945
    .line 946
    .line 947
    move-result-object v0

    .line 948
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 949
    .line 950
    .line 951
    move-result-object v0

    .line 952
    const v2, 0x7f0c02f5

    .line 953
    .line 954
    .line 955
    invoke-virtual {v0, v2, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 956
    .line 957
    .line 958
    move-result-object v0

    .line 959
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 960
    .line 961
    .line 962
    invoke-direct {v9, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 963
    .line 964
    .line 965
    :goto_a
    return-object v9

    .line 966
    :pswitch_c
    check-cast v10, Lorg/wikipedia/notifications/NotificationActivity;

    .line 967
    .line 968
    if-nez v2, :cond_14

    .line 969
    .line 970
    new-instance v9, Lorg/wikipedia/notifications/NotificationActivity$NotificationSearchBarHolder;

    .line 971
    .line 972
    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 973
    .line 974
    .line 975
    move-result-object v0

    .line 976
    const v2, 0x7f0c05db

    .line 977
    .line 978
    .line 979
    invoke-virtual {v0, v2, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 984
    .line 985
    .line 986
    invoke-direct {v9, v10, v0}, Lorg/wikipedia/notifications/NotificationActivity$NotificationSearchBarHolder;-><init>(Lorg/wikipedia/notifications/NotificationActivity;Landroid/view/View;)V

    .line 987
    .line 988
    .line 989
    goto/16 :goto_b

    .line 990
    .line 991
    :cond_14
    new-instance v0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;

    .line 992
    .line 993
    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 994
    .line 995
    .line 996
    move-result-object v2

    .line 997
    const v3, 0x7f0c030a

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v2, v3, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v1

    .line 1004
    const v2, 0x7f090463

    .line 1005
    .line 1006
    .line 1007
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v3

    .line 1011
    check-cast v3, Landroid/widget/TextView;

    .line 1012
    .line 1013
    if-eqz v3, :cond_16

    .line 1014
    .line 1015
    const v2, 0x7f090464

    .line 1016
    .line 1017
    .line 1018
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v4

    .line 1022
    check-cast v4, Landroid/widget/ImageView;

    .line 1023
    .line 1024
    if-eqz v4, :cond_16

    .line 1025
    .line 1026
    const v2, 0x7f090465

    .line 1027
    .line 1028
    .line 1029
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v5

    .line 1033
    check-cast v5, Landroid/widget/ImageView;

    .line 1034
    .line 1035
    if-eqz v5, :cond_16

    .line 1036
    .line 1037
    const v2, 0x7f090466

    .line 1038
    .line 1039
    .line 1040
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v6

    .line 1044
    check-cast v6, Landroid/widget/ImageView;

    .line 1045
    .line 1046
    if-eqz v6, :cond_16

    .line 1047
    .line 1048
    const v2, 0x7f090467

    .line 1049
    .line 1050
    .line 1051
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v7

    .line 1055
    check-cast v7, Landroid/widget/TextView;

    .line 1056
    .line 1057
    if-eqz v7, :cond_16

    .line 1058
    .line 1059
    const v2, 0x7f090468

    .line 1060
    .line 1061
    .line 1062
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v11

    .line 1066
    check-cast v11, Landroid/widget/TextView;

    .line 1067
    .line 1068
    if-eqz v11, :cond_16

    .line 1069
    .line 1070
    const v2, 0x7f090469

    .line 1071
    .line 1072
    .line 1073
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v12

    .line 1077
    check-cast v12, Landroid/widget/TextView;

    .line 1078
    .line 1079
    if-eqz v12, :cond_16

    .line 1080
    .line 1081
    const v2, 0x7f09046a

    .line 1082
    .line 1083
    .line 1084
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v13

    .line 1088
    check-cast v13, Landroid/widget/TextView;

    .line 1089
    .line 1090
    if-eqz v13, :cond_16

    .line 1091
    .line 1092
    const v2, 0x7f09046b

    .line 1093
    .line 1094
    .line 1095
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v14

    .line 1099
    check-cast v14, Lorg/wikipedia/views/LangCodeView;

    .line 1100
    .line 1101
    if-eqz v14, :cond_16

    .line 1102
    .line 1103
    const v2, 0x7f09046c

    .line 1104
    .line 1105
    .line 1106
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v15

    .line 1110
    check-cast v15, Landroid/widget/FrameLayout;

    .line 1111
    .line 1112
    if-eqz v15, :cond_16

    .line 1113
    .line 1114
    const v2, 0x7f09046d

    .line 1115
    .line 1116
    .line 1117
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v16

    .line 1121
    move-object/from16 v2, v16

    .line 1122
    .line 1123
    check-cast v2, Landroid/widget/ImageView;

    .line 1124
    .line 1125
    if-eqz v2, :cond_15

    .line 1126
    .line 1127
    new-instance v8, Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 1128
    .line 1129
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1130
    .line 1131
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 1132
    .line 1133
    .line 1134
    iput-object v1, v8, Lorg/wikipedia/databinding/ItemNotificationBinding;->rootView:Ljava/lang/Object;

    .line 1135
    .line 1136
    iput-object v3, v8, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationDescription:Ljava/lang/Object;

    .line 1137
    .line 1138
    iput-object v4, v8, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemImage:Ljava/lang/Object;

    .line 1139
    .line 1140
    iput-object v5, v8, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationItemSelectedImage:Ljava/lang/Object;

    .line 1141
    .line 1142
    iput-object v6, v8, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationOverflowMenu:Ljava/lang/Object;

    .line 1143
    .line 1144
    iput-object v7, v8, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSource:Ljava/lang/Object;

    .line 1145
    .line 1146
    iput-object v11, v8, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationSubtitle:Ljava/lang/Object;

    .line 1147
    .line 1148
    iput-object v12, v8, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTime:Ljava/lang/Object;

    .line 1149
    .line 1150
    iput-object v13, v8, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationTitle:Ljava/lang/Object;

    .line 1151
    .line 1152
    iput-object v14, v8, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 1153
    .line 1154
    iput-object v15, v8, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeContainer:Ljava/lang/Object;

    .line 1155
    .line 1156
    iput-object v2, v8, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeImage:Ljava/lang/Object;

    .line 1157
    .line 1158
    invoke-direct {v0, v10, v8}, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;-><init>(Lorg/wikipedia/notifications/NotificationActivity;Lorg/wikipedia/databinding/ItemNotificationBinding;)V

    .line 1159
    .line 1160
    .line 1161
    move-object v9, v0

    .line 1162
    goto :goto_b

    .line 1163
    :cond_15
    const v2, 0x7f09046d

    .line 1164
    .line 1165
    .line 1166
    :cond_16
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v0

    .line 1170
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v0

    .line 1174
    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v0

    .line 1178
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    :goto_b
    return-object v9

    .line 1182
    :pswitch_d
    new-instance v0, Lorg/wikipedia/diff/DiffUtil$DiffLineHolder;

    .line 1183
    .line 1184
    new-instance v2, Lorg/wikipedia/diff/DiffLineView;

    .line 1185
    .line 1186
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v1

    .line 1190
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1191
    .line 1192
    .line 1193
    invoke-direct {v2, v1}, Lorg/wikipedia/diff/DiffLineView;-><init>(Landroid/content/Context;)V

    .line 1194
    .line 1195
    .line 1196
    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1197
    .line 1198
    .line 1199
    return-object v0

    .line 1200
    nop

    .line 1201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->diffLines:Ljava/lang/Object;

    .line 4
    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :sswitch_0
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    .line 10
    .line 11
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 12
    .line 13
    instance-of v0, p1, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;

    .line 18
    .line 19
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;->getView()Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->readingListItemCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lorg/wikipedia/readinglist/ReadingListItemView;->setCallback(Lorg/wikipedia/readinglist/ReadingListItemView$Callback;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemHolder;

    .line 30
    .line 31
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    check-cast p1, Lorg/wikipedia/views/PageItemView;

    .line 37
    .line 38
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment;->readingListPageItemCallback:Lorg/wikipedia/readinglist/ReadingListsFragment$OverflowCallback;

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Lorg/wikipedia/views/PageItemView;->setCallback(Lorg/wikipedia/views/PageItemView$Callback;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :sswitch_1
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 45
    .line 46
    instance-of v0, p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;

    .line 51
    .line 52
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;->getView()Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListItemCallback:Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Lorg/wikipedia/readinglist/ReadingListItemView;->setCallback(Lorg/wikipedia/readinglist/ReadingListItemView$Callback;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    instance-of v0, p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;

    .line 67
    .line 68
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    check-cast p1, Lorg/wikipedia/views/PageItemView;

    .line 74
    .line 75
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragment;->readingListPageItemCallback:Lorg/wikipedia/readinglist/ReadingListFragment$HeaderCallback;

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Lorg/wikipedia/views/PageItemView;->setCallback(Lorg/wikipedia/views/PageItemView$Callback;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_1
    return-void

    .line 81
    :sswitch_2
    check-cast p1, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;

    .line 82
    .line 83
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 89
    .line 90
    check-cast p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;

    .line 91
    .line 92
    iget-object p0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->listItemCallback:Lorg/wikipedia/readinglist/AddToReadingListDialog$showCreateListDialog$2;

    .line 93
    .line 94
    invoke-virtual {p1, p0}, Lorg/wikipedia/readinglist/ReadingListItemView;->setCallback(Lorg/wikipedia/readinglist/ReadingListItemView$Callback;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :sswitch_3
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    .line 99
    .line 100
    instance-of v0, p1, Lorg/wikipedia/page/customize/CustomizeToolbarFragment$ItemHolder;

    .line 101
    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    move-object v0, p1

    .line 105
    check-cast v0, Lorg/wikipedia/page/customize/CustomizeToolbarFragment$ItemHolder;

    .line 106
    .line 107
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    check-cast v0, Lorg/wikipedia/page/customize/CustomizeToolbarItemView;

    .line 113
    .line 114
    check-cast p0, Lorg/wikipedia/page/customize/CustomizeToolbarFragment;

    .line 115
    .line 116
    new-instance v1, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0;

    .line 117
    .line 118
    const/4 v2, 0x1

    .line 119
    invoke-direct {v1, p0, p1, v2}, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lorg/wikipedia/page/customize/CustomizeToolbarItemView;->setDragHandleTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    return-void

    .line 126
    nop

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget p0, p0, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sparse-switch p0, :sswitch_data_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :sswitch_0
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    .line 9
    .line 10
    instance-of p0, p1, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;

    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListItemHolder;->getView()Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListItemView;->setCallback(Lorg/wikipedia/readinglist/ReadingListItemView$Callback;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListsFragment$ReadingListPageItemHolder;

    .line 25
    .line 26
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    check-cast p0, Lorg/wikipedia/views/PageItemView;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lorg/wikipedia/views/PageItemView;->setCallback(Lorg/wikipedia/views/PageItemView$Callback;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :sswitch_1
    instance-of p0, p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;

    .line 42
    .line 43
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListItemHolder;->getView()Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListItemView;->setCallback(Lorg/wikipedia/readinglist/ReadingListItemView$Callback;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    instance-of p0, p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;

    .line 52
    .line 53
    if-eqz p0, :cond_2

    .line 54
    .line 55
    check-cast p1, Lorg/wikipedia/readinglist/ReadingListFragment$ReadingListPageItemHolder;

    .line 56
    .line 57
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    check-cast p0, Lorg/wikipedia/views/PageItemView;

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lorg/wikipedia/views/PageItemView;->setCallback(Lorg/wikipedia/views/PageItemView$Callback;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_1
    return-void

    .line 68
    :sswitch_2
    check-cast p1, Lorg/wikipedia/readinglist/AddToReadingListDialog$ReadingListItemHolder;

    .line 69
    .line 70
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListItemView;

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lorg/wikipedia/readinglist/ReadingListItemView;->setCallback(Lorg/wikipedia/readinglist/ReadingListItemView$Callback;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :sswitch_3
    check-cast p1, Lorg/wikipedia/views/DefaultViewHolder;

    .line 82
    .line 83
    instance-of p0, p1, Lorg/wikipedia/page/customize/CustomizeToolbarFragment$ItemHolder;

    .line 84
    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    check-cast p1, Lorg/wikipedia/page/customize/CustomizeToolbarFragment$ItemHolder;

    .line 88
    .line 89
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    check-cast p0, Lorg/wikipedia/page/customize/CustomizeToolbarItemView;

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lorg/wikipedia/page/customize/CustomizeToolbarItemView;->setDragHandleTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    return-void

    .line 100
    nop

    .line 101
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

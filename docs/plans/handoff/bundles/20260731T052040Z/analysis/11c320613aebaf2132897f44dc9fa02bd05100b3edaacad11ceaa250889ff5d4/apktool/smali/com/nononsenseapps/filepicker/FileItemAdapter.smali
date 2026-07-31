.class public final Lcom/nononsenseapps/filepicker/FileItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public mList:Ljava/lang/Object;

.field public final mLogic:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->$r8$classId:I

    .line 113
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->mList:Ljava/lang/Object;

    .line 115
    iput-object p1, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->mLogic:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/settings/SelectKioskFragment;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->mList:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/util/Vector;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->mLogic:Ljava/lang/Object;

    .line 15
    .line 16
    sget-object v1, Lorg/schabi/newpipe/extractor/ServiceList;->SERVICES:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 33
    .line 34
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/StreamingService;->getKioskList()Lorg/jsoup/parser/TokenData;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget v4, v2, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 39
    .line 40
    iget-object v3, v3, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_0

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Ljava/lang/String;

    .line 63
    .line 64
    const v6, 0x7f130456

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    iget-object v7, v2, Lorg/schabi/newpipe/extractor/StreamingService;->serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    .line 72
    .line 73
    iget-object v7, v7, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->name:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-static {v8, v5}, Lkotlin/ranges/RangesKt;->getTranslatedKioskName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    const/4 v9, 0x2

    .line 84
    new-array v9, v9, [Ljava/lang/Object;

    .line 85
    .line 86
    const/4 v10, 0x0

    .line 87
    aput-object v7, v9, v10

    .line 88
    .line 89
    aput-object v8, v9, v0

    .line 90
    .line 91
    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    iget-object v7, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->mLogic:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v7, Ljava/util/Vector;

    .line 98
    .line 99
    new-instance v8, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;

    .line 100
    .line 101
    invoke-static {v4}, Lorg/schabi/newpipe/util/ServiceHelper;->getIcon(I)I

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    invoke-direct {v8, v9, v4, v5, v6}, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->mLogic:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/util/Vector;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    iget-object p0, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->mList:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Landroidx/recyclerview/widget/SortedList;

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/SortedList;->mSize:I

    .line 24
    .line 25
    add-int/lit8 p0, p0, 0x1

    .line 26
    .line 27
    :goto_0
    return p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    sub-int/2addr p1, v0

    .line 17
    iget-object v1, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->mLogic:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->mList:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Landroidx/recyclerview/widget/SortedList;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v1, p0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->isCheckable(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    const/4 p0, 0x2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move p0, v0

    .line 38
    :goto_0
    return p0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->mLogic:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;

    .line 9
    .line 10
    check-cast v1, Ljava/util/Vector;

    .line 11
    .line 12
    invoke-virtual {v1, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;

    .line 17
    .line 18
    iget-object v0, p1, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;->titleView:Landroid/widget/TextView;

    .line 19
    .line 20
    iget-object v1, p2, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;->kioskName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p1, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->mList:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lorg/schabi/newpipe/settings/SelectKioskFragment;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget v2, p2, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$Entry;->icon:I

    .line 36
    .line 37
    invoke-static {v1, v2}, Lokhttp3/Cookie$Companion;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p1, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;->view:Landroid/view/View;

    .line 45
    .line 46
    new-instance v0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;

    .line 47
    .line 48
    const/16 v1, 0xe

    .line 49
    .line 50
    invoke-direct {v0, p0, p2, v1}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$$ExternalSyntheticLambda42;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_0
    check-cast v1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;

    .line 58
    .line 59
    if-nez p2, :cond_0

    .line 60
    .line 61
    check-cast p1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$HeaderViewHolder;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iget-object p0, p1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$HeaderViewHolder;->text:Landroid/widget/TextView;

    .line 67
    .line 68
    const-string p1, ".."

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_0
    const/4 v0, 0x1

    .line 75
    sub-int/2addr p2, v0

    .line 76
    check-cast p1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$DirViewHolder;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->mList:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p0, Landroidx/recyclerview/widget/SortedList;

    .line 81
    .line 82
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iput-object p0, p1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$DirViewHolder;->file:Ljava/lang/Object;

    .line 90
    .line 91
    iget-object p2, p1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$DirViewHolder;->icon:Landroid/view/View;

    .line 92
    .line 93
    invoke-virtual {v1, p0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->isDir(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    const/4 v3, 0x0

    .line 98
    if-eqz v2, :cond_1

    .line 99
    .line 100
    move v2, v3

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    const/16 v2, 0x8

    .line 103
    .line 104
    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object p2, p1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$DirViewHolder;->text:Landroid/widget/TextView;

    .line 108
    .line 109
    invoke-virtual {v1, p0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->getName(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, p0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->isCheckable(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-eqz p2, :cond_3

    .line 121
    .line 122
    iget-object p2, v1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCheckedItems:Ljava/util/HashSet;

    .line 123
    .line 124
    invoke-virtual {p2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    iget-object p2, v1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCheckedVisibleViewHolders:Ljava/util/HashSet;

    .line 129
    .line 130
    if-eqz p0, :cond_2

    .line 131
    .line 132
    check-cast p1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$CheckableViewHolder;

    .line 133
    .line 134
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    iget-object p0, p1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$CheckableViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 138
    .line 139
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    check-cast p1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$CheckableViewHolder;

    .line 147
    .line 148
    iget-object p0, p1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment$CheckableViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 149
    .line 150
    invoke-virtual {p0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 151
    .line 152
    .line 153
    :cond_3
    :goto_1
    return-void

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const p2, 0x7f0d00f8

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;-><init>(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :pswitch_0
    iget-object p0, p0, Lcom/nononsenseapps/filepicker/FileItemAdapter;->mLogic:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;

    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

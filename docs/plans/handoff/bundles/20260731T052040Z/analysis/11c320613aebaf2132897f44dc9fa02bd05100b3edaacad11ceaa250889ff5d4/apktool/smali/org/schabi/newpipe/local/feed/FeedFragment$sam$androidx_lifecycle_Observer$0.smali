.class public final synthetic Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic function:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;->function:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;->function:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    instance-of p0, p1, Landroidx/lifecycle/Observer;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    instance-of p0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    check-cast v2, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 21
    .line 22
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eq v2, p0, :cond_1

    .line 27
    .line 28
    :cond_0
    move v1, v3

    .line 29
    :cond_1
    return v1

    .line 30
    :pswitch_0
    instance-of v0, p1, Landroidx/lifecycle/Observer;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;->getFunctionDelegate()Lkotlin/Function;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 43
    .line 44
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    :cond_2
    return v3

    .line 53
    :pswitch_1
    instance-of v0, p1, Landroidx/lifecycle/Observer;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;->getFunctionDelegate()Lkotlin/Function;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 66
    .line 67
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    :cond_3
    return v3

    .line 76
    :pswitch_2
    instance-of p0, p1, Landroidx/lifecycle/Observer;

    .line 77
    .line 78
    if-eqz p0, :cond_4

    .line 79
    .line 80
    instance-of p0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 81
    .line 82
    if-eqz p0, :cond_4

    .line 83
    .line 84
    check-cast v2, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 85
    .line 86
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 87
    .line 88
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    if-eq v2, p0, :cond_5

    .line 93
    .line 94
    :cond_4
    move v1, v3

    .line 95
    :cond_5
    return v1

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 8

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;->function:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Lkotlin/jvm/internal/FunctionReferenceImpl;

    .line 12
    .line 13
    move-object v4, p0

    .line 14
    check-cast v4, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;

    .line 15
    .line 16
    const-string v6, "handleGroups(Ljava/util/List;)V"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v1, 0x1

    .line 20
    const-class v3, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;

    .line 21
    .line 22
    const-string v5, "handleGroups"

    .line 23
    .line 24
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :pswitch_1
    new-instance v1, Lkotlin/jvm/internal/FunctionReferenceImpl;

    .line 29
    .line 30
    move-object v5, p0

    .line 31
    check-cast v5, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 32
    .line 33
    const-string v7, "handleGroup(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V"

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v2, 0x1

    .line 37
    const-class v4, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 38
    .line 39
    const-string v6, "handleGroup"

    .line 40
    .line 41
    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReference;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :pswitch_2
    check-cast p0, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    return-object p0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;->function:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;->getFunctionDelegate()Lkotlin/Function;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :pswitch_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;->getFunctionDelegate()Lkotlin/Function;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :pswitch_2
    check-cast v1, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;->function:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p1, Ljava/util/List;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    check-cast p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;

    .line 20
    .line 21
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupOrderedIdList:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v1, 0xa

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupOrderedIdList:Ljava/util/ArrayList;

    .line 32
    .line 33
    new-instance v2, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    .line 57
    .line 58
    iget-wide v4, v4, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->uid:J

    .line 59
    .line 60
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsSortKt$special$$inlined$thenBy$1;

    .line 73
    .line 74
    const/4 v2, 0x4

    .line 75
    invoke-direct {v0, p0, v2}, Landroidx/compose/ui/semantics/SemanticsSortKt$special$$inlined$thenBy$1;-><init>(Ljava/lang/Object;I)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :goto_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 83
    .line 84
    new-instance v2, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    .line 108
    .line 109
    new-instance v3, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;

    .line 110
    .line 111
    iget-object v4, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 112
    .line 113
    invoke-direct {v3, v1, v4}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;-><init>(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;Landroidx/recyclerview/widget/ItemTouchHelper;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    new-instance p0, Ljava/util/ArrayList;

    .line 124
    .line 125
    iget-object p1, v0, Lcom/xwray/groupie/GroupAdapter;->groups:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    .line 129
    .line 130
    new-instance p1, Lcom/xwray/groupie/DiffCallback;

    .line 131
    .line 132
    invoke-direct {p1, p0, v2}, Lcom/xwray/groupie/DiffCallback;-><init>(Ljava/util/ArrayList;Ljava/util/Collection;)V

    .line 133
    .line 134
    .line 135
    const/4 p0, 0x1

    .line 136
    invoke-static {p1, p0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {v0, v2}, Lcom/xwray/groupie/GroupAdapter;->setNewGroups(Ljava/util/Collection;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, v0, Lcom/xwray/groupie/GroupAdapter;->diffUtilCallbacks:Lokhttp3/ConnectionPool;

    .line 144
    .line 145
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_1
    check-cast p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;

    .line 150
    .line 151
    check-cast p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 152
    .line 153
    if-eqz p1, :cond_3

    .line 154
    .line 155
    iget-object v0, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 156
    .line 157
    if-nez v0, :cond_4

    .line 158
    .line 159
    :cond_3
    sget-object v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->ALL:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 160
    .line 161
    :cond_4
    if-eqz p1, :cond_5

    .line 162
    .line 163
    iget-object v1, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->name:Ljava/lang/String;

    .line 164
    .line 165
    if-nez v1, :cond_6

    .line 166
    .line 167
    :cond_5
    const-string v1, ""

    .line 168
    .line 169
    :cond_6
    if-eqz p1, :cond_7

    .line 170
    .line 171
    iget-object v2, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_7
    const/4 v2, 0x0

    .line 175
    :goto_3
    iput-object v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 176
    .line 177
    if-eqz p1, :cond_8

    .line 178
    .line 179
    iget-wide v2, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->sortOrder:J

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_8
    const-wide/16 v2, -0x1

    .line 183
    .line 184
    :goto_4
    iput-wide v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupSortOrder:J

    .line 185
    .line 186
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 187
    .line 188
    if-nez p1, :cond_9

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_9
    move-object v0, p1

    .line 192
    :goto_5
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconPreview:Landroid/widget/ImageButton;

    .line 198
    .line 199
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getDrawableRes()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 212
    .line 213
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    if-eqz p1, :cond_a

    .line 218
    .line 219
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_b

    .line 224
    .line 225
    :cond_a
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 226
    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 231
    .line 232
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    .line 234
    .line 235
    :cond_b
    return-void

    .line 236
    :pswitch_2
    check-cast p0, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 237
    .line 238
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    nop

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

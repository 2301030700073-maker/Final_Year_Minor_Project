.class public final Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;
.super Landroidx/recyclerview/widget/DiffUtil;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $newList:Ljava/util/List;

.field public final synthetic $prevList:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;->$prevList:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;->$newList:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListsFragment;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;->$r8$classId:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;->$newList:Ljava/util/List;

    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;->$prevList:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final areContentsTheSame(II)Z
    .locals 4

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;->$prevList:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;->$newList:Ljava/util/List;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 11
    .line 12
    iget-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-le v0, p1, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-gt v0, p2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    instance-of v0, v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 47
    .line 48
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    instance-of p2, p0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 56
    .line 57
    if-eqz p2, :cond_1

    .line 58
    .line 59
    iget-wide v0, p1, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 60
    .line 61
    check-cast p0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 62
    .line 63
    iget-wide v2, p0, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 64
    .line 65
    cmp-long p2, v0, v2

    .line 66
    .line 67
    if-nez p2, :cond_1

    .line 68
    .line 69
    iget-object p2, p1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    iget-object v0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-ne p2, v0, :cond_1

    .line 82
    .line 83
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->getNumPagesOffline()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->getNumPagesOffline()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-ne p2, v0, :cond_1

    .line 92
    .line 93
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_1

    .line 106
    .line 107
    iget-object p1, p1, Lorg/wikipedia/readinglist/database/ReadingList;->description:Ljava/lang/String;

    .line 108
    .line 109
    iget-object p0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->description:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-eqz p0, :cond_1

    .line 116
    .line 117
    const/4 p0, 0x1

    .line 118
    goto :goto_1

    .line 119
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 120
    :goto_1
    return p0

    .line 121
    :pswitch_0
    check-cast v1, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 128
    .line 129
    iget-object p1, p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 130
    .line 131
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 136
    .line 137
    iget-object p0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    return p0

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final areItemsTheSame(II)Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;->$prevList:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;->$newList:Ljava/util/List;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 11
    .line 12
    iget-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-le v0, p1, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-gt v0, p2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    instance-of v0, v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    instance-of v0, v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, v1, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 55
    .line 56
    iget-wide v0, p1, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 57
    .line 58
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    check-cast p0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 66
    .line 67
    iget-wide p0, p0, Lorg/wikipedia/readinglist/database/ReadingList;->id:J

    .line 68
    .line 69
    cmp-long p0, v0, p0

    .line 70
    .line 71
    if-nez p0, :cond_1

    .line 72
    .line 73
    const/4 p0, 0x1

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 76
    :goto_1
    return p0

    .line 77
    :pswitch_0
    check-cast v1, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    return p0

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getNewListSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;->$newList:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;->$newList:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getOldListSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;->$newList:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;->$prevList:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

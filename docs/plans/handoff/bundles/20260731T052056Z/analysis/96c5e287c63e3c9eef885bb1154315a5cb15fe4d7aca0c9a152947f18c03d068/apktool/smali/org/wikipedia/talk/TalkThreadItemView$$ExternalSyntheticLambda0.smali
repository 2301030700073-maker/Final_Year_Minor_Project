.class public final synthetic Lorg/wikipedia/talk/TalkThreadItemView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/talk/TalkThreadItemView;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/TalkThreadItemView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/TalkThreadItemView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/TalkThreadItemView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/talk/TalkThreadItemView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkThreadItemView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "item"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object p0, p0, Lorg/wikipedia/talk/TalkThreadItemView$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/talk/TalkThreadItemView;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/wikipedia/talk/TalkThreadItemView;->callback:Lorg/wikipedia/talk/TalkThreadItemView$Callback;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lorg/wikipedia/talk/TalkThreadItemView;->item:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    check-cast v0, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;

    .line 24
    .line 25
    iget-object v4, v0, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 26
    .line 27
    new-instance v5, Lorg/wikipedia/page/PageTitle;

    .line 28
    .line 29
    sget v0, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 30
    .line 31
    invoke-virtual {v4}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 36
    .line 37
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 38
    .line 39
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0}, Lorg/wikipedia/staticdata/UserAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object p0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->author:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v4}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v1, v1, Lorg/wikipedia/talk/TalkTopicViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 52
    .line 53
    iget-object v1, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 54
    .line 55
    invoke-direct {v5, v0, p0, v1}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    xor-int/lit8 v6, p0, 0x1

    .line 63
    .line 64
    sget-object v8, Lorg/wikipedia/Constants$InvokeSource;->TALK_TOPIC_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 65
    .line 66
    const/4 v11, 0x0

    .line 67
    const/16 v12, 0x1c0

    .line 68
    .line 69
    const/16 v9, 0x1f

    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    move-object v7, p1

    .line 73
    invoke-static/range {v4 .. v12}, Lorg/wikipedia/talk/UserTalkPopupHelper;->show$default(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/page/PageTitle;ZLandroid/view/View;Lorg/wikipedia/Constants$InvokeSource;ILjava/lang/Long;Ljava/lang/Integer;I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v1

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/talk/TalkThreadItemView;->callback:Lorg/wikipedia/talk/TalkThreadItemView$Callback;

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget-object v0, p0, Lorg/wikipedia/talk/TalkThreadItemView;->item:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 87
    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    check-cast p1, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;

    .line 91
    .line 92
    iget-object p1, p1, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 93
    .line 94
    sget v1, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 95
    .line 96
    invoke-virtual {p1}, Lorg/wikipedia/talk/TalkTopicActivity;->getViewModel()Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    iget-object v4, v1, Lorg/wikipedia/talk/TalkTopicViewModel;->flattenedThreadItems:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    .line 109
    .line 110
    iget-boolean v5, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->isExpanded:Z

    .line 111
    .line 112
    xor-int/2addr v5, v3

    .line 113
    iput-boolean v5, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->isExpanded:Z

    .line 114
    .line 115
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkTopicViewModel;->updateFlattenedThreadItems()V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;

    .line 119
    .line 120
    invoke-direct {v0, v2, v4}, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;-><init>(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff$1(Landroidx/recyclerview/widget/DiffUtil;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v1, p1, Lorg/wikipedia/talk/TalkTopicActivity;->threadAdapter:Lorg/wikipedia/talk/TalkTopicActivity$HeaderItemAdapter;

    .line 128
    .line 129
    new-instance v2, Lcoil3/memory/MemoryCacheService;

    .line 130
    .line 131
    invoke-direct {v2, v3, v1}, Lcoil3/memory/MemoryCacheService;-><init>(ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v1

    .line 145
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkThreadItemView;->updateExpandedState()V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_1
    iget-object p1, p0, Lorg/wikipedia/talk/TalkThreadItemView;->callback:Lorg/wikipedia/talk/TalkThreadItemView$Callback;

    .line 150
    .line 151
    if-eqz p1, :cond_5

    .line 152
    .line 153
    iget-object p0, p0, Lorg/wikipedia/talk/TalkThreadItemView;->item:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 154
    .line 155
    if-eqz p0, :cond_4

    .line 156
    .line 157
    check-cast p1, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;

    .line 158
    .line 159
    iget-object p1, p1, Lorg/wikipedia/talk/TalkTopicActivity$TalkReplyHolder;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 160
    .line 161
    sget v0, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 162
    .line 163
    invoke-virtual {p1, p0, v1, v1}, Lorg/wikipedia/talk/TalkTopicActivity;->startReplyActivity(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v1

    .line 171
    :cond_5
    :goto_2
    return-void

    .line 172
    nop

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

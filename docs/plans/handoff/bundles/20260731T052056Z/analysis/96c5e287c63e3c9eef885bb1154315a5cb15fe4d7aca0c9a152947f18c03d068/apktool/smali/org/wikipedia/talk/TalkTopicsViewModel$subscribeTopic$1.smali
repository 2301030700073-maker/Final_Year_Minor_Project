.class public final Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $commentName:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $subscribed:Z

.field public label:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 16
    iput p5, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$subscribed:Z

    iput-object p3, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$commentName:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 15
    iput p4, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$commentName:Ljava/lang/Object;

    iput-boolean p2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$subscribed:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/talk/TalkTopicsViewModel;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$commentName:Ljava/lang/Object;

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$subscribed:Z

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$r8$classId:I

    .line 17
    iput-boolean p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$subscribed:Z

    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$commentName:Ljava/lang/Object;

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(ZLorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$r8$classId:I

    .line 18
    iput-boolean p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$subscribed:Z

    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$commentName:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$r8$classId:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$subscribed:Z

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$commentName:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 11
    .line 12
    check-cast v2, Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 13
    .line 14
    const/16 v0, 0xa

    .line 15
    .line 16
    invoke-direct {p0, v2, v1, p2, v0}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;-><init>(Ljava/lang/Object;ZLkotlin/coroutines/Continuation;I)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_0
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 23
    .line 24
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 25
    .line 26
    move-object v4, p1

    .line 27
    check-cast v4, Lorg/wikipedia/page/PageTitle;

    .line 28
    .line 29
    move-object v6, v2

    .line 30
    check-cast v6, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 31
    .line 32
    const/16 v8, 0x9

    .line 33
    .line 34
    iget-boolean v5, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$subscribed:Z

    .line 35
    .line 36
    move-object v7, p2

    .line 37
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 38
    .line 39
    .line 40
    return-object v3

    .line 41
    :pswitch_1
    move-object v8, p2

    .line 42
    new-instance p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 43
    .line 44
    check-cast v2, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 45
    .line 46
    invoke-direct {p0, v1, v2, v8}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;-><init>(ZLorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;Lkotlin/coroutines/Continuation;)V

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_2
    move-object v8, p2

    .line 51
    new-instance v4, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 52
    .line 53
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 54
    .line 55
    move-object v5, p1

    .line 56
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 57
    .line 58
    move-object v7, v2

    .line 59
    check-cast v7, Landroidx/appcompat/app/AppCompatActivity;

    .line 60
    .line 61
    const/4 v9, 0x7

    .line 62
    iget-boolean v6, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$subscribed:Z

    .line 63
    .line 64
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 65
    .line 66
    .line 67
    return-object v4

    .line 68
    :pswitch_3
    move-object v8, p2

    .line 69
    new-instance v4, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 70
    .line 71
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 72
    .line 73
    move-object v5, p1

    .line 74
    check-cast v5, Ljava/util/List;

    .line 75
    .line 76
    move-object v7, v2

    .line 77
    check-cast v7, Landroidx/appcompat/app/AppCompatActivity;

    .line 78
    .line 79
    const/4 v9, 0x6

    .line 80
    iget-boolean v6, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$subscribed:Z

    .line 81
    .line 82
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 83
    .line 84
    .line 85
    return-object v4

    .line 86
    :pswitch_4
    move-object v8, p2

    .line 87
    new-instance p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 88
    .line 89
    check-cast v2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 90
    .line 91
    const/4 p2, 0x5

    .line 92
    invoke-direct {p0, v2, v1, v8, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;-><init>(Ljava/lang/Object;ZLkotlin/coroutines/Continuation;I)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 96
    .line 97
    return-object p0

    .line 98
    :pswitch_5
    move-object v8, p2

    .line 99
    new-instance p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 100
    .line 101
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 102
    .line 103
    const/4 p1, 0x4

    .line 104
    invoke-direct {p0, v2, v1, v8, p1}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;-><init>(Ljava/lang/Object;ZLkotlin/coroutines/Continuation;I)V

    .line 105
    .line 106
    .line 107
    return-object p0

    .line 108
    :pswitch_6
    move-object v8, p2

    .line 109
    new-instance p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 110
    .line 111
    check-cast v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 112
    .line 113
    const/4 p2, 0x3

    .line 114
    invoke-direct {p0, v2, v1, v8, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;-><init>(Ljava/lang/Object;ZLkotlin/coroutines/Continuation;I)V

    .line 115
    .line 116
    .line 117
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 118
    .line 119
    return-object p0

    .line 120
    :pswitch_7
    move-object v8, p2

    .line 121
    new-instance p1, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 122
    .line 123
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 126
    .line 127
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 128
    .line 129
    invoke-direct {p1, v1, p0, v2, v8}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 130
    .line 131
    .line 132
    return-object p1

    .line 133
    :pswitch_8
    move-object v8, p2

    .line 134
    new-instance v4, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 135
    .line 136
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 137
    .line 138
    move-object v5, p1

    .line 139
    check-cast v5, Landroidx/compose/animation/core/Animatable;

    .line 140
    .line 141
    move-object v7, v2

    .line 142
    check-cast v7, Landroidx/compose/animation/core/SpringSpec;

    .line 143
    .line 144
    const/4 v9, 0x1

    .line 145
    iget-boolean v6, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$subscribed:Z

    .line 146
    .line 147
    invoke-direct/range {v4 .. v9}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;-><init>(Ljava/lang/Object;ZLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 148
    .line 149
    .line 150
    return-object v4

    .line 151
    :pswitch_9
    move-object v8, p2

    .line 152
    new-instance p1, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 153
    .line 154
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 157
    .line 158
    check-cast v2, Ljava/lang/String;

    .line 159
    .line 160
    invoke-direct {p1, p0, v2, v1, v8}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;-><init>(Lorg/wikipedia/talk/TalkTopicsViewModel;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    .line 161
    .line 162
    .line 163
    return-object p1

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :pswitch_8
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 116
    .line 117
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    :pswitch_9
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;

    .line 127
    .line 128
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget v0, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$r8$classId:I

    .line 4
    .line 5
    const v1, 0x7f100022

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x2

    .line 10
    iget-boolean v4, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$subscribed:Z

    .line 11
    .line 12
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    iget-object v6, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$commentName:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v9, 0x1

    .line 19
    const/4 v10, 0x0

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v6, Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 24
    .line 25
    iget-object v0, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 28
    .line 29
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v2, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    if-ne v2, v9, :cond_0

    .line 36
    .line 37
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    move-object v8, v10

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v2, v6, Lorg/wikipedia/watchlist/WatchlistViewModel;->watchlistItems:Ljava/util/ArrayList;

    .line 55
    .line 56
    iget-object v2, v6, Lorg/wikipedia/watchlist/WatchlistViewModel;->displayLanguages:Ljava/util/ArrayList;

    .line 57
    .line 58
    new-instance v5, Ljava/util/ArrayList;

    .line 59
    .line 60
    const/16 v11, 0xa

    .line 61
    .line 62
    invoke-static {v2, v11}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    if-eqz v11, :cond_2

    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    check-cast v11, Ljava/lang/String;

    .line 84
    .line 85
    new-instance v12, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 86
    .line 87
    const/16 v13, 0xd

    .line 88
    .line 89
    invoke-direct {v12, v11, v6, v10, v13}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 90
    .line 91
    .line 92
    const/4 v11, 0x3

    .line 93
    invoke-static {v0, v10, v12, v11}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    iput-object v10, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 102
    .line 103
    iput v9, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 104
    .line 105
    invoke-static {v5, v7}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/List;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-ne v0, v1, :cond_3

    .line 110
    .line 111
    move-object v8, v1

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    :goto_1
    iget-object v0, v6, Lorg/wikipedia/watchlist/WatchlistViewModel;->watchlistItems:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-le v1, v9, :cond_4

    .line 120
    .line 121
    new-instance v1, Lorg/wikipedia/search/SearchResultsViewModel$Companion$buildList$lambda$0$$inlined$sortedBy$1;

    .line 122
    .line 123
    invoke-direct {v1, v3}, Lorg/wikipedia/search/SearchResultsViewModel$Companion$buildList$lambda$0$$inlined$sortedBy$1;-><init>(I)V

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    invoke-virtual {v6, v4}, Lorg/wikipedia/watchlist/WatchlistViewModel;->updateList(Z)V

    .line 130
    .line 131
    .line 132
    :goto_2
    return-object v8

    .line 133
    :pswitch_0
    iget-object v0, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 136
    .line 137
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 138
    .line 139
    iget v1, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 140
    .line 141
    if-eqz v1, :cond_7

    .line 142
    .line 143
    if-eq v1, v9, :cond_6

    .line 144
    .line 145
    if-ne v1, v3, :cond_5

    .line 146
    .line 147
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    move-object/from16 v0, p1

    .line 151
    .line 152
    goto :goto_7

    .line 153
    :cond_5
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    move-object v0, v10

    .line 157
    goto :goto_7

    .line 158
    :cond_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    move-object/from16 v1, p1

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 168
    .line 169
    iget-object v1, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 170
    .line 171
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    iput v9, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 176
    .line 177
    invoke-interface {v1, v7}, Lorg/wikipedia/dataclient/Service;->getWatchToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    if-ne v1, v8, :cond_8

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_8
    :goto_3
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 185
    .line 186
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 187
    .line 188
    if-eqz v1, :cond_a

    .line 189
    .line 190
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->tokens:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;

    .line 191
    .line 192
    if-eqz v1, :cond_9

    .line 193
    .line 194
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Tokens;->watch:Ljava/lang/String;

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_9
    move-object v1, v10

    .line 198
    :goto_4
    move-object v5, v1

    .line 199
    goto :goto_5

    .line 200
    :cond_a
    move-object v5, v10

    .line 201
    :goto_5
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 202
    .line 203
    iget-object v1, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 204
    .line 205
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    if-eqz v4, :cond_b

    .line 210
    .line 211
    new-instance v10, Ljava/lang/Integer;

    .line 212
    .line 213
    invoke-direct {v10, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 214
    .line 215
    .line 216
    :cond_b
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v6, Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 221
    .line 222
    invoke-virtual {v6}, Lorg/wikipedia/watchlist/WatchlistExpiry;->getExpiry()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    iput v3, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 230
    .line 231
    const/4 v2, 0x0

    .line 232
    move-object v3, v0

    .line 233
    move-object v0, v1

    .line 234
    move-object v6, v7

    .line 235
    move-object v1, v10

    .line 236
    invoke-interface/range {v0 .. v6}, Lorg/wikipedia/dataclient/Service;->watch(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    if-ne v0, v8, :cond_c

    .line 241
    .line 242
    :goto_6
    move-object v0, v8

    .line 243
    :cond_c
    :goto_7
    return-object v0

    .line 244
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 245
    .line 246
    iget v1, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 247
    .line 248
    if-eqz v1, :cond_e

    .line 249
    .line 250
    if-ne v1, v9, :cond_d

    .line 251
    .line 252
    iget-object v0, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v0, Lorg/wikipedia/settings/Prefs;

    .line 255
    .line 256
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    move-object/from16 v3, p1

    .line 260
    .line 261
    goto :goto_8

    .line 262
    :cond_d
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    move-object v8, v10

    .line 266
    goto :goto_a

    .line 267
    :cond_e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 271
    .line 272
    const v3, 0x7f120668

    .line 273
    .line 274
    .line 275
    invoke-static {v3, v4}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 276
    .line 277
    .line 278
    if-eqz v4, :cond_11

    .line 279
    .line 280
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 281
    .line 282
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-virtual {v3}, Lorg/wikipedia/database/AppDatabase;->recommendedPageDao()Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    iput-object v1, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 291
    .line 292
    iput v9, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 293
    .line 294
    iget-object v5, v3, Lorg/wikipedia/readinglist/db/RecommendedPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 295
    .line 296
    new-instance v11, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 297
    .line 298
    const/16 v12, 0xe

    .line 299
    .line 300
    invoke-direct {v11, v12, v3}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    invoke-static {v5, v9, v2, v11, v7}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    if-ne v3, v0, :cond_f

    .line 308
    .line 309
    move-object v8, v0

    .line 310
    goto :goto_a

    .line 311
    :cond_f
    move-object v0, v1

    .line 312
    :goto_8
    if-nez v3, :cond_10

    .line 313
    .line 314
    goto :goto_9

    .line 315
    :cond_10
    move v9, v2

    .line 316
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    const v0, 0x7f12066d

    .line 320
    .line 321
    .line 322
    invoke-static {v0, v9}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 323
    .line 324
    .line 325
    :cond_11
    if-nez v4, :cond_12

    .line 326
    .line 327
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 328
    .line 329
    invoke-static {v2}, Lorg/wikipedia/settings/Prefs;->setRecommendedReadingListNotificationEnabled(Z)V

    .line 330
    .line 331
    .line 332
    :cond_12
    check-cast v6, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 333
    .line 334
    iget-object v0, v6, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 335
    .line 336
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    move-object v11, v1

    .line 341
    check-cast v11, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;

    .line 342
    .line 343
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 344
    .line 345
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isRecommendedReadingListNotificationEnabled()Z

    .line 346
    .line 347
    .line 348
    move-result v16

    .line 349
    const/16 v17, 0xe

    .line 350
    .line 351
    iget-boolean v12, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$subscribed:Z

    .line 352
    .line 353
    const/4 v13, 0x0

    .line 354
    const/4 v14, 0x0

    .line 355
    const/4 v15, 0x0

    .line 356
    invoke-static/range {v11 .. v17}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;->copy$default(Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;ZILorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSource;ZI)Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsState;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-virtual {v0, v10, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    :goto_a
    return-object v8

    .line 364
    :pswitch_2
    check-cast v6, Landroidx/appcompat/app/AppCompatActivity;

    .line 365
    .line 366
    iget-object v0, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 369
    .line 370
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 371
    .line 372
    iget v11, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 373
    .line 374
    if-eqz v11, :cond_14

    .line 375
    .line 376
    if-ne v11, v9, :cond_13

    .line 377
    .line 378
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    goto :goto_b

    .line 382
    :cond_13
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    move-object v8, v10

    .line 386
    goto :goto_d

    .line 387
    :cond_14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    sget-object v5, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 391
    .line 392
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    invoke-virtual {v5}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    invoke-static {v0}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 401
    .line 402
    .line 403
    move-result-object v10

    .line 404
    iget-boolean v11, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 405
    .line 406
    xor-int/2addr v11, v9

    .line 407
    iput v9, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 408
    .line 409
    invoke-virtual {v5, v10, v11, v4, v7}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->markPagesForOffline(Ljava/util/List;ZZLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    if-ne v4, v3, :cond_15

    .line 414
    .line 415
    move-object v8, v3

    .line 416
    goto :goto_d

    .line 417
    :cond_15
    :goto_b
    invoke-static {v6}, Lokio/Okio__OkioKt;->isStarted(Landroid/app/Activity;)Z

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    if-nez v3, :cond_16

    .line 422
    .line 423
    goto :goto_d

    .line 424
    :cond_16
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    iget-boolean v0, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 429
    .line 430
    if-eqz v0, :cond_17

    .line 431
    .line 432
    goto :goto_c

    .line 433
    :cond_17
    const v1, 0x7f100021

    .line 434
    .line 435
    .line 436
    :goto_c
    invoke-virtual {v3, v1, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    .line 442
    .line 443
    invoke-static {v6, v0, v2}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 444
    .line 445
    .line 446
    :goto_d
    return-object v8

    .line 447
    :pswitch_3
    check-cast v6, Landroidx/appcompat/app/AppCompatActivity;

    .line 448
    .line 449
    iget-object v0, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 450
    .line 451
    check-cast v0, Ljava/util/List;

    .line 452
    .line 453
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 454
    .line 455
    iget v11, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 456
    .line 457
    if-eqz v11, :cond_19

    .line 458
    .line 459
    if-ne v11, v9, :cond_18

    .line 460
    .line 461
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    goto :goto_f

    .line 465
    :cond_18
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    move-object v8, v10

    .line 469
    goto :goto_10

    .line 470
    :cond_19
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 474
    .line 475
    .line 476
    move-result-object v5

    .line 477
    :cond_1a
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 478
    .line 479
    .line 480
    move-result v10

    .line 481
    if-eqz v10, :cond_1b

    .line 482
    .line 483
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v10

    .line 487
    check-cast v10, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 488
    .line 489
    sget-object v11, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 490
    .line 491
    iget-boolean v11, v10, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 492
    .line 493
    if-nez v11, :cond_1a

    .line 494
    .line 495
    const/4 v11, 0x5

    .line 496
    iput v11, v10, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress:I

    .line 497
    .line 498
    goto :goto_e

    .line 499
    :cond_1b
    sget-object v5, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 500
    .line 501
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    invoke-virtual {v5}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 506
    .line 507
    .line 508
    move-result-object v5

    .line 509
    iput v9, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 510
    .line 511
    invoke-virtual {v5, v0, v9, v4, v7}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->markPagesForOffline(Ljava/util/List;ZZLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v4

    .line 515
    if-ne v4, v3, :cond_1c

    .line 516
    .line 517
    move-object v8, v3

    .line 518
    goto :goto_10

    .line 519
    :cond_1c
    :goto_f
    invoke-static {v6}, Lokio/Okio__OkioKt;->isStarted(Landroid/app/Activity;)Z

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    if-nez v3, :cond_1d

    .line 524
    .line 525
    goto :goto_10

    .line 526
    :cond_1d
    sget-object v3, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 527
    .line 528
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 533
    .line 534
    .line 535
    move-result v0

    .line 536
    invoke-virtual {v3, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 541
    .line 542
    .line 543
    invoke-static {v6, v0, v2}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    .line 544
    .line 545
    .line 546
    :goto_10
    return-object v8

    .line 547
    :pswitch_4
    move-object v11, v6

    .line 548
    check-cast v11, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 549
    .line 550
    iget-object v0, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 551
    .line 552
    move-object v1, v0

    .line 553
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 554
    .line 555
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 556
    .line 557
    iget v0, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 558
    .line 559
    if-eqz v0, :cond_1f

    .line 560
    .line 561
    if-ne v0, v9, :cond_1e

    .line 562
    .line 563
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    move-object/from16 v0, p1

    .line 567
    .line 568
    goto :goto_11

    .line 569
    :cond_1e
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    move-object v8, v10

    .line 573
    goto :goto_12

    .line 574
    :cond_1f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 575
    .line 576
    .line 577
    iget-object v2, v11, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 578
    .line 579
    sget-object v4, Lorg/wikipedia/watchlist/WatchlistExpiry;->NEVER:Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 580
    .line 581
    iget-boolean v0, v11, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->isWatched:Z

    .line 582
    .line 583
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 584
    .line 585
    .line 586
    move-result-object v5

    .line 587
    iget-object v0, v11, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 588
    .line 589
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    invoke-virtual {v0}, Lorg/wikipedia/page/Namespace;->talk()Z

    .line 594
    .line 595
    .line 596
    move-result v0

    .line 597
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 598
    .line 599
    .line 600
    move-result-object v6

    .line 601
    iput-object v10, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 602
    .line 603
    iput v9, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 604
    .line 605
    sget-object v0, Lorg/wikipedia/watchlist/WatchlistViewModel;->Companion:Lokio/Path$Companion;

    .line 606
    .line 607
    iget-boolean v3, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$subscribed:Z

    .line 608
    .line 609
    invoke-virtual/range {v0 .. v7}, Lokio/Path$Companion;->watchPageTitle(Lkotlinx/coroutines/CoroutineScope;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/watchlist/WatchlistExpiry;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    if-ne v0, v12, :cond_20

    .line 614
    .line 615
    move-object v8, v12

    .line 616
    goto :goto_12

    .line 617
    :cond_20
    :goto_11
    check-cast v0, Lkotlin/Pair;

    .line 618
    .line 619
    iget-object v1, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 620
    .line 621
    check-cast v1, Ljava/lang/Boolean;

    .line 622
    .line 623
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    iput-boolean v1, v11, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->isWatched:Z

    .line 628
    .line 629
    iget-object v1, v11, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 630
    .line 631
    new-instance v2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Watch;

    .line 632
    .line 633
    invoke-direct {v2, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Watch;-><init>(Lkotlin/Pair;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v1, v10, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    :goto_12
    return-object v8

    .line 643
    :pswitch_5
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 644
    .line 645
    iget v1, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 646
    .line 647
    if-eqz v1, :cond_22

    .line 648
    .line 649
    if-ne v1, v9, :cond_21

    .line 650
    .line 651
    iget-object v1, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 652
    .line 653
    check-cast v1, Ljava/util/Iterator;

    .line 654
    .line 655
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 656
    .line 657
    .line 658
    goto :goto_13

    .line 659
    :cond_21
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    move-object v8, v10

    .line 663
    goto :goto_15

    .line 664
    :cond_22
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 665
    .line 666
    .line 667
    check-cast v6, Ljava/util/LinkedHashMap;

    .line 668
    .line 669
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    :cond_23
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 678
    .line 679
    .line 680
    move-result v2

    .line 681
    if-eqz v2, :cond_25

    .line 682
    .line 683
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    check-cast v2, Ljava/util/Map$Entry;

    .line 688
    .line 689
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v3

    .line 693
    check-cast v3, Lorg/wikipedia/dataclient/WikiSite;

    .line 694
    .line 695
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v2

    .line 699
    check-cast v2, Ljava/util/List;

    .line 700
    .line 701
    sget v5, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->$r8$clinit:I

    .line 702
    .line 703
    iput-object v1, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 704
    .line 705
    iput v9, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 706
    .line 707
    sget-object v5, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 708
    .line 709
    sget-object v5, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 710
    .line 711
    new-instance v6, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;

    .line 712
    .line 713
    invoke-direct {v6, v3, v2, v4, v10}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$markRead$2;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;ZLkotlin/coroutines/Continuation;)V

    .line 714
    .line 715
    .line 716
    invoke-static {v5, v6, v7}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v2

    .line 720
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 721
    .line 722
    if-ne v2, v3, :cond_24

    .line 723
    .line 724
    goto :goto_14

    .line 725
    :cond_24
    move-object v2, v8

    .line 726
    :goto_14
    if-ne v2, v0, :cond_23

    .line 727
    .line 728
    move-object v8, v0

    .line 729
    :cond_25
    :goto_15
    return-object v8

    .line 730
    :pswitch_6
    move-object v11, v6

    .line 731
    check-cast v11, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 732
    .line 733
    iget-object v0, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 734
    .line 735
    move-object v1, v0

    .line 736
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 737
    .line 738
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 739
    .line 740
    iget v0, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 741
    .line 742
    if-eqz v0, :cond_27

    .line 743
    .line 744
    if-ne v0, v9, :cond_26

    .line 745
    .line 746
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 747
    .line 748
    .line 749
    move-object/from16 v0, p1

    .line 750
    .line 751
    goto :goto_16

    .line 752
    :cond_26
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    move-object v8, v10

    .line 756
    goto :goto_17

    .line 757
    :cond_27
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 758
    .line 759
    .line 760
    iget-object v2, v11, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 761
    .line 762
    sget-object v4, Lorg/wikipedia/watchlist/WatchlistExpiry;->NEVER:Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 763
    .line 764
    iget-boolean v0, v11, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->isWatched:Z

    .line 765
    .line 766
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 767
    .line 768
    .line 769
    move-result-object v5

    .line 770
    sget-object v0, Lorg/wikipedia/page/Namespace;->Companion:Lorg/wikipedia/page/Namespace$Companion;

    .line 771
    .line 772
    iget v3, v11, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->ns:I

    .line 773
    .line 774
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 775
    .line 776
    .line 777
    invoke-static {v3}, Lorg/wikipedia/page/Namespace$Companion;->of(I)Lorg/wikipedia/page/Namespace;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    invoke-virtual {v0}, Lorg/wikipedia/page/Namespace;->talk()Z

    .line 782
    .line 783
    .line 784
    move-result v0

    .line 785
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 786
    .line 787
    .line 788
    move-result-object v6

    .line 789
    iput-object v10, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 790
    .line 791
    iput v9, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 792
    .line 793
    sget-object v0, Lorg/wikipedia/watchlist/WatchlistViewModel;->Companion:Lokio/Path$Companion;

    .line 794
    .line 795
    iget-boolean v3, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->$subscribed:Z

    .line 796
    .line 797
    invoke-virtual/range {v0 .. v7}, Lokio/Path$Companion;->watchPageTitle(Lkotlinx/coroutines/CoroutineScope;Lorg/wikipedia/page/PageTitle;ZLorg/wikipedia/watchlist/WatchlistExpiry;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    if-ne v0, v12, :cond_28

    .line 802
    .line 803
    move-object v8, v12

    .line 804
    goto :goto_17

    .line 805
    :cond_28
    :goto_16
    check-cast v0, Lkotlin/Pair;

    .line 806
    .line 807
    iget-object v1, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 808
    .line 809
    check-cast v1, Ljava/lang/Boolean;

    .line 810
    .line 811
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 812
    .line 813
    .line 814
    move-result v1

    .line 815
    iput-boolean v1, v11, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->isWatched:Z

    .line 816
    .line 817
    iget-object v1, v11, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->watchResponse:Lorg/wikipedia/util/SingleLiveData;

    .line 818
    .line 819
    new-instance v2, Lorg/wikipedia/util/Resource$Success;

    .line 820
    .line 821
    invoke-direct {v2, v0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 822
    .line 823
    .line 824
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 825
    .line 826
    .line 827
    :goto_17
    return-object v8

    .line 828
    :pswitch_7
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 829
    .line 830
    iget v1, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 831
    .line 832
    if-eqz v1, :cond_2a

    .line 833
    .line 834
    if-ne v1, v9, :cond_29

    .line 835
    .line 836
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 837
    .line 838
    .line 839
    goto :goto_18

    .line 840
    :cond_29
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    move-object v8, v10

    .line 844
    goto :goto_19

    .line 845
    :cond_2a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 846
    .line 847
    .line 848
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 849
    .line 850
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    move-result-object v1

    .line 854
    check-cast v1, Ljava/lang/Boolean;

    .line 855
    .line 856
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 857
    .line 858
    .line 859
    move-result v1

    .line 860
    if-nez v1, :cond_2c

    .line 861
    .line 862
    if-eqz v4, :cond_2c

    .line 863
    .line 864
    iput v9, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 865
    .line 866
    const-wide/16 v1, 0x96

    .line 867
    .line 868
    invoke-static {v1, v2, v7}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v1

    .line 872
    if-ne v1, v0, :cond_2b

    .line 873
    .line 874
    move-object v8, v0

    .line 875
    goto :goto_19

    .line 876
    :cond_2b
    :goto_18
    iget-object v0, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 877
    .line 878
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 879
    .line 880
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    :cond_2c
    :goto_19
    return-object v8

    .line 884
    :pswitch_8
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 885
    .line 886
    iget v0, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 887
    .line 888
    if-eqz v0, :cond_2e

    .line 889
    .line 890
    if-ne v0, v9, :cond_2d

    .line 891
    .line 892
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 893
    .line 894
    .line 895
    goto :goto_1b

    .line 896
    :cond_2d
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    move-object v8, v10

    .line 900
    goto :goto_1b

    .line 901
    :cond_2e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 902
    .line 903
    .line 904
    iget-object v0, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 905
    .line 906
    check-cast v0, Landroidx/compose/animation/core/Animatable;

    .line 907
    .line 908
    if-eqz v4, :cond_2f

    .line 909
    .line 910
    const/high16 v1, 0x3f800000    # 1.0f

    .line 911
    .line 912
    goto :goto_1a

    .line 913
    :cond_2f
    const v1, 0x3f4ccccd    # 0.8f

    .line 914
    .line 915
    .line 916
    :goto_1a
    new-instance v2, Ljava/lang/Float;

    .line 917
    .line 918
    invoke-direct {v2, v1}, Ljava/lang/Float;-><init>(F)V

    .line 919
    .line 920
    .line 921
    check-cast v6, Landroidx/compose/animation/core/SpringSpec;

    .line 922
    .line 923
    iput v9, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 924
    .line 925
    const/4 v3, 0x0

    .line 926
    const/16 v5, 0xc

    .line 927
    .line 928
    move-object v1, v2

    .line 929
    move-object v2, v6

    .line 930
    move-object v4, v7

    .line 931
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    move-result-object v0

    .line 935
    if-ne v0, v11, :cond_30

    .line 936
    .line 937
    move-object v8, v11

    .line 938
    :cond_30
    :goto_1b
    return-object v8

    .line 939
    :pswitch_9
    iget-object v0, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->this$0:Ljava/lang/Object;

    .line 940
    .line 941
    check-cast v0, Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 942
    .line 943
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 944
    .line 945
    iget v1, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 946
    .line 947
    if-eqz v1, :cond_33

    .line 948
    .line 949
    if-eq v1, v9, :cond_32

    .line 950
    .line 951
    if-ne v1, v3, :cond_31

    .line 952
    .line 953
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 954
    .line 955
    .line 956
    goto :goto_1e

    .line 957
    :cond_31
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 958
    .line 959
    .line 960
    move-object v8, v10

    .line 961
    goto :goto_1e

    .line 962
    :cond_32
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 963
    .line 964
    .line 965
    move-object/from16 v1, p1

    .line 966
    .line 967
    goto :goto_1c

    .line 968
    :cond_33
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 969
    .line 970
    .line 971
    sget-object v1, Lorg/wikipedia/csrf/CsrfTokenClient;->INSTANCE:Lorg/wikipedia/csrf/CsrfTokenClient;

    .line 972
    .line 973
    iget-object v1, v0, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 974
    .line 975
    iget-object v1, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 976
    .line 977
    iput v9, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 978
    .line 979
    invoke-static {v1, v7}, Lorg/wikipedia/csrf/CsrfTokenClient;->getToken$default(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v1

    .line 983
    if-ne v1, v11, :cond_34

    .line 984
    .line 985
    goto :goto_1d

    .line 986
    :cond_34
    :goto_1c
    check-cast v1, Ljava/lang/String;

    .line 987
    .line 988
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 989
    .line 990
    iget-object v2, v0, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 991
    .line 992
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 993
    .line 994
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 995
    .line 996
    .line 997
    move-result-object v2

    .line 998
    iget-object v0, v0, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 999
    .line 1000
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v0

    .line 1004
    check-cast v6, Ljava/lang/String;

    .line 1005
    .line 1006
    if-nez v4, :cond_35

    .line 1007
    .line 1008
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1009
    .line 1010
    :cond_35
    move-object v4, v10

    .line 1011
    iput v3, v7, Lorg/wikipedia/talk/TalkTopicsViewModel$subscribeTopic$1;->label:I

    .line 1012
    .line 1013
    move-object v3, v1

    .line 1014
    move-object v5, v7

    .line 1015
    move-object v1, v0

    .line 1016
    move-object v0, v2

    .line 1017
    move-object v2, v6

    .line 1018
    invoke-interface/range {v0 .. v5}, Lorg/wikipedia/dataclient/Service;->subscribeTalkPageTopic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    if-ne v0, v11, :cond_36

    .line 1023
    .line 1024
    :goto_1d
    move-object v8, v11

    .line 1025
    :cond_36
    :goto_1e
    return-object v8

    .line 1026
    nop

    .line 1027
    :pswitch_data_0
    .packed-switch 0x0
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

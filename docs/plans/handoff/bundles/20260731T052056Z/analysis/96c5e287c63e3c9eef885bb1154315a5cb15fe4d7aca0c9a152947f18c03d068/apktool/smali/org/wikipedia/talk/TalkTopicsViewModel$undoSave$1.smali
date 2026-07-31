.class public final Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public $newRevisionId:J

.field public final synthetic $r8$classId:I

.field public final synthetic $undoneBody:Ljava/lang/Object;

.field public $undoneSubject:Ljava/lang/Object;

.field public label:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 19
    iput p7, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    iput-wide p2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    iput-object p4, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    iput-object p5, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneBody:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 17
    iput p6, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    iput-wide p2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    iput-object p4, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneBody:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JLkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 18
    iput p6, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneBody:Ljava/lang/Object;

    iput-wide p3, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/glance/session/InteractiveFrameClock;JLkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneBody:Ljava/lang/Object;

    .line 9
    .line 10
    iput-wide p4, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/activitytab/ActivityTabViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$r8$classId:I

    .line 20
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneBody:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$r8$classId:I

    .line 21
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneBody:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneBody:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lorg/wikipedia/dataclient/WikiSite;

    .line 13
    .line 14
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 15
    .line 16
    invoke-direct {p1, p0, v1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :pswitch_0
    new-instance v2, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 21
    .line 22
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v3, p1

    .line 25
    check-cast v3, Lorg/wikipedia/dataclient/WikiSite;

    .line 26
    .line 27
    move-object v4, v1

    .line 28
    check-cast v4, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 29
    .line 30
    iget-wide v5, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 31
    .line 32
    const/16 v8, 0x8

    .line 33
    .line 34
    move-object v7, p2

    .line 35
    invoke-direct/range {v2 .. v8}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLkotlin/coroutines/Continuation;I)V

    .line 36
    .line 37
    .line 38
    return-object v2

    .line 39
    :pswitch_1
    move-object v8, p2

    .line 40
    new-instance p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 41
    .line 42
    check-cast v1, Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 43
    .line 44
    invoke-direct {p0, v1, v8}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;-><init>(Lorg/wikipedia/activitytab/ActivityTabViewModel;Lkotlin/coroutines/Continuation;)V

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_2
    move-object v8, p2

    .line 49
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 50
    .line 51
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 52
    .line 53
    move-object v4, p1

    .line 54
    check-cast v4, Lkotlin/jvm/internal/Ref$LongRef;

    .line 55
    .line 56
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 57
    .line 58
    move-object v5, p1

    .line 59
    check-cast v5, Lkotlin/jvm/internal/Ref$LongRef;

    .line 60
    .line 61
    move-object v6, v1

    .line 62
    check-cast v6, Landroidx/glance/session/InteractiveFrameClock;

    .line 63
    .line 64
    move-object v9, v8

    .line 65
    iget-wide v7, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 66
    .line 67
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/glance/session/InteractiveFrameClock;JLkotlin/coroutines/Continuation;)V

    .line 68
    .line 69
    .line 70
    return-object v3

    .line 71
    :pswitch_3
    move-object v8, p2

    .line 72
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 73
    .line 74
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 75
    .line 76
    move-object v4, p1

    .line 77
    check-cast v4, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;

    .line 78
    .line 79
    iget-wide v5, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 80
    .line 81
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 82
    .line 83
    move-object v7, p0

    .line 84
    check-cast v7, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;

    .line 85
    .line 86
    check-cast v1, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$ClickTextContextMenuDataProvider;

    .line 87
    .line 88
    const/4 v10, 0x5

    .line 89
    move-object v9, v8

    .line 90
    move-object v8, v1

    .line 91
    invoke-direct/range {v3 .. v10}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;-><init>(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 92
    .line 93
    .line 94
    return-object v3

    .line 95
    :pswitch_4
    move-object v8, p2

    .line 96
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 97
    .line 98
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 99
    .line 100
    move-object v4, p1

    .line 101
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 102
    .line 103
    iget-wide v5, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 104
    .line 105
    move-object v7, v1

    .line 106
    check-cast v7, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 107
    .line 108
    const/4 v9, 0x4

    .line 109
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;-><init>(Ljava/lang/Object;JLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 110
    .line 111
    .line 112
    return-object v3

    .line 113
    :pswitch_5
    move-object v8, p2

    .line 114
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 115
    .line 116
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 117
    .line 118
    move-object v4, p1

    .line 119
    check-cast v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 120
    .line 121
    move-object v5, v1

    .line 122
    check-cast v5, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 123
    .line 124
    iget-wide v6, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 125
    .line 126
    const/4 v9, 0x3

    .line 127
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLkotlin/coroutines/Continuation;I)V

    .line 128
    .line 129
    .line 130
    return-object v3

    .line 131
    :pswitch_6
    move-object v8, p2

    .line 132
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 133
    .line 134
    iget-object p2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 135
    .line 136
    move-object v4, p2

    .line 137
    check-cast v4, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 138
    .line 139
    iget-wide v5, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 140
    .line 141
    move-object v7, v1

    .line 142
    check-cast v7, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 143
    .line 144
    const/4 v9, 0x2

    .line 145
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;-><init>(Ljava/lang/Object;JLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 146
    .line 147
    .line 148
    iput-object p1, v3, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 149
    .line 150
    return-object v3

    .line 151
    :pswitch_7
    move-object v8, p2

    .line 152
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 153
    .line 154
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 155
    .line 156
    move-object v4, p1

    .line 157
    check-cast v4, Lkotlinx/coroutines/Job;

    .line 158
    .line 159
    iget-wide v5, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 160
    .line 161
    move-object v7, v1

    .line 162
    check-cast v7, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 163
    .line 164
    const/4 v9, 0x1

    .line 165
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;-><init>(Ljava/lang/Object;JLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 166
    .line 167
    .line 168
    return-object v3

    .line 169
    :pswitch_8
    move-object v8, p2

    .line 170
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 171
    .line 172
    iget-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 173
    .line 174
    move-object v4, p1

    .line 175
    check-cast v4, Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 176
    .line 177
    iget-wide v5, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 178
    .line 179
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 180
    .line 181
    move-object v7, p0

    .line 182
    check-cast v7, Ljava/lang/CharSequence;

    .line 183
    .line 184
    check-cast v1, Ljava/lang/CharSequence;

    .line 185
    .line 186
    const/4 v10, 0x0

    .line 187
    move-object v9, v8

    .line 188
    move-object v8, v1

    .line 189
    invoke-direct/range {v3 .. v10}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;-><init>(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 190
    .line 191
    .line 192
    return-object v3

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
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
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 39
    .line 40
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 54
    .line 55
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 69
    .line 70
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_4
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 84
    .line 85
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 86
    .line 87
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 99
    .line 100
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 101
    .line 102
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 107
    .line 108
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :pswitch_6
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 114
    .line 115
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :pswitch_7
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 129
    .line 130
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 131
    .line 132
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 137
    .line 138
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :pswitch_8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 144
    .line 145
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 146
    .line 147
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;

    .line 152
    .line 153
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    nop

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 20

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    iget v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$r8$classId:I

    .line 4
    .line 5
    const-wide/32 v1, 0xa8c0

    .line 6
    .line 7
    .line 8
    const v3, 0x7f120613

    .line 9
    .line 10
    .line 11
    const-wide/16 v5, 0x0

    .line 12
    .line 13
    const/4 v7, 0x3

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x2

    .line 16
    const/4 v10, 0x1

    .line 17
    const/4 v11, 0x0

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    iget-object v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 24
    .line 25
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 26
    .line 27
    iget v9, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 28
    .line 29
    if-eqz v9, :cond_1

    .line 30
    .line 31
    if-ne v9, v10, :cond_0

    .line 32
    .line 33
    iget-wide v1, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 34
    .line 35
    iget-object v4, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v4, Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    move-wide v12, v1

    .line 43
    move-object/from16 v1, p1

    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :catch_0
    move-exception v0

    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_7

    .line 56
    .line 57
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :try_start_1
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {v9}, Lj$/time/Instant;->getEpochSecond()J

    .line 65
    .line 66
    .line 67
    move-result-wide v12

    .line 68
    sget-object v9, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 69
    .line 70
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getImpactLastResponseBody()Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    new-instance v14, Ljava/util/LinkedHashMap;

    .line 75
    .line 76
    invoke-direct {v14, v9}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    iget-object v9, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v14, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    check-cast v9, Ljava/lang/String;

    .line 86
    .line 87
    if-eqz v9, :cond_5

    .line 88
    .line 89
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v15

    .line 93
    if-nez v15, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-static {v5, v6, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->getLong(JI)J

    .line 97
    .line 98
    .line 99
    move-result-wide v15

    .line 100
    sub-long v15, v12, v15

    .line 101
    .line 102
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    .line 103
    .line 104
    .line 105
    move-result-wide v15

    .line 106
    cmp-long v1, v15, v1

    .line 107
    .line 108
    if-lez v1, :cond_3

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 112
    .line 113
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    if-nez v0, :cond_4

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    :try_start_2
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    sget-object v1, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->Companion:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$Companion;

    .line 126
    .line 127
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 136
    .line 137
    invoke-virtual {v0, v9, v1}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    goto :goto_0

    .line 142
    :catch_1
    move-exception v0

    .line 143
    :try_start_3
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    :goto_0
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    check-cast v11, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_5
    :goto_1
    iget-object v1, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneBody:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 155
    .line 156
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 157
    .line 158
    if-eqz v1, :cond_6

    .line 159
    .line 160
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 161
    .line 162
    if-eqz v1, :cond_6

    .line 163
    .line 164
    iget v8, v1, Lorg/wikipedia/dataclient/mwapi/UserInfo;->id:I

    .line 165
    .line 166
    :cond_6
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 167
    .line 168
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getCoreRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/CoreRestService;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v14, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 173
    .line 174
    iput-wide v12, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 175
    .line 176
    iput v10, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 177
    .line 178
    invoke-interface {v1, v8, v4}, Lorg/wikipedia/dataclient/CoreRestService;->getUserImpact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    if-ne v1, v7, :cond_7

    .line 183
    .line 184
    move-object v11, v7

    .line 185
    goto :goto_7

    .line 186
    :cond_7
    move-object v4, v14

    .line 187
    :goto_2
    check-cast v1, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;

    .line 188
    .line 189
    iget-object v2, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 190
    .line 191
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 192
    .line 193
    if-nez v1, :cond_8

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_8
    :try_start_4
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    sget-object v7, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->Companion:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$Companion;

    .line 202
    .line 203
    invoke-virtual {v7}, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    check-cast v7, Lkotlinx/serialization/KSerializer;

    .line 208
    .line 209
    invoke-virtual {v0, v7, v1}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 213
    goto :goto_3

    .line 214
    :catch_2
    move-exception v0

    .line 215
    :try_start_5
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 216
    .line 217
    .line 218
    :goto_3
    if-nez v11, :cond_9

    .line 219
    .line 220
    const-string v11, ""

    .line 221
    .line 222
    :cond_9
    invoke-interface {v4, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 226
    .line 227
    invoke-static {v4}, Lorg/wikipedia/settings/Prefs;->setImpactLastResponseBody(Ljava/util/Map;)V

    .line 228
    .line 229
    .line 230
    invoke-static {v12, v13, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(JI)V

    .line 231
    .line 232
    .line 233
    move-object v11, v1

    .line 234
    :goto_4
    iget-wide v5, v11, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->totalPageviewsCount:J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :goto_5
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    :goto_6
    new-instance v11, Ljava/lang/Long;

    .line 241
    .line 242
    invoke-direct {v11, v5, v6}, Ljava/lang/Long;-><init>(J)V

    .line 243
    .line 244
    .line 245
    :goto_7
    return-object v11

    .line 246
    :pswitch_0
    iget-object v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 249
    .line 250
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 251
    .line 252
    iget v2, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 253
    .line 254
    if-eqz v2, :cond_c

    .line 255
    .line 256
    if-eq v2, v10, :cond_b

    .line 257
    .line 258
    if-ne v2, v9, :cond_a

    .line 259
    .line 260
    iget-object v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v0, Lorg/wikipedia/util/SingleLiveData;

    .line 263
    .line 264
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    move-object v2, v0

    .line 268
    move-object/from16 v0, p1

    .line 269
    .line 270
    goto :goto_a

    .line 271
    :cond_a
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 272
    .line 273
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    goto :goto_b

    .line 277
    :cond_b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    move-object/from16 v2, p1

    .line 281
    .line 282
    goto :goto_8

    .line 283
    :cond_c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 287
    .line 288
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    iput v10, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 293
    .line 294
    const-string v3, "csrf"

    .line 295
    .line 296
    invoke-interface {v2, v3, v4}, Lorg/wikipedia/dataclient/Service;->getToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    if-ne v2, v1, :cond_d

    .line 301
    .line 302
    goto :goto_9

    .line 303
    :cond_d
    :goto_8
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 304
    .line 305
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 306
    .line 307
    if-eqz v2, :cond_e

    .line 308
    .line 309
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->csrfToken()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v11

    .line 313
    :cond_e
    iget-object v2, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneBody:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 316
    .line 317
    iget-object v2, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->thankStatus:Lorg/wikipedia/util/SingleLiveData;

    .line 318
    .line 319
    sget-object v3, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 320
    .line 321
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    iget-wide v5, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 326
    .line 327
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    iput-object v2, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 331
    .line 332
    iput v9, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 333
    .line 334
    invoke-interface {v0, v5, v6, v11, v4}, Lorg/wikipedia/dataclient/Service;->postThanksToRevision(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    if-ne v0, v1, :cond_f

    .line 339
    .line 340
    :goto_9
    move-object v11, v1

    .line 341
    goto :goto_b

    .line 342
    :cond_f
    :goto_a
    new-instance v1, Lorg/wikipedia/util/Resource$Success;

    .line 343
    .line 344
    invoke-direct {v1, v0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 351
    .line 352
    :goto_b
    return-object v11

    .line 353
    :pswitch_1
    iget-object v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneBody:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v0, Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 356
    .line 357
    iget-object v12, v0, Lorg/wikipedia/activitytab/ActivityTabViewModel;->_impactUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 358
    .line 359
    sget-object v13, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 360
    .line 361
    iget v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 362
    .line 363
    if-eqz v0, :cond_14

    .line 364
    .line 365
    if-eq v0, v10, :cond_13

    .line 366
    .line 367
    if-eq v0, v9, :cond_12

    .line 368
    .line 369
    if-ne v0, v7, :cond_11

    .line 370
    .line 371
    iget-object v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;

    .line 374
    .line 375
    iget-object v1, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast v1, Lorg/wikipedia/dataclient/WikiSite;

    .line 378
    .line 379
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    move-object/from16 v2, p1

    .line 383
    .line 384
    :cond_10
    move-object v15, v1

    .line 385
    goto/16 :goto_16

    .line 386
    .line 387
    :cond_11
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 388
    .line 389
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_18

    .line 393
    .line 394
    :cond_12
    iget-wide v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 395
    .line 396
    iget-object v2, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 397
    .line 398
    check-cast v2, Ljava/util/Map;

    .line 399
    .line 400
    iget-object v5, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    .line 403
    .line 404
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    move-object v15, v2

    .line 408
    move-wide v1, v0

    .line 409
    move-object/from16 v0, p1

    .line 410
    .line 411
    goto/16 :goto_11

    .line 412
    .line 413
    :cond_13
    iget-wide v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 414
    .line 415
    iget-object v2, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 416
    .line 417
    check-cast v2, Ljava/util/Map;

    .line 418
    .line 419
    iget-object v5, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 420
    .line 421
    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    .line 422
    .line 423
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    move-object v15, v2

    .line 427
    move-wide v1, v0

    .line 428
    move-object/from16 v0, p1

    .line 429
    .line 430
    goto/16 :goto_f

    .line 431
    .line 432
    :cond_14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    sget-object v0, Lorg/wikipedia/util/UiState$Loading;->INSTANCE:Lorg/wikipedia/util/UiState$Loading;

    .line 436
    .line 437
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v12, v11, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 444
    .line 445
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 450
    .line 451
    .line 452
    move-result-object v14

    .line 453
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    move-wide v15, v1

    .line 458
    invoke-virtual {v0}, Lj$/time/Instant;->getEpochSecond()J

    .line 459
    .line 460
    .line 461
    move-result-wide v1

    .line 462
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 463
    .line 464
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getImpactLastResponseBody()Ljava/util/Map;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    move-wide/from16 v17, v15

    .line 469
    .line 470
    new-instance v15, Ljava/util/LinkedHashMap;

    .line 471
    .line 472
    invoke-direct {v15, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 473
    .line 474
    .line 475
    iget-object v0, v14, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 476
    .line 477
    invoke-virtual {v15, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    check-cast v0, Ljava/lang/String;

    .line 482
    .line 483
    if-eqz v0, :cond_18

    .line 484
    .line 485
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 486
    .line 487
    .line 488
    move-result v16

    .line 489
    if-nez v16, :cond_15

    .line 490
    .line 491
    goto :goto_e

    .line 492
    :cond_15
    invoke-static {v5, v6, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->getLong(JI)J

    .line 493
    .line 494
    .line 495
    move-result-wide v5

    .line 496
    sub-long v5, v1, v5

    .line 497
    .line 498
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 499
    .line 500
    .line 501
    move-result-wide v5

    .line 502
    cmp-long v5, v5, v17

    .line 503
    .line 504
    if-lez v5, :cond_16

    .line 505
    .line 506
    goto :goto_e

    .line 507
    :cond_16
    sget-object v3, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 508
    .line 509
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 510
    .line 511
    .line 512
    move-result v3

    .line 513
    if-nez v3, :cond_17

    .line 514
    .line 515
    :goto_c
    move-object v0, v11

    .line 516
    goto :goto_d

    .line 517
    :cond_17
    :try_start_6
    sget-object v3, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 518
    .line 519
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    sget-object v5, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->Companion:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$Companion;

    .line 523
    .line 524
    invoke-virtual {v5}, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 525
    .line 526
    .line 527
    move-result-object v5

    .line 528
    invoke-static {v5}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 529
    .line 530
    .line 531
    move-result-object v5

    .line 532
    check-cast v5, Lkotlinx/serialization/KSerializer;

    .line 533
    .line 534
    invoke-virtual {v3, v0, v5}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 538
    goto :goto_d

    .line 539
    :catch_3
    move-exception v0

    .line 540
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 541
    .line 542
    .line 543
    goto :goto_c

    .line 544
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    .line 546
    .line 547
    check-cast v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;

    .line 548
    .line 549
    move-wide v2, v1

    .line 550
    move-object v1, v14

    .line 551
    goto/16 :goto_14

    .line 552
    .line 553
    :cond_18
    :goto_e
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 554
    .line 555
    invoke-static {v14}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    iput-object v14, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 560
    .line 561
    iput-object v15, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 562
    .line 563
    iput-wide v1, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 564
    .line 565
    iput v10, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 566
    .line 567
    invoke-interface {v0, v4}, Lorg/wikipedia/dataclient/Service;->getUserInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    if-ne v0, v13, :cond_19

    .line 572
    .line 573
    goto/16 :goto_15

    .line 574
    .line 575
    :cond_19
    move-object v5, v14

    .line 576
    :goto_f
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 577
    .line 578
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 579
    .line 580
    if-eqz v0, :cond_1a

    .line 581
    .line 582
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 583
    .line 584
    if-eqz v0, :cond_1a

    .line 585
    .line 586
    iget v0, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->id:I

    .line 587
    .line 588
    new-instance v6, Ljava/lang/Integer;

    .line 589
    .line 590
    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 591
    .line 592
    .line 593
    goto :goto_10

    .line 594
    :cond_1a
    move-object v6, v11

    .line 595
    :goto_10
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    sget-object v6, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 603
    .line 604
    invoke-static {v5}, Lorg/wikipedia/dataclient/ServiceFactory;->getCoreRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/CoreRestService;

    .line 605
    .line 606
    .line 607
    move-result-object v6

    .line 608
    iput-object v5, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 609
    .line 610
    iput-object v15, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 611
    .line 612
    iput-wide v1, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 613
    .line 614
    iput v9, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 615
    .line 616
    invoke-interface {v6, v0, v4}, Lorg/wikipedia/dataclient/CoreRestService;->getUserImpact(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    if-ne v0, v13, :cond_1b

    .line 621
    .line 622
    goto :goto_15

    .line 623
    :cond_1b
    :goto_11
    move-object v6, v0

    .line 624
    check-cast v6, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;

    .line 625
    .line 626
    iget-object v9, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 627
    .line 628
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 629
    .line 630
    if-nez v6, :cond_1c

    .line 631
    .line 632
    :goto_12
    move-object v0, v11

    .line 633
    goto :goto_13

    .line 634
    :cond_1c
    :try_start_7
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 635
    .line 636
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 637
    .line 638
    .line 639
    sget-object v10, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->Companion:Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$Companion;

    .line 640
    .line 641
    invoke-virtual {v10}, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 642
    .line 643
    .line 644
    move-result-object v10

    .line 645
    check-cast v10, Lkotlinx/serialization/KSerializer;

    .line 646
    .line 647
    invoke-virtual {v0, v10, v6}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 651
    goto :goto_13

    .line 652
    :catch_4
    move-exception v0

    .line 653
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 654
    .line 655
    .line 656
    goto :goto_12

    .line 657
    :goto_13
    if-nez v0, :cond_1d

    .line 658
    .line 659
    const-string v0, ""

    .line 660
    .line 661
    :cond_1d
    invoke-interface {v15, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 665
    .line 666
    invoke-static {v15}, Lorg/wikipedia/settings/Prefs;->setImpactLastResponseBody(Ljava/util/Map;)V

    .line 667
    .line 668
    .line 669
    invoke-static {v1, v2, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(JI)V

    .line 670
    .line 671
    .line 672
    move-wide v2, v1

    .line 673
    move-object v1, v5

    .line 674
    move-object v0, v6

    .line 675
    :goto_14
    sget-object v5, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 676
    .line 677
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 678
    .line 679
    .line 680
    move-result-object v5

    .line 681
    iget-object v6, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->topViewedArticles$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 682
    .line 683
    invoke-virtual {v6}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v6

    .line 687
    check-cast v6, Ljava/util/Map;

    .line 688
    .line 689
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 690
    .line 691
    .line 692
    move-result-object v6

    .line 693
    move-object v14, v6

    .line 694
    check-cast v14, Ljava/lang/Iterable;

    .line 695
    .line 696
    const-string/jumbo v15, "|"

    .line 697
    .line 698
    .line 699
    const/16 v18, 0x0

    .line 700
    .line 701
    const/16 v19, 0x3e

    .line 702
    .line 703
    const/16 v16, 0x0

    .line 704
    .line 705
    const/16 v17, 0x0

    .line 706
    .line 707
    invoke-static/range {v14 .. v19}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v6

    .line 711
    iput-object v1, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 712
    .line 713
    iput-object v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 714
    .line 715
    iput-wide v2, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 716
    .line 717
    iput v7, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 718
    .line 719
    invoke-interface {v5, v6, v4}, Lorg/wikipedia/dataclient/Service;->getInfoByTitlesWithGlobalUserInfo(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v2

    .line 723
    if-ne v2, v13, :cond_10

    .line 724
    .line 725
    :goto_15
    move-object v11, v13

    .line 726
    goto/16 :goto_18

    .line 727
    .line 728
    :goto_16
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 729
    .line 730
    iget-object v1, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 731
    .line 732
    if-eqz v1, :cond_1f

    .line 733
    .line 734
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 735
    .line 736
    if-eqz v1, :cond_1f

    .line 737
    .line 738
    const/16 v3, 0xa

    .line 739
    .line 740
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 741
    .line 742
    .line 743
    move-result v3

    .line 744
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 745
    .line 746
    .line 747
    move-result v3

    .line 748
    const/16 v4, 0x10

    .line 749
    .line 750
    if-ge v3, v4, :cond_1e

    .line 751
    .line 752
    move v3, v4

    .line 753
    :cond_1e
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 754
    .line 755
    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 756
    .line 757
    .line 758
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 759
    .line 760
    .line 761
    move-result-object v1

    .line 762
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 763
    .line 764
    .line 765
    move-result v3

    .line 766
    if-eqz v3, :cond_20

    .line 767
    .line 768
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v3

    .line 772
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 773
    .line 774
    new-instance v13, Lorg/wikipedia/page/PageTitle;

    .line 775
    .line 776
    iget-object v14, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 777
    .line 778
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v16

    .line 782
    iget-object v5, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 783
    .line 784
    iget-object v6, v15, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 785
    .line 786
    invoke-virtual {v3, v6}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->displayTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v18

    .line 790
    move-object/from16 v17, v5

    .line 791
    .line 792
    invoke-direct/range {v13 .. v18}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    iget-object v3, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->topViewedArticles$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 796
    .line 797
    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object v3

    .line 801
    check-cast v3, Ljava/util/Map;

    .line 802
    .line 803
    invoke-virtual {v13}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v5

    .line 807
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v3

    .line 811
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 812
    .line 813
    .line 814
    invoke-interface {v4, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    goto :goto_17

    .line 818
    :cond_1f
    sget-object v4, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 819
    .line 820
    :cond_20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 821
    .line 822
    .line 823
    iput-object v4, v0, Lorg/wikipedia/dataclient/growthtasks/GrowthUserImpact;->topViewedArticlesWithPageTitle:Ljava/util/Map;

    .line 824
    .line 825
    new-instance v1, Lorg/wikipedia/util/UiState$Success;

    .line 826
    .line 827
    new-instance v3, Lkotlin/Pair;

    .line 828
    .line 829
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 830
    .line 831
    if-eqz v2, :cond_21

    .line 832
    .line 833
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->globalUserInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 834
    .line 835
    if-eqz v2, :cond_21

    .line 836
    .line 837
    iget v8, v2, Lorg/wikipedia/dataclient/mwapi/UserInfo;->editCount:I

    .line 838
    .line 839
    :cond_21
    new-instance v2, Ljava/lang/Integer;

    .line 840
    .line 841
    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 842
    .line 843
    .line 844
    invoke-direct {v3, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 845
    .line 846
    .line 847
    invoke-direct {v1, v3}, Lorg/wikipedia/util/UiState$Success;-><init>(Ljava/lang/Object;)V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 851
    .line 852
    .line 853
    invoke-virtual {v12, v11, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 854
    .line 855
    .line 856
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 857
    .line 858
    :goto_18
    return-object v11

    .line 859
    :pswitch_2
    iget-object v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneBody:Ljava/lang/Object;

    .line 860
    .line 861
    check-cast v0, Landroidx/glance/session/InteractiveFrameClock;

    .line 862
    .line 863
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 864
    .line 865
    iget v2, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 866
    .line 867
    if-eqz v2, :cond_24

    .line 868
    .line 869
    if-eq v2, v10, :cond_23

    .line 870
    .line 871
    if-ne v2, v9, :cond_22

    .line 872
    .line 873
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 874
    .line 875
    .line 876
    goto :goto_1b

    .line 877
    :cond_22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 878
    .line 879
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 880
    .line 881
    .line 882
    goto :goto_1d

    .line 883
    :cond_23
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 884
    .line 885
    .line 886
    goto :goto_19

    .line 887
    :cond_24
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 888
    .line 889
    .line 890
    iget-object v2, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 891
    .line 892
    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    .line 893
    .line 894
    iget-wide v2, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 895
    .line 896
    iget-object v5, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 897
    .line 898
    check-cast v5, Lkotlin/jvm/internal/Ref$LongRef;

    .line 899
    .line 900
    iget-wide v5, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 901
    .line 902
    cmp-long v8, v2, v5

    .line 903
    .line 904
    if-ltz v8, :cond_26

    .line 905
    .line 906
    iput v10, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 907
    .line 908
    invoke-static {v4}, Lkotlinx/coroutines/AwaitKt;->yield(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    move-result-object v2

    .line 912
    if-ne v2, v1, :cond_25

    .line 913
    .line 914
    goto :goto_1a

    .line 915
    :cond_25
    :goto_19
    iget-wide v1, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 916
    .line 917
    iget-object v3, v0, Landroidx/glance/session/InteractiveFrameClock;->frameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 918
    .line 919
    iget-object v3, v3, Landroidx/compose/runtime/BroadcastFrameClock;->queue:Ljava/lang/Object;

    .line 920
    .line 921
    check-cast v3, Lokhttp3/Request$Builder;

    .line 922
    .line 923
    new-instance v4, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;

    .line 924
    .line 925
    invoke-direct {v4, v1, v2, v7}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;-><init>(JI)V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->flushAndDispatchAwaiters(Lkotlin/jvm/functions/Function1;)V

    .line 929
    .line 930
    .line 931
    iget-object v3, v0, Landroidx/glance/session/InteractiveFrameClock;->lock:Ljava/lang/Object;

    .line 932
    .line 933
    monitor-enter v3

    .line 934
    :try_start_8
    iput-wide v1, v0, Landroidx/glance/session/InteractiveFrameClock;->lastFrame:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 935
    .line 936
    monitor-exit v3

    .line 937
    goto :goto_1c

    .line 938
    :catchall_0
    move-exception v0

    .line 939
    monitor-exit v3

    .line 940
    throw v0

    .line 941
    :cond_26
    sub-long/2addr v5, v2

    .line 942
    const-wide/32 v2, 0xf4240

    .line 943
    .line 944
    .line 945
    div-long/2addr v5, v2

    .line 946
    iput v9, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 947
    .line 948
    invoke-static {v5, v6, v4}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v2

    .line 952
    if-ne v2, v1, :cond_27

    .line 953
    .line 954
    :goto_1a
    move-object v11, v1

    .line 955
    goto :goto_1d

    .line 956
    :cond_27
    :goto_1b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 957
    .line 958
    .line 959
    move-result-wide v1

    .line 960
    invoke-virtual {v0, v1, v2}, Landroidx/glance/session/InteractiveFrameClock;->sendFrame$1(J)V

    .line 961
    .line 962
    .line 963
    :goto_1c
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 964
    .line 965
    :goto_1d
    return-object v11

    .line 966
    :pswitch_3
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 967
    .line 968
    iget v1, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 969
    .line 970
    if-eqz v1, :cond_2a

    .line 971
    .line 972
    if-eq v1, v10, :cond_29

    .line 973
    .line 974
    if-ne v1, v9, :cond_28

    .line 975
    .line 976
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 977
    .line 978
    .line 979
    goto :goto_20

    .line 980
    :cond_28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 981
    .line 982
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 983
    .line 984
    .line 985
    goto :goto_21

    .line 986
    :cond_29
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 987
    .line 988
    .line 989
    goto :goto_1e

    .line 990
    :cond_2a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 991
    .line 992
    .line 993
    iget-object v1, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 994
    .line 995
    check-cast v1, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;

    .line 996
    .line 997
    iget-object v1, v1, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;->onPreShowContextMenu:Lkotlin/jvm/functions/Function2;

    .line 998
    .line 999
    if-eqz v1, :cond_2b

    .line 1000
    .line 1001
    iget-wide v2, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 1002
    .line 1003
    new-instance v5, Landroidx/compose/ui/geometry/Offset;

    .line 1004
    .line 1005
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 1006
    .line 1007
    .line 1008
    iput v10, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 1009
    .line 1010
    invoke-interface {v1, v5, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v1

    .line 1014
    if-ne v1, v0, :cond_2b

    .line 1015
    .line 1016
    goto :goto_1f

    .line 1017
    :cond_2b
    :goto_1e
    iget-object v1, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 1018
    .line 1019
    check-cast v1, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;

    .line 1020
    .line 1021
    iget-object v2, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneBody:Ljava/lang/Object;

    .line 1022
    .line 1023
    check-cast v2, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode$ClickTextContextMenuDataProvider;

    .line 1024
    .line 1025
    iput v9, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 1026
    .line 1027
    invoke-interface {v1, v2, v4}, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuProvider;->showTextContextMenu(Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v1

    .line 1031
    if-ne v1, v0, :cond_2c

    .line 1032
    .line 1033
    :goto_1f
    move-object v11, v0

    .line 1034
    goto :goto_21

    .line 1035
    :cond_2c
    :goto_20
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1036
    .line 1037
    :goto_21
    return-object v11

    .line 1038
    :pswitch_4
    iget-object v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneBody:Ljava/lang/Object;

    .line 1039
    .line 1040
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 1041
    .line 1042
    iget-object v1, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 1043
    .line 1044
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 1045
    .line 1046
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1047
    .line 1048
    iget v3, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 1049
    .line 1050
    if-eqz v3, :cond_2f

    .line 1051
    .line 1052
    if-eq v3, v10, :cond_2e

    .line 1053
    .line 1054
    if-ne v3, v9, :cond_2d

    .line 1055
    .line 1056
    iget-object v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 1057
    .line 1058
    check-cast v0, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1059
    .line 1060
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1061
    .line 1062
    .line 1063
    goto :goto_24

    .line 1064
    :cond_2d
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1065
    .line 1066
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1067
    .line 1068
    .line 1069
    goto :goto_25

    .line 1070
    :cond_2e
    iget-object v3, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 1071
    .line 1072
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 1073
    .line 1074
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1075
    .line 1076
    .line 1077
    goto :goto_22

    .line 1078
    :cond_2f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1079
    .line 1080
    .line 1081
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v3

    .line 1085
    check-cast v3, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1086
    .line 1087
    if-eqz v3, :cond_31

    .line 1088
    .line 1089
    new-instance v5, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 1090
    .line 1091
    invoke-direct {v5, v3}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    .line 1092
    .line 1093
    .line 1094
    if-eqz v0, :cond_30

    .line 1095
    .line 1096
    iput-object v1, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 1097
    .line 1098
    iput v10, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 1099
    .line 1100
    invoke-virtual {v0, v5, v4}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v3

    .line 1104
    if-ne v3, v2, :cond_30

    .line 1105
    .line 1106
    goto :goto_23

    .line 1107
    :cond_30
    move-object v3, v1

    .line 1108
    :goto_22
    invoke-interface {v3, v11}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1109
    .line 1110
    .line 1111
    :cond_31
    new-instance v3, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1112
    .line 1113
    iget-wide v5, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 1114
    .line 1115
    invoke-direct {v3, v5, v6}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(J)V

    .line 1116
    .line 1117
    .line 1118
    if-eqz v0, :cond_33

    .line 1119
    .line 1120
    iput-object v3, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 1121
    .line 1122
    iput v9, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 1123
    .line 1124
    invoke-virtual {v0, v3, v4}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v0

    .line 1128
    if-ne v0, v2, :cond_32

    .line 1129
    .line 1130
    :goto_23
    move-object v11, v2

    .line 1131
    goto :goto_25

    .line 1132
    :cond_32
    move-object v0, v3

    .line 1133
    :goto_24
    move-object v3, v0

    .line 1134
    :cond_33
    invoke-interface {v1, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1135
    .line 1136
    .line 1137
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1138
    .line 1139
    :goto_25
    return-object v11

    .line 1140
    :pswitch_5
    iget-wide v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 1141
    .line 1142
    iget-object v2, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 1143
    .line 1144
    move-object v6, v2

    .line 1145
    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 1146
    .line 1147
    iget-object v2, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->placementDeltaAnimation:Landroidx/compose/animation/core/Animatable;

    .line 1148
    .line 1149
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1150
    .line 1151
    iget v3, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 1152
    .line 1153
    if-eqz v3, :cond_36

    .line 1154
    .line 1155
    if-eq v3, v10, :cond_35

    .line 1156
    .line 1157
    if-ne v3, v9, :cond_34

    .line 1158
    .line 1159
    :try_start_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1160
    .line 1161
    .line 1162
    goto/16 :goto_29

    .line 1163
    .line 1164
    :cond_34
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1165
    .line 1166
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1167
    .line 1168
    .line 1169
    goto/16 :goto_2a

    .line 1170
    .line 1171
    :cond_35
    iget-object v3, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 1172
    .line 1173
    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 1174
    .line 1175
    :try_start_a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_5

    .line 1176
    .line 1177
    .line 1178
    goto :goto_27

    .line 1179
    :cond_36
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1180
    .line 1181
    .line 1182
    :try_start_b
    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->isRunning()Z

    .line 1183
    .line 1184
    .line 1185
    move-result v3
    :try_end_b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b .. :try_end_b} :catch_5

    .line 1186
    iget-object v5, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneBody:Ljava/lang/Object;

    .line 1187
    .line 1188
    check-cast v5, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 1189
    .line 1190
    if-eqz v3, :cond_38

    .line 1191
    .line 1192
    :try_start_c
    instance-of v3, v5, Landroidx/compose/animation/core/SpringSpec;

    .line 1193
    .line 1194
    if-eqz v3, :cond_37

    .line 1195
    .line 1196
    check-cast v5, Landroidx/compose/animation/core/SpringSpec;

    .line 1197
    .line 1198
    goto :goto_26

    .line 1199
    :cond_37
    sget-object v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimationKt;->InterruptionSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 1200
    .line 1201
    :cond_38
    :goto_26
    move-object v3, v5

    .line 1202
    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->isRunning()Z

    .line 1203
    .line 1204
    .line 1205
    move-result v5

    .line 1206
    if-nez v5, :cond_3a

    .line 1207
    .line 1208
    new-instance v5, Landroidx/compose/ui/unit/IntOffset;

    .line 1209
    .line 1210
    invoke-direct {v5, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 1211
    .line 1212
    .line 1213
    iput-object v3, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 1214
    .line 1215
    iput v10, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 1216
    .line 1217
    invoke-virtual {v2, v5, v4}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v5

    .line 1221
    if-ne v5, v7, :cond_39

    .line 1222
    .line 1223
    goto :goto_28

    .line 1224
    :cond_39
    :goto_27
    iget-object v5, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->onLayerPropertyChanged:Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;

    .line 1225
    .line 1226
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 1227
    .line 1228
    .line 1229
    :cond_3a
    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v5

    .line 1233
    check-cast v5, Landroidx/compose/ui/unit/IntOffset;

    .line 1234
    .line 1235
    iget-wide v12, v5, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    .line 1236
    .line 1237
    invoke-static {v12, v13, v0, v1}, Landroidx/compose/ui/unit/IntOffset;->minus-qkQi6aY(JJ)J

    .line 1238
    .line 1239
    .line 1240
    move-result-wide v0

    .line 1241
    new-instance v5, Landroidx/compose/ui/unit/IntOffset;

    .line 1242
    .line 1243
    invoke-direct {v5, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 1244
    .line 1245
    .line 1246
    move-object v12, v2

    .line 1247
    move-object v2, v3

    .line 1248
    new-instance v3, Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda2;

    .line 1249
    .line 1250
    invoke-direct {v3, v10, v0, v1, v6}, Lorg/wikipedia/compose/extensions/ModifierKt$$ExternalSyntheticLambda2;-><init>(IJLjava/lang/Object;)V

    .line 1251
    .line 1252
    .line 1253
    iput-object v11, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 1254
    .line 1255
    iput v9, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 1256
    .line 1257
    move-object v1, v5

    .line 1258
    const/4 v5, 0x4

    .line 1259
    move-object v0, v12

    .line 1260
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v0

    .line 1264
    if-ne v0, v7, :cond_3b

    .line 1265
    .line 1266
    :goto_28
    move-object v11, v7

    .line 1267
    goto :goto_2a

    .line 1268
    :cond_3b
    :goto_29
    iget-object v0, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isPlacementAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1269
    .line 1270
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1271
    .line 1272
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 1273
    .line 1274
    .line 1275
    iput-boolean v8, v6, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isRunningMovingAwayAnimation:Z
    :try_end_c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c .. :try_end_c} :catch_5

    .line 1276
    .line 1277
    :catch_5
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1278
    .line 1279
    :goto_2a
    return-object v11

    .line 1280
    :pswitch_6
    iget-object v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 1281
    .line 1282
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 1283
    .line 1284
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1285
    .line 1286
    iget v1, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 1287
    .line 1288
    if-eqz v1, :cond_3d

    .line 1289
    .line 1290
    if-ne v1, v10, :cond_3c

    .line 1291
    .line 1292
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1293
    .line 1294
    .line 1295
    goto :goto_2b

    .line 1296
    :cond_3c
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1297
    .line 1298
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1299
    .line 1300
    .line 1301
    goto :goto_2c

    .line 1302
    :cond_3d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1303
    .line 1304
    .line 1305
    iget-object v1, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 1306
    .line 1307
    check-cast v1, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 1308
    .line 1309
    iget-wide v2, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 1310
    .line 1311
    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    .line 1312
    .line 1313
    .line 1314
    move-result v2

    .line 1315
    iget-object v3, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneBody:Ljava/lang/Object;

    .line 1316
    .line 1317
    check-cast v3, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 1318
    .line 1319
    new-instance v5, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;

    .line 1320
    .line 1321
    invoke-direct {v5, v3, v0, v1, v10}, Lorg/wikipedia/random/RandomScreenKt$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1322
    .line 1323
    .line 1324
    iput v10, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 1325
    .line 1326
    const/4 v0, 0x0

    .line 1327
    move v1, v2

    .line 1328
    const/4 v2, 0x0

    .line 1329
    move-object v3, v5

    .line 1330
    const/16 v5, 0xc

    .line 1331
    .line 1332
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/ArcSplineKt;->animate$default(FFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v0

    .line 1336
    if-ne v0, v6, :cond_3e

    .line 1337
    .line 1338
    move-object v11, v6

    .line 1339
    goto :goto_2c

    .line 1340
    :cond_3e
    :goto_2b
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1341
    .line 1342
    :goto_2c
    return-object v11

    .line 1343
    :pswitch_7
    iget-object v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneBody:Ljava/lang/Object;

    .line 1344
    .line 1345
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 1346
    .line 1347
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1348
    .line 1349
    iget v2, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 1350
    .line 1351
    if-eqz v2, :cond_42

    .line 1352
    .line 1353
    if-eq v2, v10, :cond_41

    .line 1354
    .line 1355
    if-eq v2, v9, :cond_40

    .line 1356
    .line 1357
    if-ne v2, v7, :cond_3f

    .line 1358
    .line 1359
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1360
    .line 1361
    .line 1362
    goto :goto_30

    .line 1363
    :cond_3f
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1364
    .line 1365
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1366
    .line 1367
    .line 1368
    goto :goto_31

    .line 1369
    :cond_40
    iget-object v2, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 1370
    .line 1371
    check-cast v2, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 1372
    .line 1373
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1374
    .line 1375
    .line 1376
    goto :goto_2e

    .line 1377
    :cond_41
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1378
    .line 1379
    .line 1380
    goto :goto_2d

    .line 1381
    :cond_42
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1382
    .line 1383
    .line 1384
    iget-object v2, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 1385
    .line 1386
    check-cast v2, Lkotlinx/coroutines/Job;

    .line 1387
    .line 1388
    iput v10, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 1389
    .line 1390
    invoke-interface {v2, v4}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v2

    .line 1394
    if-ne v2, v1, :cond_43

    .line 1395
    .line 1396
    goto :goto_2f

    .line 1397
    :cond_43
    :goto_2d
    new-instance v2, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1398
    .line 1399
    iget-wide v5, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 1400
    .line 1401
    invoke-direct {v2, v5, v6}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(J)V

    .line 1402
    .line 1403
    .line 1404
    new-instance v3, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 1405
    .line 1406
    invoke-direct {v3, v2}, Landroidx/compose/foundation/interaction/PressInteraction$Release;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    .line 1407
    .line 1408
    .line 1409
    iput-object v3, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 1410
    .line 1411
    iput v9, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 1412
    .line 1413
    invoke-virtual {v0, v2, v4}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v2

    .line 1417
    if-ne v2, v1, :cond_44

    .line 1418
    .line 1419
    goto :goto_2f

    .line 1420
    :cond_44
    move-object v2, v3

    .line 1421
    :goto_2e
    iput-object v11, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 1422
    .line 1423
    iput v7, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 1424
    .line 1425
    invoke-virtual {v0, v2, v4}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v0

    .line 1429
    if-ne v0, v1, :cond_45

    .line 1430
    .line 1431
    :goto_2f
    move-object v11, v1

    .line 1432
    goto :goto_31

    .line 1433
    :cond_45
    :goto_30
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1434
    .line 1435
    :goto_31
    return-object v11

    .line 1436
    :pswitch_8
    iget-object v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->this$0:Ljava/lang/Object;

    .line 1437
    .line 1438
    move-object v6, v0

    .line 1439
    check-cast v6, Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 1440
    .line 1441
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1442
    .line 1443
    iget v0, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 1444
    .line 1445
    if-eqz v0, :cond_48

    .line 1446
    .line 1447
    if-eq v0, v10, :cond_47

    .line 1448
    .line 1449
    if-ne v0, v9, :cond_46

    .line 1450
    .line 1451
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1452
    .line 1453
    .line 1454
    move-object/from16 v0, p1

    .line 1455
    .line 1456
    goto :goto_34

    .line 1457
    :cond_46
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1458
    .line 1459
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1460
    .line 1461
    .line 1462
    goto :goto_35

    .line 1463
    :cond_47
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1464
    .line 1465
    .line 1466
    move-object/from16 v0, p1

    .line 1467
    .line 1468
    goto :goto_32

    .line 1469
    :cond_48
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1470
    .line 1471
    .line 1472
    sget-object v0, Lorg/wikipedia/csrf/CsrfTokenClient;->INSTANCE:Lorg/wikipedia/csrf/CsrfTokenClient;

    .line 1473
    .line 1474
    iget-object v0, v6, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1475
    .line 1476
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1477
    .line 1478
    iput v10, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 1479
    .line 1480
    invoke-static {v0, v4}, Lorg/wikipedia/csrf/CsrfTokenClient;->getToken$default(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v0

    .line 1484
    if-ne v0, v7, :cond_49

    .line 1485
    .line 1486
    goto :goto_33

    .line 1487
    :cond_49
    :goto_32
    move-object v2, v0

    .line 1488
    check-cast v2, Ljava/lang/String;

    .line 1489
    .line 1490
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 1491
    .line 1492
    iget-object v0, v6, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1493
    .line 1494
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1495
    .line 1496
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v0

    .line 1500
    iget-object v1, v6, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1501
    .line 1502
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v1

    .line 1506
    iget-wide v12, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$newRevisionId:J

    .line 1507
    .line 1508
    iput v9, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->label:I

    .line 1509
    .line 1510
    move-object v5, v4

    .line 1511
    move-wide v3, v12

    .line 1512
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/dataclient/Service$-CC;->postUndoEdit$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v0

    .line 1516
    move-object v4, v5

    .line 1517
    if-ne v0, v7, :cond_4a

    .line 1518
    .line 1519
    :goto_33
    move-object v11, v7

    .line 1520
    goto :goto_35

    .line 1521
    :cond_4a
    :goto_34
    check-cast v0, Lorg/wikipedia/edit/Edit;

    .line 1522
    .line 1523
    iget-object v1, v6, Lorg/wikipedia/talk/TalkTopicsViewModel;->actionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1524
    .line 1525
    new-instance v2, Lorg/wikipedia/talk/TalkTopicsViewModel$ActionState$UndoEdit;

    .line 1526
    .line 1527
    iget-object v3, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneSubject:Ljava/lang/Object;

    .line 1528
    .line 1529
    check-cast v3, Ljava/lang/CharSequence;

    .line 1530
    .line 1531
    iget-object v4, v4, Lorg/wikipedia/talk/TalkTopicsViewModel$undoSave$1;->$undoneBody:Ljava/lang/Object;

    .line 1532
    .line 1533
    check-cast v4, Ljava/lang/CharSequence;

    .line 1534
    .line 1535
    invoke-direct {v2, v0, v3, v4}, Lorg/wikipedia/talk/TalkTopicsViewModel$ActionState$UndoEdit;-><init>(Lorg/wikipedia/edit/Edit;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1536
    .line 1537
    .line 1538
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v1, v11, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1542
    .line 1543
    .line 1544
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1545
    .line 1546
    :goto_35
    return-object v11

    .line 1547
    :pswitch_data_0
    .packed-switch 0x0
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

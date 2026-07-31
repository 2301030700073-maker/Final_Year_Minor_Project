.class public final Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 13
    iput p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->$r8$classId:I

    iput-object p2, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/random/RandomViewModel;ILkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 9
    .line 10
    check-cast v0, Lorg/wikipedia/yearinreview/YearInReviewOnboardingViewModel;

    .line 11
    .line 12
    const/16 p1, 0x15

    .line 13
    .line 14
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_0
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 19
    .line 20
    check-cast v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity;

    .line 21
    .line 22
    const/16 p1, 0x14

    .line 23
    .line 24
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_1
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 29
    .line 30
    check-cast v0, Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 31
    .line 32
    const/16 p1, 0x13

    .line 33
    .line 34
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_2
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 39
    .line 40
    check-cast v0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 41
    .line 42
    const/16 p1, 0x12

    .line 43
    .line 44
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_3
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 49
    .line 50
    check-cast v0, Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 51
    .line 52
    const/16 p1, 0x11

    .line 53
    .line 54
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 55
    .line 56
    .line 57
    return-object p0

    .line 58
    :pswitch_4
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 59
    .line 60
    check-cast v0, Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 61
    .line 62
    const/16 p1, 0x10

    .line 63
    .line 64
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 65
    .line 66
    .line 67
    return-object p0

    .line 68
    :pswitch_5
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 69
    .line 70
    check-cast v0, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlayGroundDialog;

    .line 71
    .line 72
    const/16 p1, 0xf

    .line 73
    .line 74
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_6
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 79
    .line 80
    check-cast v0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 81
    .line 82
    const/16 p1, 0xe

    .line 83
    .line 84
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 85
    .line 86
    .line 87
    return-object p0

    .line 88
    :pswitch_7
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 89
    .line 90
    check-cast v0, Lorg/wikipedia/recurring/RecurringTask;

    .line 91
    .line 92
    const/16 p1, 0xd

    .line 93
    .line 94
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 95
    .line 96
    .line 97
    return-object p0

    .line 98
    :pswitch_8
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 99
    .line 100
    check-cast v0, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 101
    .line 102
    const/16 p1, 0xc

    .line 103
    .line 104
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 105
    .line 106
    .line 107
    return-object p0

    .line 108
    :pswitch_9
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 109
    .line 110
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 111
    .line 112
    const/16 p1, 0xb

    .line 113
    .line 114
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 115
    .line 116
    .line 117
    return-object p0

    .line 118
    :pswitch_a
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 119
    .line 120
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;

    .line 121
    .line 122
    const/16 p1, 0xa

    .line 123
    .line 124
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 125
    .line 126
    .line 127
    return-object p0

    .line 128
    :pswitch_b
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 129
    .line 130
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 131
    .line 132
    const/16 p1, 0x9

    .line 133
    .line 134
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 135
    .line 136
    .line 137
    return-object p0

    .line 138
    :pswitch_c
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 139
    .line 140
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 141
    .line 142
    const/16 p1, 0x8

    .line 143
    .line 144
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 145
    .line 146
    .line 147
    return-object p0

    .line 148
    :pswitch_d
    new-instance p1, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 149
    .line 150
    check-cast v0, Lorg/wikipedia/random/RandomViewModel;

    .line 151
    .line 152
    iget p0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 153
    .line 154
    invoke-direct {p1, v0, p0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(Lorg/wikipedia/random/RandomViewModel;ILkotlin/coroutines/Continuation;)V

    .line 155
    .line 156
    .line 157
    return-object p1

    .line 158
    :pswitch_e
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 159
    .line 160
    check-cast v0, Lorg/wikipedia/login/LoginActivity;

    .line 161
    .line 162
    const/4 p1, 0x6

    .line 163
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 164
    .line 165
    .line 166
    return-object p0

    .line 167
    :pswitch_f
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 168
    .line 169
    check-cast v0, Lorg/wikipedia/language/LangLinksViewModel;

    .line 170
    .line 171
    const/4 p1, 0x5

    .line 172
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 173
    .line 174
    .line 175
    return-object p0

    .line 176
    :pswitch_10
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 177
    .line 178
    check-cast v0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 179
    .line 180
    const/4 p1, 0x4

    .line 181
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 182
    .line 183
    .line 184
    return-object p0

    .line 185
    :pswitch_11
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 186
    .line 187
    check-cast v0, Lorg/wikipedia/gallery/GalleryItemViewModel;

    .line 188
    .line 189
    const/4 p1, 0x3

    .line 190
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 191
    .line 192
    .line 193
    return-object p0

    .line 194
    :pswitch_12
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 195
    .line 196
    check-cast v0, Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 197
    .line 198
    const/4 p1, 0x2

    .line 199
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 200
    .line 201
    .line 202
    return-object p0

    .line 203
    :pswitch_13
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 204
    .line 205
    check-cast v0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 206
    .line 207
    const/4 p1, 0x1

    .line 208
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 209
    .line 210
    .line 211
    return-object p0

    .line 212
    :pswitch_14
    new-instance p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 213
    .line 214
    check-cast v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 215
    .line 216
    const/4 p1, 0x0

    .line 217
    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 218
    .line 219
    .line 220
    return-object p0

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :pswitch_8
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 116
    .line 117
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    :pswitch_9
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 127
    .line 128
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :pswitch_a
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 138
    .line 139
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    :pswitch_b
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 149
    .line 150
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    return-object p0

    .line 155
    :pswitch_c
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 160
    .line 161
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    return-object p0

    .line 166
    :pswitch_d
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 171
    .line 172
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    return-object v1

    .line 176
    :pswitch_e
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 181
    .line 182
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    return-object p0

    .line 187
    :pswitch_f
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 192
    .line 193
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    return-object p0

    .line 198
    :pswitch_10
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 203
    .line 204
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    return-object p0

    .line 209
    :pswitch_11
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 214
    .line 215
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    return-object p0

    .line 220
    :pswitch_12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 225
    .line 226
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    return-object p0

    .line 231
    :pswitch_13
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 236
    .line 237
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    return-object p0

    .line 242
    :pswitch_14
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    check-cast p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 247
    .line 248
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    return-object p0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    iget v0, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;->INSTANCE:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    const-string v7, "call to \'resume\' before \'invoke\' with coroutine"

    .line 14
    .line 15
    iget-object v8, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->this$0:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v9, 0x1

    .line 18
    const/4 v10, 0x0

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast v8, Lorg/wikipedia/yearinreview/YearInReviewOnboardingViewModel;

    .line 23
    .line 24
    iget-object v0, v8, Lorg/wikipedia/yearinreview/YearInReviewOnboardingViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 25
    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 27
    .line 28
    iget v2, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    if-ne v2, v9, :cond_0

    .line 33
    .line 34
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    move-object v6, v10

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    sget-object v2, Lorg/wikipedia/util/UiState$Loading;->INSTANCE:Lorg/wikipedia/util/UiState$Loading;

    .line 50
    .line 51
    invoke-virtual {v0, v10, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 61
    .line 62
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 63
    .line 64
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 77
    .line 78
    invoke-interface {v2, v5}, Lorg/wikipedia/dataclient/Service;->getUserInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-ne v2, v1, :cond_2

    .line 83
    .line 84
    move-object v6, v1

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    :goto_0
    new-instance v1, Lorg/wikipedia/util/UiState$Success;

    .line 87
    .line 88
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-direct {v1, v2}, Lorg/wikipedia/util/UiState$Success;-><init>(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v10, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :goto_1
    return-object v6

    .line 106
    :pswitch_0
    check-cast v8, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity;

    .line 107
    .line 108
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 109
    .line 110
    iget v1, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 111
    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    if-ne v1, v9, :cond_3

    .line 115
    .line 116
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    move-object v6, v10

    .line 124
    goto :goto_3

    .line 125
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    new-instance v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;

    .line 129
    .line 130
    invoke-direct {v1, v8}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 134
    .line 135
    invoke-virtual {v1, v5}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->updateWidgetsAndSendAnalytics(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-ne v1, v0, :cond_5

    .line 140
    .line 141
    move-object v6, v0

    .line 142
    goto :goto_3

    .line 143
    :cond_5
    :goto_2
    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 144
    .line 145
    .line 146
    :goto_3
    return-object v6

    .line 147
    :pswitch_1
    check-cast v8, Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 148
    .line 149
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 150
    .line 151
    iget v1, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 152
    .line 153
    if-eqz v1, :cond_7

    .line 154
    .line 155
    if-ne v1, v9, :cond_6

    .line 156
    .line 157
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    move-object/from16 v1, p1

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_6
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    move-object v6, v10

    .line 167
    goto/16 :goto_7

    .line 168
    .line 169
    :cond_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v8}, Lorg/wikipedia/usercontrib/UserContribListViewModel;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const-string v3, "project-localized-name-"

    .line 181
    .line 182
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    sget-object v3, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 187
    .line 188
    invoke-virtual {v8}, Lorg/wikipedia/usercontrib/UserContribListViewModel;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-static {v3}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    iget-object v7, v8, Lorg/wikipedia/usercontrib/UserContribListViewModel;->userName:Ljava/lang/String;

    .line 197
    .line 198
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 199
    .line 200
    invoke-interface {v3, v7, v1, v5}, Lorg/wikipedia/dataclient/Service;->userInfoWithMessages(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    if-ne v1, v0, :cond_8

    .line 205
    .line 206
    move-object v6, v0

    .line 207
    goto :goto_7

    .line 208
    :cond_8
    :goto_4
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 209
    .line 210
    iget-object v0, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 211
    .line 212
    iget-object v1, v8, Lorg/wikipedia/usercontrib/UserContribListViewModel;->userContribStatsData:Landroidx/lifecycle/MutableLiveData;

    .line 213
    .line 214
    if-eqz v0, :cond_9

    .line 215
    .line 216
    iget-object v3, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->users:Ljava/util/List;

    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_9
    move-object v3, v10

    .line 220
    :goto_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 228
    .line 229
    iget v3, v3, Lorg/wikipedia/dataclient/mwapi/UserInfo;->editCount:I

    .line 230
    .line 231
    iget-object v5, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->users:Ljava/util/List;

    .line 232
    .line 233
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    check-cast v5, Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 238
    .line 239
    invoke-virtual {v5}, Lorg/wikipedia/dataclient/mwapi/UserInfo;->getRegistrationDate()Ljava/util/Date;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->allmessages:Ljava/util/List;

    .line 244
    .line 245
    if-nez v0, :cond_a

    .line 246
    .line 247
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 248
    .line 249
    :cond_a
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Message;

    .line 254
    .line 255
    if-eqz v0, :cond_b

    .line 256
    .line 257
    iget-object v10, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$Message;->content:Ljava/lang/String;

    .line 258
    .line 259
    :cond_b
    if-nez v10, :cond_c

    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_c
    move-object v2, v10

    .line 263
    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-nez v0, :cond_d

    .line 268
    .line 269
    invoke-virtual {v8}, Lorg/wikipedia/usercontrib/UserContribListViewModel;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->dbName()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    :cond_d
    new-instance v0, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribStats;

    .line 278
    .line 279
    invoke-direct {v0, v3, v5, v2}, Lorg/wikipedia/usercontrib/UserContribListViewModel$UserContribStats;-><init>(ILjava/util/Date;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    new-instance v2, Lorg/wikipedia/util/Resource$Success;

    .line 283
    .line 284
    invoke-direct {v2, v0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :goto_7
    return-object v6

    .line 291
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 292
    .line 293
    iget v1, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 294
    .line 295
    if-eqz v1, :cond_f

    .line 296
    .line 297
    if-ne v1, v9, :cond_e

    .line 298
    .line 299
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    goto :goto_a

    .line 303
    :cond_e
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    move-object v6, v10

    .line 307
    goto :goto_a

    .line 308
    :cond_f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    check-cast v8, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 312
    .line 313
    iget-object v1, v8, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->talkTemplatesRepository:Lorg/wikipedia/media/AvPlayer;

    .line 314
    .line 315
    iget-object v2, v8, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->talkTemplatesList:Ljava/util/ArrayList;

    .line 316
    .line 317
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 318
    .line 319
    iget-object v1, v1, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v1, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;

    .line 322
    .line 323
    iget-object v3, v1, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 324
    .line 325
    new-instance v7, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;

    .line 326
    .line 327
    const/16 v8, 0xb

    .line 328
    .line 329
    invoke-direct {v7, v8, v1, v2}, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    invoke-static {v3, v4, v9, v7, v5}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    if-ne v1, v0, :cond_10

    .line 337
    .line 338
    goto :goto_8

    .line 339
    :cond_10
    move-object v1, v6

    .line 340
    :goto_8
    if-ne v1, v0, :cond_11

    .line 341
    .line 342
    goto :goto_9

    .line 343
    :cond_11
    move-object v1, v6

    .line 344
    :goto_9
    if-ne v1, v0, :cond_12

    .line 345
    .line 346
    move-object v6, v0

    .line 347
    :cond_12
    :goto_a
    return-object v6

    .line 348
    :pswitch_3
    check-cast v8, Lorg/wikipedia/talk/TalkTopicViewModel;

    .line 349
    .line 350
    iget-object v0, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 351
    .line 352
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 353
    .line 354
    iget v1, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 355
    .line 356
    if-eqz v1, :cond_15

    .line 357
    .line 358
    if-eq v1, v9, :cond_14

    .line 359
    .line 360
    if-ne v1, v3, :cond_13

    .line 361
    .line 362
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    move-object/from16 v0, p1

    .line 366
    .line 367
    goto :goto_e

    .line 368
    :cond_13
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    move-object v6, v10

    .line 372
    goto/16 :goto_f

    .line 373
    .line 374
    :cond_14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    move-object/from16 v1, p1

    .line 378
    .line 379
    goto :goto_b

    .line 380
    :cond_15
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 384
    .line 385
    iget-object v1, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 386
    .line 387
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 392
    .line 393
    const-string v2, "csrf"

    .line 394
    .line 395
    invoke-interface {v1, v2, v5}, Lorg/wikipedia/dataclient/Service;->getToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    if-ne v1, v11, :cond_16

    .line 400
    .line 401
    goto :goto_d

    .line 402
    :cond_16
    :goto_b
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 403
    .line 404
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 405
    .line 406
    if-eqz v1, :cond_17

    .line 407
    .line 408
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->csrfToken()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    goto :goto_c

    .line 413
    :cond_17
    move-object v1, v10

    .line 414
    :goto_c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    .line 416
    .line 417
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 418
    .line 419
    iget-object v2, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 420
    .line 421
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    move-object v4, v1

    .line 430
    move-object v1, v0

    .line 431
    move-object v0, v2

    .line 432
    iget-object v2, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->topicName:Ljava/lang/String;

    .line 433
    .line 434
    iget-boolean v7, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->subscribed:Z

    .line 435
    .line 436
    if-nez v7, :cond_18

    .line 437
    .line 438
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 439
    .line 440
    :cond_18
    iput v3, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 441
    .line 442
    move-object v3, v4

    .line 443
    move-object v4, v10

    .line 444
    invoke-interface/range {v0 .. v5}, Lorg/wikipedia/dataclient/Service;->subscribeTalkPageTopic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    if-ne v0, v11, :cond_19

    .line 449
    .line 450
    :goto_d
    move-object v6, v11

    .line 451
    goto :goto_f

    .line 452
    :cond_19
    :goto_e
    check-cast v0, Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsSubscribeResponse;

    .line 453
    .line 454
    iget-object v0, v0, Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsSubscribeResponse;->status:Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsSubscribeResponse$SubscribeStatus;

    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    iget-boolean v0, v0, Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsSubscribeResponse$SubscribeStatus;->subscribe:Z

    .line 460
    .line 461
    iput-boolean v0, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->subscribed:Z

    .line 462
    .line 463
    iget-object v1, v8, Lorg/wikipedia/talk/TalkTopicViewModel;->subscribeData:Lorg/wikipedia/util/SingleLiveData;

    .line 464
    .line 465
    new-instance v2, Lorg/wikipedia/util/Resource$Success;

    .line 466
    .line 467
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-direct {v2, v0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    :goto_f
    return-object v6

    .line 478
    :pswitch_4
    check-cast v8, Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 479
    .line 480
    iget-object v0, v8, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 481
    .line 482
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 483
    .line 484
    iget v2, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 485
    .line 486
    if-eqz v2, :cond_1b

    .line 487
    .line 488
    if-ne v2, v9, :cond_1a

    .line 489
    .line 490
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 491
    .line 492
    .line 493
    move-object/from16 v0, p1

    .line 494
    .line 495
    goto :goto_10

    .line 496
    :cond_1a
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    move-object v6, v10

    .line 500
    goto :goto_13

    .line 501
    :cond_1b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 505
    .line 506
    iget-object v2, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 507
    .line 508
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 517
    .line 518
    invoke-interface {v2, v0, v5}, Lorg/wikipedia/dataclient/Service;->getPageIds(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    if-ne v0, v1, :cond_1c

    .line 523
    .line 524
    move-object v6, v1

    .line 525
    goto :goto_13

    .line 526
    :cond_1c
    :goto_10
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 527
    .line 528
    iget-object v1, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 529
    .line 530
    if-eqz v1, :cond_1d

    .line 531
    .line 532
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 533
    .line 534
    if-eqz v1, :cond_1d

    .line 535
    .line 536
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 541
    .line 542
    if-eqz v1, :cond_1d

    .line 543
    .line 544
    iget v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageId:I

    .line 545
    .line 546
    goto :goto_11

    .line 547
    :cond_1d
    move v1, v4

    .line 548
    :goto_11
    if-lez v1, :cond_1e

    .line 549
    .line 550
    move v1, v9

    .line 551
    goto :goto_12

    .line 552
    :cond_1e
    move v1, v4

    .line 553
    :goto_12
    iput-boolean v1, v8, Lorg/wikipedia/talk/TalkReplyViewModel;->doesPageExist:Z

    .line 554
    .line 555
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 556
    .line 557
    if-eqz v0, :cond_1f

    .line 558
    .line 559
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->autoCreateTempUser:Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser;

    .line 560
    .line 561
    if-eqz v0, :cond_1f

    .line 562
    .line 563
    iget-boolean v0, v0, Lorg/wikipedia/settings/SiteInfo$AutoCreateTempUser;->enabled:Z

    .line 564
    .line 565
    if-ne v0, v9, :cond_1f

    .line 566
    .line 567
    move v4, v9

    .line 568
    :cond_1f
    iput-boolean v4, v8, Lorg/wikipedia/talk/TalkReplyViewModel;->tempAccountsEnabled:Z

    .line 569
    .line 570
    iget-object v0, v8, Lorg/wikipedia/talk/TalkReplyViewModel;->pageExistsData:Landroidx/lifecycle/MutableLiveData;

    .line 571
    .line 572
    new-instance v2, Lorg/wikipedia/util/Resource$Success;

    .line 573
    .line 574
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    invoke-direct {v2, v1}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    :goto_13
    return-object v6

    .line 585
    :pswitch_5
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 586
    .line 587
    iget v1, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 588
    .line 589
    if-eqz v1, :cond_21

    .line 590
    .line 591
    if-ne v1, v9, :cond_20

    .line 592
    .line 593
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 594
    .line 595
    .line 596
    goto :goto_14

    .line 597
    :cond_20
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    move-object v6, v10

    .line 601
    goto :goto_14

    .line 602
    :cond_21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 603
    .line 604
    .line 605
    new-instance v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;

    .line 606
    .line 607
    check-cast v8, Lorg/wikipedia/settings/dev/playground/ReadingChallengePlayGroundDialog;

    .line 608
    .line 609
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    invoke-direct {v1, v2}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;-><init>(Landroid/content/Context;)V

    .line 614
    .line 615
    .line 616
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 617
    .line 618
    invoke-virtual {v1, v5}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->updateWidgetsAndSendAnalytics(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    if-ne v1, v0, :cond_22

    .line 623
    .line 624
    move-object v6, v0

    .line 625
    :cond_22
    :goto_14
    return-object v6

    .line 626
    :pswitch_6
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 627
    .line 628
    iget v1, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 629
    .line 630
    if-eqz v1, :cond_25

    .line 631
    .line 632
    if-eq v1, v9, :cond_24

    .line 633
    .line 634
    if-ne v1, v3, :cond_23

    .line 635
    .line 636
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 637
    .line 638
    .line 639
    goto :goto_17

    .line 640
    :cond_23
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    move-object v6, v10

    .line 644
    goto :goto_17

    .line 645
    :cond_24
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 646
    .line 647
    .line 648
    move-object/from16 v1, p1

    .line 649
    .line 650
    goto :goto_15

    .line 651
    :cond_25
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 652
    .line 653
    .line 654
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 655
    .line 656
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->categoryDao()Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 665
    .line 666
    iget-object v1, v1, Lorg/wikipedia/categories/db/CategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 667
    .line 668
    new-instance v2, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;

    .line 669
    .line 670
    const/16 v7, 0x1d

    .line 671
    .line 672
    invoke-direct {v2, v7}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;-><init>(I)V

    .line 673
    .line 674
    .line 675
    invoke-static {v1, v9, v4, v2, v5}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v1

    .line 679
    if-ne v1, v0, :cond_26

    .line 680
    .line 681
    goto :goto_16

    .line 682
    :cond_26
    :goto_15
    check-cast v1, Ljava/util/List;

    .line 683
    .line 684
    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 685
    .line 686
    sget-object v2, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 687
    .line 688
    new-instance v4, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 689
    .line 690
    check-cast v8, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 691
    .line 692
    const/16 v7, 0x1a

    .line 693
    .line 694
    invoke-direct {v4, v8, v1, v10, v7}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 695
    .line 696
    .line 697
    iput v3, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 698
    .line 699
    invoke-static {v2, v4, v5}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    if-ne v1, v0, :cond_27

    .line 704
    .line 705
    :goto_16
    move-object v6, v0

    .line 706
    :cond_27
    :goto_17
    return-object v6

    .line 707
    :pswitch_7
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 708
    .line 709
    iget v1, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 710
    .line 711
    if-eqz v1, :cond_29

    .line 712
    .line 713
    if-ne v1, v9, :cond_28

    .line 714
    .line 715
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 716
    .line 717
    .line 718
    goto :goto_18

    .line 719
    :cond_28
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    move-object v6, v10

    .line 723
    goto :goto_18

    .line 724
    :cond_29
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 725
    .line 726
    .line 727
    check-cast v8, Lorg/wikipedia/recurring/RecurringTask;

    .line 728
    .line 729
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 730
    .line 731
    invoke-virtual {v8, v5}, Lorg/wikipedia/recurring/RecurringTask;->runIfNecessary(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v1

    .line 735
    if-ne v1, v0, :cond_2a

    .line 736
    .line 737
    move-object v6, v0

    .line 738
    :cond_2a
    :goto_18
    return-object v6

    .line 739
    :pswitch_8
    check-cast v8, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;

    .line 740
    .line 741
    iget-object v0, v8, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSettingsViewModel;->_resetUiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 742
    .line 743
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 744
    .line 745
    iget v3, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 746
    .line 747
    if-eqz v3, :cond_2c

    .line 748
    .line 749
    if-ne v3, v9, :cond_2b

    .line 750
    .line 751
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 752
    .line 753
    .line 754
    goto :goto_19

    .line 755
    :cond_2b
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    move-object v6, v10

    .line 759
    goto :goto_1a

    .line 760
    :cond_2c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 761
    .line 762
    .line 763
    new-instance v3, Lorg/wikipedia/util/Resource$Loading;

    .line 764
    .line 765
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 769
    .line 770
    .line 771
    invoke-virtual {v0, v10, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 775
    .line 776
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getResetRecommendedReadingList()Z

    .line 777
    .line 778
    .line 779
    move-result v3

    .line 780
    if-eqz v3, :cond_2d

    .line 781
    .line 782
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 783
    .line 784
    invoke-virtual {v1, v9, v5}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;->generateRecommendedReadingList(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v1

    .line 788
    if-ne v1, v2, :cond_2d

    .line 789
    .line 790
    move-object v6, v2

    .line 791
    goto :goto_1a

    .line 792
    :cond_2d
    :goto_19
    new-instance v1, Lorg/wikipedia/util/Resource$Success;

    .line 793
    .line 794
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 795
    .line 796
    invoke-direct {v1, v2}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 800
    .line 801
    .line 802
    invoke-virtual {v0, v10, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 803
    .line 804
    .line 805
    :goto_1a
    return-object v6

    .line 806
    :pswitch_9
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 807
    .line 808
    iget v1, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 809
    .line 810
    if-eqz v1, :cond_2f

    .line 811
    .line 812
    if-eq v1, v9, :cond_2e

    .line 813
    .line 814
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    goto :goto_1c

    .line 818
    :cond_2e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 819
    .line 820
    .line 821
    goto :goto_1b

    .line 822
    :cond_2f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 823
    .line 824
    .line 825
    sget-object v1, Lorg/wikipedia/concurrency/FlowEventBus;->events:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 826
    .line 827
    new-instance v2, Landroidx/paging/ChannelFlowCollector;

    .line 828
    .line 829
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 830
    .line 831
    const/16 v3, 0x13

    .line 832
    .line 833
    invoke-direct {v2, v3, v8}, Landroidx/paging/ChannelFlowCollector;-><init>(ILjava/lang/Object;)V

    .line 834
    .line 835
    .line 836
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 837
    .line 838
    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->$$delegate_0:Lkotlinx/coroutines/flow/SharedFlow;

    .line 839
    .line 840
    invoke-interface {v1, v2, v5}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    if-ne v1, v0, :cond_30

    .line 845
    .line 846
    move-object v10, v0

    .line 847
    goto :goto_1c

    .line 848
    :cond_30
    :goto_1b
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 849
    .line 850
    .line 851
    :goto_1c
    return-object v10

    .line 852
    :pswitch_a
    check-cast v8, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;

    .line 853
    .line 854
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 855
    .line 856
    iget v1, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 857
    .line 858
    const/16 v2, 0x8

    .line 859
    .line 860
    if-eqz v1, :cond_32

    .line 861
    .line 862
    if-ne v1, v9, :cond_31

    .line 863
    .line 864
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 865
    .line 866
    .line 867
    move-object/from16 v1, p1

    .line 868
    .line 869
    goto :goto_1d

    .line 870
    :cond_31
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 871
    .line 872
    .line 873
    move-object v6, v10

    .line 874
    goto/16 :goto_20

    .line 875
    .line 876
    :cond_32
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 877
    .line 878
    .line 879
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 880
    .line 881
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 886
    .line 887
    .line 888
    move-result-object v1

    .line 889
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 890
    .line 891
    .line 892
    move-result-object v3

    .line 893
    const-string v7, "readingListPage"

    .line 894
    .line 895
    invoke-virtual {v3, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 896
    .line 897
    .line 898
    move-result-wide v11

    .line 899
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 900
    .line 901
    iget-object v3, v1, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 902
    .line 903
    new-instance v7, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;

    .line 904
    .line 905
    invoke-direct {v7, v11, v12, v1, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda28;-><init>(JLorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;I)V

    .line 906
    .line 907
    .line 908
    invoke-static {v3, v9, v4, v7, v5}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    move-result-object v1

    .line 912
    if-ne v1, v0, :cond_33

    .line 913
    .line 914
    move-object v6, v0

    .line 915
    goto/16 :goto_20

    .line 916
    .line 917
    :cond_33
    :goto_1d
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 918
    .line 919
    if-eqz v1, :cond_38

    .line 920
    .line 921
    iput-object v1, v8, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->readingListPage:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 922
    .line 923
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    const-string v3, "readingListSize"

    .line 928
    .line 929
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 930
    .line 931
    .line 932
    move-result v0

    .line 933
    if-ne v0, v9, :cond_34

    .line 934
    .line 935
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    const-string v3, "readingListName"

    .line 940
    .line 941
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    new-array v3, v9, [Ljava/lang/Object;

    .line 946
    .line 947
    aput-object v0, v3, v4

    .line 948
    .line 949
    const v0, 0x7f120794

    .line 950
    .line 951
    .line 952
    invoke-virtual {v8, v0, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 953
    .line 954
    .line 955
    move-result-object v0

    .line 956
    goto :goto_1e

    .line 957
    :cond_34
    const v0, 0x7f120796

    .line 958
    .line 959
    .line 960
    invoke-virtual {v8, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v0

    .line 964
    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 965
    .line 966
    .line 967
    iget-object v3, v8, Lorg/wikipedia/readinglist/ReadingListItemActionsDialog;->actionsView:Lorg/wikipedia/readinglist/ReadingListItemActionsView;

    .line 968
    .line 969
    if-eqz v3, :cond_37

    .line 970
    .line 971
    iget-object v5, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 972
    .line 973
    iget-boolean v1, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->offline:Z

    .line 974
    .line 975
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 976
    .line 977
    .line 978
    move-result-object v7

    .line 979
    const-string v8, "hasActionMode"

    .line 980
    .line 981
    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 982
    .line 983
    .line 984
    move-result v7

    .line 985
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 986
    .line 987
    .line 988
    iget-object v3, v3, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->binding:Lretrofit2/Retrofit;

    .line 989
    .line 990
    iget-object v8, v3, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    .line 991
    .line 992
    check-cast v8, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 993
    .line 994
    invoke-virtual {v8, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 995
    .line 996
    .line 997
    iget-object v1, v3, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 998
    .line 999
    check-cast v1, Landroid/widget/TextView;

    .line 1000
    .line 1001
    sget-object v8, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 1002
    .line 1003
    invoke-static {v5}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v5

    .line 1007
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    .line 1009
    .line 1010
    iget-object v1, v3, Lretrofit2/Retrofit;->baseUrl:Ljava/lang/Object;

    .line 1011
    .line 1012
    check-cast v1, Landroid/widget/TextView;

    .line 1013
    .line 1014
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1015
    .line 1016
    .line 1017
    iget-object v0, v3, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 1018
    .line 1019
    check-cast v0, Landroid/widget/LinearLayout;

    .line 1020
    .line 1021
    if-eqz v7, :cond_35

    .line 1022
    .line 1023
    move v1, v2

    .line 1024
    goto :goto_1f

    .line 1025
    :cond_35
    move v1, v4

    .line 1026
    :goto_1f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    .line 1028
    .line 1029
    iget-object v0, v3, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 1030
    .line 1031
    check-cast v0, Landroid/widget/LinearLayout;

    .line 1032
    .line 1033
    if-eqz v7, :cond_36

    .line 1034
    .line 1035
    move v4, v2

    .line 1036
    :cond_36
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1037
    .line 1038
    .line 1039
    goto :goto_20

    .line 1040
    :cond_37
    const-string v0, "actionsView"

    .line 1041
    .line 1042
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    throw v10

    .line 1046
    :cond_38
    :goto_20
    return-object v6

    .line 1047
    :pswitch_b
    check-cast v8, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 1048
    .line 1049
    iget-object v0, v8, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->_recommendedListFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1050
    .line 1051
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1052
    .line 1053
    iget v4, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 1054
    .line 1055
    if-eqz v4, :cond_3a

    .line 1056
    .line 1057
    if-ne v4, v9, :cond_39

    .line 1058
    .line 1059
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1060
    .line 1061
    .line 1062
    move-object/from16 v1, p1

    .line 1063
    .line 1064
    goto :goto_22

    .line 1065
    :cond_39
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1066
    .line 1067
    .line 1068
    :goto_21
    move-object v6, v10

    .line 1069
    goto/16 :goto_25

    .line 1070
    .line 1071
    :cond_3a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1072
    .line 1073
    .line 1074
    new-instance v4, Lorg/wikipedia/util/Resource$Loading;

    .line 1075
    .line 1076
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v0, v10, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1083
    .line 1084
    .line 1085
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 1086
    .line 1087
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getResetRecommendedReadingList()Z

    .line 1088
    .line 1089
    .line 1090
    move-result v4

    .line 1091
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 1092
    .line 1093
    invoke-virtual {v1, v4, v5}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListHelper;->generateRecommendedReadingList(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v1

    .line 1097
    if-ne v1, v2, :cond_3b

    .line 1098
    .line 1099
    move-object v6, v2

    .line 1100
    goto/16 :goto_25

    .line 1101
    .line 1102
    :cond_3b
    :goto_22
    check-cast v1, Ljava/util/List;

    .line 1103
    .line 1104
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 1105
    .line 1106
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v2

    .line 1110
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 1111
    .line 1112
    .line 1113
    move-result v4

    .line 1114
    if-nez v4, :cond_40

    .line 1115
    .line 1116
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 1117
    .line 1118
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListUpdateFrequency()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v4

    .line 1122
    sget-object v5, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$generateRecommendedReadingList$2$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 1123
    .line 1124
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 1125
    .line 1126
    .line 1127
    move-result v4

    .line 1128
    aget v4, v5, v4

    .line 1129
    .line 1130
    if-eq v4, v9, :cond_3e

    .line 1131
    .line 1132
    if-eq v4, v3, :cond_3d

    .line 1133
    .line 1134
    const/4 v3, 0x3

    .line 1135
    if-ne v4, v3, :cond_3c

    .line 1136
    .line 1137
    const v3, 0x7f1207e9

    .line 1138
    .line 1139
    .line 1140
    goto :goto_23

    .line 1141
    :cond_3c
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1142
    .line 1143
    .line 1144
    goto :goto_21

    .line 1145
    :cond_3d
    const v3, 0x7f1207ea

    .line 1146
    .line 1147
    .line 1148
    goto :goto_23

    .line 1149
    :cond_3e
    const v3, 0x7f1207e8

    .line 1150
    .line 1151
    .line 1152
    :goto_23
    new-instance v4, Ljava/util/ArrayList;

    .line 1153
    .line 1154
    const/16 v5, 0xa

    .line 1155
    .line 1156
    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1157
    .line 1158
    .line 1159
    move-result v5

    .line 1160
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1161
    .line 1162
    .line 1163
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v1

    .line 1167
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1168
    .line 1169
    .line 1170
    move-result v5

    .line 1171
    if-eqz v5, :cond_3f

    .line 1172
    .line 1173
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v5

    .line 1177
    check-cast v5, Lorg/wikipedia/readinglist/database/RecommendedPage;

    .line 1178
    .line 1179
    iget-object v12, v5, Lorg/wikipedia/readinglist/database/RecommendedPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 1180
    .line 1181
    iget-object v7, v12, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 1182
    .line 1183
    iget-object v13, v5, Lorg/wikipedia/readinglist/database/RecommendedPage;->namespace:Lorg/wikipedia/page/Namespace;

    .line 1184
    .line 1185
    iget-object v14, v5, Lorg/wikipedia/readinglist/database/RecommendedPage;->displayTitle:Ljava/lang/String;

    .line 1186
    .line 1187
    iget-object v15, v5, Lorg/wikipedia/readinglist/database/RecommendedPage;->apiTitle:Ljava/lang/String;

    .line 1188
    .line 1189
    iget-object v8, v5, Lorg/wikipedia/readinglist/database/RecommendedPage;->description:Ljava/lang/String;

    .line 1190
    .line 1191
    iget-object v5, v5, Lorg/wikipedia/readinglist/database/RecommendedPage;->thumbUrl:Ljava/lang/String;

    .line 1192
    .line 1193
    new-instance v11, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 1194
    .line 1195
    const/16 v19, 0x5fc0

    .line 1196
    .line 1197
    move-object/from16 v17, v5

    .line 1198
    .line 1199
    move-object/from16 v18, v7

    .line 1200
    .line 1201
    move-object/from16 v16, v8

    .line 1202
    .line 1203
    invoke-direct/range {v11 .. v19}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1204
    .line 1205
    .line 1206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1207
    .line 1208
    .line 1209
    move-result-wide v7

    .line 1210
    iput-wide v7, v11, Lorg/wikipedia/readinglist/database/ReadingListPage;->mtime:J

    .line 1211
    .line 1212
    iput-wide v7, v11, Lorg/wikipedia/readinglist/database/ReadingListPage;->atime:J

    .line 1213
    .line 1214
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    .line 1216
    .line 1217
    goto :goto_24

    .line 1218
    :cond_3f
    new-instance v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 1219
    .line 1220
    const v5, 0x7f12081c

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v5

    .line 1227
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1228
    .line 1229
    .line 1230
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v2

    .line 1234
    invoke-direct {v1, v5, v2}, Lorg/wikipedia/readinglist/database/ReadingList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    .line 1236
    .line 1237
    iget-object v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 1238
    .line 1239
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1240
    .line 1241
    .line 1242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1243
    .line 1244
    .line 1245
    move-result-wide v2

    .line 1246
    iput-wide v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;->mtime:J

    .line 1247
    .line 1248
    iput-wide v2, v1, Lorg/wikipedia/readinglist/database/ReadingList;->atime:J

    .line 1249
    .line 1250
    new-instance v2, Lorg/wikipedia/util/Resource$Success;

    .line 1251
    .line 1252
    invoke-direct {v2, v1}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 1253
    .line 1254
    .line 1255
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {v0, v10, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1259
    .line 1260
    .line 1261
    goto :goto_25

    .line 1262
    :cond_40
    new-instance v1, Lorg/wikipedia/util/Resource$Error;

    .line 1263
    .line 1264
    new-instance v3, Ljava/lang/Throwable;

    .line 1265
    .line 1266
    const v4, 0x7f1201e2

    .line 1267
    .line 1268
    .line 1269
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v2

    .line 1273
    invoke-direct {v3, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1274
    .line 1275
    .line 1276
    invoke-direct {v1, v3}, Lorg/wikipedia/util/Resource$Error;-><init>(Ljava/lang/Throwable;)V

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1280
    .line 1281
    .line 1282
    invoke-virtual {v0, v10, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1283
    .line 1284
    .line 1285
    :goto_25
    return-object v6

    .line 1286
    :pswitch_c
    check-cast v8, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 1287
    .line 1288
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1289
    .line 1290
    iget v1, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 1291
    .line 1292
    if-eqz v1, :cond_43

    .line 1293
    .line 1294
    if-eq v1, v9, :cond_42

    .line 1295
    .line 1296
    if-ne v1, v3, :cond_41

    .line 1297
    .line 1298
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1299
    .line 1300
    .line 1301
    goto :goto_29

    .line 1302
    :cond_41
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1303
    .line 1304
    .line 1305
    move-object v6, v10

    .line 1306
    goto :goto_29

    .line 1307
    :cond_42
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1308
    .line 1309
    .line 1310
    goto :goto_27

    .line 1311
    :cond_43
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1312
    .line 1313
    .line 1314
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1315
    .line 1316
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v1

    .line 1320
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v1

    .line 1324
    sget-object v2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 1325
    .line 1326
    invoke-static {v8}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->getListsContainPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Ljava/util/ArrayList;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v2

    .line 1330
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 1331
    .line 1332
    iget-object v7, v1, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1333
    .line 1334
    new-instance v9, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$updateLists$2;

    .line 1335
    .line 1336
    invoke-direct {v9, v1, v2, v4, v10}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$updateLists$2;-><init>(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Ljava/util/List;ZLkotlin/coroutines/Continuation;)V

    .line 1337
    .line 1338
    .line 1339
    invoke-static {v7, v5, v9}, Lkotlin/ExceptionsKt;->performInTransactionSuspending(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v1

    .line 1343
    if-ne v1, v0, :cond_44

    .line 1344
    .line 1345
    goto :goto_26

    .line 1346
    :cond_44
    move-object v1, v6

    .line 1347
    :goto_26
    if-ne v1, v0, :cond_45

    .line 1348
    .line 1349
    goto :goto_28

    .line 1350
    :cond_45
    :goto_27
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1351
    .line 1352
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v1

    .line 1356
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v1

    .line 1360
    iput v3, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 1361
    .line 1362
    invoke-virtual {v1, v8, v5}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->updateReadingListPage(Lorg/wikipedia/readinglist/database/ReadingListPage;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v1

    .line 1366
    if-ne v1, v0, :cond_46

    .line 1367
    .line 1368
    :goto_28
    move-object v6, v0

    .line 1369
    :cond_46
    :goto_29
    return-object v6

    .line 1370
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1371
    .line 1372
    .line 1373
    check-cast v8, Lorg/wikipedia/random/RandomViewModel;

    .line 1374
    .line 1375
    iget v0, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 1376
    .line 1377
    iget-boolean v1, v8, Lorg/wikipedia/random/RandomViewModel;->loading:Z

    .line 1378
    .line 1379
    if-nez v1, :cond_47

    .line 1380
    .line 1381
    iget-object v1, v8, Lorg/wikipedia/random/RandomViewModel;->loadError$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1382
    .line 1383
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v1

    .line 1387
    check-cast v1, Ljava/lang/Throwable;

    .line 1388
    .line 1389
    if-nez v1, :cond_47

    .line 1390
    .line 1391
    iget-object v1, v8, Lorg/wikipedia/random/RandomViewModel;->items:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 1392
    .line 1393
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 1394
    .line 1395
    .line 1396
    move-result v1

    .line 1397
    add-int/lit8 v1, v1, -0x5

    .line 1398
    .line 1399
    if-lt v0, v1, :cond_47

    .line 1400
    .line 1401
    invoke-virtual {v8}, Lorg/wikipedia/random/RandomViewModel;->loadMore()V

    .line 1402
    .line 1403
    .line 1404
    :cond_47
    return-object v6

    .line 1405
    :pswitch_e
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1406
    .line 1407
    iget v1, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 1408
    .line 1409
    if-eqz v1, :cond_49

    .line 1410
    .line 1411
    if-ne v1, v9, :cond_48

    .line 1412
    .line 1413
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1414
    .line 1415
    .line 1416
    goto :goto_2a

    .line 1417
    :cond_48
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1418
    .line 1419
    .line 1420
    move-object v6, v10

    .line 1421
    goto :goto_2a

    .line 1422
    :cond_49
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1423
    .line 1424
    .line 1425
    sget-object v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->REMOVE_DATE:Lj$/time/LocalDate;

    .line 1426
    .line 1427
    invoke-static {}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->isWidgetInstalled()Z

    .line 1428
    .line 1429
    .line 1430
    move-result v1

    .line 1431
    if-eqz v1, :cond_4a

    .line 1432
    .line 1433
    new-instance v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;

    .line 1434
    .line 1435
    check-cast v8, Lorg/wikipedia/login/LoginActivity;

    .line 1436
    .line 1437
    invoke-direct {v1, v8}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;-><init>(Landroid/content/Context;)V

    .line 1438
    .line 1439
    .line 1440
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 1441
    .line 1442
    invoke-virtual {v1, v5}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->updateWidgetsAndSendAnalytics(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v1

    .line 1446
    if-ne v1, v0, :cond_4a

    .line 1447
    .line 1448
    move-object v6, v0

    .line 1449
    :cond_4a
    :goto_2a
    return-object v6

    .line 1450
    :pswitch_f
    check-cast v8, Lorg/wikipedia/language/LangLinksViewModel;

    .line 1451
    .line 1452
    iget-object v0, v8, Lorg/wikipedia/language/LangLinksViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1453
    .line 1454
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1455
    .line 1456
    iget v2, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 1457
    .line 1458
    if-eqz v2, :cond_4c

    .line 1459
    .line 1460
    if-ne v2, v9, :cond_4b

    .line 1461
    .line 1462
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1463
    .line 1464
    .line 1465
    move-object/from16 v0, p1

    .line 1466
    .line 1467
    goto :goto_2b

    .line 1468
    :cond_4b
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1469
    .line 1470
    .line 1471
    goto :goto_2e

    .line 1472
    :cond_4c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1473
    .line 1474
    .line 1475
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 1476
    .line 1477
    iget-object v2, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1478
    .line 1479
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v2

    .line 1483
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v0

    .line 1487
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 1488
    .line 1489
    invoke-interface {v2, v0, v5}, Lorg/wikipedia/dataclient/Service;->getLangLinks(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v0

    .line 1493
    if-ne v0, v1, :cond_4d

    .line 1494
    .line 1495
    move-object v10, v1

    .line 1496
    goto :goto_2e

    .line 1497
    :cond_4d
    :goto_2b
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 1498
    .line 1499
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 1500
    .line 1501
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1502
    .line 1503
    .line 1504
    new-instance v1, Ljava/util/ArrayList;

    .line 1505
    .line 1506
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1507
    .line 1508
    .line 1509
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 1510
    .line 1511
    if-eqz v0, :cond_4f

    .line 1512
    .line 1513
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 1514
    .line 1515
    .line 1516
    move-result v2

    .line 1517
    if-eqz v2, :cond_4e

    .line 1518
    .line 1519
    goto :goto_2d

    .line 1520
    :cond_4e
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v0

    .line 1524
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 1525
    .line 1526
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->langlinks:Ljava/util/List;

    .line 1527
    .line 1528
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1529
    .line 1530
    .line 1531
    move-result-object v0

    .line 1532
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1533
    .line 1534
    .line 1535
    move-result v2

    .line 1536
    if-eqz v2, :cond_4f

    .line 1537
    .line 1538
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v2

    .line 1542
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$LangLink;

    .line 1543
    .line 1544
    new-instance v3, Lorg/wikipedia/page/PageTitle;

    .line 1545
    .line 1546
    iget-object v4, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$LangLink;->title:Ljava/lang/String;

    .line 1547
    .line 1548
    sget-object v5, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 1549
    .line 1550
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$LangLink;->lang:Ljava/lang/String;

    .line 1551
    .line 1552
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1553
    .line 1554
    .line 1555
    invoke-static {v2}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 1556
    .line 1557
    .line 1558
    move-result-object v2

    .line 1559
    invoke-direct {v3, v4, v2, v10}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 1560
    .line 1561
    .line 1562
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1563
    .line 1564
    .line 1565
    goto :goto_2c

    .line 1566
    :cond_4f
    :goto_2d
    new-instance v10, Ljava/util/ArrayList;

    .line 1567
    .line 1568
    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1569
    .line 1570
    .line 1571
    :goto_2e
    return-object v10

    .line 1572
    :pswitch_10
    check-cast v8, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 1573
    .line 1574
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1575
    .line 1576
    iget v1, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 1577
    .line 1578
    if-eqz v1, :cond_52

    .line 1579
    .line 1580
    if-eq v1, v9, :cond_51

    .line 1581
    .line 1582
    if-ne v1, v3, :cond_50

    .line 1583
    .line 1584
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1585
    .line 1586
    .line 1587
    goto/16 :goto_33

    .line 1588
    .line 1589
    :cond_50
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1590
    .line 1591
    .line 1592
    :goto_2f
    move-object v6, v10

    .line 1593
    goto/16 :goto_34

    .line 1594
    .line 1595
    :cond_51
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1596
    .line 1597
    .line 1598
    goto :goto_31

    .line 1599
    :cond_52
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1600
    .line 1601
    .line 1602
    iget-object v1, v8, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 1603
    .line 1604
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1605
    .line 1606
    .line 1607
    iget-object v1, v1, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 1608
    .line 1609
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 1610
    .line 1611
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1612
    .line 1613
    .line 1614
    iget-object v1, v8, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 1615
    .line 1616
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1617
    .line 1618
    .line 1619
    iget-object v1, v1, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 1620
    .line 1621
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 1622
    .line 1623
    const/high16 v2, 0x3f000000    # 0.5f

    .line 1624
    .line 1625
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1626
    .line 1627
    .line 1628
    :cond_53
    iget v1, v8, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->loadedImagesForShare:I

    .line 1629
    .line 1630
    iget-object v2, v8, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 1631
    .line 1632
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1633
    .line 1634
    .line 1635
    iget-object v2, v2, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeContainer:Ljava/lang/Object;

    .line 1636
    .line 1637
    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1638
    .line 1639
    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 1640
    .line 1641
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 1642
    .line 1643
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v2

    .line 1647
    if-eqz v2, :cond_54

    .line 1648
    .line 1649
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 1650
    .line 1651
    .line 1652
    move-result v2

    .line 1653
    goto :goto_30

    .line 1654
    :cond_54
    move v2, v4

    .line 1655
    :goto_30
    if-ge v1, v2, :cond_56

    .line 1656
    .line 1657
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 1658
    .line 1659
    const-wide/16 v1, 0x64

    .line 1660
    .line 1661
    invoke-static {v1, v2, v5}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v1

    .line 1665
    if-ne v1, v0, :cond_55

    .line 1666
    .line 1667
    goto/16 :goto_32

    .line 1668
    .line 1669
    :cond_55
    :goto_31
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 1670
    .line 1671
    .line 1672
    move-result v1

    .line 1673
    if-nez v1, :cond_53

    .line 1674
    .line 1675
    goto/16 :goto_34

    .line 1676
    .line 1677
    :cond_56
    const v1, 0x7f1204e8

    .line 1678
    .line 1679
    .line 1680
    invoke-virtual {v8, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v1

    .line 1684
    new-array v2, v9, [Ljava/lang/Object;

    .line 1685
    .line 1686
    aput-object v1, v2, v4

    .line 1687
    .line 1688
    const v1, 0x7f1204e5

    .line 1689
    .line 1690
    .line 1691
    invoke-virtual {v8, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v14

    .line 1695
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1696
    .line 1697
    .line 1698
    iget-object v1, v8, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 1699
    .line 1700
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1701
    .line 1702
    .line 1703
    iget-object v1, v1, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeContainer:Ljava/lang/Object;

    .line 1704
    .line 1705
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1706
    .line 1707
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 1708
    .line 1709
    check-cast v1, Landroid/widget/LinearLayout;

    .line 1710
    .line 1711
    invoke-static {v1}, Lcoil3/util/BitmapsKt;->ensureSoftwareBitmaps(Landroid/view/View;)V

    .line 1712
    .line 1713
    .line 1714
    iget-object v1, v8, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 1715
    .line 1716
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1717
    .line 1718
    .line 1719
    iget-object v1, v1, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeContainer:Ljava/lang/Object;

    .line 1720
    .line 1721
    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1722
    .line 1723
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 1724
    .line 1725
    check-cast v1, Landroid/widget/LinearLayout;

    .line 1726
    .line 1727
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1728
    .line 1729
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1730
    .line 1731
    .line 1732
    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    .line 1733
    .line 1734
    .line 1735
    move-result v4

    .line 1736
    if-eqz v4, :cond_58

    .line 1737
    .line 1738
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 1739
    .line 1740
    .line 1741
    move-result v4

    .line 1742
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 1743
    .line 1744
    .line 1745
    move-result v7

    .line 1746
    invoke-static {v4, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 1747
    .line 1748
    .line 1749
    move-result-object v2

    .line 1750
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1751
    .line 1752
    .line 1753
    new-instance v4, Landroid/graphics/Canvas;

    .line 1754
    .line 1755
    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1756
    .line 1757
    .line 1758
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    .line 1759
    .line 1760
    .line 1761
    move-result v7

    .line 1762
    int-to-float v7, v7

    .line 1763
    neg-float v7, v7

    .line 1764
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    .line 1765
    .line 1766
    .line 1767
    move-result v11

    .line 1768
    int-to-float v11, v11

    .line 1769
    neg-float v11, v11

    .line 1770
    invoke-virtual {v4, v7, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1771
    .line 1772
    .line 1773
    invoke-virtual {v1, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1774
    .line 1775
    .line 1776
    invoke-static {v8}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v1

    .line 1780
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 1781
    .line 1782
    .line 1783
    move-result-object v12

    .line 1784
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v4

    .line 1788
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1789
    .line 1790
    const-string/jumbo v11, "wikipedia_on_this_day_game_"

    .line 1791
    .line 1792
    .line 1793
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1794
    .line 1795
    .line 1796
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1797
    .line 1798
    .line 1799
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v17

    .line 1803
    iget-object v4, v8, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 1804
    .line 1805
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1806
    .line 1807
    .line 1808
    iget-object v4, v4, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCodeContainer:Ljava/lang/Object;

    .line 1809
    .line 1810
    check-cast v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1811
    .line 1812
    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 1813
    .line 1814
    check-cast v4, Landroid/widget/TextView;

    .line 1815
    .line 1816
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 1817
    .line 1818
    .line 1819
    move-result-object v4

    .line 1820
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v13

    .line 1824
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1825
    .line 1826
    .line 1827
    new-instance v4, Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

    .line 1828
    .line 1829
    invoke-direct {v4, v12}, Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;-><init>(Landroid/content/Context;)V

    .line 1830
    .line 1831
    .line 1832
    new-instance v11, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 1833
    .line 1834
    const/16 v18, 0x0

    .line 1835
    .line 1836
    const/4 v15, 0x0

    .line 1837
    move-object/from16 v16, v2

    .line 1838
    .line 1839
    invoke-direct/range {v11 .. v18}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroid/graphics/Bitmap;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 1840
    .line 1841
    .line 1842
    invoke-static {v1, v4, v10, v11, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1843
    .line 1844
    .line 1845
    iput v3, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 1846
    .line 1847
    const-wide/16 v1, 0x3e8

    .line 1848
    .line 1849
    invoke-static {v1, v2, v5}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1850
    .line 1851
    .line 1852
    move-result-object v1

    .line 1853
    if-ne v1, v0, :cond_57

    .line 1854
    .line 1855
    :goto_32
    move-object v6, v0

    .line 1856
    goto :goto_34

    .line 1857
    :cond_57
    :goto_33
    iget-object v0, v8, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 1858
    .line 1859
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1860
    .line 1861
    .line 1862
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 1863
    .line 1864
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 1865
    .line 1866
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1867
    .line 1868
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1869
    .line 1870
    .line 1871
    iget-object v0, v8, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;->_binding:Lorg/wikipedia/databinding/ItemNotificationBinding;

    .line 1872
    .line 1873
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1874
    .line 1875
    .line 1876
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemNotificationBinding;->notificationWikiCode:Ljava/lang/Object;

    .line 1877
    .line 1878
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 1879
    .line 1880
    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 1881
    .line 1882
    .line 1883
    goto :goto_34

    .line 1884
    :cond_58
    const-string v0, "View needs to be laid out before calling drawToBitmap()"

    .line 1885
    .line 1886
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1887
    .line 1888
    .line 1889
    goto/16 :goto_2f

    .line 1890
    .line 1891
    :goto_34
    return-object v6

    .line 1892
    :pswitch_11
    check-cast v8, Lorg/wikipedia/gallery/GalleryItemViewModel;

    .line 1893
    .line 1894
    iget-object v0, v8, Lorg/wikipedia/gallery/GalleryItemViewModel;->mediaListItem:Lorg/wikipedia/gallery/MediaListItem;

    .line 1895
    .line 1896
    iget-object v1, v8, Lorg/wikipedia/gallery/GalleryItemViewModel;->imageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1897
    .line 1898
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1899
    .line 1900
    iget v12, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 1901
    .line 1902
    const-string/jumbo v13, "video"

    .line 1903
    .line 1904
    .line 1905
    if-eqz v12, :cond_5b

    .line 1906
    .line 1907
    if-eq v12, v9, :cond_5a

    .line 1908
    .line 1909
    if-ne v12, v3, :cond_59

    .line 1910
    .line 1911
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1912
    .line 1913
    .line 1914
    move-object/from16 v0, p1

    .line 1915
    .line 1916
    goto/16 :goto_38

    .line 1917
    .line 1918
    :cond_59
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1919
    .line 1920
    .line 1921
    move-object v6, v10

    .line 1922
    goto/16 :goto_3d

    .line 1923
    .line 1924
    :cond_5a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1925
    .line 1926
    .line 1927
    move-object/from16 v0, p1

    .line 1928
    .line 1929
    goto :goto_36

    .line 1930
    :cond_5b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1931
    .line 1932
    .line 1933
    iget-object v7, v0, Lorg/wikipedia/gallery/MediaListItem;->srcSets:Ljava/util/List;

    .line 1934
    .line 1935
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1936
    .line 1937
    .line 1938
    move-result-object v7

    .line 1939
    check-cast v7, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;

    .line 1940
    .line 1941
    if-eqz v7, :cond_5c

    .line 1942
    .line 1943
    iget-object v7, v7, Lorg/wikipedia/gallery/MediaListItem$ImageSrcSet;->src:Ljava/lang/String;

    .line 1944
    .line 1945
    if-eqz v7, :cond_5c

    .line 1946
    .line 1947
    const-string v12, "/wikipedia/commons/"

    .line 1948
    .line 1949
    invoke-static {v7, v12, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 1950
    .line 1951
    .line 1952
    move-result v7

    .line 1953
    if-ne v7, v9, :cond_5c

    .line 1954
    .line 1955
    sget-object v7, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1956
    .line 1957
    goto :goto_35

    .line 1958
    :cond_5c
    iget-object v7, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1959
    .line 1960
    :goto_35
    iget-object v0, v0, Lorg/wikipedia/gallery/MediaListItem;->type:Ljava/lang/String;

    .line 1961
    .line 1962
    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1963
    .line 1964
    .line 1965
    move-result v0

    .line 1966
    if-eqz v0, :cond_5e

    .line 1967
    .line 1968
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 1969
    .line 1970
    invoke-static {v7}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 1971
    .line 1972
    .line 1973
    move-result-object v0

    .line 1974
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v1

    .line 1978
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 1979
    .line 1980
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 1981
    .line 1982
    .line 1983
    move-result-object v3

    .line 1984
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v3

    .line 1988
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 1989
    .line 1990
    invoke-interface {v0, v1, v3, v5}, Lorg/wikipedia/dataclient/Service;->getVideoInfo(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1991
    .line 1992
    .line 1993
    move-result-object v0

    .line 1994
    if-ne v0, v11, :cond_5d

    .line 1995
    .line 1996
    goto :goto_37

    .line 1997
    :cond_5d
    :goto_36
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 1998
    .line 1999
    goto :goto_39

    .line 2000
    :cond_5e
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 2001
    .line 2002
    invoke-static {v7}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v0

    .line 2006
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 2007
    .line 2008
    .line 2009
    move-result-object v1

    .line 2010
    sget-object v7, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2011
    .line 2012
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 2013
    .line 2014
    .line 2015
    move-result-object v7

    .line 2016
    invoke-virtual {v7}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 2017
    .line 2018
    .line 2019
    move-result-object v7

    .line 2020
    iput v3, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 2021
    .line 2022
    invoke-interface {v0, v1, v7, v5}, Lorg/wikipedia/dataclient/Service;->getImageInfo(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2023
    .line 2024
    .line 2025
    move-result-object v0

    .line 2026
    if-ne v0, v11, :cond_5f

    .line 2027
    .line 2028
    :goto_37
    move-object v6, v11

    .line 2029
    goto :goto_3d

    .line 2030
    :cond_5f
    :goto_38
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 2031
    .line 2032
    :goto_39
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 2033
    .line 2034
    if-eqz v0, :cond_60

    .line 2035
    .line 2036
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 2037
    .line 2038
    .line 2039
    move-result-object v0

    .line 2040
    goto :goto_3a

    .line 2041
    :cond_60
    move-object v0, v10

    .line 2042
    :goto_3a
    iput-object v0, v8, Lorg/wikipedia/gallery/GalleryItemViewModel;->mediaPage:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 2043
    .line 2044
    iget-object v1, v8, Lorg/wikipedia/gallery/GalleryItemViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2045
    .line 2046
    new-instance v3, Lorg/wikipedia/util/Resource$Success;

    .line 2047
    .line 2048
    if-eqz v0, :cond_61

    .line 2049
    .line 2050
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 2051
    .line 2052
    .line 2053
    move-result-object v0

    .line 2054
    if-eqz v0, :cond_61

    .line 2055
    .line 2056
    iget-object v0, v0, Lorg/wikipedia/gallery/ImageInfo;->mime:Ljava/lang/String;

    .line 2057
    .line 2058
    goto :goto_3b

    .line 2059
    :cond_61
    move-object v0, v10

    .line 2060
    :goto_3b
    if-nez v0, :cond_62

    .line 2061
    .line 2062
    goto :goto_3c

    .line 2063
    :cond_62
    move-object v2, v0

    .line 2064
    :goto_3c
    const-string v0, "ogg"

    .line 2065
    .line 2066
    invoke-static {v2, v0, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 2067
    .line 2068
    .line 2069
    move-result v0

    .line 2070
    if-nez v0, :cond_63

    .line 2071
    .line 2072
    invoke-static {v2, v13, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 2073
    .line 2074
    .line 2075
    move-result v0

    .line 2076
    if-eqz v0, :cond_64

    .line 2077
    .line 2078
    :cond_63
    move v4, v9

    .line 2079
    :cond_64
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2080
    .line 2081
    .line 2082
    move-result-object v0

    .line 2083
    invoke-direct {v3, v0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 2084
    .line 2085
    .line 2086
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2087
    .line 2088
    .line 2089
    invoke-virtual {v1, v10, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2090
    .line 2091
    .line 2092
    :goto_3d
    return-object v6

    .line 2093
    :pswitch_12
    check-cast v8, Lorg/wikipedia/edit/summaries/EditSummaryFragment;

    .line 2094
    .line 2095
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2096
    .line 2097
    iget v1, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 2098
    .line 2099
    if-eqz v1, :cond_66

    .line 2100
    .line 2101
    if-ne v1, v9, :cond_65

    .line 2102
    .line 2103
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2104
    .line 2105
    .line 2106
    move-object/from16 v1, p1

    .line 2107
    .line 2108
    goto :goto_3e

    .line 2109
    :cond_65
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2110
    .line 2111
    .line 2112
    move-object v6, v10

    .line 2113
    goto :goto_3f

    .line 2114
    :cond_66
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2115
    .line 2116
    .line 2117
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 2118
    .line 2119
    iget-object v1, v8, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->title:Lorg/wikipedia/page/PageTitle;

    .line 2120
    .line 2121
    const-string v3, "title"

    .line 2122
    .line 2123
    if-eqz v1, :cond_6d

    .line 2124
    .line 2125
    iget-object v1, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 2126
    .line 2127
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 2128
    .line 2129
    .line 2130
    move-result-object v1

    .line 2131
    iget-object v7, v8, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->title:Lorg/wikipedia/page/PageTitle;

    .line 2132
    .line 2133
    if-eqz v7, :cond_6c

    .line 2134
    .line 2135
    invoke-virtual {v7}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 2136
    .line 2137
    .line 2138
    move-result-object v3

    .line 2139
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 2140
    .line 2141
    invoke-interface {v1, v3, v5}, Lorg/wikipedia/dataclient/Service;->getWatchedStatusWithUserOptions(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2142
    .line 2143
    .line 2144
    move-result-object v1

    .line 2145
    if-ne v1, v0, :cond_67

    .line 2146
    .line 2147
    move-object v6, v0

    .line 2148
    goto :goto_3f

    .line 2149
    :cond_67
    :goto_3e
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 2150
    .line 2151
    iget-object v0, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 2152
    .line 2153
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2154
    .line 2155
    .line 2156
    iget-object v1, v8, Lorg/wikipedia/edit/summaries/EditSummaryFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 2157
    .line 2158
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2159
    .line 2160
    .line 2161
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 2162
    .line 2163
    check-cast v1, Landroid/widget/CheckBox;

    .line 2164
    .line 2165
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 2166
    .line 2167
    .line 2168
    move-result-object v3

    .line 2169
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2170
    .line 2171
    .line 2172
    iget-boolean v3, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->watched:Z

    .line 2173
    .line 2174
    if-nez v3, :cond_6a

    .line 2175
    .line 2176
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 2177
    .line 2178
    if-eqz v0, :cond_6b

    .line 2179
    .line 2180
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->options:Lorg/wikipedia/dataclient/mwapi/UserInfo$Options;

    .line 2181
    .line 2182
    if-eqz v0, :cond_6b

    .line 2183
    .line 2184
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo$Options;->watchDefault:Lkotlinx/serialization/json/JsonElement;

    .line 2185
    .line 2186
    if-eqz v0, :cond_68

    .line 2187
    .line 2188
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2189
    .line 2190
    .line 2191
    move-result-object v10

    .line 2192
    :cond_68
    if-nez v10, :cond_69

    .line 2193
    .line 2194
    move-object v10, v2

    .line 2195
    :cond_69
    const-string v0, "\""

    .line 2196
    .line 2197
    invoke-static {v10, v0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2198
    .line 2199
    .line 2200
    move-result-object v0

    .line 2201
    const-string v2, "1"

    .line 2202
    .line 2203
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2204
    .line 2205
    .line 2206
    move-result v0

    .line 2207
    if-ne v0, v9, :cond_6b

    .line 2208
    .line 2209
    :cond_6a
    move v4, v9

    .line 2210
    :cond_6b
    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2211
    .line 2212
    .line 2213
    :goto_3f
    return-object v6

    .line 2214
    :cond_6c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 2215
    .line 2216
    .line 2217
    throw v10

    .line 2218
    :cond_6d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 2219
    .line 2220
    .line 2221
    throw v10

    .line 2222
    :pswitch_13
    check-cast v8, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 2223
    .line 2224
    iget-object v0, v8, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 2225
    .line 2226
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2227
    .line 2228
    iget v2, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 2229
    .line 2230
    if-eqz v2, :cond_6f

    .line 2231
    .line 2232
    if-ne v2, v9, :cond_6e

    .line 2233
    .line 2234
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2235
    .line 2236
    .line 2237
    move-object/from16 v2, p1

    .line 2238
    .line 2239
    goto :goto_40

    .line 2240
    :cond_6e
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2241
    .line 2242
    .line 2243
    move-object v6, v10

    .line 2244
    goto/16 :goto_49

    .line 2245
    .line 2246
    :cond_6f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2247
    .line 2248
    .line 2249
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 2250
    .line 2251
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 2252
    .line 2253
    .line 2254
    move-result-object v2

    .line 2255
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 2256
    .line 2257
    invoke-interface {v2, v5}, Lorg/wikipedia/dataclient/Service;->getSiteInfoWithMagicWords(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2258
    .line 2259
    .line 2260
    move-result-object v2

    .line 2261
    if-ne v2, v1, :cond_70

    .line 2262
    .line 2263
    move-object v6, v1

    .line 2264
    goto/16 :goto_49

    .line 2265
    .line 2266
    :cond_70
    :goto_40
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 2267
    .line 2268
    iget-object v1, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 2269
    .line 2270
    if-eqz v1, :cond_8b

    .line 2271
    .line 2272
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->magicwords:Ljava/util/List;

    .line 2273
    .line 2274
    if-eqz v1, :cond_8b

    .line 2275
    .line 2276
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2277
    .line 2278
    .line 2279
    move-result-object v2

    .line 2280
    :cond_71
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2281
    .line 2282
    .line 2283
    move-result v3

    .line 2284
    const-string v4, "img_none"

    .line 2285
    .line 2286
    if-eqz v3, :cond_72

    .line 2287
    .line 2288
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2289
    .line 2290
    .line 2291
    move-result-object v3

    .line 2292
    move-object v5, v3

    .line 2293
    check-cast v5, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;

    .line 2294
    .line 2295
    iget-object v5, v5, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;->name:Ljava/lang/String;

    .line 2296
    .line 2297
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2298
    .line 2299
    .line 2300
    move-result v5

    .line 2301
    if-eqz v5, :cond_71

    .line 2302
    .line 2303
    goto :goto_41

    .line 2304
    :cond_72
    move-object v3, v10

    .line 2305
    :goto_41
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;

    .line 2306
    .line 2307
    if-eqz v3, :cond_73

    .line 2308
    .line 2309
    iget-object v2, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;->aliases:Ljava/util/List;

    .line 2310
    .line 2311
    if-eqz v2, :cond_73

    .line 2312
    .line 2313
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 2314
    .line 2315
    .line 2316
    move-result-object v2

    .line 2317
    check-cast v2, Ljava/lang/String;

    .line 2318
    .line 2319
    if-eqz v2, :cond_73

    .line 2320
    .line 2321
    sget-object v3, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->magicWords:Ljava/util/LinkedHashMap;

    .line 2322
    .line 2323
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2324
    .line 2325
    .line 2326
    :cond_73
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2327
    .line 2328
    .line 2329
    move-result-object v2

    .line 2330
    :cond_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2331
    .line 2332
    .line 2333
    move-result v3

    .line 2334
    const-string v5, "img_center"

    .line 2335
    .line 2336
    if-eqz v3, :cond_75

    .line 2337
    .line 2338
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2339
    .line 2340
    .line 2341
    move-result-object v3

    .line 2342
    move-object v7, v3

    .line 2343
    check-cast v7, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;

    .line 2344
    .line 2345
    iget-object v7, v7, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;->name:Ljava/lang/String;

    .line 2346
    .line 2347
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2348
    .line 2349
    .line 2350
    move-result v7

    .line 2351
    if-eqz v7, :cond_74

    .line 2352
    .line 2353
    goto :goto_42

    .line 2354
    :cond_75
    move-object v3, v10

    .line 2355
    :goto_42
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;

    .line 2356
    .line 2357
    if-eqz v3, :cond_76

    .line 2358
    .line 2359
    iget-object v2, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;->aliases:Ljava/util/List;

    .line 2360
    .line 2361
    if-eqz v2, :cond_76

    .line 2362
    .line 2363
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 2364
    .line 2365
    .line 2366
    move-result-object v2

    .line 2367
    check-cast v2, Ljava/lang/String;

    .line 2368
    .line 2369
    if-eqz v2, :cond_76

    .line 2370
    .line 2371
    sget-object v3, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->magicWords:Ljava/util/LinkedHashMap;

    .line 2372
    .line 2373
    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2374
    .line 2375
    .line 2376
    :cond_76
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2377
    .line 2378
    .line 2379
    move-result-object v2

    .line 2380
    :cond_77
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2381
    .line 2382
    .line 2383
    move-result v3

    .line 2384
    const-string v5, "img_left"

    .line 2385
    .line 2386
    if-eqz v3, :cond_78

    .line 2387
    .line 2388
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2389
    .line 2390
    .line 2391
    move-result-object v3

    .line 2392
    move-object v7, v3

    .line 2393
    check-cast v7, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;

    .line 2394
    .line 2395
    iget-object v7, v7, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;->name:Ljava/lang/String;

    .line 2396
    .line 2397
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2398
    .line 2399
    .line 2400
    move-result v7

    .line 2401
    if-eqz v7, :cond_77

    .line 2402
    .line 2403
    goto :goto_43

    .line 2404
    :cond_78
    move-object v3, v10

    .line 2405
    :goto_43
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;

    .line 2406
    .line 2407
    if-eqz v3, :cond_79

    .line 2408
    .line 2409
    iget-object v2, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;->aliases:Ljava/util/List;

    .line 2410
    .line 2411
    if-eqz v2, :cond_79

    .line 2412
    .line 2413
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 2414
    .line 2415
    .line 2416
    move-result-object v2

    .line 2417
    check-cast v2, Ljava/lang/String;

    .line 2418
    .line 2419
    if-eqz v2, :cond_79

    .line 2420
    .line 2421
    sget-object v3, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->magicWords:Ljava/util/LinkedHashMap;

    .line 2422
    .line 2423
    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2424
    .line 2425
    .line 2426
    :cond_79
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2427
    .line 2428
    .line 2429
    move-result-object v2

    .line 2430
    :cond_7a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2431
    .line 2432
    .line 2433
    move-result v3

    .line 2434
    const-string v5, "img_right"

    .line 2435
    .line 2436
    if-eqz v3, :cond_7b

    .line 2437
    .line 2438
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2439
    .line 2440
    .line 2441
    move-result-object v3

    .line 2442
    move-object v7, v3

    .line 2443
    check-cast v7, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;

    .line 2444
    .line 2445
    iget-object v7, v7, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;->name:Ljava/lang/String;

    .line 2446
    .line 2447
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2448
    .line 2449
    .line 2450
    move-result v7

    .line 2451
    if-eqz v7, :cond_7a

    .line 2452
    .line 2453
    goto :goto_44

    .line 2454
    :cond_7b
    move-object v3, v10

    .line 2455
    :goto_44
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;

    .line 2456
    .line 2457
    if-eqz v3, :cond_7c

    .line 2458
    .line 2459
    iget-object v2, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;->aliases:Ljava/util/List;

    .line 2460
    .line 2461
    if-eqz v2, :cond_7c

    .line 2462
    .line 2463
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 2464
    .line 2465
    .line 2466
    move-result-object v2

    .line 2467
    check-cast v2, Ljava/lang/String;

    .line 2468
    .line 2469
    if-eqz v2, :cond_7c

    .line 2470
    .line 2471
    sget-object v3, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->magicWords:Ljava/util/LinkedHashMap;

    .line 2472
    .line 2473
    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2474
    .line 2475
    .line 2476
    :cond_7c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2477
    .line 2478
    .line 2479
    move-result-object v2

    .line 2480
    :cond_7d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2481
    .line 2482
    .line 2483
    move-result v3

    .line 2484
    const-string v5, "img_thumbnail"

    .line 2485
    .line 2486
    if-eqz v3, :cond_7e

    .line 2487
    .line 2488
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2489
    .line 2490
    .line 2491
    move-result-object v3

    .line 2492
    move-object v7, v3

    .line 2493
    check-cast v7, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;

    .line 2494
    .line 2495
    iget-object v7, v7, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;->name:Ljava/lang/String;

    .line 2496
    .line 2497
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2498
    .line 2499
    .line 2500
    move-result v7

    .line 2501
    if-eqz v7, :cond_7d

    .line 2502
    .line 2503
    goto :goto_45

    .line 2504
    :cond_7e
    move-object v3, v10

    .line 2505
    :goto_45
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;

    .line 2506
    .line 2507
    if-eqz v3, :cond_7f

    .line 2508
    .line 2509
    iget-object v2, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;->aliases:Ljava/util/List;

    .line 2510
    .line 2511
    if-eqz v2, :cond_7f

    .line 2512
    .line 2513
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 2514
    .line 2515
    .line 2516
    move-result-object v2

    .line 2517
    check-cast v2, Ljava/lang/String;

    .line 2518
    .line 2519
    if-eqz v2, :cond_7f

    .line 2520
    .line 2521
    sget-object v3, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->magicWords:Ljava/util/LinkedHashMap;

    .line 2522
    .line 2523
    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2524
    .line 2525
    .line 2526
    :cond_7f
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2527
    .line 2528
    .line 2529
    move-result-object v2

    .line 2530
    :cond_80
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2531
    .line 2532
    .line 2533
    move-result v3

    .line 2534
    const-string v5, "img_frameless"

    .line 2535
    .line 2536
    if-eqz v3, :cond_81

    .line 2537
    .line 2538
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2539
    .line 2540
    .line 2541
    move-result-object v3

    .line 2542
    move-object v7, v3

    .line 2543
    check-cast v7, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;

    .line 2544
    .line 2545
    iget-object v7, v7, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;->name:Ljava/lang/String;

    .line 2546
    .line 2547
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2548
    .line 2549
    .line 2550
    move-result v7

    .line 2551
    if-eqz v7, :cond_80

    .line 2552
    .line 2553
    goto :goto_46

    .line 2554
    :cond_81
    move-object v3, v10

    .line 2555
    :goto_46
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;

    .line 2556
    .line 2557
    if-eqz v3, :cond_82

    .line 2558
    .line 2559
    iget-object v2, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;->aliases:Ljava/util/List;

    .line 2560
    .line 2561
    if-eqz v2, :cond_82

    .line 2562
    .line 2563
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 2564
    .line 2565
    .line 2566
    move-result-object v2

    .line 2567
    check-cast v2, Ljava/lang/String;

    .line 2568
    .line 2569
    if-eqz v2, :cond_82

    .line 2570
    .line 2571
    sget-object v3, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->magicWords:Ljava/util/LinkedHashMap;

    .line 2572
    .line 2573
    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2574
    .line 2575
    .line 2576
    :cond_82
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2577
    .line 2578
    .line 2579
    move-result-object v2

    .line 2580
    :cond_83
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2581
    .line 2582
    .line 2583
    move-result v3

    .line 2584
    const-string v5, "img_framed"

    .line 2585
    .line 2586
    if-eqz v3, :cond_84

    .line 2587
    .line 2588
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2589
    .line 2590
    .line 2591
    move-result-object v3

    .line 2592
    move-object v7, v3

    .line 2593
    check-cast v7, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;

    .line 2594
    .line 2595
    iget-object v7, v7, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;->name:Ljava/lang/String;

    .line 2596
    .line 2597
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2598
    .line 2599
    .line 2600
    move-result v7

    .line 2601
    if-eqz v7, :cond_83

    .line 2602
    .line 2603
    goto :goto_47

    .line 2604
    :cond_84
    move-object v3, v10

    .line 2605
    :goto_47
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;

    .line 2606
    .line 2607
    if-eqz v3, :cond_85

    .line 2608
    .line 2609
    iget-object v2, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;->aliases:Ljava/util/List;

    .line 2610
    .line 2611
    if-eqz v2, :cond_85

    .line 2612
    .line 2613
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 2614
    .line 2615
    .line 2616
    move-result-object v2

    .line 2617
    check-cast v2, Ljava/lang/String;

    .line 2618
    .line 2619
    if-eqz v2, :cond_85

    .line 2620
    .line 2621
    sget-object v3, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->magicWords:Ljava/util/LinkedHashMap;

    .line 2622
    .line 2623
    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2624
    .line 2625
    .line 2626
    :cond_85
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2627
    .line 2628
    .line 2629
    move-result-object v2

    .line 2630
    :cond_86
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2631
    .line 2632
    .line 2633
    move-result v3

    .line 2634
    const-string v5, "img_alt"

    .line 2635
    .line 2636
    if-eqz v3, :cond_87

    .line 2637
    .line 2638
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2639
    .line 2640
    .line 2641
    move-result-object v3

    .line 2642
    move-object v7, v3

    .line 2643
    check-cast v7, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;

    .line 2644
    .line 2645
    iget-object v7, v7, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;->name:Ljava/lang/String;

    .line 2646
    .line 2647
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2648
    .line 2649
    .line 2650
    move-result v7

    .line 2651
    if-eqz v7, :cond_86

    .line 2652
    .line 2653
    goto :goto_48

    .line 2654
    :cond_87
    move-object v3, v10

    .line 2655
    :goto_48
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;

    .line 2656
    .line 2657
    if-eqz v3, :cond_88

    .line 2658
    .line 2659
    iget-object v2, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;->aliases:Ljava/util/List;

    .line 2660
    .line 2661
    if-eqz v2, :cond_88

    .line 2662
    .line 2663
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 2664
    .line 2665
    .line 2666
    move-result-object v2

    .line 2667
    check-cast v2, Ljava/lang/String;

    .line 2668
    .line 2669
    if-eqz v2, :cond_88

    .line 2670
    .line 2671
    sget-object v3, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->magicWords:Ljava/util/LinkedHashMap;

    .line 2672
    .line 2673
    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2674
    .line 2675
    .line 2676
    :cond_88
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2677
    .line 2678
    .line 2679
    move-result-object v1

    .line 2680
    :cond_89
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2681
    .line 2682
    .line 2683
    move-result v2

    .line 2684
    if-eqz v2, :cond_8a

    .line 2685
    .line 2686
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2687
    .line 2688
    .line 2689
    move-result-object v2

    .line 2690
    move-object v3, v2

    .line 2691
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;

    .line 2692
    .line 2693
    iget-object v3, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;->name:Ljava/lang/String;

    .line 2694
    .line 2695
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2696
    .line 2697
    .line 2698
    move-result v3

    .line 2699
    if-eqz v3, :cond_89

    .line 2700
    .line 2701
    move-object v10, v2

    .line 2702
    :cond_8a
    check-cast v10, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;

    .line 2703
    .line 2704
    if-eqz v10, :cond_8b

    .line 2705
    .line 2706
    iget-object v1, v10, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$MagicWord;->aliases:Ljava/util/List;

    .line 2707
    .line 2708
    if-eqz v1, :cond_8b

    .line 2709
    .line 2710
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 2711
    .line 2712
    .line 2713
    move-result-object v1

    .line 2714
    check-cast v1, Ljava/lang/String;

    .line 2715
    .line 2716
    if-eqz v1, :cond_8b

    .line 2717
    .line 2718
    sget-object v2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->magicWords:Ljava/util/LinkedHashMap;

    .line 2719
    .line 2720
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2721
    .line 2722
    .line 2723
    :cond_8b
    sget-object v1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->infoboxVarsByLang:Ljava/util/Map;

    .line 2724
    .line 2725
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 2726
    .line 2727
    sput-object v0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->magicWordsLang:Ljava/lang/String;

    .line 2728
    .line 2729
    :goto_49
    return-object v6

    .line 2730
    :pswitch_14
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2731
    .line 2732
    iget v1, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 2733
    .line 2734
    if-eqz v1, :cond_8d

    .line 2735
    .line 2736
    if-ne v1, v9, :cond_8c

    .line 2737
    .line 2738
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2739
    .line 2740
    .line 2741
    goto :goto_4a

    .line 2742
    :cond_8c
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2743
    .line 2744
    .line 2745
    move-object v6, v10

    .line 2746
    goto :goto_4a

    .line 2747
    :cond_8d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2748
    .line 2749
    .line 2750
    check-cast v8, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 2751
    .line 2752
    iput v9, v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;->label:I

    .line 2753
    .line 2754
    invoke-virtual {v8, v5}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->highlightOnScroll(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2755
    .line 2756
    .line 2757
    move-result-object v1

    .line 2758
    if-ne v1, v0, :cond_8e

    .line 2759
    .line 2760
    move-object v6, v0

    .line 2761
    :cond_8e
    :goto_4a
    return-object v6

    .line 2762
    nop

    .line 2763
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

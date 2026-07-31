.class public final Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 15
    iput p1, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->$r8$classId:I

    iput-object p2, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 13
    iput p4, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->$r8$classId:I

    .line 14
    iput-object p1, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

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
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 11
    .line 12
    const/16 v0, 0xe

    .line 13
    .line 14
    invoke-direct {p1, v0, p0, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_0
    new-instance p1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 19
    .line 20
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 27
    .line 28
    const/16 v1, 0xd

    .line 29
    .line 30
    invoke-direct {p1, v0, p0, p2, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :pswitch_1
    new-instance p1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 35
    .line 36
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 39
    .line 40
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Ljava/lang/String;

    .line 43
    .line 44
    const/16 v1, 0xc

    .line 45
    .line 46
    invoke-direct {p1, v0, p0, p2, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 47
    .line 48
    .line 49
    return-object p1

    .line 50
    :pswitch_2
    new-instance p1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 51
    .line 52
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 55
    .line 56
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;

    .line 59
    .line 60
    const/16 v1, 0xb

    .line 61
    .line 62
    invoke-direct {p1, v0, p0, p2, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_3
    new-instance v0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 67
    .line 68
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Lorg/wikipedia/usercontrib/UserInformationDialogViewModel;

    .line 71
    .line 72
    const/16 v1, 0xa

    .line 73
    .line 74
    invoke-direct {v0, v1, p0, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, v0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    return-object v0

    .line 80
    :pswitch_4
    new-instance p1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 81
    .line 82
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 85
    .line 86
    const/16 v0, 0x9

    .line 87
    .line 88
    invoke-direct {p1, v0, p0, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 89
    .line 90
    .line 91
    return-object p1

    .line 92
    :pswitch_5
    new-instance p1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 93
    .line 94
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 97
    .line 98
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p0, Ljava/util/List;

    .line 101
    .line 102
    const/16 v1, 0x8

    .line 103
    .line 104
    invoke-direct {p1, v0, p0, p2, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 105
    .line 106
    .line 107
    return-object p1

    .line 108
    :pswitch_6
    new-instance p1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 109
    .line 110
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v0, Lorg/wikipedia/talk/TalkTopicHolder;

    .line 113
    .line 114
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p0, Landroid/view/View;

    .line 117
    .line 118
    const/4 v1, 0x7

    .line 119
    invoke-direct {p1, v0, p0, p2, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 120
    .line 121
    .line 122
    return-object p1

    .line 123
    :pswitch_7
    new-instance p1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 124
    .line 125
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 128
    .line 129
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 132
    .line 133
    const/4 v1, 0x6

    .line 134
    invoke-direct {p1, v0, p0, p2, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 135
    .line 136
    .line 137
    return-object p1

    .line 138
    :pswitch_8
    new-instance p1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 139
    .line 140
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v0, Ljava/lang/String;

    .line 143
    .line 144
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    .line 147
    .line 148
    const/4 v1, 0x5

    .line 149
    invoke-direct {p1, v0, p0, p2, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 150
    .line 151
    .line 152
    return-object p1

    .line 153
    :pswitch_9
    new-instance p1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 154
    .line 155
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 158
    .line 159
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p0, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-direct {p1, v0, p0, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    .line 164
    .line 165
    .line 166
    return-object p1

    .line 167
    :pswitch_a
    new-instance p1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 168
    .line 169
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 172
    .line 173
    const/4 v0, 0x3

    .line 174
    invoke-direct {p1, v0, p0, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 175
    .line 176
    .line 177
    return-object p1

    .line 178
    :pswitch_b
    new-instance p1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 179
    .line 180
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 183
    .line 184
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast p0, Landroid/content/Context;

    .line 187
    .line 188
    const/4 v1, 0x2

    .line 189
    invoke-direct {p1, v0, p0, p2, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 190
    .line 191
    .line 192
    return-object p1

    .line 193
    :pswitch_c
    new-instance p1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 194
    .line 195
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast p0, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    .line 200
    .line 201
    .line 202
    return-object p1

    .line 203
    :pswitch_d
    new-instance p1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 204
    .line 205
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast p0, Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 208
    .line 209
    const/4 v0, 0x0

    .line 210
    invoke-direct {p1, v0, p0, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 211
    .line 212
    .line 213
    return-object p1

    .line 214
    nop

    .line 215
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

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :pswitch_8
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 116
    .line 117
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    :pswitch_9
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    check-cast p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 127
    .line 128
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :pswitch_a
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    check-cast p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 138
    .line 139
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    :pswitch_b
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    check-cast p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 149
    .line 150
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    return-object p0

    .line 155
    :pswitch_c
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    check-cast p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 160
    .line 161
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    return-object p0

    .line 166
    :pswitch_d
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    check-cast p0, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 171
    .line 172
    invoke-virtual {p0, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    return-object p0

    .line 177
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

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x1d

    .line 6
    .line 7
    const/16 v3, 0xa

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    const-string v7, "call to \'resume\' before \'invoke\' with coroutine"

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    const/4 v9, 0x0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 21
    .line 22
    iget v2, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    if-ne v2, v8, :cond_0

    .line 27
    .line 28
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    move-object v1, v0

    .line 31
    check-cast v1, Lorg/wikipedia/dataclient/restbase/UserEdits;

    .line 32
    .line 33
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    move-object v2, v1

    .line 37
    move-object/from16 v1, p1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    move-object v9, v1

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lorg/wikipedia/dataclient/restbase/UserEdits;

    .line 51
    .line 52
    invoke-direct {v2}, Lorg/wikipedia/dataclient/restbase/UserEdits;-><init>()V

    .line 53
    .line 54
    .line 55
    :try_start_1
    sget-object v3, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 56
    .line 57
    new-instance v3, Lorg/wikipedia/dataclient/WikiSite;

    .line 58
    .line 59
    const-string v4, "https://wikimedia.org/"

    .line 60
    .line 61
    invoke-direct {v3, v4}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v3}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iget-object v4, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 71
    .line 72
    iget-object v4, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 73
    .line 74
    if-eqz v4, :cond_2

    .line 75
    .line 76
    iget-object v4, v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->globalUserInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 77
    .line 78
    if-eqz v4, :cond_2

    .line 79
    .line 80
    iget v5, v4, Lorg/wikipedia/dataclient/mwapi/UserInfo;->id:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    .line 84
    move-object v9, v2

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    :goto_0
    sget-object v4, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 87
    .line 88
    const/16 v4, 0x7e9

    .line 89
    .line 90
    invoke-static {v4, v8, v8}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-static {v6}, Lorg/wikipedia/util/DateUtil;->getYMDDateString(Lj$/time/LocalDate;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    const/16 v7, 0xc

    .line 102
    .line 103
    const/16 v9, 0x1f

    .line 104
    .line 105
    invoke-static {v4, v7, v9}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-static {v4}, Lorg/wikipedia/util/DateUtil;->getYMDDateString(Lj$/time/LocalDate;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    iput-object v2, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 117
    .line 118
    iput v8, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 119
    .line 120
    invoke-interface {v3, v5, v6, v4, v1}, Lorg/wikipedia/dataclient/RestService;->getEditsPerGlobalUserMonthly(ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-ne v1, v0, :cond_3

    .line 125
    .line 126
    move-object v9, v0

    .line 127
    goto :goto_3

    .line 128
    :cond_3
    :goto_1
    move-object v9, v1

    .line 129
    check-cast v9, Lorg/wikipedia/dataclient/restbase/UserEdits;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :goto_2
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    :goto_3
    return-object v9

    .line 136
    :pswitch_0
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v0, Ljava/lang/String;

    .line 139
    .line 140
    iget-object v2, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v2, Lorg/wikipedia/watchlist/WatchlistViewModel;

    .line 143
    .line 144
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 145
    .line 146
    iget v5, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 147
    .line 148
    if-eqz v5, :cond_5

    .line 149
    .line 150
    if-ne v5, v8, :cond_4

    .line 151
    .line 152
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    move-object/from16 v1, p1

    .line 156
    .line 157
    goto/16 :goto_c

    .line 158
    .line 159
    :cond_4
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_e

    .line 163
    .line 164
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    sget-object v5, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 168
    .line 169
    sget-object v5, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 170
    .line 171
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-static {v0}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-static {v5}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    sget-object v6, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 183
    .line 184
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getWatchlistIncludedTypeCodes()Ljava/util/Collection;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    sget-object v7, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->Companion:Lorg/wikipedia/watchlist/WatchlistFilterTypes$Companion;

    .line 189
    .line 190
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-static {}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->access$getLATEST_REVISIONS_GROUP$cp()Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    new-instance v10, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-static {v7, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 200
    .line 201
    .line 202
    move-result v11

    .line 203
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .line 205
    .line 206
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v11

    .line 214
    if-eqz v11, :cond_6

    .line 215
    .line 216
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v11

    .line 220
    check-cast v11, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 221
    .line 222
    invoke-virtual {v11}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getId()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_6
    invoke-interface {v6, v10}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    if-nez v7, :cond_7

    .line 235
    .line 236
    sget-object v7, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->LATEST_REVISION:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 237
    .line 238
    invoke-virtual {v7}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getId()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    if-nez v6, :cond_7

    .line 247
    .line 248
    sget-object v6, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->NOT_LATEST_REVISION:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 249
    .line 250
    invoke-virtual {v6}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getValue()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    goto :goto_5

    .line 255
    :cond_7
    move-object v6, v9

    .line 256
    :goto_5
    sget-object v7, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 257
    .line 258
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getWatchlistIncludedTypeCodes()Ljava/util/Collection;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    new-instance v10, Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .line 266
    .line 267
    sget-object v11, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->Companion:Lorg/wikipedia/watchlist/WatchlistFilterTypes$Companion;

    .line 268
    .line 269
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    invoke-static {}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->access$getUNSEEN_CHANGES_GROUP$cp()Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v11

    .line 276
    new-instance v12, Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-static {v11, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 279
    .line 280
    .line 281
    move-result v13

    .line 282
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    .line 284
    .line 285
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 290
    .line 291
    .line 292
    move-result v13

    .line 293
    if-eqz v13, :cond_8

    .line 294
    .line 295
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v13

    .line 299
    check-cast v13, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 300
    .line 301
    invoke-virtual {v13}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getId()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v13

    .line 305
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_8
    invoke-interface {v7, v12}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    .line 310
    .line 311
    .line 312
    move-result v11

    .line 313
    if-nez v11, :cond_a

    .line 314
    .line 315
    sget-object v11, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->UNSEEN_CHANGES:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 316
    .line 317
    invoke-virtual {v11}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getId()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v12

    .line 321
    invoke-interface {v7, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v12

    .line 325
    if-eqz v12, :cond_9

    .line 326
    .line 327
    invoke-virtual {v11}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getValue()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v11

    .line 331
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    :cond_9
    sget-object v11, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->SEEN_CHANGES:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 335
    .line 336
    invoke-virtual {v11}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getId()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v12

    .line 340
    invoke-interface {v7, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v12

    .line 344
    if-eqz v12, :cond_a

    .line 345
    .line 346
    invoke-virtual {v11}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getValue()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v11

    .line 350
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    :cond_a
    sget-object v11, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->Companion:Lorg/wikipedia/watchlist/WatchlistFilterTypes$Companion;

    .line 354
    .line 355
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    .line 357
    .line 358
    invoke-static {}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->access$getBOT_EDITS_GROUP$cp()Ljava/util/List;

    .line 359
    .line 360
    .line 361
    move-result-object v11

    .line 362
    new-instance v12, Ljava/util/ArrayList;

    .line 363
    .line 364
    invoke-static {v11, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 365
    .line 366
    .line 367
    move-result v13

    .line 368
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 369
    .line 370
    .line 371
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 372
    .line 373
    .line 374
    move-result-object v11

    .line 375
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 376
    .line 377
    .line 378
    move-result v13

    .line 379
    if-eqz v13, :cond_b

    .line 380
    .line 381
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v13

    .line 385
    check-cast v13, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 386
    .line 387
    invoke-virtual {v13}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getId()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v13

    .line 391
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    goto :goto_7

    .line 395
    :cond_b
    invoke-interface {v7, v12}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    .line 396
    .line 397
    .line 398
    move-result v11

    .line 399
    if-nez v11, :cond_d

    .line 400
    .line 401
    sget-object v11, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->BOT:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 402
    .line 403
    invoke-virtual {v11}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getId()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v12

    .line 407
    invoke-interface {v7, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v12

    .line 411
    if-eqz v12, :cond_c

    .line 412
    .line 413
    invoke-virtual {v11}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getValue()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v11

    .line 417
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    :cond_c
    sget-object v11, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->HUMAN:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 421
    .line 422
    invoke-virtual {v11}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getId()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v12

    .line 426
    invoke-interface {v7, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v12

    .line 430
    if-eqz v12, :cond_d

    .line 431
    .line 432
    invoke-virtual {v11}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getValue()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v11

    .line 436
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    :cond_d
    sget-object v11, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->Companion:Lorg/wikipedia/watchlist/WatchlistFilterTypes$Companion;

    .line 440
    .line 441
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 442
    .line 443
    .line 444
    invoke-static {}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->access$getMINOR_EDITS_GROUP$cp()Ljava/util/List;

    .line 445
    .line 446
    .line 447
    move-result-object v11

    .line 448
    new-instance v12, Ljava/util/ArrayList;

    .line 449
    .line 450
    invoke-static {v11, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 451
    .line 452
    .line 453
    move-result v13

    .line 454
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 455
    .line 456
    .line 457
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 458
    .line 459
    .line 460
    move-result-object v11

    .line 461
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 462
    .line 463
    .line 464
    move-result v13

    .line 465
    if-eqz v13, :cond_e

    .line 466
    .line 467
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v13

    .line 471
    check-cast v13, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 472
    .line 473
    invoke-virtual {v13}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getId()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v13

    .line 477
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    goto :goto_8

    .line 481
    :cond_e
    invoke-interface {v7, v12}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    .line 482
    .line 483
    .line 484
    move-result v11

    .line 485
    if-nez v11, :cond_10

    .line 486
    .line 487
    sget-object v11, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->MINOR_EDITS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 488
    .line 489
    invoke-virtual {v11}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getId()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v12

    .line 493
    invoke-interface {v7, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v12

    .line 497
    if-eqz v12, :cond_f

    .line 498
    .line 499
    invoke-virtual {v11}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getValue()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v11

    .line 503
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    :cond_f
    sget-object v11, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->NON_MINOR_EDITS:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 507
    .line 508
    invoke-virtual {v11}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getId()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v12

    .line 512
    invoke-interface {v7, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v12

    .line 516
    if-eqz v12, :cond_10

    .line 517
    .line 518
    invoke-virtual {v11}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getValue()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v11

    .line 522
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    :cond_10
    sget-object v11, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->Companion:Lorg/wikipedia/watchlist/WatchlistFilterTypes$Companion;

    .line 526
    .line 527
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    .line 529
    .line 530
    invoke-static {}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->access$getUSER_STATUS_GROUP$cp()Ljava/util/List;

    .line 531
    .line 532
    .line 533
    move-result-object v11

    .line 534
    new-instance v12, Ljava/util/ArrayList;

    .line 535
    .line 536
    invoke-static {v11, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 537
    .line 538
    .line 539
    move-result v13

    .line 540
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 541
    .line 542
    .line 543
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 544
    .line 545
    .line 546
    move-result-object v11

    .line 547
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 548
    .line 549
    .line 550
    move-result v13

    .line 551
    if-eqz v13, :cond_11

    .line 552
    .line 553
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v13

    .line 557
    check-cast v13, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 558
    .line 559
    invoke-virtual {v13}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getId()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v13

    .line 563
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    goto :goto_9

    .line 567
    :cond_11
    invoke-interface {v7, v12}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    .line 568
    .line 569
    .line 570
    move-result v11

    .line 571
    if-nez v11, :cond_13

    .line 572
    .line 573
    sget-object v11, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->REGISTERED:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 574
    .line 575
    invoke-virtual {v11}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getId()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v12

    .line 579
    invoke-interface {v7, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    move-result v12

    .line 583
    if-eqz v12, :cond_12

    .line 584
    .line 585
    invoke-virtual {v11}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getValue()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v11

    .line 589
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    :cond_12
    sget-object v11, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->UNREGISTERED:Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 593
    .line 594
    invoke-virtual {v11}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getId()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v12

    .line 598
    invoke-interface {v7, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v7

    .line 602
    if-eqz v7, :cond_13

    .line 603
    .line 604
    invoke-virtual {v11}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getValue()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v7

    .line 608
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    :cond_13
    const/4 v14, 0x0

    .line 612
    const/16 v15, 0x3e

    .line 613
    .line 614
    const-string/jumbo v11, "|"

    .line 615
    .line 616
    .line 617
    const/4 v12, 0x0

    .line 618
    const/4 v13, 0x0

    .line 619
    invoke-static/range {v10 .. v15}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v7

    .line 623
    sget-object v10, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 624
    .line 625
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getWatchlistIncludedTypeCodes()Ljava/util/Collection;

    .line 626
    .line 627
    .line 628
    move-result-object v10

    .line 629
    sget-object v11, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->Companion:Lorg/wikipedia/watchlist/WatchlistFilterTypes$Companion;

    .line 630
    .line 631
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    .line 633
    .line 634
    invoke-static {}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->access$getTYPE_OF_CHANGES_GROUP$cp()Ljava/util/List;

    .line 635
    .line 636
    .line 637
    move-result-object v11

    .line 638
    new-instance v12, Ljava/util/ArrayList;

    .line 639
    .line 640
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .line 642
    .line 643
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 644
    .line 645
    .line 646
    move-result-object v11

    .line 647
    :cond_14
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 648
    .line 649
    .line 650
    move-result v13

    .line 651
    if-eqz v13, :cond_15

    .line 652
    .line 653
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v13

    .line 657
    move-object v14, v13

    .line 658
    check-cast v14, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 659
    .line 660
    invoke-virtual {v14}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getId()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v14

    .line 664
    invoke-interface {v10, v14}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    move-result v14

    .line 668
    if-eqz v14, :cond_14

    .line 669
    .line 670
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    goto :goto_a

    .line 674
    :cond_15
    new-instance v15, Ljava/util/ArrayList;

    .line 675
    .line 676
    invoke-static {v12, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 677
    .line 678
    .line 679
    move-result v10

    .line 680
    invoke-direct {v15, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 684
    .line 685
    .line 686
    move-result-object v10

    .line 687
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 688
    .line 689
    .line 690
    move-result v11

    .line 691
    if-eqz v11, :cond_16

    .line 692
    .line 693
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v11

    .line 697
    check-cast v11, Lorg/wikipedia/watchlist/WatchlistFilterTypes;

    .line 698
    .line 699
    invoke-virtual {v11}, Lorg/wikipedia/watchlist/WatchlistFilterTypes;->getValue()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v11

    .line 703
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    .line 705
    .line 706
    goto :goto_b

    .line 707
    :cond_16
    const/16 v19, 0x0

    .line 708
    .line 709
    const/16 v20, 0x3e

    .line 710
    .line 711
    const-string/jumbo v16, "|"

    .line 712
    .line 713
    .line 714
    const/16 v17, 0x0

    .line 715
    .line 716
    const/16 v18, 0x0

    .line 717
    .line 718
    invoke-static/range {v15 .. v20}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v10

    .line 722
    iput v8, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 723
    .line 724
    invoke-interface {v5, v6, v7, v10, v1}, Lorg/wikipedia/dataclient/Service;->getWatchlist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v1

    .line 728
    if-ne v1, v4, :cond_17

    .line 729
    .line 730
    move-object v9, v4

    .line 731
    goto :goto_e

    .line 732
    :cond_17
    :goto_c
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 733
    .line 734
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 735
    .line 736
    if-eqz v1, :cond_18

    .line 737
    .line 738
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->watchlist:Ljava/util/List;

    .line 739
    .line 740
    if-eqz v1, :cond_18

    .line 741
    .line 742
    new-instance v9, Ljava/util/ArrayList;

    .line 743
    .line 744
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 745
    .line 746
    .line 747
    move-result v3

    .line 748
    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 749
    .line 750
    .line 751
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 756
    .line 757
    .line 758
    move-result v3

    .line 759
    if-eqz v3, :cond_18

    .line 760
    .line 761
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v3

    .line 765
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;

    .line 766
    .line 767
    sget-object v4, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 768
    .line 769
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 770
    .line 771
    .line 772
    invoke-static {v0}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 773
    .line 774
    .line 775
    move-result-object v4

    .line 776
    iput-object v4, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$WatchlistItem;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 777
    .line 778
    iget-object v4, v2, Lorg/wikipedia/watchlist/WatchlistViewModel;->watchlistItems:Ljava/util/ArrayList;

    .line 779
    .line 780
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    move-result v3

    .line 784
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 785
    .line 786
    .line 787
    move-result-object v3

    .line 788
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    .line 790
    .line 791
    goto :goto_d

    .line 792
    :cond_18
    :goto_e
    return-object v9

    .line 793
    :pswitch_1
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 794
    .line 795
    check-cast v0, Ljava/lang/String;

    .line 796
    .line 797
    iget-object v2, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 798
    .line 799
    check-cast v2, Lorg/wikipedia/views/UserMentionInputView;

    .line 800
    .line 801
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 802
    .line 803
    iget v10, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 804
    .line 805
    if-eqz v10, :cond_1b

    .line 806
    .line 807
    if-eq v10, v8, :cond_1a

    .line 808
    .line 809
    if-ne v10, v4, :cond_19

    .line 810
    .line 811
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 812
    .line 813
    .line 814
    move-object/from16 v1, p1

    .line 815
    .line 816
    goto :goto_11

    .line 817
    :cond_19
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    move-object v6, v9

    .line 821
    goto/16 :goto_14

    .line 822
    .line 823
    :cond_1a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 824
    .line 825
    .line 826
    goto :goto_f

    .line 827
    :cond_1b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 828
    .line 829
    .line 830
    iput v8, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 831
    .line 832
    const-wide/16 v9, 0xc8

    .line 833
    .line 834
    invoke-static {v9, v10, v1}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    move-result-object v7

    .line 838
    if-ne v7, v5, :cond_1c

    .line 839
    .line 840
    goto :goto_10

    .line 841
    :cond_1c
    :goto_f
    sget-object v7, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 842
    .line 843
    invoke-virtual {v2}, Lorg/wikipedia/views/UserMentionInputView;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 844
    .line 845
    .line 846
    move-result-object v7

    .line 847
    invoke-static {v7}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 848
    .line 849
    .line 850
    move-result-object v7

    .line 851
    iput v4, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 852
    .line 853
    invoke-interface {v7, v0, v3, v1}, Lorg/wikipedia/dataclient/Service;->prefixSearchUsers(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    move-result-object v1

    .line 857
    if-ne v1, v5, :cond_1d

    .line 858
    .line 859
    :goto_10
    move-object v6, v5

    .line 860
    goto :goto_14

    .line 861
    :cond_1d
    :goto_11
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 862
    .line 863
    iget-object v3, v2, Lorg/wikipedia/views/UserMentionInputView;->userNameList:Ljava/util/ArrayList;

    .line 864
    .line 865
    iget-object v4, v2, Lorg/wikipedia/views/UserMentionInputView;->userNameList:Ljava/util/ArrayList;

    .line 866
    .line 867
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 868
    .line 869
    .line 870
    invoke-virtual {v2}, Lorg/wikipedia/views/UserMentionInputView;->getUserNameHints()Ljava/util/Set;

    .line 871
    .line 872
    .line 873
    move-result-object v3

    .line 874
    check-cast v3, Ljava/lang/Iterable;

    .line 875
    .line 876
    new-instance v5, Ljava/util/ArrayList;

    .line 877
    .line 878
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 879
    .line 880
    .line 881
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 882
    .line 883
    .line 884
    move-result-object v3

    .line 885
    :cond_1e
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 886
    .line 887
    .line 888
    move-result v7

    .line 889
    if-eqz v7, :cond_1f

    .line 890
    .line 891
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    move-result-object v7

    .line 895
    move-object v9, v7

    .line 896
    check-cast v9, Ljava/lang/String;

    .line 897
    .line 898
    invoke-static {v9, v0, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 899
    .line 900
    .line 901
    move-result v9

    .line 902
    if-eqz v9, :cond_1e

    .line 903
    .line 904
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    .line 906
    .line 907
    goto :goto_12

    .line 908
    :cond_1f
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 909
    .line 910
    .line 911
    iget-object v0, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 912
    .line 913
    if-eqz v0, :cond_21

    .line 914
    .line 915
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->allUsers:Ljava/util/List;

    .line 916
    .line 917
    if-eqz v0, :cond_21

    .line 918
    .line 919
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 920
    .line 921
    .line 922
    move-result-object v0

    .line 923
    :cond_20
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 924
    .line 925
    .line 926
    move-result v1

    .line 927
    if-eqz v1, :cond_21

    .line 928
    .line 929
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    move-result-object v1

    .line 933
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 934
    .line 935
    iget-object v3, v1, Lorg/wikipedia/dataclient/mwapi/UserInfo;->name:Ljava/lang/String;

    .line 936
    .line 937
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 938
    .line 939
    .line 940
    move-result v3

    .line 941
    if-nez v3, :cond_20

    .line 942
    .line 943
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/UserInfo;->name:Ljava/lang/String;

    .line 944
    .line 945
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    .line 947
    .line 948
    goto :goto_13

    .line 949
    :cond_21
    invoke-virtual {v2}, Lorg/wikipedia/views/UserMentionInputView;->onSearchResults()V

    .line 950
    .line 951
    .line 952
    :goto_14
    return-object v6

    .line 953
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 954
    .line 955
    iget v2, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 956
    .line 957
    if-eqz v2, :cond_23

    .line 958
    .line 959
    if-ne v2, v8, :cond_22

    .line 960
    .line 961
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 962
    .line 963
    .line 964
    move-object/from16 v0, p1

    .line 965
    .line 966
    goto :goto_15

    .line 967
    :cond_22
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 968
    .line 969
    .line 970
    move-object v0, v9

    .line 971
    goto :goto_15

    .line 972
    :cond_23
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 973
    .line 974
    .line 975
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 976
    .line 977
    iget-object v2, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 978
    .line 979
    check-cast v2, Lorg/wikipedia/dataclient/WikiSite;

    .line 980
    .line 981
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 982
    .line 983
    .line 984
    move-result-object v2

    .line 985
    iget-object v3, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 986
    .line 987
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;

    .line 988
    .line 989
    iget-object v3, v3, Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;->blockReason:Ljava/lang/String;

    .line 990
    .line 991
    iput v8, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 992
    .line 993
    invoke-interface {v2, v3, v1}, Lorg/wikipedia/dataclient/Service;->parseText(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 994
    .line 995
    .line 996
    move-result-object v1

    .line 997
    if-ne v1, v0, :cond_24

    .line 998
    .line 999
    goto :goto_15

    .line 1000
    :cond_24
    move-object v0, v1

    .line 1001
    :goto_15
    return-object v0

    .line 1002
    :pswitch_3
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 1003
    .line 1004
    check-cast v0, Lorg/wikipedia/usercontrib/UserInformationDialogViewModel;

    .line 1005
    .line 1006
    iget-object v2, v0, Lorg/wikipedia/usercontrib/UserInformationDialogViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1007
    .line 1008
    iget-object v3, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 1009
    .line 1010
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 1011
    .line 1012
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1013
    .line 1014
    iget v10, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 1015
    .line 1016
    if-eqz v10, :cond_26

    .line 1017
    .line 1018
    if-ne v10, v8, :cond_25

    .line 1019
    .line 1020
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1021
    .line 1022
    .line 1023
    move-object/from16 v0, p1

    .line 1024
    .line 1025
    goto :goto_16

    .line 1026
    :cond_25
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1027
    .line 1028
    .line 1029
    move-object v6, v9

    .line 1030
    goto/16 :goto_17

    .line 1031
    .line 1032
    :cond_26
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1033
    .line 1034
    .line 1035
    new-instance v7, Lorg/wikipedia/util/Resource$Loading;

    .line 1036
    .line 1037
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {v2, v9, v7}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1044
    .line 1045
    .line 1046
    sget-object v7, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 1047
    .line 1048
    sget-object v7, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 1049
    .line 1050
    sget-object v10, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 1051
    .line 1052
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v10

    .line 1056
    invoke-virtual {v10}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v10

    .line 1060
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1061
    .line 1062
    .line 1063
    invoke-static {v10}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v7

    .line 1067
    invoke-static {v7}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v7

    .line 1071
    iget-object v0, v0, Lorg/wikipedia/usercontrib/UserInformationDialogViewModel;->userName:Ljava/lang/String;

    .line 1072
    .line 1073
    iput-object v3, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 1074
    .line 1075
    iput v8, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 1076
    .line 1077
    invoke-interface {v7, v0, v1}, Lorg/wikipedia/dataclient/Service;->globalUserInfo(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v0

    .line 1081
    if-ne v0, v4, :cond_27

    .line 1082
    .line 1083
    move-object v6, v4

    .line 1084
    goto :goto_17

    .line 1085
    :cond_27
    :goto_16
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 1086
    .line 1087
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 1088
    .line 1089
    if-eqz v0, :cond_28

    .line 1090
    .line 1091
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->globalUserInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 1092
    .line 1093
    if-eqz v0, :cond_28

    .line 1094
    .line 1095
    iget v1, v0, Lorg/wikipedia/dataclient/mwapi/UserInfo;->editCount:I

    .line 1096
    .line 1097
    new-instance v3, Ljava/lang/Integer;

    .line 1098
    .line 1099
    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 1100
    .line 1101
    .line 1102
    new-array v1, v8, [Ljava/lang/Object;

    .line 1103
    .line 1104
    aput-object v3, v1, v5

    .line 1105
    .line 1106
    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v1

    .line 1110
    const-string v3, "%,d"

    .line 1111
    .line 1112
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v1

    .line 1116
    new-instance v3, Lorg/wikipedia/util/Resource$Success;

    .line 1117
    .line 1118
    new-instance v4, Lkotlin/Pair;

    .line 1119
    .line 1120
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/UserInfo;->getRegistrationDate()Ljava/util/Date;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v0

    .line 1124
    invoke-direct {v4, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1125
    .line 1126
    .line 1127
    invoke-direct {v3, v4}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {v2, v9, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1134
    .line 1135
    .line 1136
    goto :goto_17

    .line 1137
    :cond_28
    new-instance v0, Lorg/wikipedia/util/Resource$Error;

    .line 1138
    .line 1139
    new-instance v1, Ljava/lang/Throwable;

    .line 1140
    .line 1141
    const-string v3, "Cannot fetch user information."

    .line 1142
    .line 1143
    invoke-direct {v1, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1144
    .line 1145
    .line 1146
    invoke-direct {v0, v1}, Lorg/wikipedia/util/Resource$Error;-><init>(Ljava/lang/Throwable;)V

    .line 1147
    .line 1148
    .line 1149
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {v2, v9, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1153
    .line 1154
    .line 1155
    :goto_17
    return-object v6

    .line 1156
    :pswitch_4
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 1157
    .line 1158
    check-cast v0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 1159
    .line 1160
    iget-object v3, v0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1161
    .line 1162
    iget-object v4, v0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->talkTemplatesList:Ljava/util/ArrayList;

    .line 1163
    .line 1164
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1165
    .line 1166
    iget v11, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 1167
    .line 1168
    if-eqz v11, :cond_2a

    .line 1169
    .line 1170
    if-ne v11, v8, :cond_29

    .line 1171
    .line 1172
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 1173
    .line 1174
    move-object v4, v0

    .line 1175
    check-cast v4, Ljava/util/ArrayList;

    .line 1176
    .line 1177
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1178
    .line 1179
    .line 1180
    move-object/from16 v0, p1

    .line 1181
    .line 1182
    goto :goto_18

    .line 1183
    :cond_29
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1184
    .line 1185
    .line 1186
    move-object v6, v9

    .line 1187
    goto :goto_19

    .line 1188
    :cond_2a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1192
    .line 1193
    .line 1194
    new-instance v7, Lorg/wikipedia/util/Resource$Loading;

    .line 1195
    .line 1196
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {v3, v9, v7}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1203
    .line 1204
    .line 1205
    iget-object v0, v0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->talkTemplatesRepository:Lorg/wikipedia/media/AvPlayer;

    .line 1206
    .line 1207
    iput-object v4, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 1208
    .line 1209
    iput v8, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 1210
    .line 1211
    iget-object v0, v0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 1212
    .line 1213
    check-cast v0, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;

    .line 1214
    .line 1215
    iget-object v0, v0, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1216
    .line 1217
    new-instance v7, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 1218
    .line 1219
    invoke-direct {v7, v2}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1220
    .line 1221
    .line 1222
    invoke-static {v0, v8, v5, v7, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v0

    .line 1226
    if-ne v0, v10, :cond_2b

    .line 1227
    .line 1228
    move-object v6, v10

    .line 1229
    goto :goto_19

    .line 1230
    :cond_2b
    :goto_18
    check-cast v0, Ljava/util/Collection;

    .line 1231
    .line 1232
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1233
    .line 1234
    .line 1235
    new-instance v0, Lorg/wikipedia/util/Resource$Success;

    .line 1236
    .line 1237
    invoke-direct {v0, v6}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v3, v9, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1244
    .line 1245
    .line 1246
    :goto_19
    return-object v6

    .line 1247
    :pswitch_5
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 1248
    .line 1249
    check-cast v0, Ljava/util/List;

    .line 1250
    .line 1251
    iget-object v2, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 1252
    .line 1253
    check-cast v2, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;

    .line 1254
    .line 1255
    iget-object v10, v2, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->talkTemplatesRepository:Lorg/wikipedia/media/AvPlayer;

    .line 1256
    .line 1257
    iget-object v11, v2, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->talkTemplatesList:Ljava/util/ArrayList;

    .line 1258
    .line 1259
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1260
    .line 1261
    iget v13, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 1262
    .line 1263
    if-eqz v13, :cond_2e

    .line 1264
    .line 1265
    if-eq v13, v8, :cond_2d

    .line 1266
    .line 1267
    if-ne v13, v4, :cond_2c

    .line 1268
    .line 1269
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1270
    .line 1271
    .line 1272
    goto/16 :goto_22

    .line 1273
    .line 1274
    :cond_2c
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1275
    .line 1276
    .line 1277
    move-object v6, v9

    .line 1278
    goto/16 :goto_23

    .line 1279
    .line 1280
    :cond_2d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1281
    .line 1282
    .line 1283
    goto :goto_1d

    .line 1284
    :cond_2e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1285
    .line 1286
    .line 1287
    iput v8, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 1288
    .line 1289
    iget-object v7, v10, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 1290
    .line 1291
    check-cast v7, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;

    .line 1292
    .line 1293
    new-instance v13, Ljava/util/ArrayList;

    .line 1294
    .line 1295
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1296
    .line 1297
    .line 1298
    move-result v3

    .line 1299
    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1300
    .line 1301
    .line 1302
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v3

    .line 1306
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1307
    .line 1308
    .line 1309
    move-result v14

    .line 1310
    if-eqz v14, :cond_2f

    .line 1311
    .line 1312
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v14

    .line 1316
    check-cast v14, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 1317
    .line 1318
    iget v14, v14, Lorg/wikipedia/talk/db/TalkTemplate;->id:I

    .line 1319
    .line 1320
    new-instance v15, Ljava/lang/Integer;

    .line 1321
    .line 1322
    invoke-direct {v15, v14}, Ljava/lang/Integer;-><init>(I)V

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    .line 1327
    .line 1328
    goto :goto_1a

    .line 1329
    :cond_2f
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1330
    .line 1331
    .line 1332
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1333
    .line 1334
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1335
    .line 1336
    .line 1337
    const-string v14, "DELETE FROM TalkTemplate WHERE `id` IN ("

    .line 1338
    .line 1339
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    .line 1341
    .line 1342
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 1343
    .line 1344
    .line 1345
    move-result v14

    .line 1346
    invoke-static {v14, v3}, Landroidx/room/Room;->appendPlaceholders(ILjava/lang/StringBuilder;)V

    .line 1347
    .line 1348
    .line 1349
    const-string v14, ")"

    .line 1350
    .line 1351
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v3

    .line 1358
    iget-object v7, v7, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1359
    .line 1360
    new-instance v14, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl$$ExternalSyntheticLambda0;

    .line 1361
    .line 1362
    invoke-direct {v14, v3, v13, v8}, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 1363
    .line 1364
    .line 1365
    invoke-static {v7, v5, v8, v14, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v3

    .line 1369
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1370
    .line 1371
    if-ne v3, v7, :cond_30

    .line 1372
    .line 1373
    goto :goto_1b

    .line 1374
    :cond_30
    move-object v3, v6

    .line 1375
    :goto_1b
    if-ne v3, v7, :cond_31

    .line 1376
    .line 1377
    goto :goto_1c

    .line 1378
    :cond_31
    move-object v3, v6

    .line 1379
    :goto_1c
    if-ne v3, v12, :cond_32

    .line 1380
    .line 1381
    goto :goto_21

    .line 1382
    :cond_32
    :goto_1d
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 1386
    .line 1387
    .line 1388
    move-result v3

    .line 1389
    move v7, v5

    .line 1390
    :goto_1e
    if-ge v7, v3, :cond_33

    .line 1391
    .line 1392
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v13

    .line 1396
    check-cast v13, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 1397
    .line 1398
    add-int/lit8 v7, v7, 0x1

    .line 1399
    .line 1400
    iput v7, v13, Lorg/wikipedia/talk/db/TalkTemplate;->order:I

    .line 1401
    .line 1402
    goto :goto_1e

    .line 1403
    :cond_33
    iput v4, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 1404
    .line 1405
    iget-object v3, v10, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 1406
    .line 1407
    check-cast v3, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;

    .line 1408
    .line 1409
    iget-object v4, v3, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1410
    .line 1411
    new-instance v7, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;

    .line 1412
    .line 1413
    const/16 v10, 0xb

    .line 1414
    .line 1415
    invoke-direct {v7, v10, v3, v11}, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1416
    .line 1417
    .line 1418
    invoke-static {v4, v5, v8, v7, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v1

    .line 1422
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1423
    .line 1424
    if-ne v1, v3, :cond_34

    .line 1425
    .line 1426
    goto :goto_1f

    .line 1427
    :cond_34
    move-object v1, v6

    .line 1428
    :goto_1f
    if-ne v1, v3, :cond_35

    .line 1429
    .line 1430
    goto :goto_20

    .line 1431
    :cond_35
    move-object v1, v6

    .line 1432
    :goto_20
    if-ne v1, v12, :cond_36

    .line 1433
    .line 1434
    :goto_21
    move-object v6, v12

    .line 1435
    goto :goto_23

    .line 1436
    :cond_36
    :goto_22
    iget-object v1, v2, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->_actionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1437
    .line 1438
    new-instance v2, Lorg/wikipedia/talk/template/TalkTemplatesViewModel$ActionState$Deleted;

    .line 1439
    .line 1440
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1441
    .line 1442
    .line 1443
    move-result v0

    .line 1444
    invoke-direct {v2, v0}, Lorg/wikipedia/talk/template/TalkTemplatesViewModel$ActionState$Deleted;-><init>(I)V

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1448
    .line 1449
    .line 1450
    invoke-virtual {v1, v9, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1451
    .line 1452
    .line 1453
    :goto_23
    return-object v6

    .line 1454
    :pswitch_6
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 1455
    .line 1456
    check-cast v0, Landroid/view/View;

    .line 1457
    .line 1458
    iget-object v2, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 1459
    .line 1460
    check-cast v2, Lorg/wikipedia/talk/TalkTopicHolder;

    .line 1461
    .line 1462
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1463
    .line 1464
    iget v4, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 1465
    .line 1466
    const-string v10, "threadItem"

    .line 1467
    .line 1468
    if-eqz v4, :cond_38

    .line 1469
    .line 1470
    if-ne v4, v8, :cond_37

    .line 1471
    .line 1472
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1473
    .line 1474
    .line 1475
    move-object/from16 v1, p1

    .line 1476
    .line 1477
    goto :goto_24

    .line 1478
    :cond_37
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1479
    .line 1480
    .line 1481
    move-object v6, v9

    .line 1482
    goto/16 :goto_29

    .line 1483
    .line 1484
    :cond_38
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1485
    .line 1486
    .line 1487
    iget-object v4, v2, Lorg/wikipedia/talk/TalkTopicHolder;->viewModel:Lorg/wikipedia/talk/TalkTopicsViewModel;

    .line 1488
    .line 1489
    iget-object v7, v2, Lorg/wikipedia/talk/TalkTopicHolder;->threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1490
    .line 1491
    if-eqz v7, :cond_44

    .line 1492
    .line 1493
    iget-object v7, v7, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->name:Ljava/lang/String;

    .line 1494
    .line 1495
    iput v8, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 1496
    .line 1497
    invoke-virtual {v4, v7, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel;->isSubscribed(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v1

    .line 1501
    if-ne v1, v3, :cond_39

    .line 1502
    .line 1503
    move-object v6, v3

    .line 1504
    goto/16 :goto_29

    .line 1505
    .line 1506
    :cond_39
    :goto_24
    check-cast v1, Ljava/lang/Boolean;

    .line 1507
    .line 1508
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1509
    .line 1510
    .line 1511
    move-result v1

    .line 1512
    iget-object v3, v2, Lorg/wikipedia/talk/TalkTopicHolder;->threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1513
    .line 1514
    if-eqz v3, :cond_43

    .line 1515
    .line 1516
    new-instance v3, Lokhttp3/Request$Builder;

    .line 1517
    .line 1518
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v4

    .line 1522
    invoke-direct {v3, v4, v0, v5}, Lokhttp3/Request$Builder;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 1523
    .line 1524
    .line 1525
    iget-object v0, v3, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 1526
    .line 1527
    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 1528
    .line 1529
    iget-object v5, v3, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 1530
    .line 1531
    check-cast v5, Landroidx/appcompat/view/menu/MenuPopupHelper;

    .line 1532
    .line 1533
    invoke-virtual {v5, v8}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 1534
    .line 1535
    .line 1536
    new-instance v5, Landroidx/appcompat/view/SupportMenuInflater;

    .line 1537
    .line 1538
    invoke-direct {v5, v4}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    .line 1539
    .line 1540
    .line 1541
    const v4, 0x7f0e0028

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {v5, v4, v0}, Landroidx/appcompat/view/SupportMenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1545
    .line 1546
    .line 1547
    const v4, 0x7f0903f1

    .line 1548
    .line 1549
    .line 1550
    invoke-virtual {v0, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v4

    .line 1554
    sget v5, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 1555
    .line 1556
    iget-object v5, v2, Lorg/wikipedia/talk/TalkTopicHolder;->threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1557
    .line 1558
    if-eqz v5, :cond_42

    .line 1559
    .line 1560
    invoke-static {v5}, Lorg/wikipedia/util/UriUtil;->isSubscribable(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;)Z

    .line 1561
    .line 1562
    .line 1563
    move-result v5

    .line 1564
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1565
    .line 1566
    .line 1567
    iget-object v5, v2, Lorg/wikipedia/talk/TalkTopicHolder;->threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1568
    .line 1569
    if-eqz v5, :cond_41

    .line 1570
    .line 1571
    invoke-static {v5}, Lorg/wikipedia/util/UriUtil;->isSubscribable(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;)Z

    .line 1572
    .line 1573
    .line 1574
    move-result v5

    .line 1575
    if-eqz v5, :cond_3c

    .line 1576
    .line 1577
    if-eqz v1, :cond_3a

    .line 1578
    .line 1579
    const v5, 0x7f0801b8

    .line 1580
    .line 1581
    .line 1582
    goto :goto_25

    .line 1583
    :cond_3a
    const v5, 0x7f0801b9

    .line 1584
    .line 1585
    .line 1586
    :goto_25
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1587
    .line 1588
    .line 1589
    if-eqz v1, :cond_3b

    .line 1590
    .line 1591
    const v5, 0x7f12093e

    .line 1592
    .line 1593
    .line 1594
    goto :goto_26

    .line 1595
    :cond_3b
    const v5, 0x7f12093d

    .line 1596
    .line 1597
    .line 1598
    :goto_26
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1599
    .line 1600
    .line 1601
    :cond_3c
    const v4, 0x7f0903cc

    .line 1602
    .line 1603
    .line 1604
    invoke-virtual {v0, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v0

    .line 1608
    iget-object v4, v2, Lorg/wikipedia/talk/TalkTopicHolder;->threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1609
    .line 1610
    if-eqz v4, :cond_40

    .line 1611
    .line 1612
    iget-boolean v4, v4, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->seen:Z

    .line 1613
    .line 1614
    if-eqz v4, :cond_3d

    .line 1615
    .line 1616
    const v4, 0x7f0801c8

    .line 1617
    .line 1618
    .line 1619
    goto :goto_27

    .line 1620
    :cond_3d
    const v4, 0x7f0801c4

    .line 1621
    .line 1622
    .line 1623
    :goto_27
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1624
    .line 1625
    .line 1626
    iget-object v4, v2, Lorg/wikipedia/talk/TalkTopicHolder;->threadItem:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 1627
    .line 1628
    if-eqz v4, :cond_3f

    .line 1629
    .line 1630
    iget-boolean v4, v4, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->seen:Z

    .line 1631
    .line 1632
    if-eqz v4, :cond_3e

    .line 1633
    .line 1634
    const v4, 0x7f12093b

    .line 1635
    .line 1636
    .line 1637
    goto :goto_28

    .line 1638
    :cond_3e
    const v4, 0x7f12093a

    .line 1639
    .line 1640
    .line 1641
    :goto_28
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1642
    .line 1643
    .line 1644
    new-instance v0, Lkotlinx/serialization/json/internal/Composer;

    .line 1645
    .line 1646
    const/4 v4, 0x7

    .line 1647
    invoke-direct {v0, v2, v1, v4}, Lkotlinx/serialization/json/internal/Composer;-><init>(Ljava/lang/Object;ZI)V

    .line 1648
    .line 1649
    .line 1650
    iput-object v0, v3, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 1651
    .line 1652
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->show()V

    .line 1653
    .line 1654
    .line 1655
    :goto_29
    return-object v6

    .line 1656
    :cond_3f
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1657
    .line 1658
    .line 1659
    throw v9

    .line 1660
    :cond_40
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1661
    .line 1662
    .line 1663
    throw v9

    .line 1664
    :cond_41
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1665
    .line 1666
    .line 1667
    throw v9

    .line 1668
    :cond_42
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1669
    .line 1670
    .line 1671
    throw v9

    .line 1672
    :cond_43
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1673
    .line 1674
    .line 1675
    throw v9

    .line 1676
    :cond_44
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1677
    .line 1678
    .line 1679
    throw v9

    .line 1680
    :pswitch_7
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1681
    .line 1682
    iget v2, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 1683
    .line 1684
    if-eqz v2, :cond_46

    .line 1685
    .line 1686
    if-ne v2, v8, :cond_45

    .line 1687
    .line 1688
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1689
    .line 1690
    .line 1691
    move-object/from16 v0, p1

    .line 1692
    .line 1693
    goto :goto_2a

    .line 1694
    :cond_45
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1695
    .line 1696
    .line 1697
    move-object v0, v9

    .line 1698
    goto :goto_2a

    .line 1699
    :cond_46
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1700
    .line 1701
    .line 1702
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 1703
    .line 1704
    iget-object v2, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 1705
    .line 1706
    check-cast v2, Lorg/wikipedia/dataclient/WikiSite;

    .line 1707
    .line 1708
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 1709
    .line 1710
    .line 1711
    move-result-object v2

    .line 1712
    iget-object v3, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 1713
    .line 1714
    check-cast v3, Lorg/wikipedia/page/PageTitle;

    .line 1715
    .line 1716
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v3

    .line 1720
    iput v8, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 1721
    .line 1722
    invoke-interface {v2, v3, v1}, Lorg/wikipedia/dataclient/RestService;->getTalkPage(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v1

    .line 1726
    if-ne v1, v0, :cond_47

    .line 1727
    .line 1728
    goto :goto_2a

    .line 1729
    :cond_47
    move-object v0, v1

    .line 1730
    :goto_2a
    return-object v0

    .line 1731
    :pswitch_8
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1732
    .line 1733
    iget v2, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 1734
    .line 1735
    if-eqz v2, :cond_4a

    .line 1736
    .line 1737
    if-eq v2, v8, :cond_49

    .line 1738
    .line 1739
    if-ne v2, v4, :cond_48

    .line 1740
    .line 1741
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1742
    .line 1743
    .line 1744
    move-object/from16 v2, p1

    .line 1745
    .line 1746
    goto :goto_2d

    .line 1747
    :cond_48
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1748
    .line 1749
    .line 1750
    move-object v6, v9

    .line 1751
    goto :goto_2f

    .line 1752
    :cond_49
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1753
    .line 1754
    .line 1755
    goto :goto_2b

    .line 1756
    :cond_4a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1757
    .line 1758
    .line 1759
    iput v8, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 1760
    .line 1761
    const-wide/16 v7, 0x1f4

    .line 1762
    .line 1763
    invoke-static {v7, v8, v1}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v2

    .line 1767
    if-ne v2, v0, :cond_4b

    .line 1768
    .line 1769
    goto :goto_2c

    .line 1770
    :cond_4b
    :goto_2b
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 1771
    .line 1772
    sget-object v2, Lorg/wikipedia/Constants;->wikidataWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1773
    .line 1774
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v2

    .line 1778
    iget-object v5, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 1779
    .line 1780
    check-cast v5, Ljava/lang/String;

    .line 1781
    .line 1782
    sget-object v7, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 1783
    .line 1784
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v7

    .line 1788
    invoke-virtual {v7}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v7

    .line 1792
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v8

    .line 1796
    invoke-virtual {v8}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v8

    .line 1800
    iput v4, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 1801
    .line 1802
    invoke-interface {v2, v5, v7, v8, v1}, Lorg/wikipedia/dataclient/Service;->searchEntities(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1803
    .line 1804
    .line 1805
    move-result-object v2

    .line 1806
    if-ne v2, v0, :cond_4c

    .line 1807
    .line 1808
    :goto_2c
    move-object v6, v0

    .line 1809
    goto :goto_2f

    .line 1810
    :cond_4c
    :goto_2d
    check-cast v2, Lorg/wikipedia/dataclient/wikidata/Search;

    .line 1811
    .line 1812
    iget-object v0, v2, Lorg/wikipedia/dataclient/wikidata/Search;->results:Ljava/util/List;

    .line 1813
    .line 1814
    new-instance v2, Ljava/util/ArrayList;

    .line 1815
    .line 1816
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1817
    .line 1818
    .line 1819
    move-result v3

    .line 1820
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1821
    .line 1822
    .line 1823
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v0

    .line 1827
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1828
    .line 1829
    .line 1830
    move-result v3

    .line 1831
    if-eqz v3, :cond_4d

    .line 1832
    .line 1833
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v3

    .line 1837
    check-cast v3, Lorg/wikipedia/dataclient/wikidata/Search$SearchResult;

    .line 1838
    .line 1839
    new-instance v4, Lorg/wikipedia/suggestededits/ImageTag;

    .line 1840
    .line 1841
    iget-object v5, v3, Lorg/wikipedia/dataclient/wikidata/Search$SearchResult;->id:Ljava/lang/String;

    .line 1842
    .line 1843
    iget-object v7, v3, Lorg/wikipedia/dataclient/wikidata/Search$SearchResult;->label:Ljava/lang/String;

    .line 1844
    .line 1845
    iget-object v3, v3, Lorg/wikipedia/dataclient/wikidata/Search$SearchResult;->description:Ljava/lang/String;

    .line 1846
    .line 1847
    invoke-direct {v4, v5, v7, v3}, Lorg/wikipedia/suggestededits/ImageTag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    .line 1849
    .line 1850
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1851
    .line 1852
    .line 1853
    goto :goto_2e

    .line 1854
    :cond_4d
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 1855
    .line 1856
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    .line 1857
    .line 1858
    invoke-virtual {v0, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->applyResults(Ljava/util/List;)V

    .line 1859
    .line 1860
    .line 1861
    :goto_2f
    return-object v6

    .line 1862
    :pswitch_9
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1863
    .line 1864
    iget v2, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 1865
    .line 1866
    if-eqz v2, :cond_4f

    .line 1867
    .line 1868
    if-ne v2, v8, :cond_4e

    .line 1869
    .line 1870
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1871
    .line 1872
    .line 1873
    goto :goto_31

    .line 1874
    :cond_4e
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1875
    .line 1876
    .line 1877
    move-object v6, v9

    .line 1878
    goto :goto_31

    .line 1879
    :cond_4f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1880
    .line 1881
    .line 1882
    iget-object v2, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 1883
    .line 1884
    move-object v10, v2

    .line 1885
    check-cast v10, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 1886
    .line 1887
    iget-object v2, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 1888
    .line 1889
    move-object v14, v2

    .line 1890
    check-cast v14, Ljava/util/ArrayList;

    .line 1891
    .line 1892
    iput v8, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 1893
    .line 1894
    sget-object v2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 1895
    .line 1896
    sget-object v2, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 1897
    .line 1898
    new-instance v9, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;

    .line 1899
    .line 1900
    const/4 v15, 0x0

    .line 1901
    const-wide/16 v11, 0x0

    .line 1902
    .line 1903
    const/4 v13, 0x0

    .line 1904
    invoke-direct/range {v9 .. v15}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2;-><init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;JZLjava/util/List;Lkotlin/coroutines/Continuation;)V

    .line 1905
    .line 1906
    .line 1907
    invoke-static {v2, v9, v1}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1908
    .line 1909
    .line 1910
    move-result-object v1

    .line 1911
    if-ne v1, v0, :cond_50

    .line 1912
    .line 1913
    goto :goto_30

    .line 1914
    :cond_50
    move-object v1, v6

    .line 1915
    :goto_30
    if-ne v1, v0, :cond_51

    .line 1916
    .line 1917
    move-object v6, v0

    .line 1918
    :cond_51
    :goto_31
    return-object v6

    .line 1919
    :pswitch_a
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 1920
    .line 1921
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 1922
    .line 1923
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1924
    .line 1925
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1926
    .line 1927
    iget v3, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 1928
    .line 1929
    if-eqz v3, :cond_53

    .line 1930
    .line 1931
    if-ne v3, v8, :cond_52

    .line 1932
    .line 1933
    iget-object v1, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 1934
    .line 1935
    check-cast v1, Lorg/wikipedia/WikipediaApp;

    .line 1936
    .line 1937
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1938
    .line 1939
    .line 1940
    move-object v3, v1

    .line 1941
    move-object/from16 v1, p1

    .line 1942
    .line 1943
    goto :goto_32

    .line 1944
    :cond_52
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1945
    .line 1946
    .line 1947
    move-object v6, v9

    .line 1948
    goto/16 :goto_37

    .line 1949
    .line 1950
    :cond_53
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1951
    .line 1952
    .line 1953
    new-instance v3, Lorg/wikipedia/util/Resource$Loading;

    .line 1954
    .line 1955
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1956
    .line 1957
    .line 1958
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1959
    .line 1960
    .line 1961
    invoke-virtual {v0, v9, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1962
    .line 1963
    .line 1964
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 1965
    .line 1966
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 1967
    .line 1968
    .line 1969
    move-result-object v3

    .line 1970
    sget-object v4, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 1971
    .line 1972
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 1973
    .line 1974
    .line 1975
    move-result-object v4

    .line 1976
    invoke-static {v4}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 1977
    .line 1978
    .line 1979
    move-result-object v4

    .line 1980
    iput-object v3, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 1981
    .line 1982
    iput v8, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 1983
    .line 1984
    invoke-interface {v4, v1}, Lorg/wikipedia/dataclient/Service;->getSiteMatrix(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v1

    .line 1988
    if-ne v1, v2, :cond_54

    .line 1989
    .line 1990
    move-object v6, v2

    .line 1991
    goto/16 :goto_37

    .line 1992
    .line 1993
    :cond_54
    :goto_32
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/SiteMatrix;

    .line 1994
    .line 1995
    new-instance v2, Ljava/util/ArrayList;

    .line 1996
    .line 1997
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1998
    .line 1999
    .line 2000
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 2001
    .line 2002
    .line 2003
    move-result-object v4

    .line 2004
    invoke-virtual {v4}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 2005
    .line 2006
    .line 2007
    move-result-object v4

    .line 2008
    check-cast v4, Ljava/util/ArrayList;

    .line 2009
    .line 2010
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2011
    .line 2012
    .line 2013
    move-result-object v4

    .line 2014
    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 2015
    .line 2016
    .line 2017
    move-result v5

    .line 2018
    if-eqz v5, :cond_5b

    .line 2019
    .line 2020
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2021
    .line 2022
    .line 2023
    move-result-object v5

    .line 2024
    check-cast v5, Ljava/lang/String;

    .line 2025
    .line 2026
    sget-object v7, Lorg/wikipedia/dataclient/mwapi/SiteMatrix;->Companion:Lorg/wikipedia/dataclient/mwapi/SiteMatrix$Companion;

    .line 2027
    .line 2028
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2029
    .line 2030
    .line 2031
    invoke-static {v1}, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$Companion;->getSites(Lorg/wikipedia/dataclient/mwapi/SiteMatrix;)Ljava/util/List;

    .line 2032
    .line 2033
    .line 2034
    move-result-object v7

    .line 2035
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2036
    .line 2037
    .line 2038
    move-result-object v7

    .line 2039
    :cond_55
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 2040
    .line 2041
    .line 2042
    move-result v8

    .line 2043
    if-eqz v8, :cond_56

    .line 2044
    .line 2045
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2046
    .line 2047
    .line 2048
    move-result-object v8

    .line 2049
    move-object v10, v8

    .line 2050
    check-cast v10, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;

    .line 2051
    .line 2052
    iget-object v10, v10, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;->code:Ljava/lang/String;

    .line 2053
    .line 2054
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2055
    .line 2056
    .line 2057
    move-result v10

    .line 2058
    if-eqz v10, :cond_55

    .line 2059
    .line 2060
    goto :goto_34

    .line 2061
    :cond_56
    move-object v8, v9

    .line 2062
    :goto_34
    check-cast v8, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;

    .line 2063
    .line 2064
    if-eqz v8, :cond_57

    .line 2065
    .line 2066
    iget-object v7, v8, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$SiteInfo;->name:Ljava/lang/String;

    .line 2067
    .line 2068
    goto :goto_35

    .line 2069
    :cond_57
    move-object v7, v9

    .line 2070
    :goto_35
    if-eqz v7, :cond_58

    .line 2071
    .line 2072
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 2073
    .line 2074
    .line 2075
    move-result v8

    .line 2076
    if-nez v8, :cond_59

    .line 2077
    .line 2078
    :cond_58
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 2079
    .line 2080
    .line 2081
    move-result-object v7

    .line 2082
    invoke-virtual {v7, v5}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    .line 2083
    .line 2084
    .line 2085
    move-result-object v7

    .line 2086
    :cond_59
    if-nez v7, :cond_5a

    .line 2087
    .line 2088
    goto :goto_36

    .line 2089
    :cond_5a
    move-object v5, v7

    .line 2090
    :goto_36
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2091
    .line 2092
    .line 2093
    goto :goto_33

    .line 2094
    :cond_5b
    new-instance v1, Lorg/wikipedia/util/Resource$Success;

    .line 2095
    .line 2096
    invoke-direct {v1, v2}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 2097
    .line 2098
    .line 2099
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2100
    .line 2101
    .line 2102
    invoke-virtual {v0, v9, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2103
    .line 2104
    .line 2105
    :goto_37
    return-object v6

    .line 2106
    :pswitch_b
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2107
    .line 2108
    iget v0, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 2109
    .line 2110
    if-eqz v0, :cond_5e

    .line 2111
    .line 2112
    if-eq v0, v8, :cond_5d

    .line 2113
    .line 2114
    if-ne v0, v4, :cond_5c

    .line 2115
    .line 2116
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2117
    .line 2118
    .line 2119
    goto :goto_3b

    .line 2120
    :cond_5c
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2121
    .line 2122
    .line 2123
    move-object v6, v9

    .line 2124
    goto :goto_3b

    .line 2125
    :cond_5d
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2126
    .line 2127
    .line 2128
    goto :goto_38

    .line 2129
    :catch_2
    move-exception v0

    .line 2130
    goto :goto_39

    .line 2131
    :cond_5e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2132
    .line 2133
    .line 2134
    :try_start_3
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 2135
    .line 2136
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 2137
    .line 2138
    .line 2139
    move-result-object v0

    .line 2140
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->categoryDao()Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 2141
    .line 2142
    .line 2143
    move-result-object v0

    .line 2144
    invoke-static {}, Lj$/time/Year;->now()Lj$/time/Year;

    .line 2145
    .line 2146
    .line 2147
    move-result-object v3

    .line 2148
    invoke-virtual {v3}, Lj$/time/Year;->getValue()I

    .line 2149
    .line 2150
    .line 2151
    move-result v3

    .line 2152
    add-int/2addr v3, v8

    .line 2153
    iput v8, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 2154
    .line 2155
    iget-object v0, v0, Lorg/wikipedia/categories/db/CategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2156
    .line 2157
    new-instance v7, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;

    .line 2158
    .line 2159
    const/4 v10, 0x5

    .line 2160
    invoke-direct {v7, v3, v10}, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;-><init>(II)V

    .line 2161
    .line 2162
    .line 2163
    invoke-static {v0, v5, v8, v7, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2164
    .line 2165
    .line 2166
    move-result-object v0

    .line 2167
    if-ne v0, v2, :cond_5f

    .line 2168
    .line 2169
    goto :goto_3a

    .line 2170
    :cond_5f
    :goto_38
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 2171
    .line 2172
    check-cast v0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 2173
    .line 2174
    invoke-virtual {v0}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;->loadCategories()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2175
    .line 2176
    .line 2177
    goto :goto_3b

    .line 2178
    :goto_39
    const-string v3, "Error deleting categories"

    .line 2179
    .line 2180
    sget-object v5, Lorg/wikipedia/util/log/L;->LEVEL_E:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 2181
    .line 2182
    invoke-virtual {v5, v3, v0}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2183
    .line 2184
    .line 2185
    sget-object v3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2186
    .line 2187
    sget-object v3, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 2188
    .line 2189
    new-instance v5, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestData$2$1;

    .line 2190
    .line 2191
    iget-object v7, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 2192
    .line 2193
    check-cast v7, Landroid/content/Context;

    .line 2194
    .line 2195
    invoke-direct {v5, v7, v0, v9, v4}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestData$2$1;-><init>(Landroid/content/Context;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;I)V

    .line 2196
    .line 2197
    .line 2198
    iput v4, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 2199
    .line 2200
    invoke-static {v3, v5, v1}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2201
    .line 2202
    .line 2203
    move-result-object v0

    .line 2204
    if-ne v0, v2, :cond_60

    .line 2205
    .line 2206
    :goto_3a
    move-object v6, v2

    .line 2207
    :cond_60
    :goto_3b
    return-object v6

    .line 2208
    :pswitch_c
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2209
    .line 2210
    iget v2, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 2211
    .line 2212
    if-eqz v2, :cond_63

    .line 2213
    .line 2214
    if-eq v2, v8, :cond_62

    .line 2215
    .line 2216
    if-ne v2, v4, :cond_61

    .line 2217
    .line 2218
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2219
    .line 2220
    .line 2221
    goto :goto_3e

    .line 2222
    :cond_61
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2223
    .line 2224
    .line 2225
    move-object v6, v9

    .line 2226
    goto :goto_3e

    .line 2227
    :cond_62
    iget-object v2, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 2228
    .line 2229
    check-cast v2, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 2230
    .line 2231
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2232
    .line 2233
    .line 2234
    move-object/from16 v3, p1

    .line 2235
    .line 2236
    goto :goto_3c

    .line 2237
    :cond_63
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2238
    .line 2239
    .line 2240
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 2241
    .line 2242
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 2243
    .line 2244
    .line 2245
    move-result-object v2

    .line 2246
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 2247
    .line 2248
    .line 2249
    move-result-object v2

    .line 2250
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 2251
    .line 2252
    .line 2253
    move-result-object v3

    .line 2254
    invoke-virtual {v3}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 2255
    .line 2256
    .line 2257
    move-result-object v3

    .line 2258
    iput-object v2, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 2259
    .line 2260
    iput v8, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 2261
    .line 2262
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2263
    .line 2264
    .line 2265
    invoke-static {v3, v1}, Lorg/wikipedia/dataclient/Service$-CC;->getDefaultList$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 2266
    .line 2267
    .line 2268
    move-result-object v3

    .line 2269
    if-ne v3, v0, :cond_64

    .line 2270
    .line 2271
    goto :goto_3d

    .line 2272
    :cond_64
    :goto_3c
    check-cast v3, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 2273
    .line 2274
    iget-object v5, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 2275
    .line 2276
    check-cast v5, Ljava/util/ArrayList;

    .line 2277
    .line 2278
    iput-object v9, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 2279
    .line 2280
    iput v4, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 2281
    .line 2282
    invoke-virtual {v2, v3, v5, v8, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->addPagesToList(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2283
    .line 2284
    .line 2285
    move-result-object v1

    .line 2286
    if-ne v1, v0, :cond_65

    .line 2287
    .line 2288
    :goto_3d
    move-object v6, v0

    .line 2289
    :cond_65
    :goto_3e
    return-object v6

    .line 2290
    :pswitch_d
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->this$0:Ljava/lang/Object;

    .line 2291
    .line 2292
    check-cast v0, Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 2293
    .line 2294
    iget-object v3, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->talkTemplatesList:Ljava/util/ArrayList;

    .line 2295
    .line 2296
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2297
    .line 2298
    iget v10, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 2299
    .line 2300
    if-eqz v10, :cond_67

    .line 2301
    .line 2302
    if-ne v10, v8, :cond_66

    .line 2303
    .line 2304
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 2305
    .line 2306
    move-object v3, v0

    .line 2307
    check-cast v3, Ljava/util/ArrayList;

    .line 2308
    .line 2309
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2310
    .line 2311
    .line 2312
    move-object/from16 v0, p1

    .line 2313
    .line 2314
    goto :goto_3f

    .line 2315
    :cond_66
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2316
    .line 2317
    .line 2318
    move-object v6, v9

    .line 2319
    goto :goto_40

    .line 2320
    :cond_67
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2321
    .line 2322
    .line 2323
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2324
    .line 2325
    .line 2326
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->talkTemplatesRepository:Lorg/wikipedia/media/AvPlayer;

    .line 2327
    .line 2328
    iput-object v3, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->L$0:Ljava/lang/Object;

    .line 2329
    .line 2330
    iput v8, v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;->label:I

    .line 2331
    .line 2332
    iget-object v0, v0, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 2333
    .line 2334
    check-cast v0, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;

    .line 2335
    .line 2336
    iget-object v0, v0, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 2337
    .line 2338
    new-instance v7, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 2339
    .line 2340
    invoke-direct {v7, v2}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2341
    .line 2342
    .line 2343
    invoke-static {v0, v8, v5, v7, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2344
    .line 2345
    .line 2346
    move-result-object v0

    .line 2347
    if-ne v0, v4, :cond_68

    .line 2348
    .line 2349
    move-object v6, v4

    .line 2350
    goto :goto_40

    .line 2351
    :cond_68
    :goto_3f
    check-cast v0, Ljava/util/Collection;

    .line 2352
    .line 2353
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2354
    .line 2355
    .line 2356
    :goto_40
    return-object v6

    .line 2357
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

.class public final Lcoil3/disk/DiskLruCache$launchCleanup$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput p1, p0, Lcoil3/disk/DiskLruCache$launchCleanup$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcoil3/disk/DiskLruCache$launchCleanup$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Lcoil3/disk/DiskLruCache$launchCleanup$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcoil3/disk/DiskLruCache$launchCleanup$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 9
    .line 10
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 11
    .line 12
    const/16 v0, 0xd

    .line 13
    .line 14
    invoke-direct {p1, v0, p0, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_0
    new-instance p1, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 19
    .line 20
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 21
    .line 22
    const/16 v0, 0xc

    .line 23
    .line 24
    invoke-direct {p1, v0, p0, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :pswitch_1
    new-instance p1, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 29
    .line 30
    check-cast p0, Ljava/lang/String;

    .line 31
    .line 32
    const/16 v0, 0xb

    .line 33
    .line 34
    invoke-direct {p1, v0, p0, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :pswitch_2
    new-instance p1, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 39
    .line 40
    check-cast p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 41
    .line 42
    const/16 v0, 0xa

    .line 43
    .line 44
    invoke-direct {p1, v0, p0, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_3
    new-instance p1, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 49
    .line 50
    check-cast p0, Lorg/wikipedia/history/HistoryViewModel;

    .line 51
    .line 52
    const/16 v0, 0x9

    .line 53
    .line 54
    invoke-direct {p1, v0, p0, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :pswitch_4
    new-instance p1, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 59
    .line 60
    check-cast p0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;

    .line 61
    .line 62
    const/16 v0, 0x8

    .line 63
    .line 64
    invoke-direct {p1, v0, p0, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    :pswitch_5
    new-instance p1, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 69
    .line 70
    check-cast p0, Landroid/content/Context;

    .line 71
    .line 72
    const/4 v0, 0x7

    .line 73
    invoke-direct {p1, v0, p0, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 74
    .line 75
    .line 76
    return-object p1

    .line 77
    :pswitch_6
    new-instance p1, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 78
    .line 79
    check-cast p0, Lcoil3/request/ViewTargetRequestManager;

    .line 80
    .line 81
    const/4 v0, 0x6

    .line 82
    invoke-direct {p1, v0, p0, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 83
    .line 84
    .line 85
    return-object p1

    .line 86
    :pswitch_7
    new-instance p1, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 87
    .line 88
    check-cast p0, Landroidx/work/impl/model/WorkSpec;

    .line 89
    .line 90
    const/4 v0, 0x5

    .line 91
    invoke-direct {p1, v0, p0, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 92
    .line 93
    .line 94
    return-object p1

    .line 95
    :pswitch_8
    new-instance p1, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 96
    .line 97
    check-cast p0, Landroidx/paging/MulticastedPagingData;

    .line 98
    .line 99
    const/4 v0, 0x4

    .line 100
    invoke-direct {p1, v0, p0, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 101
    .line 102
    .line 103
    return-object p1

    .line 104
    :pswitch_9
    new-instance p1, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 105
    .line 106
    check-cast p0, Landroidx/compose/material3/TooltipStateImpl;

    .line 107
    .line 108
    const/4 v0, 0x3

    .line 109
    invoke-direct {p1, v0, p0, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 110
    .line 111
    .line 112
    return-object p1

    .line 113
    :pswitch_a
    new-instance p1, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 114
    .line 115
    check-cast p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 116
    .line 117
    const/4 v0, 0x2

    .line 118
    invoke-direct {p1, v0, p0, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 119
    .line 120
    .line 121
    return-object p1

    .line 122
    :pswitch_b
    new-instance p1, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 123
    .line 124
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 125
    .line 126
    const/4 v0, 0x1

    .line 127
    invoke-direct {p1, v0, p0, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 128
    .line 129
    .line 130
    return-object p1

    .line 131
    :pswitch_c
    new-instance p1, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 132
    .line 133
    check-cast p0, Lcoil3/disk/DiskLruCache;

    .line 134
    .line 135
    const/4 v0, 0x0

    .line 136
    invoke-direct {p1, v0, p0, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 137
    .line 138
    .line 139
    return-object p1

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
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
    iget v0, p0, Lcoil3/disk/DiskLruCache$launchCleanup$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/paging/CombinedLoadStates;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Landroidx/paging/CombinedLoadStates;

    .line 23
    .line 24
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 37
    .line 38
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_2
    check-cast p1, Landroidx/paging/CombinedLoadStates;

    .line 52
    .line 53
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 66
    .line 67
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 68
    .line 69
    invoke-virtual {p0, p1, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :pswitch_4
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 80
    .line 81
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 82
    .line 83
    invoke-virtual {p0, p1, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    check-cast p0, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 88
    .line 89
    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    return-object v1

    .line 93
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 94
    .line 95
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 96
    .line 97
    invoke-virtual {p0, p1, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    check-cast p0, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 102
    .line 103
    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    return-object v1

    .line 107
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 108
    .line 109
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 110
    .line 111
    invoke-virtual {p0, p1, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 116
    .line 117
    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    return-object v1

    .line 121
    :pswitch_7
    check-cast p1, Landroidx/work/impl/constraints/ConstraintsState;

    .line 122
    .line 123
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 124
    .line 125
    invoke-virtual {p0, p1, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p0, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    return-object v1

    .line 135
    :pswitch_8
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 136
    .line 137
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 138
    .line 139
    invoke-virtual {p0, p1, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    check-cast p0, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 144
    .line 145
    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    return-object v1

    .line 149
    :pswitch_9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 150
    .line 151
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 152
    .line 153
    invoke-virtual {p0, p1, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    check-cast p0, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 158
    .line 159
    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    return-object v1

    .line 163
    :pswitch_a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 164
    .line 165
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 166
    .line 167
    invoke-virtual {p0, p1, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    check-cast p0, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 172
    .line 173
    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    return-object p0

    .line 178
    :pswitch_b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 179
    .line 180
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 181
    .line 182
    invoke-virtual {p0, p1, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    check-cast p0, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 187
    .line 188
    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    return-object v1

    .line 192
    :pswitch_c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 193
    .line 194
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 195
    .line 196
    invoke-virtual {p0, p1, p2}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    check-cast p0, Lcoil3/disk/DiskLruCache$launchCleanup$1;

    .line 201
    .line 202
    invoke-virtual {p0, v1}, Lcoil3/disk/DiskLruCache$launchCleanup$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    return-object p0

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcoil3/disk/DiskLruCache$launchCleanup$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const-string v1, "binding"

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$launchCleanup$1;->this$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lorg/wikipedia/usercontrib/UserContribListActivity;

    .line 20
    .line 21
    iget-object v0, v0, Lorg/wikipedia/usercontrib/UserContribListActivity;->binding:Lokhttp3/MultipartBody$Builder;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, v0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 28
    .line 29
    iget-boolean v1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v5

    .line 43
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$launchCleanup$1;->this$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;

    .line 49
    .line 50
    iget-object v1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object v1, v1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 58
    .line 59
    iget-boolean v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-object v0, v0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 73
    .line 74
    .line 75
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 76
    .line 77
    return-object v0

    .line 78
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 82
    .line 83
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$launchCleanup$1;->this$0:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Ljava/lang/String;

    .line 86
    .line 87
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 88
    .line 89
    new-instance v2, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    if-eqz v0, :cond_a

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_3

    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_3
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->stripAccents(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_b

    .line 117
    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 123
    .line 124
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-static {v6}, Lorg/apache/commons/lang3/StringUtils;->stripAccents(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-static {v6, v0, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-eqz v6, :cond_5

    .line 143
    .line 144
    add-int/lit8 v6, v4, 0x1

    .line 145
    .line 146
    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    move v4, v6

    .line 150
    :cond_5
    iget-object v5, v5, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    :cond_6
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_4

    .line 161
    .line 162
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    check-cast v6, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 167
    .line 168
    invoke-virtual {v6}, Lorg/wikipedia/readinglist/database/ReadingListPage;->getAccentInvariantTitle()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    invoke-static {v7, v0, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-eqz v7, :cond_6

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eqz v7, :cond_7

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    if-eqz v8, :cond_9

    .line 194
    .line 195
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    instance-of v9, v8, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 200
    .line 201
    if-eqz v9, :cond_8

    .line 202
    .line 203
    check-cast v8, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 204
    .line 205
    iget-object v9, v8, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 206
    .line 207
    iget-object v10, v6, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 208
    .line 209
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    if-eqz v9, :cond_8

    .line 214
    .line 215
    iget-object v8, v8, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 216
    .line 217
    iget-object v9, v6, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 218
    .line 219
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v8

    .line 223
    if-eqz v8, :cond_8

    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_9
    :goto_1
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_a
    :goto_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 231
    .line 232
    .line 233
    :cond_b
    return-object v2

    .line 234
    :pswitch_2
    const-string v1, "binding"

    .line 235
    .line 236
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$launchCleanup$1;->this$0:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    .line 242
    .line 243
    iget-object v0, v0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;->binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 244
    .line 245
    if-eqz v0, :cond_d

    .line 246
    .line 247
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->viewProgressBar:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v0, Lorg/wikipedia/views/WikiSwipeRefreshLayout;

    .line 250
    .line 251
    iget-boolean v1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mRefreshing:Z

    .line 252
    .line 253
    if-eqz v1, :cond_c

    .line 254
    .line 255
    invoke-virtual {v0, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 256
    .line 257
    .line 258
    :cond_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 259
    .line 260
    return-object v0

    .line 261
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw v5

    .line 265
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$launchCleanup$1;->this$0:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v0, Lorg/wikipedia/history/HistoryViewModel;

    .line 271
    .line 272
    iget-object v0, v0, Lorg/wikipedia/history/HistoryViewModel;->historyItems:Landroidx/lifecycle/MutableLiveData;

    .line 273
    .line 274
    new-instance v1, Lorg/wikipedia/util/Resource$Success;

    .line 275
    .line 276
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 277
    .line 278
    invoke-direct {v1, v2}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 285
    .line 286
    return-object v0

    .line 287
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$launchCleanup$1;->this$0:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v0, Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;

    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    new-instance v3, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 302
    .line 303
    invoke-direct {v3, v0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/donate/donationreminder/DonationReminderViewModel;)V

    .line 304
    .line 305
    .line 306
    new-instance v4, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 307
    .line 308
    const/4 v6, 0x7

    .line 309
    invoke-direct {v4, v6, v0, v5}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 310
    .line 311
    .line 312
    invoke-static {v1, v3, v5, v4, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 313
    .line 314
    .line 315
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 316
    .line 317
    return-object v0

    .line 318
    :pswitch_5
    const-string v1, "Shortcut must have a non-empty label"

    .line 319
    .line 320
    const-string v6, "Shortcut must have an intent"

    .line 321
    .line 322
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$launchCleanup$1;->this$0:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast v0, Landroid/content/Context;

    .line 328
    .line 329
    const-string v7, "shortcutSearch"

    .line 330
    .line 331
    new-instance v8, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 332
    .line 333
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 334
    .line 335
    .line 336
    iput-object v0, v8, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    .line 337
    .line 338
    iput-object v7, v8, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    .line 339
    .line 340
    const v9, 0x7f12008c

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v10

    .line 347
    iput-object v10, v8, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 348
    .line 349
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v9

    .line 353
    iput-object v9, v8, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    .line 354
    .line 355
    const v9, 0x7f0800bb

    .line 356
    .line 357
    .line 358
    invoke-static {v0, v9}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 359
    .line 360
    .line 361
    move-result-object v9

    .line 362
    iput-object v9, v8, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 363
    .line 364
    new-instance v9, Landroid/content/Intent;

    .line 365
    .line 366
    const-string v10, "ACTION_APP_SHORTCUT"

    .line 367
    .line 368
    sget-object v11, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 369
    .line 370
    const-class v12, Lorg/wikipedia/main/MainActivity;

    .line 371
    .line 372
    invoke-direct {v9, v10, v11, v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    .line 374
    .line 375
    const v13, 0x10008000

    .line 376
    .line 377
    .line 378
    invoke-virtual {v9, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 379
    .line 380
    .line 381
    move-result-object v9

    .line 382
    const-string v14, "APP_SHORTCUT_ID"

    .line 383
    .line 384
    invoke-virtual {v9, v14, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    .line 386
    .line 387
    move-result-object v7

    .line 388
    const-string v9, "appShortcutSearch"

    .line 389
    .line 390
    invoke-virtual {v7, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    new-array v9, v3, [Landroid/content/Intent;

    .line 395
    .line 396
    aput-object v7, v9, v4

    .line 397
    .line 398
    iput-object v9, v8, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 399
    .line 400
    iget-object v7, v8, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 401
    .line 402
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 403
    .line 404
    .line 405
    move-result v7

    .line 406
    if-nez v7, :cond_18

    .line 407
    .line 408
    iget-object v7, v8, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 409
    .line 410
    if-eqz v7, :cond_17

    .line 411
    .line 412
    array-length v7, v7

    .line 413
    if-eqz v7, :cond_17

    .line 414
    .line 415
    const-string v7, "shortcutContinueReading"

    .line 416
    .line 417
    new-instance v9, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 418
    .line 419
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 420
    .line 421
    .line 422
    iput-object v0, v9, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    .line 423
    .line 424
    iput-object v7, v9, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    .line 425
    .line 426
    const v15, 0x7f120089

    .line 427
    .line 428
    .line 429
    move/from16 v16, v2

    .line 430
    .line 431
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    iput-object v2, v9, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 436
    .line 437
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    iput-object v2, v9, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    .line 442
    .line 443
    const v2, 0x7f0800b8

    .line 444
    .line 445
    .line 446
    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    iput-object v2, v9, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 451
    .line 452
    new-instance v2, Landroid/content/Intent;

    .line 453
    .line 454
    invoke-direct {v2, v10, v11, v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-virtual {v2, v14, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    const-string v7, "appShortcutContinueReading"

    .line 466
    .line 467
    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    new-array v7, v3, [Landroid/content/Intent;

    .line 472
    .line 473
    aput-object v2, v7, v4

    .line 474
    .line 475
    iput-object v7, v9, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 476
    .line 477
    iget-object v2, v9, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 478
    .line 479
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    if-nez v2, :cond_16

    .line 484
    .line 485
    iget-object v2, v9, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 486
    .line 487
    if-eqz v2, :cond_15

    .line 488
    .line 489
    array-length v2, v2

    .line 490
    if-eqz v2, :cond_15

    .line 491
    .line 492
    const-string v2, "shortcutRandom"

    .line 493
    .line 494
    new-instance v7, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 495
    .line 496
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 497
    .line 498
    .line 499
    iput-object v0, v7, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    .line 500
    .line 501
    iput-object v2, v7, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    .line 502
    .line 503
    const v15, 0x7f12008b

    .line 504
    .line 505
    .line 506
    move/from16 v17, v4

    .line 507
    .line 508
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v4

    .line 512
    iput-object v4, v7, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 513
    .line 514
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    iput-object v4, v7, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    .line 519
    .line 520
    const v4, 0x7f0800ba

    .line 521
    .line 522
    .line 523
    invoke-static {v0, v4}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 524
    .line 525
    .line 526
    move-result-object v4

    .line 527
    iput-object v4, v7, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 528
    .line 529
    new-instance v4, Landroid/content/Intent;

    .line 530
    .line 531
    invoke-direct {v4, v10, v11, v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v4, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    invoke-virtual {v4, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    const-string v4, "appShortcutRandomizer"

    .line 543
    .line 544
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    new-array v4, v3, [Landroid/content/Intent;

    .line 549
    .line 550
    aput-object v2, v4, v17

    .line 551
    .line 552
    iput-object v4, v7, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 553
    .line 554
    iget-object v2, v7, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 555
    .line 556
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    if-nez v2, :cond_14

    .line 561
    .line 562
    iget-object v2, v7, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 563
    .line 564
    if-eqz v2, :cond_13

    .line 565
    .line 566
    array-length v2, v2

    .line 567
    if-eqz v2, :cond_13

    .line 568
    .line 569
    const-string v2, "shortcutPlaces"

    .line 570
    .line 571
    new-instance v4, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 572
    .line 573
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 574
    .line 575
    .line 576
    iput-object v0, v4, Landroidx/core/content/pm/ShortcutInfoCompat;->mContext:Landroid/content/Context;

    .line 577
    .line 578
    iput-object v2, v4, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    .line 579
    .line 580
    const v15, 0x7f12008a

    .line 581
    .line 582
    .line 583
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v5

    .line 587
    iput-object v5, v4, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 588
    .line 589
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v5

    .line 593
    iput-object v5, v4, Landroidx/core/content/pm/ShortcutInfoCompat;->mLongLabel:Ljava/lang/CharSequence;

    .line 594
    .line 595
    const v5, 0x7f0800b9

    .line 596
    .line 597
    .line 598
    invoke-static {v0, v5}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 599
    .line 600
    .line 601
    move-result-object v5

    .line 602
    iput-object v5, v4, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 603
    .line 604
    new-instance v5, Landroid/content/Intent;

    .line 605
    .line 606
    invoke-direct {v5, v10, v11, v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v5, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 610
    .line 611
    .line 612
    move-result-object v5

    .line 613
    invoke-virtual {v5, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    const-string v5, "appShortcutPlaces"

    .line 618
    .line 619
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    new-array v5, v3, [Landroid/content/Intent;

    .line 624
    .line 625
    aput-object v2, v5, v17

    .line 626
    .line 627
    iput-object v5, v4, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 628
    .line 629
    iget-object v2, v4, Landroidx/core/content/pm/ShortcutInfoCompat;->mLabel:Ljava/lang/CharSequence;

    .line 630
    .line 631
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 632
    .line 633
    .line 634
    move-result v2

    .line 635
    if-nez v2, :cond_12

    .line 636
    .line 637
    iget-object v1, v4, Landroidx/core/content/pm/ShortcutInfoCompat;->mIntents:[Landroid/content/Intent;

    .line 638
    .line 639
    if-eqz v1, :cond_11

    .line 640
    .line 641
    array-length v1, v1

    .line 642
    if-eqz v1, :cond_11

    .line 643
    .line 644
    const/4 v1, 0x4

    .line 645
    new-array v1, v1, [Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 646
    .line 647
    aput-object v8, v1, v17

    .line 648
    .line 649
    aput-object v9, v1, v3

    .line 650
    .line 651
    aput-object v7, v1, v16

    .line 652
    .line 653
    const/4 v2, 0x3

    .line 654
    aput-object v4, v1, v2

    .line 655
    .line 656
    invoke-static {v1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    invoke-static {v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getDynamicShortcuts(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    new-instance v3, Ljava/util/ArrayList;

    .line 665
    .line 666
    const/16 v4, 0xa

    .line 667
    .line 668
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 669
    .line 670
    .line 671
    move-result v5

    .line 672
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 680
    .line 681
    .line 682
    move-result v5

    .line 683
    if-eqz v5, :cond_e

    .line 684
    .line 685
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v5

    .line 689
    check-cast v5, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 690
    .line 691
    iget-object v5, v5, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    .line 692
    .line 693
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    goto :goto_3

    .line 697
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    .line 698
    .line 699
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 700
    .line 701
    .line 702
    move-result v4

    .line 703
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 704
    .line 705
    .line 706
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 707
    .line 708
    .line 709
    move-result-object v4

    .line 710
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 711
    .line 712
    .line 713
    move-result v5

    .line 714
    if-eqz v5, :cond_f

    .line 715
    .line 716
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v5

    .line 720
    check-cast v5, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 721
    .line 722
    iget-object v5, v5, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    .line 723
    .line 724
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    goto :goto_4

    .line 728
    :cond_f
    invoke-interface {v3, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 729
    .line 730
    .line 731
    move-result v2

    .line 732
    if-nez v2, :cond_10

    .line 733
    .line 734
    invoke-static {v0, v1}, Landroidx/core/content/pm/ShortcutManagerCompat;->setDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)V

    .line 735
    .line 736
    .line 737
    goto :goto_5

    .line 738
    :cond_10
    const-string v0, "Create dynamic shortcuts skipped."

    .line 739
    .line 740
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    :goto_5
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 744
    .line 745
    goto :goto_7

    .line 746
    :cond_11
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    :goto_6
    const/4 v5, 0x0

    .line 750
    goto :goto_7

    .line 751
    :cond_12
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    goto :goto_6

    .line 755
    :cond_13
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    goto :goto_6

    .line 759
    :cond_14
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    goto :goto_6

    .line 763
    :cond_15
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    goto :goto_6

    .line 767
    :cond_16
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    goto :goto_6

    .line 771
    :cond_17
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    goto :goto_6

    .line 775
    :cond_18
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    goto :goto_6

    .line 779
    :goto_7
    return-object v5

    .line 780
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 781
    .line 782
    .line 783
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$launchCleanup$1;->this$0:Ljava/lang/Object;

    .line 784
    .line 785
    check-cast v0, Lcoil3/request/ViewTargetRequestManager;

    .line 786
    .line 787
    iget-object v1, v0, Lcoil3/request/ViewTargetRequestManager;->currentRequest:Lcoil3/request/ViewTargetRequestDelegate;

    .line 788
    .line 789
    if-eqz v1, :cond_19

    .line 790
    .line 791
    invoke-virtual {v1}, Lcoil3/request/ViewTargetRequestDelegate;->dispose()V

    .line 792
    .line 793
    .line 794
    :cond_19
    const/4 v1, 0x0

    .line 795
    iput-object v1, v0, Lcoil3/request/ViewTargetRequestManager;->currentRequest:Lcoil3/request/ViewTargetRequestDelegate;

    .line 796
    .line 797
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 798
    .line 799
    return-object v0

    .line 800
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 801
    .line 802
    .line 803
    sget-object v1, Landroidx/work/impl/workers/ConstraintTrackingWorkerKt;->TAG:Ljava/lang/String;

    .line 804
    .line 805
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$launchCleanup$1;->this$0:Ljava/lang/Object;

    .line 806
    .line 807
    check-cast v0, Landroidx/work/impl/model/WorkSpec;

    .line 808
    .line 809
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 810
    .line 811
    .line 812
    move-result-object v2

    .line 813
    new-instance v3, Ljava/lang/StringBuilder;

    .line 814
    .line 815
    const-string v4, "Constraints changed for "

    .line 816
    .line 817
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    invoke-virtual {v2, v1, v0}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 831
    .line 832
    return-object v0

    .line 833
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 834
    .line 835
    .line 836
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 837
    .line 838
    return-object v0

    .line 839
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 840
    .line 841
    .line 842
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$launchCleanup$1;->this$0:Ljava/lang/Object;

    .line 843
    .line 844
    check-cast v0, Landroidx/compose/material3/TooltipStateImpl;

    .line 845
    .line 846
    invoke-virtual {v0}, Landroidx/compose/material3/TooltipStateImpl;->dismiss()V

    .line 847
    .line 848
    .line 849
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 850
    .line 851
    return-object v0

    .line 852
    :pswitch_a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$launchCleanup$1;->this$0:Ljava/lang/Object;

    .line 856
    .line 857
    check-cast v0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 858
    .line 859
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->context:Landroid/content/Context;

    .line 860
    .line 861
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->selectedTextType:Landroidx/compose/foundation/text/selection/SelectedTextType;

    .line 862
    .line 863
    invoke-static {v1, v2}, Landroidx/compose/foundation/text/selection/TextClassifierHelperMethods;->createTextClassificationSession(Landroid/content/Context;Landroidx/compose/foundation/text/selection/SelectedTextType;)Landroid/view/textclassifier/TextClassifier;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    iput-object v1, v0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->textClassificationSession:Landroid/view/textclassifier/TextClassifier;

    .line 868
    .line 869
    return-object v1

    .line 870
    :pswitch_b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 871
    .line 872
    .line 873
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$launchCleanup$1;->this$0:Ljava/lang/Object;

    .line 874
    .line 875
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 876
    .line 877
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 881
    .line 882
    return-object v0

    .line 883
    :pswitch_c
    move/from16 v17, v4

    .line 884
    .line 885
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 886
    .line 887
    .line 888
    iget-object v0, v0, Lcoil3/disk/DiskLruCache$launchCleanup$1;->this$0:Ljava/lang/Object;

    .line 889
    .line 890
    check-cast v0, Lcoil3/disk/DiskLruCache;

    .line 891
    .line 892
    iget-object v1, v0, Lcoil3/disk/DiskLruCache;->lock:Ljava/lang/Object;

    .line 893
    .line 894
    monitor-enter v1

    .line 895
    :try_start_0
    iget-boolean v2, v0, Lcoil3/disk/DiskLruCache;->initialized:Z

    .line 896
    .line 897
    if-eqz v2, :cond_1d

    .line 898
    .line 899
    iget-boolean v2, v0, Lcoil3/disk/DiskLruCache;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    .line 901
    if-eqz v2, :cond_1a

    .line 902
    .line 903
    goto :goto_b

    .line 904
    :cond_1a
    :try_start_1
    invoke-virtual {v0}, Lcoil3/disk/DiskLruCache;->trimToSize()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 905
    .line 906
    .line 907
    goto :goto_8

    .line 908
    :catchall_0
    move-exception v0

    .line 909
    goto :goto_d

    .line 910
    :catch_0
    :try_start_2
    iput-boolean v3, v0, Lcoil3/disk/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 911
    .line 912
    :goto_8
    :try_start_3
    iget v2, v0, Lcoil3/disk/DiskLruCache;->operationsSinceRewrite:I

    .line 913
    .line 914
    const/16 v4, 0x7d0

    .line 915
    .line 916
    if-lt v2, v4, :cond_1b

    .line 917
    .line 918
    move v2, v3

    .line 919
    goto :goto_9

    .line 920
    :cond_1b
    move/from16 v2, v17

    .line 921
    .line 922
    :goto_9
    if-eqz v2, :cond_1c

    .line 923
    .line 924
    invoke-virtual {v0}, Lcoil3/disk/DiskLruCache;->writeJournal()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 925
    .line 926
    .line 927
    goto :goto_a

    .line 928
    :catch_1
    :try_start_4
    iput-boolean v3, v0, Lcoil3/disk/DiskLruCache;->mostRecentRebuildFailed:Z

    .line 929
    .line 930
    new-instance v2, Lokio/BlackholeSink;

    .line 931
    .line 932
    move/from16 v3, v17

    .line 933
    .line 934
    invoke-direct {v2, v3}, Lokio/BlackholeSink;-><init>(I)V

    .line 935
    .line 936
    .line 937
    new-instance v3, Lokio/RealBufferedSink;

    .line 938
    .line 939
    invoke-direct {v3, v2}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    .line 940
    .line 941
    .line 942
    iput-object v3, v0, Lcoil3/disk/DiskLruCache;->journalWriter:Lokio/RealBufferedSink;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 943
    .line 944
    :cond_1c
    :goto_a
    monitor-exit v1

    .line 945
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 946
    .line 947
    goto :goto_c

    .line 948
    :cond_1d
    :goto_b
    :try_start_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 949
    .line 950
    monitor-exit v1

    .line 951
    :goto_c
    return-object v0

    .line 952
    :goto_d
    monitor-exit v1

    .line 953
    throw v0

    .line 954
    nop

    .line 955
    :pswitch_data_0
    .packed-switch 0x0
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

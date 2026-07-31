.class public final Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $constrainable:Ljava/lang/Object;

.field public synthetic $imageOptions:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $this_BoxWithConstraints:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$this_BoxWithConstraints:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$constrainable:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 14
    iput p4, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$r8$classId:I

    iput-object p1, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$this_BoxWithConstraints:Ljava/lang/Object;

    iput-object p2, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$constrainable:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    .line 1
    iget v0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$this_BoxWithConstraints:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$constrainable:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v3, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v4, p0

    .line 15
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 16
    .line 17
    move-object v5, v1

    .line 18
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    move-object v6, v2

    .line 21
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 22
    .line 23
    const/16 v8, 0xa

    .line 24
    .line 25
    move-object v7, p2

    .line 26
    invoke-direct/range {v3 .. v8}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 27
    .line 28
    .line 29
    return-object v3

    .line 30
    :pswitch_0
    move-object v8, p2

    .line 31
    new-instance v4, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 34
    .line 35
    move-object v5, p0

    .line 36
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 37
    .line 38
    move-object v6, v1

    .line 39
    check-cast v6, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;

    .line 40
    .line 41
    move-object v7, v2

    .line 42
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 43
    .line 44
    const/16 v9, 0x9

    .line 45
    .line 46
    invoke-direct/range {v4 .. v9}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 47
    .line 48
    .line 49
    return-object v4

    .line 50
    :pswitch_1
    move-object v8, p2

    .line 51
    new-instance v4, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 54
    .line 55
    move-object v5, p0

    .line 56
    check-cast v5, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;

    .line 57
    .line 58
    move-object v6, v1

    .line 59
    check-cast v6, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 60
    .line 61
    move-object v7, v2

    .line 62
    check-cast v7, Lnet/thunderbird/feature/account/AccountId;

    .line 63
    .line 64
    const/16 v9, 0x8

    .line 65
    .line 66
    invoke-direct/range {v4 .. v9}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 67
    .line 68
    .line 69
    return-object v4

    .line 70
    :pswitch_2
    move-object v8, p2

    .line 71
    new-instance v4, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 72
    .line 73
    iget-object p1, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 74
    .line 75
    move-object v5, p1

    .line 76
    check-cast v5, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 77
    .line 78
    move-object v7, v2

    .line 79
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 80
    .line 81
    const/4 v9, 0x7

    .line 82
    iget-object v6, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$this_BoxWithConstraints:Ljava/lang/Object;

    .line 83
    .line 84
    invoke-direct/range {v4 .. v9}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 85
    .line 86
    .line 87
    return-object v4

    .line 88
    :pswitch_3
    move-object v8, p2

    .line 89
    new-instance p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 90
    .line 91
    check-cast v1, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 92
    .line 93
    check-cast v2, Ljava/util/List;

    .line 94
    .line 95
    const/4 p2, 0x6

    .line 96
    invoke-direct {p0, v1, v2, v8, p2}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 100
    .line 101
    return-object p0

    .line 102
    :pswitch_4
    move-object v8, p2

    .line 103
    new-instance p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 104
    .line 105
    check-cast v1, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 106
    .line 107
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 108
    .line 109
    const/4 p2, 0x5

    .line 110
    invoke-direct {p0, v1, v2, v8, p2}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 114
    .line 115
    return-object p0

    .line 116
    :pswitch_5
    move-object v8, p2

    .line 117
    new-instance v4, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 118
    .line 119
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 120
    .line 121
    move-object v5, p0

    .line 122
    check-cast v5, Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferLiveEvent;

    .line 123
    .line 124
    move-object v6, v1

    .line 125
    check-cast v6, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 126
    .line 127
    move-object v7, v2

    .line 128
    check-cast v7, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessage;

    .line 129
    .line 130
    const/4 v9, 0x4

    .line 131
    invoke-direct/range {v4 .. v9}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 132
    .line 133
    .line 134
    return-object v4

    .line 135
    :pswitch_6
    move-object v8, p2

    .line 136
    new-instance v4, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 137
    .line 138
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 139
    .line 140
    move-object v5, p0

    .line 141
    check-cast v5, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;

    .line 142
    .line 143
    move-object v6, v1

    .line 144
    check-cast v6, Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 145
    .line 146
    move-object v7, v2

    .line 147
    check-cast v7, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 148
    .line 149
    const/4 v9, 0x3

    .line 150
    invoke-direct/range {v4 .. v9}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 151
    .line 152
    .line 153
    return-object v4

    .line 154
    :pswitch_7
    move-object v8, p2

    .line 155
    new-instance v4, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 156
    .line 157
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 158
    .line 159
    move-object v5, p0

    .line 160
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 161
    .line 162
    move-object v6, v1

    .line 163
    check-cast v6, Landroidx/navigation/compose/DialogNavigator;

    .line 164
    .line 165
    move-object v7, v2

    .line 166
    check-cast v7, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 167
    .line 168
    const/4 v9, 0x2

    .line 169
    invoke-direct/range {v4 .. v9}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 170
    .line 171
    .line 172
    return-object v4

    .line 173
    :pswitch_8
    move-object v8, p2

    .line 174
    new-instance p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 175
    .line 176
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 177
    .line 178
    check-cast v2, Landroidx/compose/foundation/text/TextDragObserver;

    .line 179
    .line 180
    const/4 p2, 0x1

    .line 181
    invoke-direct {p0, v1, v2, v8, p2}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 182
    .line 183
    .line 184
    iput-object p1, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 185
    .line 186
    return-object p0

    .line 187
    :pswitch_9
    move-object v8, p2

    .line 188
    new-instance v4, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 189
    .line 190
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 191
    .line 192
    move-object v5, p0

    .line 193
    check-cast v5, Lcom/skydoves/landscapist/ImageOptions;

    .line 194
    .line 195
    move-object v6, v1

    .line 196
    check-cast v6, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    .line 197
    .line 198
    move-object v7, v2

    .line 199
    check-cast v7, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver;

    .line 200
    .line 201
    const/4 v9, 0x0

    .line 202
    invoke-direct/range {v4 .. v9}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 203
    .line 204
    .line 205
    return-object v4

    .line 206
    nop

    .line 207
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
    iget v0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 23
    .line 24
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 51
    .line 52
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 53
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    :pswitch_3
    check-cast p1, Ljava/util/Map;

    .line 65
    .line 66
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 67
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    :pswitch_4
    check-cast p1, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 79
    .line 80
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 81
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    check-cast p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    return-object v1

    .line 92
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 93
    .line 94
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 95
    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    check-cast p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 101
    .line 102
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    return-object v1

    .line 106
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 107
    .line 108
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 109
    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    check-cast p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 115
    .line 116
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0

    .line 121
    :pswitch_7
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 122
    .line 123
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 124
    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    return-object v1

    .line 135
    :pswitch_8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 136
    .line 137
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 138
    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    check-cast p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 144
    .line 145
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    return-object p0

    .line 150
    :pswitch_9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 151
    .line 152
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 153
    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    check-cast p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 159
    .line 160
    invoke-virtual {p0, v1}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    return-object v1

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

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object v6, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$this_BoxWithConstraints:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v7, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$constrainable:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 24
    .line 25
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;

    .line 30
    .line 31
    iget-boolean p0, p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$State;->initialized:Z

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_0

    .line 46
    .line 47
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 48
    .line 49
    sget-object p0, Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Event$SignInClicked;->INSTANCE:Lnet/thunderbird/feature/thundermail/internal/common/ui/ThundermailContract$Event$SignInClicked;

    .line 50
    .line 51
    invoke-interface {v6, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-interface {v7, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    return-object v5

    .line 60
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 64
    .line 65
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    return-object v5

    .line 75
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p0, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;

    .line 81
    .line 82
    iget-object p1, p0, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 83
    .line 84
    check-cast v7, Lnet/thunderbird/feature/account/AccountId;

    .line 85
    .line 86
    new-instance v0, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;

    .line 87
    .line 88
    const/4 v2, 0x4

    .line 89
    invoke-direct {v0, v7, v2}, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/AccountId;I)V

    .line 90
    .line 91
    .line 92
    const-string v2, "LegacyUpdateSortCriteria"

    .line 93
    .line 94
    invoke-static {p1, v2, v3, v0, v1}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 98
    .line 99
    check-cast v6, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v6}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccount;)V

    .line 105
    .line 106
    .line 107
    return-object v5

    .line 108
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 114
    .line 115
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 116
    .line 117
    if-eqz p0, :cond_1

    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    :cond_2
    move-object v0, p1

    .line 131
    check-cast v0, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 132
    .line 133
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_3

    .line 138
    .line 139
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-interface {v7, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_2

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_3
    :goto_0
    invoke-virtual {p0, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    :goto_1
    return-object v5

    .line 162
    :pswitch_3
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p0, Ljava/util/Map;

    .line 165
    .line 166
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    check-cast v6, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;

    .line 170
    .line 171
    iget-object p1, v6, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeLeftConfig:Ljava/util/LinkedHashMap;

    .line 172
    .line 173
    check-cast v7, Ljava/util/List;

    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    .line 176
    .line 177
    .line 178
    iget-object v0, v6, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->resourceProvider:Landroidx/navigation/internal/NavContext;

    .line 179
    .line 180
    invoke-static {v6, p0, v7, v0, v4}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->access$setupSwipeActionConfig(Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;Ljava/util/Map;Ljava/util/List;Landroidx/navigation/internal/NavContext;Z)Ljava/util/LinkedHashMap;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 185
    .line 186
    .line 187
    iget-object p1, v6, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->swipeRightConfig:Ljava/util/LinkedHashMap;

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    .line 190
    .line 191
    .line 192
    invoke-static {v6, p0, v7, v0, v2}, Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;->access$setupSwipeActionConfig(Lcom/fsck/k9/ui/messagelist/MessageListSwipeCallback;Ljava/util/Map;Ljava/util/List;Landroidx/navigation/internal/NavContext;Z)Ljava/util/LinkedHashMap;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 197
    .line 198
    .line 199
    return-object v5

    .line 200
    :pswitch_4
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast p0, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 203
    .line 204
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 208
    .line 209
    iget-object p1, p1, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 210
    .line 211
    iget-boolean p1, p1, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isThreadedViewEnabled:Z

    .line 212
    .line 213
    check-cast v6, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 214
    .line 215
    iget-boolean v0, v6, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->showingThreadedList:Z

    .line 216
    .line 217
    if-eq v0, p1, :cond_4

    .line 218
    .line 219
    iput-boolean p1, v6, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->showingThreadedList:Z

    .line 220
    .line 221
    invoke-virtual {v6, v4}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->loadMessageList(Z)V

    .line 222
    .line 223
    .line 224
    :cond_4
    iget-object p0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 225
    .line 226
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/DisplaySettings;->visualSettings:Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;

    .line 227
    .line 228
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/visualSettings/DisplayVisualSettings;->messageListSettings:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 229
    .line 230
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 231
    .line 232
    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 233
    .line 234
    iget-object p1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 235
    .line 236
    if-eq p1, p0, :cond_6

    .line 237
    .line 238
    iput-object p0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 239
    .line 240
    iget-object p0, v6, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->adapter:Lcom/fsck/k9/ui/messagelist/MessageListAdapter;

    .line 241
    .line 242
    if-eqz p0, :cond_5

    .line 243
    .line 244
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAdapter;->viewItems:Ljava/util/List;

    .line 245
    .line 246
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 251
    .line 252
    invoke-virtual {p0, v2, p1, v3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_5
    const-string p0, "adapter"

    .line 257
    .line 258
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw v3

    .line 262
    :cond_6
    :goto_2
    return-object v5

    .line 263
    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast p0, Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferLiveEvent;

    .line 269
    .line 270
    iget-object p0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferLiveEvent;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 271
    .line 272
    check-cast v6, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 273
    .line 274
    check-cast v7, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessage;

    .line 275
    .line 276
    iget-object p1, v7, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessage;->setupMessage:Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 277
    .line 278
    invoke-virtual {p0, v6}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    invoke-interface {p0, p1}, Lcom/fsck/k9/backend/api/Backend;->sendMessage(Lcom/fsck/k9/mail/internet/MimeMessage;)V

    .line 283
    .line 284
    .line 285
    return-object v5

    .line 286
    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast p0, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;

    .line 292
    .line 293
    check-cast v6, Lorg/openintents/openpgp/util/OpenPgpApi;

    .line 294
    .line 295
    check-cast v7, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 296
    .line 297
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v7}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOpenPgpKey()J

    .line 301
    .line 302
    .line 303
    move-result-wide v0

    .line 304
    new-array p1, v4, [J

    .line 305
    .line 306
    aput-wide v0, p1, v2

    .line 307
    .line 308
    sget-object v0, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 309
    .line 310
    invoke-virtual {v7, v2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdentity(I)Lnet/thunderbird/core/android/account/Identity;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    iget-object v0, v0, Lnet/thunderbird/core/android/account/Identity;->email:Ljava/lang/String;

    .line 315
    .line 316
    invoke-static {v0}, Lcom/fsck/k9/mail/K9MailLib;->parse(Ljava/lang/String;)[Lcom/fsck/k9/mail/Address;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    aget-object v0, v0, v2

    .line 321
    .line 322
    new-instance v1, Landroid/content/Intent;

    .line 323
    .line 324
    const-string v2, "autocrypt_key_transfer"

    .line 325
    .line 326
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    const-string v2, "key_ids"

    .line 330
    .line 331
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 332
    .line 333
    .line 334
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 335
    .line 336
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v6, v1, p1}, Lorg/openintents/openpgp/util/OpenPgpApi;->executeApi(Landroid/content/Intent;Ljava/io/ByteArrayOutputStream;)Landroid/content/Intent;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    const-string v2, "intent"

    .line 348
    .line 349
    const-class v5, Landroid/app/PendingIntent;

    .line 350
    .line 351
    invoke-static {v1, v2, v5}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    check-cast v1, Landroid/app/PendingIntent;

    .line 356
    .line 357
    if-eqz v1, :cond_7

    .line 358
    .line 359
    iget-object p0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;->messageCreator:Lcom/fsck/k9/autocrypt/AutocryptTransferMessageCreator;

    .line 360
    .line 361
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    iget-object v2, p0, Lcom/fsck/k9/autocrypt/AutocryptTransferMessageCreator;->stringProvider:Lcom/fsck/k9/resources/K9AutocryptStringProvider;

    .line 365
    .line 366
    iget-object v2, v2, Lcom/fsck/k9/resources/K9AutocryptStringProvider;->context:Landroid/content/Context;

    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    const v5, 0x7f120028

    .line 372
    .line 373
    .line 374
    :try_start_0
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    const v6, 0x7f120027

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    new-instance v6, Lcom/fsck/k9/mail/internet/TextBody;

    .line 392
    .line 393
    invoke-direct {v6, v2}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-static {v6}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->create(Lcom/fsck/k9/mail/Body;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    new-instance v6, Lcom/fsck/k9/mailstore/FileBackedBody;

    .line 401
    .line 402
    const-string v7, "7bit"

    .line 403
    .line 404
    invoke-direct {v6, v4, p1, v7}, Lcom/fsck/k9/mailstore/FileBackedBody;-><init>(ILjava/io/Serializable;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-static {v6}, Lcom/fsck/k9/mail/internet/MimeBodyPart;->create(Lcom/fsck/k9/mail/Body;)Lcom/fsck/k9/mail/internet/MimeBodyPart;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    iget-object v6, p1, Lcom/fsck/k9/mail/internet/MimeBodyPart;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 412
    .line 413
    const-string v7, "Content-Type"

    .line 414
    .line 415
    const-string v8, "application/autocrypt-setup"

    .line 416
    .line 417
    invoke-virtual {v6, v7, v8}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    const-string v7, "Content-Disposition"

    .line 421
    .line 422
    const-string v8, "attachment; filename=\"autocrypt-setup-message\""

    .line 423
    .line 424
    invoke-virtual {v6, v7, v8}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    sget-object v6, Lcom/fsck/k9/mail/BoundaryGenerator;->INSTANCE:Lcom/fsck/k9/mail/BoundaryGenerator;

    .line 428
    .line 429
    invoke-virtual {v6}, Lcom/fsck/k9/mail/BoundaryGenerator;->generateBoundary()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    new-instance v7, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 434
    .line 435
    invoke-direct {v7, v6}, Lcom/fsck/k9/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v7, v2}, Lcom/fsck/k9/mail/Multipart;->addBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v7, p1}, Lcom/fsck/k9/mail/Multipart;->addBodyPart(Lcom/fsck/k9/mail/internet/MimeBodyPart;)V

    .line 442
    .line 443
    .line 444
    new-instance p1, Lcom/fsck/k9/mail/internet/MimeMessage;

    .line 445
    .line 446
    invoke-direct {p1, v4}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>(Z)V

    .line 447
    .line 448
    .line 449
    iget-object v2, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 450
    .line 451
    invoke-static {p1, v7}, Lcom/fsck/k9/mail/internet/JisSupport;->setBody(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;)V

    .line 452
    .line 453
    .line 454
    new-instance v6, Ljava/util/Date;

    .line 455
    .line 456
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 457
    .line 458
    .line 459
    sget-object v7, Lnet/thunderbird/core/common/mail/Flag;->X_DOWNLOADED_FULL:Lnet/thunderbird/core/common/mail/Flag;

    .line 460
    .line 461
    invoke-virtual {p1, v7, v4}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {p1, v5}, Lcom/fsck/k9/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    const-string v4, "Autocrypt-Setup-Message"

    .line 468
    .line 469
    const-string/jumbo v5, "v1"

    .line 470
    .line 471
    .line 472
    invoke-virtual {v2, v4, v5}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    iput-object v6, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mInternalDate:Ljava/util/Date;

    .line 476
    .line 477
    iget-object p0, p0, Lcom/fsck/k9/autocrypt/AutocryptTransferMessageCreator;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 478
    .line 479
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 480
    .line 481
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getSettings()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 482
    .line 483
    .line 484
    move-result-object p0

    .line 485
    iget-object p0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->privacy:Lnet/thunderbird/core/preference/privacy/PrivacySettings;

    .line 486
    .line 487
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/privacy/PrivacySettings;->isHideTimeZone:Z

    .line 488
    .line 489
    invoke-virtual {p1, v6, p0}, Lcom/fsck/k9/mail/internet/MimeMessage;->addSentDate(Ljava/util/Date;Z)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {p1, v0}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFrom(Lcom/fsck/k9/mail/Address;)V

    .line 493
    .line 494
    .line 495
    const-string p0, "To"

    .line 496
    .line 497
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Address;->toEncodedString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-virtual {v2, p0, v0}, Lcom/fsck/k9/mailstore/LocalFolder$8;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .line 503
    .line 504
    new-instance v3, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessage;

    .line 505
    .line 506
    invoke-direct {v3, p1, v1}, Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessage;-><init>(Lcom/fsck/k9/mail/internet/MimeMessage;Landroid/app/PendingIntent;)V

    .line 507
    .line 508
    .line 509
    goto :goto_3

    .line 510
    :catch_0
    move-exception p0

    .line 511
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 512
    .line 513
    .line 514
    goto :goto_3

    .line 515
    :cond_7
    const-string p0, "Missing result intent"

    .line 516
    .line 517
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    :goto_3
    return-object v3

    .line 521
    :pswitch_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 522
    .line 523
    .line 524
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 527
    .line 528
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object p0

    .line 532
    check-cast p0, Ljava/util/Set;

    .line 533
    .line 534
    check-cast p0, Ljava/lang/Iterable;

    .line 535
    .line 536
    check-cast v6, Landroidx/navigation/compose/DialogNavigator;

    .line 537
    .line 538
    check-cast v7, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 539
    .line 540
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 541
    .line 542
    .line 543
    move-result-object p0

    .line 544
    :cond_8
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 545
    .line 546
    .line 547
    move-result p1

    .line 548
    if-eqz p1, :cond_9

    .line 549
    .line 550
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object p1

    .line 554
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    .line 555
    .line 556
    invoke-virtual {v6}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    iget-object v0, v0, Landroidx/navigation/NavController$NavControllerNavigatorState;->backStack:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 561
    .line 562
    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 563
    .line 564
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    check-cast v0, Ljava/util/List;

    .line 569
    .line 570
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    if-nez v0, :cond_8

    .line 575
    .line 576
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->contains(Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    move-result v0

    .line 580
    if-nez v0, :cond_8

    .line 581
    .line 582
    invoke-virtual {v6}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    invoke-virtual {v0, p1}, Landroidx/navigation/NavController$NavControllerNavigatorState;->markTransitionComplete(Landroidx/navigation/NavBackStackEntry;)V

    .line 587
    .line 588
    .line 589
    goto :goto_4

    .line 590
    :cond_9
    return-object v5

    .line 591
    :pswitch_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 592
    .line 593
    .line 594
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 595
    .line 596
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 597
    .line 598
    new-instance p1, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1;

    .line 599
    .line 600
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 601
    .line 602
    check-cast v7, Landroidx/compose/foundation/text/TextDragObserver;

    .line 603
    .line 604
    invoke-direct {p1, v6, v7, v3, v4}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;I)V

    .line 605
    .line 606
    .line 607
    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 608
    .line 609
    invoke-static {p0, v3, v0, p1, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 610
    .line 611
    .line 612
    new-instance p1, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1;

    .line 613
    .line 614
    invoke-direct {p1, v6, v7, v3, v1}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;I)V

    .line 615
    .line 616
    .line 617
    invoke-static {p0, v3, v0, p1, v4}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 618
    .line 619
    .line 620
    move-result-object p0

    .line 621
    return-object p0

    .line 622
    :pswitch_9
    check-cast v6, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    .line 623
    .line 624
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 625
    .line 626
    .line 627
    iget-object p0, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;->$imageOptions:Ljava/lang/Object;

    .line 628
    .line 629
    check-cast p0, Lcom/skydoves/landscapist/ImageOptions;

    .line 630
    .line 631
    invoke-virtual {p0}, Lcom/skydoves/landscapist/ImageOptions;->getRequestSize-YbymL2g()J

    .line 632
    .line 633
    .line 634
    move-result-wide v0

    .line 635
    const/16 p1, 0x20

    .line 636
    .line 637
    shr-long/2addr v0, p1

    .line 638
    long-to-int v0, v0

    .line 639
    if-lez v0, :cond_b

    .line 640
    .line 641
    invoke-virtual {p0}, Lcom/skydoves/landscapist/ImageOptions;->getRequestSize-YbymL2g()J

    .line 642
    .line 643
    .line 644
    move-result-wide v0

    .line 645
    const-wide v2, 0xffffffffL

    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    and-long/2addr v0, v2

    .line 651
    long-to-int v0, v0

    .line 652
    if-lez v0, :cond_b

    .line 653
    .line 654
    invoke-virtual {p0}, Lcom/skydoves/landscapist/ImageOptions;->getRequestSize-YbymL2g()J

    .line 655
    .line 656
    .line 657
    move-result-wide v0

    .line 658
    check-cast v6, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    .line 659
    .line 660
    iget-wide v8, v6, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->constraints:J

    .line 661
    .line 662
    shr-long p0, v0, p1

    .line 663
    .line 664
    long-to-int p0, p0

    .line 665
    and-long/2addr v0, v2

    .line 666
    long-to-int p1, v0

    .line 667
    if-ltz p0, :cond_a

    .line 668
    .line 669
    if-ltz p1, :cond_a

    .line 670
    .line 671
    goto :goto_5

    .line 672
    :cond_a
    const-string v0, "maxWidth must be >= than minWidth,\nmaxHeight must be >= than minHeight,\nminWidth and minHeight must be >= 0"

    .line 673
    .line 674
    invoke-static {v0}, Landroidx/compose/ui/unit/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    :goto_5
    invoke-static {p0, p0, p1, p1}, Landroidx/compose/ui/unit/ConstraintsKt;->createConstraints(IIII)J

    .line 678
    .line 679
    .line 680
    move-result-wide p0

    .line 681
    goto :goto_6

    .line 682
    :cond_b
    check-cast v6, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    .line 683
    .line 684
    iget-wide p0, v6, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->constraints:J

    .line 685
    .line 686
    :goto_6
    check-cast v7, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver;

    .line 687
    .line 688
    if-eqz v7, :cond_c

    .line 689
    .line 690
    invoke-virtual {v7, p0, p1}, Lcom/skydoves/landscapist/coil3/ConstraintsSizeResolver;->setConstraints-BRTryo0(J)V

    .line 691
    .line 692
    .line 693
    :cond_c
    return-object v5

    .line 694
    nop

    .line 695
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

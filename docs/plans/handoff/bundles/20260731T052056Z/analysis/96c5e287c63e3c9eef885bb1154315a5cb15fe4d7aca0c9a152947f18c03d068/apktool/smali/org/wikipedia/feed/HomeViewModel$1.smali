.class public final Lorg/wikipedia/feed/HomeViewModel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    iput v0, p0, Lorg/wikipedia/feed/HomeViewModel$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {p0, v1, v0}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 11
    iput p2, p0, Lorg/wikipedia/feed/HomeViewModel$1;->$r8$classId:I

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget p0, p0, Lorg/wikipedia/feed/HomeViewModel$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 8
    .line 9
    const/16 p1, 0xc

    .line 10
    .line 11
    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_0
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 16
    .line 17
    const/16 p1, 0xb

    .line 18
    .line 19
    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_1
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 24
    .line 25
    const/16 p1, 0xa

    .line 26
    .line 27
    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_2
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 32
    .line 33
    const/16 p1, 0x9

    .line 34
    .line 35
    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_3
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 40
    .line 41
    const/16 p1, 0x8

    .line 42
    .line 43
    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_4
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 48
    .line 49
    const/4 p1, 0x7

    .line 50
    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_5
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 55
    .line 56
    const/4 p1, 0x6

    .line 57
    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :pswitch_6
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 62
    .line 63
    const/4 p1, 0x5

    .line 64
    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 65
    .line 66
    .line 67
    return-object p0

    .line 68
    :pswitch_7
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 69
    .line 70
    const/4 v1, 0x4

    .line 71
    invoke-direct {p0, v0, v1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 72
    .line 73
    .line 74
    check-cast p1, Ljava/lang/Number;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iput p1, p0, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 81
    .line 82
    return-object p0

    .line 83
    :pswitch_8
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 84
    .line 85
    const/4 p1, 0x3

    .line 86
    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 87
    .line 88
    .line 89
    return-object p0

    .line 90
    :pswitch_9
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 91
    .line 92
    invoke-direct {p0, v0, v0, p2}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 93
    .line 94
    .line 95
    check-cast p1, Ljava/lang/Number;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    iput p1, p0, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 102
    .line 103
    return-object p0

    .line 104
    :pswitch_a
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 105
    .line 106
    const/4 p1, 0x1

    .line 107
    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 108
    .line 109
    .line 110
    return-object p0

    .line 111
    :pswitch_b
    new-instance p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 112
    .line 113
    const/4 p1, 0x0

    .line 114
    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 115
    .line 116
    .line 117
    return-object p0

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
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
    iget v0, p0, Lorg/wikipedia/feed/HomeViewModel$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 107
    .line 108
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 114
    .line 115
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :pswitch_7
    check-cast p1, Ljava/lang/Number;

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 135
    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 145
    .line 146
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    return-object p0

    .line 151
    :pswitch_8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 152
    .line 153
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 154
    .line 155
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 160
    .line 161
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    return-object p0

    .line 166
    :pswitch_9
    check-cast p1, Ljava/lang/Number;

    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 173
    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 183
    .line 184
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    return-object p0

    .line 189
    :pswitch_a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 190
    .line 191
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 192
    .line 193
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 198
    .line 199
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    return-object p0

    .line 204
    :pswitch_b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 205
    .line 206
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 207
    .line 208
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 213
    .line 214
    invoke-virtual {p0, v1}, Lorg/wikipedia/feed/HomeViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    return-object p0

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 14

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/HomeViewModel$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x2

    .line 5
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 16
    .line 17
    iget v3, p0, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    if-ne v3, v7, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_7

    .line 31
    .line 32
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 36
    .line 37
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->categoryDao()Lorg/wikipedia/categories/db/CategoryDao_Impl;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput v7, p0, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 46
    .line 47
    iget-object p1, p1, Lorg/wikipedia/categories/db/CategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 48
    .line 49
    new-instance v3, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    invoke-direct {v3, v7}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v7, v4, v3, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ne p1, v0, :cond_2

    .line 59
    .line 60
    move-object v6, v0

    .line 61
    goto/16 :goto_7

    .line 62
    .line 63
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    .line 64
    .line 65
    new-instance p0, Ljava/util/ArrayList;

    .line 66
    .line 67
    const/16 v0, 0xa

    .line 68
    .line 69
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lorg/wikipedia/categories/db/Category;

    .line 91
    .line 92
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 93
    .line 94
    iget-object v0, v0, Lorg/wikipedia/categories/db/Category;->title:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    move-object v3, v0

    .line 124
    check-cast v3, Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-nez v3, :cond_4

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    const/16 v5, 0x20

    .line 150
    .line 151
    if-eqz v3, :cond_9

    .line 152
    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    move-object v6, v3

    .line 158
    check-cast v6, Ljava/lang/String;

    .line 159
    .line 160
    move v7, v4

    .line 161
    move v8, v7

    .line 162
    :goto_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-ge v7, v9, :cond_8

    .line 167
    .line 168
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    int-to-char v9, v9

    .line 173
    if-ne v9, v5, :cond_7

    .line 174
    .line 175
    add-int/lit8 v8, v8, 0x1

    .line 176
    .line 177
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_8
    if-lt v8, v2, :cond_6

    .line 181
    .line 182
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    :cond_a
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-eqz v3, :cond_d

    .line 200
    .line 201
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    move-object v6, v3

    .line 206
    check-cast v6, Ljava/lang/String;

    .line 207
    .line 208
    move v7, v4

    .line 209
    move v8, v7

    .line 210
    :goto_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    if-ge v7, v9, :cond_c

    .line 215
    .line 216
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    int-to-char v9, v9

    .line 221
    if-ne v9, v5, :cond_b

    .line 222
    .line 223
    add-int/lit8 v8, v8, 0x1

    .line 224
    .line 225
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_c
    if-ge v8, v2, :cond_a

    .line 229
    .line 230
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_d
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    :goto_7
    return-object v6

    .line 243
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 244
    .line 245
    iget v1, p0, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 246
    .line 247
    if-eqz v1, :cond_f

    .line 248
    .line 249
    if-ne v1, v7, :cond_e

    .line 250
    .line 251
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_e
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    move-object p1, v6

    .line 259
    goto :goto_8

    .line 260
    :cond_f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 264
    .line 265
    sget-object p1, Lorg/wikipedia/Constants;->wikidataWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 266
    .line 267
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v9

    .line 275
    new-instance v11, Ljava/lang/Integer;

    .line 276
    .line 277
    invoke-direct {v11, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 278
    .line 279
    .line 280
    iput v7, p0, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 281
    .line 282
    const/16 v10, 0xa

    .line 283
    .line 284
    const/4 v12, 0x0

    .line 285
    move-object v13, p0

    .line 286
    invoke-interface/range {v8 .. v13}, Lorg/wikipedia/dataclient/Service;->getUserContributions(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    if-ne p1, v0, :cond_10

    .line 291
    .line 292
    move-object p1, v0

    .line 293
    :cond_10
    :goto_8
    return-object p1

    .line 294
    :pswitch_1
    move-object v13, p0

    .line 295
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 296
    .line 297
    iget v0, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 298
    .line 299
    if-eqz v0, :cond_12

    .line 300
    .line 301
    if-ne v0, v7, :cond_11

    .line 302
    .line 303
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    goto :goto_9

    .line 307
    :cond_11
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    move-object p1, v6

    .line 311
    goto :goto_9

    .line 312
    :cond_12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 316
    .line 317
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 318
    .line 319
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    iput v7, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 336
    .line 337
    const/16 v2, 0x32

    .line 338
    .line 339
    const/4 v3, 0x0

    .line 340
    const/4 v4, 0x0

    .line 341
    move-object v5, v13

    .line 342
    invoke-interface/range {v0 .. v5}, Lorg/wikipedia/dataclient/Service;->getUserContributions(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    if-ne p1, p0, :cond_13

    .line 347
    .line 348
    move-object p1, p0

    .line 349
    :cond_13
    :goto_9
    return-object p1

    .line 350
    :pswitch_2
    move-object v13, p0

    .line 351
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 352
    .line 353
    iget v0, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 354
    .line 355
    if-eqz v0, :cond_15

    .line 356
    .line 357
    if-ne v0, v7, :cond_14

    .line 358
    .line 359
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    goto :goto_a

    .line 363
    :cond_14
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    move-object p1, v6

    .line 367
    goto :goto_a

    .line 368
    :cond_15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 372
    .line 373
    sget-object p1, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 374
    .line 375
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    iput v7, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 384
    .line 385
    const/16 v2, 0xa

    .line 386
    .line 387
    const/4 v3, 0x0

    .line 388
    const/4 v4, 0x0

    .line 389
    move-object v5, v13

    .line 390
    invoke-interface/range {v0 .. v5}, Lorg/wikipedia/dataclient/Service;->getUserContributions(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    if-ne p1, p0, :cond_16

    .line 395
    .line 396
    move-object p1, p0

    .line 397
    :cond_16
    :goto_a
    return-object p1

    .line 398
    :pswitch_3
    move-object v13, p0

    .line 399
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 400
    .line 401
    iget v0, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 402
    .line 403
    if-eqz v0, :cond_18

    .line 404
    .line 405
    if-ne v0, v7, :cond_17

    .line 406
    .line 407
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    goto :goto_b

    .line 411
    :cond_17
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    move-object p1, v6

    .line 415
    goto :goto_b

    .line 416
    :cond_18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 420
    .line 421
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    iput v7, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 430
    .line 431
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    invoke-static {p1, v13}, Lorg/wikipedia/dataclient/Service$-CC;->getAllLists$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    if-ne p1, p0, :cond_19

    .line 439
    .line 440
    move-object p1, p0

    .line 441
    :cond_19
    :goto_b
    return-object p1

    .line 442
    :pswitch_4
    move-object v13, p0

    .line 443
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 444
    .line 445
    iget v0, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 446
    .line 447
    if-eqz v0, :cond_1b

    .line 448
    .line 449
    if-ne v0, v7, :cond_1a

    .line 450
    .line 451
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    goto :goto_c

    .line 455
    :cond_1a
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    goto :goto_d

    .line 459
    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 460
    .line 461
    .line 462
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 463
    .line 464
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 465
    .line 466
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    iput v7, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 479
    .line 480
    invoke-interface {p1, v13}, Lorg/wikipedia/dataclient/Service;->getSiteMatrix(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object p1

    .line 484
    if-ne p1, p0, :cond_1c

    .line 485
    .line 486
    move-object v6, p0

    .line 487
    goto :goto_d

    .line 488
    :cond_1c
    :goto_c
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/SiteMatrix;

    .line 489
    .line 490
    sget-object p0, Lorg/wikipedia/dataclient/mwapi/SiteMatrix;->Companion:Lorg/wikipedia/dataclient/mwapi/SiteMatrix$Companion;

    .line 491
    .line 492
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    invoke-static {p1}, Lorg/wikipedia/dataclient/mwapi/SiteMatrix$Companion;->getSites(Lorg/wikipedia/dataclient/mwapi/SiteMatrix;)Ljava/util/List;

    .line 496
    .line 497
    .line 498
    move-result-object v6

    .line 499
    :goto_d
    return-object v6

    .line 500
    :pswitch_5
    move-object v13, p0

    .line 501
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 502
    .line 503
    iget v0, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 504
    .line 505
    if-eqz v0, :cond_1e

    .line 506
    .line 507
    if-ne v0, v7, :cond_1d

    .line 508
    .line 509
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    goto :goto_e

    .line 513
    :cond_1d
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    move-object p1, v6

    .line 517
    goto :goto_e

    .line 518
    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 522
    .line 523
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 524
    .line 525
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 526
    .line 527
    .line 528
    move-result-object p1

    .line 529
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 534
    .line 535
    .line 536
    move-result-object p1

    .line 537
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    iput v7, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 542
    .line 543
    invoke-interface {p1, v0, v13}, Lorg/wikipedia/dataclient/Service;->globalUserInfo(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object p1

    .line 547
    if-ne p1, p0, :cond_1f

    .line 548
    .line 549
    move-object p1, p0

    .line 550
    :cond_1f
    :goto_e
    return-object p1

    .line 551
    :pswitch_6
    move-object v13, p0

    .line 552
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 553
    .line 554
    iget v0, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 555
    .line 556
    if-eqz v0, :cond_22

    .line 557
    .line 558
    if-eq v0, v7, :cond_21

    .line 559
    .line 560
    if-ne v0, v2, :cond_20

    .line 561
    .line 562
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 563
    .line 564
    .line 565
    goto :goto_11

    .line 566
    :cond_20
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    move-object v3, v6

    .line 570
    goto :goto_11

    .line 571
    :cond_21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    goto :goto_f

    .line 575
    :cond_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 576
    .line 577
    .line 578
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->STREAM_CONFIGS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 579
    .line 580
    invoke-virtual {p1}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 581
    .line 582
    .line 583
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 584
    .line 585
    new-instance v0, Landroidx/paging/CachedPagingDataKt$cachedIn$4;

    .line 586
    .line 587
    invoke-direct {v0, v2, v1, v6}, Landroidx/paging/CachedPagingDataKt$cachedIn$4;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 588
    .line 589
    .line 590
    iput v7, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 591
    .line 592
    invoke-static {p1, v0, v13}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object p1

    .line 596
    if-ne p1, p0, :cond_23

    .line 597
    .line 598
    goto :goto_10

    .line 599
    :cond_23
    :goto_f
    sget-object p1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 600
    .line 601
    iput v2, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 602
    .line 603
    invoke-virtual {p1, v13}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->refreshStreamConfigs(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object p1

    .line 607
    if-ne p1, p0, :cond_24

    .line 608
    .line 609
    :goto_10
    move-object v3, p0

    .line 610
    :cond_24
    :goto_11
    return-object v3

    .line 611
    :pswitch_7
    move-object v13, p0

    .line 612
    iget p0, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 613
    .line 614
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 615
    .line 616
    .line 617
    if-lez p0, :cond_25

    .line 618
    .line 619
    move v4, v7

    .line 620
    :cond_25
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 621
    .line 622
    .line 623
    move-result-object p0

    .line 624
    return-object p0

    .line 625
    :pswitch_8
    move-object v13, p0

    .line 626
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 627
    .line 628
    iget v0, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 629
    .line 630
    if-eqz v0, :cond_27

    .line 631
    .line 632
    if-ne v0, v7, :cond_26

    .line 633
    .line 634
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 635
    .line 636
    .line 637
    goto :goto_13

    .line 638
    :cond_26
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    move-object v3, v6

    .line 642
    goto :goto_13

    .line 643
    :cond_27
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 647
    .line 648
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 649
    .line 650
    .line 651
    move-result-object p1

    .line 652
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->notificationDao()Lorg/wikipedia/notifications/db/NotificationDao_Impl;

    .line 653
    .line 654
    .line 655
    move-result-object p1

    .line 656
    iput v7, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 657
    .line 658
    iget-object p1, p1, Lorg/wikipedia/notifications/db/NotificationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 659
    .line 660
    new-instance v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 661
    .line 662
    const/16 v1, 0x1b

    .line 663
    .line 664
    invoke-direct {v0, v1}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 665
    .line 666
    .line 667
    invoke-static {p1, v4, v7, v0, v13}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object p1

    .line 671
    if-ne p1, p0, :cond_28

    .line 672
    .line 673
    goto :goto_12

    .line 674
    :cond_28
    move-object p1, v3

    .line 675
    :goto_12
    if-ne p1, p0, :cond_29

    .line 676
    .line 677
    move-object v3, p0

    .line 678
    :cond_29
    :goto_13
    return-object v3

    .line 679
    :pswitch_9
    move-object v13, p0

    .line 680
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 681
    .line 682
    .line 683
    iget p0, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 684
    .line 685
    if-lez p0, :cond_2a

    .line 686
    .line 687
    move v4, v7

    .line 688
    :cond_2a
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 689
    .line 690
    .line 691
    move-result-object p0

    .line 692
    return-object p0

    .line 693
    :pswitch_a
    move-object v13, p0

    .line 694
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 695
    .line 696
    iget v0, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 697
    .line 698
    if-eqz v0, :cond_2c

    .line 699
    .line 700
    if-ne v0, v7, :cond_2b

    .line 701
    .line 702
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 703
    .line 704
    .line 705
    goto :goto_14

    .line 706
    :cond_2b
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    move-object v3, v6

    .line 710
    goto :goto_14

    .line 711
    :cond_2c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 712
    .line 713
    .line 714
    iput v7, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 715
    .line 716
    invoke-static {v13}, Landroidx/work/OperationKt;->globalSnapshotMonitor(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object p1

    .line 720
    if-ne p1, p0, :cond_2d

    .line 721
    .line 722
    move-object v3, p0

    .line 723
    :cond_2d
    :goto_14
    return-object v3

    .line 724
    :pswitch_b
    move-object v13, p0

    .line 725
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 726
    .line 727
    iget v0, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 728
    .line 729
    if-eqz v0, :cond_2f

    .line 730
    .line 731
    if-ne v0, v7, :cond_2e

    .line 732
    .line 733
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 734
    .line 735
    .line 736
    goto :goto_15

    .line 737
    :cond_2e
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    move-object v3, v6

    .line 741
    goto :goto_15

    .line 742
    :cond_2f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 743
    .line 744
    .line 745
    sget-object p1, Lorg/wikipedia/settings/SettingsRepository;->INSTANCE:Lorg/wikipedia/settings/SettingsRepository;

    .line 746
    .line 747
    iput v7, v13, Lorg/wikipedia/feed/HomeViewModel$1;->label:I

    .line 748
    .line 749
    invoke-virtual {p1, v13}, Lorg/wikipedia/settings/SettingsRepository;->migrateLegacyHiddenCards(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object p1

    .line 753
    if-ne p1, p0, :cond_30

    .line 754
    .line 755
    move-object v3, p0

    .line 756
    :cond_30
    :goto_15
    return-object v3

    .line 757
    :pswitch_data_0
    .packed-switch 0x0
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

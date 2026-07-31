.class public final Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $appWidgetIds:Ljava/io/Serializable;

.field public $context:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public I$0:I

.field public I$1:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->$r8$classId:I

    .line 15
    iput-object p1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->$appWidgetIds:Ljava/io/Serializable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;Landroid/content/Context;[ILkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->$context:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->$appWidgetIds:Ljava/io/Serializable;

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


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->$appWidgetIds:Ljava/io/Serializable;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;

    .line 9
    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {p0, v1, p2}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_0
    new-instance v0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->this$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->$context:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Landroid/content/Context;

    .line 27
    .line 28
    check-cast v1, [I

    .line 29
    .line 30
    invoke-direct {v0, v2, p0, v1, p2}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;-><init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;Landroid/content/Context;[ILkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, v0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->$appWidgetIds:Ljava/io/Serializable;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v2, Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 17
    .line 18
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 19
    .line 20
    iget v6, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->label:I

    .line 21
    .line 22
    const/4 v7, 0x2

    .line 23
    const/4 v8, 0x3

    .line 24
    const/4 v9, 0x4

    .line 25
    if-eqz v6, :cond_4

    .line 26
    .line 27
    if-eq v6, v3, :cond_3

    .line 28
    .line 29
    if-eq v6, v7, :cond_2

    .line 30
    .line 31
    if-eq v6, v8, :cond_1

    .line 32
    .line 33
    if-ne v6, v9, :cond_0

    .line 34
    .line 35
    iget v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->I$1:I

    .line 36
    .line 37
    iget v1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->I$0:I

    .line 38
    .line 39
    iget-object p0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->$context:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Ljava/lang/Double;

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_0
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :cond_1
    iget v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->I$0:I

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->$context:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Ljava/lang/Double;

    .line 58
    .line 59
    iget-object v2, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$2:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Lkotlinx/coroutines/Deferred;

    .line 62
    .line 63
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    move-object v11, v2

    .line 67
    move-object v2, p1

    .line 68
    move-object p1, v1

    .line 69
    :goto_0
    move v1, v0

    .line 70
    move-object v0, v11

    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_2
    iget v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->I$0:I

    .line 74
    .line 75
    iget-object v1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$2:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Lkotlinx/coroutines/Deferred;

    .line 78
    .line 79
    iget-object v2, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->this$0:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v2, Lkotlinx/coroutines/Deferred;

    .line 82
    .line 83
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :cond_3
    iget-object v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$2:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Lkotlinx/coroutines/Deferred;

    .line 91
    .line 92
    iget-object v1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->this$0:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Lkotlinx/coroutines/Deferred;

    .line 95
    .line 96
    iget-object v2, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$1:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v2, Lkotlinx/coroutines/DeferredCoroutine;

    .line 99
    .line 100
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    new-instance p1, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 108
    .line 109
    const/4 v1, 0x5

    .line 110
    invoke-direct {p1, v2, v1, v4}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v4, p1, v8}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    new-instance v1, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 118
    .line 119
    invoke-direct {v1, v2, v7, v4}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v0, v4, v1, v8}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    new-instance v6, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 127
    .line 128
    invoke-direct {v6, v2, v9, v4}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v0, v4, v6, v8}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    new-instance v10, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;

    .line 136
    .line 137
    invoke-direct {v10, v2, v8, v4}, Lorg/wikipedia/feed/HomeViewModel$hideModule$1;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v0, v4, v10, v8}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iput-object v4, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$0:Ljava/lang/Object;

    .line 145
    .line 146
    iput-object v1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$1:Ljava/lang/Object;

    .line 147
    .line 148
    iput-object v6, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->this$0:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$2:Ljava/lang/Object;

    .line 151
    .line 152
    iput v3, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->label:I

    .line 153
    .line 154
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    if-ne p1, v5, :cond_5

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_5
    move-object v2, v1

    .line 162
    move-object v1, v6

    .line 163
    :goto_1
    check-cast p1, Ljava/lang/Number;

    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    iput-object v4, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$0:Ljava/lang/Object;

    .line 170
    .line 171
    iput-object v4, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$1:Ljava/lang/Object;

    .line 172
    .line 173
    iput-object v1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->this$0:Ljava/lang/Object;

    .line 174
    .line 175
    iput-object v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$2:Ljava/lang/Object;

    .line 176
    .line 177
    iput p1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->I$0:I

    .line 178
    .line 179
    iput v7, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->label:I

    .line 180
    .line 181
    invoke-interface {v2, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    if-ne v2, v5, :cond_6

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_6
    move-object v11, v0

    .line 189
    move v0, p1

    .line 190
    move-object p1, v2

    .line 191
    move-object v2, v1

    .line 192
    move-object v1, v11

    .line 193
    :goto_2
    check-cast p1, Ljava/lang/Double;

    .line 194
    .line 195
    iput-object v4, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$0:Ljava/lang/Object;

    .line 196
    .line 197
    iput-object v4, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$1:Ljava/lang/Object;

    .line 198
    .line 199
    iput-object v4, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->this$0:Ljava/lang/Object;

    .line 200
    .line 201
    iput-object v1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$2:Ljava/lang/Object;

    .line 202
    .line 203
    iput-object p1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->$context:Ljava/lang/Object;

    .line 204
    .line 205
    iput v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->I$0:I

    .line 206
    .line 207
    iput v8, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->label:I

    .line 208
    .line 209
    invoke-interface {v2, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    if-ne v2, v5, :cond_7

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_7
    move-object v11, v1

    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :goto_3
    check-cast v2, Ljava/lang/Number;

    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    iput-object v4, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$0:Ljava/lang/Object;

    .line 226
    .line 227
    iput-object v4, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$1:Ljava/lang/Object;

    .line 228
    .line 229
    iput-object v4, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->this$0:Ljava/lang/Object;

    .line 230
    .line 231
    iput-object v4, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$2:Ljava/lang/Object;

    .line 232
    .line 233
    iput-object p1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->$context:Ljava/lang/Object;

    .line 234
    .line 235
    iput v1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->I$0:I

    .line 236
    .line 237
    iput v2, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->I$1:I

    .line 238
    .line 239
    iput v9, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->label:I

    .line 240
    .line 241
    invoke-interface {v0, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    if-ne p0, v5, :cond_8

    .line 246
    .line 247
    :goto_4
    move-object v4, v5

    .line 248
    goto :goto_6

    .line 249
    :cond_8
    move-object v0, p1

    .line 250
    move-object p1, p0

    .line 251
    move-object p0, v0

    .line 252
    move v0, v2

    .line 253
    :goto_5
    check-cast p1, Ljava/lang/Number;

    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    new-instance v4, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;

    .line 260
    .line 261
    invoke-direct {v4, v1, p0, v0, p1}, Lorg/wikipedia/games/onthisday/OnThisDayGameViewModel$GameStatistics;-><init>(ILjava/lang/Double;II)V

    .line 262
    .line 263
    .line 264
    :goto_6
    return-object v4

    .line 265
    :pswitch_0
    iget-object v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->$context:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v0, Landroid/content/Context;

    .line 268
    .line 269
    iget-object v5, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->this$0:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v5, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;

    .line 272
    .line 273
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 274
    .line 275
    iget v7, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->label:I

    .line 276
    .line 277
    if-eqz v7, :cond_a

    .line 278
    .line 279
    if-ne v7, v3, :cond_9

    .line 280
    .line 281
    iget v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->I$1:I

    .line 282
    .line 283
    iget v1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->I$0:I

    .line 284
    .line 285
    iget-object v2, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$2:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v2, Landroid/content/Context;

    .line 288
    .line 289
    iget-object v4, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$1:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v4, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;

    .line 292
    .line 293
    iget-object v5, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$0:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v5, [I

    .line 296
    .line 297
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    move-object p1, v2

    .line 301
    move-object v2, v4

    .line 302
    goto :goto_8

    .line 303
    :cond_9
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    goto :goto_9

    .line 307
    :cond_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    iget-object p1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$0:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 313
    .line 314
    sget v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;->$r8$clinit:I

    .line 315
    .line 316
    invoke-virtual {v5, p1, v0}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;->updateManager(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;)V

    .line 317
    .line 318
    .line 319
    check-cast v2, [I

    .line 320
    .line 321
    array-length p1, v2

    .line 322
    const/4 v1, 0x0

    .line 323
    move-object v11, v0

    .line 324
    move v0, p1

    .line 325
    move-object p1, v11

    .line 326
    move-object v11, v5

    .line 327
    move-object v5, v2

    .line 328
    move-object v2, v11

    .line 329
    :goto_7
    if-ge v1, v0, :cond_c

    .line 330
    .line 331
    aget v4, v5, v1

    .line 332
    .line 333
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    new-instance v7, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 337
    .line 338
    invoke-direct {v7}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;-><init>()V

    .line 339
    .line 340
    .line 341
    iput-object v5, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$0:Ljava/lang/Object;

    .line 342
    .line 343
    iput-object v2, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$1:Ljava/lang/Object;

    .line 344
    .line 345
    iput-object p1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->L$2:Ljava/lang/Object;

    .line 346
    .line 347
    iput v1, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->I$0:I

    .line 348
    .line 349
    iput v0, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->I$1:I

    .line 350
    .line 351
    iput v3, p0, Landroidx/glance/appwidget/GlanceAppWidgetReceiver$onDeleted$1;->label:I

    .line 352
    .line 353
    invoke-virtual {v7, p1, v4, p0}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;->deleted$glance_appwidget_release(Landroid/content/Context;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    if-ne v4, v6, :cond_b

    .line 358
    .line 359
    move-object v4, v6

    .line 360
    goto :goto_9

    .line 361
    :cond_b
    :goto_8
    add-int/2addr v1, v3

    .line 362
    goto :goto_7

    .line 363
    :cond_c
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 364
    .line 365
    :goto_9
    return-object v4

    .line 366
    nop

    .line 367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Landroidx/datastore/core/FileWriteScope$writeData$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public $value:Ljava/lang/Object;

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$1:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroidx/datastore/core/FileWriteScope;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->$r8$classId:I

    .line 15
    iput-object p1, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->$value:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 16
    iput p5, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$1:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->$value:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    .line 1
    iget v0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v2, Landroidx/datastore/core/FileWriteScope$writeData$2;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$1:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v3, v0

    .line 13
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    move-object v4, v1

    .line 16
    check-cast v4, Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->$value:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v5, p0

    .line 21
    check-cast v5, Ljava/lang/String;

    .line 22
    .line 23
    const/4 v7, 0x3

    .line 24
    move-object v6, p1

    .line 25
    invoke-direct/range {v2 .. v7}, Landroidx/datastore/core/FileWriteScope$writeData$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object v2

    .line 29
    :pswitch_0
    move-object v6, p1

    .line 30
    new-instance p1, Landroidx/datastore/core/FileWriteScope$writeData$2;

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Landroidx/datastore/core/DataStoreImpl;

    .line 35
    .line 36
    iget-object p0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$1:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    .line 39
    .line 40
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 41
    .line 42
    invoke-direct {p1, v0, p0, v1, v6}, Landroidx/datastore/core/FileWriteScope$writeData$2;-><init>(Landroidx/datastore/core/DataStoreImpl;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :pswitch_1
    move-object v6, p1

    .line 47
    new-instance v3, Landroidx/datastore/core/FileWriteScope$writeData$2;

    .line 48
    .line 49
    iget-object p1, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$1:Ljava/lang/Object;

    .line 50
    .line 51
    move-object v4, p1

    .line 52
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 53
    .line 54
    move-object v5, v1

    .line 55
    check-cast v5, Landroidx/datastore/core/DataStoreImpl;

    .line 56
    .line 57
    iget-object p0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->$value:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 60
    .line 61
    const/4 v8, 0x1

    .line 62
    move-object v7, v6

    .line 63
    move-object v6, p0

    .line 64
    invoke-direct/range {v3 .. v8}, Landroidx/datastore/core/FileWriteScope$writeData$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Lkotlin/coroutines/Continuation;I)V

    .line 65
    .line 66
    .line 67
    return-object v3

    .line 68
    :pswitch_2
    move-object v6, p1

    .line 69
    new-instance p1, Landroidx/datastore/core/FileWriteScope$writeData$2;

    .line 70
    .line 71
    check-cast v1, Landroidx/datastore/core/FileWriteScope;

    .line 72
    .line 73
    iget-object p0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->$value:Ljava/lang/Object;

    .line 74
    .line 75
    invoke-direct {p1, v1, p0, v6}, Landroidx/datastore/core/FileWriteScope$writeData$2;-><init>(Landroidx/datastore/core/FileWriteScope;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 76
    .line 77
    .line 78
    return-object p1

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/datastore/core/FileWriteScope$writeData$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroidx/datastore/core/FileWriteScope$writeData$2;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroidx/datastore/core/FileWriteScope$writeData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_0
    invoke-virtual {p0, p1}, Landroidx/datastore/core/FileWriteScope$writeData$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Landroidx/datastore/core/FileWriteScope$writeData$2;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroidx/datastore/core/FileWriteScope$writeData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :pswitch_1
    invoke-virtual {p0, p1}, Landroidx/datastore/core/FileWriteScope$writeData$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroidx/datastore/core/FileWriteScope$writeData$2;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroidx/datastore/core/FileWriteScope$writeData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_2
    invoke-virtual {p0, p1}, Landroidx/datastore/core/FileWriteScope$writeData$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Landroidx/datastore/core/FileWriteScope$writeData$2;

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Landroidx/datastore/core/FileWriteScope$writeData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x3

    .line 7
    iget-object v4, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    const/4 v8, 0x0

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget v0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->label:I

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    if-ne v0, v7, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v6, v8

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 43
    .line 44
    check-cast v4, Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->$value:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Ljava/lang/String;

    .line 49
    .line 50
    iput-object p1, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    iput v7, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->label:I

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/16 v2, 0x2000

    .line 68
    .line 69
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-static {p0, v0}, Lkotlin/io/ByteStreamsKt;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 87
    .line 88
    .line 89
    if-ne v0, v6, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move-object p0, p1

    .line 93
    move-object p1, v0

    .line 94
    :goto_0
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    :goto_1
    return-object v6

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :pswitch_0
    iget-object v0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$0:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, Landroidx/datastore/core/DataStoreImpl;

    .line 109
    .line 110
    iget v1, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->label:I

    .line 111
    .line 112
    if-eqz v1, :cond_6

    .line 113
    .line 114
    if-eq v1, v7, :cond_5

    .line 115
    .line 116
    if-eq v1, v2, :cond_4

    .line 117
    .line 118
    if-ne v1, v3, :cond_3

    .line 119
    .line 120
    iget-object v6, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->$value:Ljava/lang/Object;

    .line 121
    .line 122
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_6

    .line 126
    .line 127
    :cond_3
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :goto_2
    move-object v6, v8

    .line 131
    goto :goto_6

    .line 132
    :cond_4
    iget-object v1, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->$value:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v1, Landroidx/datastore/core/Data;

    .line 135
    .line 136
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iput v7, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->label:I

    .line 148
    .line 149
    invoke-static {v0, v7, p0}, Landroidx/datastore/core/DataStoreImpl;->access$readDataOrHandleCorruption(Landroidx/datastore/core/DataStoreImpl;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    if-ne p1, v6, :cond_7

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_7
    :goto_3
    move-object v1, p1

    .line 157
    check-cast v1, Landroidx/datastore/core/Data;

    .line 158
    .line 159
    iget-object p1, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$1:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    .line 162
    .line 163
    new-instance v5, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 164
    .line 165
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 166
    .line 167
    const/16 v9, 0x8

    .line 168
    .line 169
    invoke-direct {v5, v4, v1, v8, v9}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 170
    .line 171
    .line 172
    iput-object v1, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->$value:Ljava/lang/Object;

    .line 173
    .line 174
    iput v2, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->label:I

    .line 175
    .line 176
    invoke-static {p1, v5, p0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    if-ne p1, v6, :cond_8

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_8
    :goto_4
    iget-object v2, v1, Landroidx/datastore/core/Data;->value:Ljava/lang/Object;

    .line 184
    .line 185
    if-eqz v2, :cond_9

    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    goto :goto_5

    .line 192
    :cond_9
    const/4 v2, 0x0

    .line 193
    :goto_5
    iget v4, v1, Landroidx/datastore/core/Data;->hashCode:I

    .line 194
    .line 195
    if-ne v2, v4, :cond_b

    .line 196
    .line 197
    iget-object v1, v1, Landroidx/datastore/core/Data;->value:Ljava/lang/Object;

    .line 198
    .line 199
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-nez v1, :cond_a

    .line 204
    .line 205
    iput-object p1, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->$value:Ljava/lang/Object;

    .line 206
    .line 207
    iput v3, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->label:I

    .line 208
    .line 209
    invoke-virtual {v0, p1, v7, p0}, Landroidx/datastore/core/DataStoreImpl;->writeData$datastore_core(Ljava/lang/Object;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    if-ne p0, v6, :cond_a

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_a
    move-object v6, p1

    .line 217
    goto :goto_6

    .line 218
    :cond_b
    const-string p0, "Data in DataStore was mutated but DataStore is only compatible with Immutable types."

    .line 219
    .line 220
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :goto_6
    return-object v6

    .line 225
    :pswitch_1
    iget-object v0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->$value:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 228
    .line 229
    iget-object v9, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$1:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 232
    .line 233
    check-cast v4, Landroidx/datastore/core/DataStoreImpl;

    .line 234
    .line 235
    iget v10, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->label:I

    .line 236
    .line 237
    if-eqz v10, :cond_f

    .line 238
    .line 239
    if-eq v10, v7, :cond_e

    .line 240
    .line 241
    if-eq v10, v2, :cond_d

    .line 242
    .line 243
    if-ne v10, v3, :cond_c

    .line 244
    .line 245
    iget-object p0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$0:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast p0, Ljava/io/Serializable;

    .line 248
    .line 249
    move-object v0, p0

    .line 250
    check-cast v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 251
    .line 252
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    goto :goto_a

    .line 256
    :cond_c
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    move-object v1, v8

    .line 260
    goto :goto_b

    .line 261
    :cond_d
    iget-object v2, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$0:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v2, Ljava/io/Serializable;

    .line 264
    .line 265
    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 266
    .line 267
    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 268
    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_e
    iget-object v5, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$0:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v5, Ljava/io/Serializable;

    .line 274
    .line 275
    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 276
    .line 277
    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_3 .. :try_end_3} :catch_0

    .line 278
    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    :try_start_4
    iput-object v9, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$0:Ljava/lang/Object;

    .line 285
    .line 286
    iput v7, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->label:I

    .line 287
    .line 288
    invoke-virtual {v4, p0}, Landroidx/datastore/core/DataStoreImpl;->readDataFromFileOrDefault(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    if-ne p1, v6, :cond_10

    .line 293
    .line 294
    goto :goto_9

    .line 295
    :cond_10
    move-object v5, v9

    .line 296
    :goto_7
    iput-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 297
    .line 298
    invoke-virtual {v4}, Landroidx/datastore/core/DataStoreImpl;->getCoordinator()Landroidx/datastore/core/SingleProcessCoordinator;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    iput-object v0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$0:Ljava/lang/Object;

    .line 303
    .line 304
    iput v2, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->label:I

    .line 305
    .line 306
    invoke-virtual {p1}, Landroidx/datastore/core/SingleProcessCoordinator;->getVersion()Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    if-ne p1, v6, :cond_11

    .line 311
    .line 312
    goto :goto_9

    .line 313
    :cond_11
    move-object v2, v0

    .line 314
    :goto_8
    check-cast p1, Ljava/lang/Number;

    .line 315
    .line 316
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    iput p1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_4
    .catch Landroidx/datastore/core/CorruptionException; {:try_start_4 .. :try_end_4} :catch_0

    .line 321
    .line 322
    goto :goto_b

    .line 323
    :catch_0
    iget-object p1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 324
    .line 325
    iput-object v0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$0:Ljava/lang/Object;

    .line 326
    .line 327
    iput v3, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->label:I

    .line 328
    .line 329
    invoke-virtual {v4, p1, v7, p0}, Landroidx/datastore/core/DataStoreImpl;->writeData$datastore_core(Ljava/lang/Object;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    if-ne p1, v6, :cond_12

    .line 334
    .line 335
    :goto_9
    move-object v1, v6

    .line 336
    goto :goto_b

    .line 337
    :cond_12
    :goto_a
    check-cast p1, Ljava/lang/Number;

    .line 338
    .line 339
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 340
    .line 341
    .line 342
    move-result p0

    .line 343
    iput p0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 344
    .line 345
    :goto_b
    return-object v1

    .line 346
    :pswitch_2
    check-cast v4, Landroidx/datastore/core/FileWriteScope;

    .line 347
    .line 348
    iget-object v0, v4, Landroidx/datastore/core/FileReadScope;->file:Ljava/io/File;

    .line 349
    .line 350
    iget v2, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->label:I

    .line 351
    .line 352
    if-eqz v2, :cond_14

    .line 353
    .line 354
    if-ne v2, v7, :cond_13

    .line 355
    .line 356
    iget-object v2, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$1:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v2, Ljava/io/FileOutputStream;

    .line 359
    .line 360
    iget-object p0, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$0:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast p0, Ljava/io/FileOutputStream;

    .line 363
    .line 364
    :try_start_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 365
    .line 366
    .line 367
    goto :goto_c

    .line 368
    :catchall_2
    move-exception p1

    .line 369
    goto :goto_e

    .line 370
    :cond_13
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    move-object v1, v8

    .line 374
    goto :goto_d

    .line 375
    :cond_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    .line 379
    .line 380
    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 381
    .line 382
    .line 383
    iget-object p1, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->$value:Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 384
    .line 385
    :try_start_7
    iget-object v3, v4, Landroidx/datastore/core/FileReadScope;->serializer:Landroidx/datastore/preferences/core/PreferencesFileSerializer;

    .line 386
    .line 387
    new-instance v4, Landroidx/datastore/core/UncloseableOutputStream;

    .line 388
    .line 389
    invoke-direct {v4, v2}, Landroidx/datastore/core/UncloseableOutputStream;-><init>(Ljava/io/FileOutputStream;)V

    .line 390
    .line 391
    .line 392
    iput-object v2, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$0:Ljava/lang/Object;

    .line 393
    .line 394
    iput-object v2, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->L$1:Ljava/lang/Object;

    .line 395
    .line 396
    iput v7, p0, Landroidx/datastore/core/FileWriteScope$writeData$2;->label:I

    .line 397
    .line 398
    invoke-virtual {v3, p1, v4}, Landroidx/datastore/preferences/core/PreferencesFileSerializer;->writeTo(Ljava/lang/Object;Landroidx/datastore/core/UncloseableOutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 399
    .line 400
    .line 401
    if-ne v1, v6, :cond_15

    .line 402
    .line 403
    move-object v1, v6

    .line 404
    goto :goto_d

    .line 405
    :cond_15
    move-object p0, v2

    .line 406
    :goto_c
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 411
    .line 412
    .line 413
    :try_start_9
    invoke-static {p0, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 414
    .line 415
    .line 416
    :goto_d
    return-object v1

    .line 417
    :catch_1
    move-exception p0

    .line 418
    goto :goto_f

    .line 419
    :catchall_3
    move-exception p1

    .line 420
    move-object p0, v2

    .line 421
    :goto_e
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 422
    :catchall_4
    move-exception v1

    .line 423
    :try_start_b
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 424
    .line 425
    .line 426
    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 427
    :goto_f
    instance-of p1, p0, Ljava/io/FileNotFoundException;

    .line 428
    .line 429
    if-eqz p1, :cond_16

    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    check-cast p0, Ljava/io/FileNotFoundException;

    .line 436
    .line 437
    invoke-static {p1, p0}, Landroidx/core/util/DebugUtils;->wrapExceptionIfDueToDirectBoot(Ljava/lang/String;Ljava/io/FileNotFoundException;)Ljava/lang/Exception;

    .line 438
    .line 439
    .line 440
    move-result-object p0

    .line 441
    :cond_16
    throw p0

    .line 442
    nop

    .line 443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

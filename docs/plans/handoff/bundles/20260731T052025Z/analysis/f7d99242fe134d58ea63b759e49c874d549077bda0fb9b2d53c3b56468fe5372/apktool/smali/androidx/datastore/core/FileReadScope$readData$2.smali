.class public final Landroidx/datastore/core/FileReadScope$readData$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/datastore/core/FileReadScope$readData$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/datastore/core/FileReadScope$readData$2;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 12
    iput p3, p0, Landroidx/datastore/core/FileReadScope$readData$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/datastore/core/FileReadScope$readData$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/datastore/core/FileReadScope$readData$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/datastore/core/FileReadScope$readData$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroidx/datastore/core/FileReadScope$readData$2;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 13
    .line 14
    check-cast v1, Lorg/jetbrains/compose/resources/ResourceItem;

    .line 15
    .line 16
    const/4 v2, 0x7

    .line 17
    invoke-direct {v0, p0, v1, p1, v2}, Landroidx/datastore/core/FileReadScope$readData$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_0
    new-instance p0, Landroidx/datastore/core/FileReadScope$readData$2;

    .line 22
    .line 23
    check-cast v1, Landroidx/datastore/core/DataStoreImpl;

    .line 24
    .line 25
    const/4 v0, 0x6

    .line 26
    invoke-direct {p0, v1, p1, v0}, Landroidx/datastore/core/FileReadScope$readData$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_1
    new-instance v0, Landroidx/datastore/core/FileReadScope$readData$2;

    .line 31
    .line 32
    iget-object p0, p0, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Landroidx/compose/material3/internal/AnchoredDraggableState;

    .line 35
    .line 36
    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 37
    .line 38
    const/4 v2, 0x5

    .line 39
    invoke-direct {v0, p0, v1, p1, v2}, Landroidx/datastore/core/FileReadScope$readData$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :pswitch_2
    new-instance v0, Landroidx/datastore/core/FileReadScope$readData$2;

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;

    .line 48
    .line 49
    check-cast v1, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider$SessionImpl;

    .line 50
    .line 51
    const/4 v2, 0x4

    .line 52
    invoke-direct {v0, p0, v1, p1, v2}, Landroidx/datastore/core/FileReadScope$readData$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :pswitch_3
    new-instance v0, Landroidx/datastore/core/FileReadScope$readData$2;

    .line 57
    .line 58
    iget-object p0, p0, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;

    .line 61
    .line 62
    check-cast v1, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 63
    .line 64
    const/4 v2, 0x3

    .line 65
    invoke-direct {v0, p0, v1, p1, v2}, Landroidx/datastore/core/FileReadScope$readData$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :pswitch_4
    new-instance v0, Landroidx/datastore/core/FileReadScope$readData$2;

    .line 70
    .line 71
    iget-object p0, p0, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    .line 74
    .line 75
    check-cast v1, Ljava/util/List;

    .line 76
    .line 77
    const/4 v2, 0x2

    .line 78
    invoke-direct {v0, p0, v1, p1, v2}, Landroidx/datastore/core/FileReadScope$readData$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 79
    .line 80
    .line 81
    return-object v0

    .line 82
    :pswitch_5
    new-instance p0, Landroidx/datastore/core/FileReadScope$readData$2;

    .line 83
    .line 84
    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    .line 85
    .line 86
    const/4 v0, 0x1

    .line 87
    invoke-direct {p0, v1, p1, v0}, Landroidx/datastore/core/FileReadScope$readData$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 88
    .line 89
    .line 90
    return-object p0

    .line 91
    :pswitch_6
    new-instance p0, Landroidx/datastore/core/FileReadScope$readData$2;

    .line 92
    .line 93
    check-cast v1, Landroidx/datastore/core/FileReadScope;

    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, v1, p1, v0}, Landroidx/datastore/core/FileReadScope$readData$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 97
    .line 98
    .line 99
    return-object p0

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/core/FileReadScope$readData$2;->$r8$classId:I

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
    invoke-virtual {p0, p1}, Landroidx/datastore/core/FileReadScope$readData$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroidx/datastore/core/FileReadScope$readData$2;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroidx/datastore/core/FileReadScope$readData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_0
    invoke-virtual {p0, p1}, Landroidx/datastore/core/FileReadScope$readData$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Landroidx/datastore/core/FileReadScope$readData$2;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroidx/datastore/core/FileReadScope$readData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :pswitch_1
    invoke-virtual {p0, p1}, Landroidx/datastore/core/FileReadScope$readData$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroidx/datastore/core/FileReadScope$readData$2;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroidx/datastore/core/FileReadScope$readData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_2
    invoke-virtual {p0, p1}, Landroidx/datastore/core/FileReadScope$readData$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Landroidx/datastore/core/FileReadScope$readData$2;

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Landroidx/datastore/core/FileReadScope$readData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_3
    invoke-virtual {p0, p1}, Landroidx/datastore/core/FileReadScope$readData$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Landroidx/datastore/core/FileReadScope$readData$2;

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroidx/datastore/core/FileReadScope$readData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :pswitch_4
    invoke-virtual {p0, p1}, Landroidx/datastore/core/FileReadScope$readData$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Landroidx/datastore/core/FileReadScope$readData$2;

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Landroidx/datastore/core/FileReadScope$readData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :pswitch_5
    invoke-virtual {p0, p1}, Landroidx/datastore/core/FileReadScope$readData$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Landroidx/datastore/core/FileReadScope$readData$2;

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Landroidx/datastore/core/FileReadScope$readData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :pswitch_6
    invoke-virtual {p0, p1}, Landroidx/datastore/core/FileReadScope$readData$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Landroidx/datastore/core/FileReadScope$readData$2;

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Landroidx/datastore/core/FileReadScope$readData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Landroidx/datastore/core/FileReadScope$readData$2;->$r8$classId:I

    .line 4
    .line 5
    const-string v2, "CXCP"

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    const/4 v7, 0x2

    .line 13
    const/4 v8, 0x0

    .line 14
    iget-object v9, v1, Landroidx/datastore/core/FileReadScope$readData$2;->this$0:Ljava/lang/Object;

    .line 15
    .line 16
    const-string v10, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 19
    .line 20
    const/4 v12, 0x1

    .line 21
    const/4 v13, 0x0

    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    iget v0, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    if-ne v0, v12, :cond_0

    .line 30
    .line 31
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    move-object/from16 v2, p1

    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_0
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    move-object v11, v13

    .line 41
    goto/16 :goto_8

    .line 42
    .line 43
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, v1, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;

    .line 49
    .line 50
    check-cast v9, Lorg/jetbrains/compose/resources/ResourceItem;

    .line 51
    .line 52
    iget-object v2, v9, Lorg/jetbrains/compose/resources/ResourceItem;->path:Ljava/lang/String;

    .line 53
    .line 54
    iget-wide v6, v9, Lorg/jetbrains/compose/resources/ResourceItem;->offset:J

    .line 55
    .line 56
    iget-wide v9, v9, Lorg/jetbrains/compose/resources/ResourceItem;->size:J

    .line 57
    .line 58
    iput v12, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Lorg/jetbrains/compose/resources/DefaultAndroidResourceReader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    long-to-int v0, v9

    .line 68
    new-array v2, v0, [B

    .line 69
    .line 70
    move-wide v9, v4

    .line 71
    :goto_0
    cmp-long v3, v9, v6

    .line 72
    .line 73
    if-gez v3, :cond_2

    .line 74
    .line 75
    sub-long v14, v6, v9

    .line 76
    .line 77
    :try_start_0
    invoke-virtual {v1, v14, v15}, Ljava/io/InputStream;->skip(J)J

    .line 78
    .line 79
    .line 80
    move-result-wide v14

    .line 81
    cmp-long v3, v14, v4

    .line 82
    .line 83
    if-eqz v3, :cond_2

    .line 84
    .line 85
    add-long/2addr v9, v14

    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    move-object v2, v0

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    move v3, v8

    .line 91
    :goto_1
    if-ge v3, v0, :cond_3

    .line 92
    .line 93
    sub-int v4, v0, v3

    .line 94
    .line 95
    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    .line 96
    .line 97
    .line 98
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    if-lez v4, :cond_3

    .line 100
    .line 101
    add-int/2addr v3, v4

    .line 102
    goto :goto_1

    .line 103
    :goto_2
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    :catchall_1
    move-exception v0

    .line 105
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_3
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 110
    .line 111
    .line 112
    if-ne v2, v11, :cond_4

    .line 113
    .line 114
    goto/16 :goto_8

    .line 115
    .line 116
    :cond_4
    :goto_3
    check-cast v2, [B

    .line 117
    .line 118
    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->decodeToString([B)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    new-array v1, v12, [C

    .line 123
    .line 124
    const/16 v2, 0x7c

    .line 125
    .line 126
    aput-char v2, v1, v8

    .line 127
    .line 128
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/String;[C)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Ljava/lang/String;

    .line 143
    .line 144
    const-string v2, "plurals"

    .line 145
    .line 146
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    const/4 v3, 0x6

    .line 151
    const/16 v4, 0xa

    .line 152
    .line 153
    const-string v5, ","

    .line 154
    .line 155
    if-eqz v2, :cond_a

    .line 156
    .line 157
    sget-object v1, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt;->SimpleStringFormatRegex:Lkotlin/text/Regex;

    .line 158
    .line 159
    filled-new-array {v5}, [Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    const/16 v2, 0x10

    .line 176
    .line 177
    if-ge v1, v2, :cond_5

    .line 178
    .line 179
    move v1, v2

    .line 180
    :cond_5
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 181
    .line 182
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 183
    .line 184
    .line 185
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_9

    .line 194
    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Ljava/lang/String;

    .line 200
    .line 201
    const/16 v4, 0x3a

    .line 202
    .line 203
    invoke-static {v4, v1}, Lkotlin/text/StringsKt;->substringBefore$default(CLjava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-static {v1, v4, v8, v3}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    const/4 v6, -0x1

    .line 212
    if-ne v4, v6, :cond_6

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    :goto_5
    sget-object v4, Lorg/jetbrains/compose/resources/plural/PluralCategory;->Companion:Landroidx/collection/internal/Lock;

    .line 226
    .line 227
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    sget-object v4, Lorg/jetbrains/compose/resources/plural/PluralCategory;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 231
    .line 232
    invoke-virtual {v4}, Lkotlin/collections/AbstractList;->iterator()Ljava/util/Iterator;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    if-eqz v6, :cond_8

    .line 241
    .line 242
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    move-object v7, v6

    .line 247
    check-cast v7, Lorg/jetbrains/compose/resources/plural/PluralCategory;

    .line 248
    .line 249
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    invoke-static {v7, v5, v12}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    if-eqz v7, :cond_7

    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_8
    move-object v6, v13

    .line 261
    :goto_6
    check-cast v6, Lorg/jetbrains/compose/resources/plural/PluralCategory;

    .line 262
    .line 263
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    sget-object v4, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    .line 267
    .line 268
    invoke-static {v4, v1, v8, v3}, Lkotlin/io/encoding/Base64;->decode$default(Lkotlin/io/encoding/Base64;Ljava/lang/String;II)[B

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->decodeToString([B)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_9
    new-instance v11, Lorg/jetbrains/compose/resources/StringItem$Plurals;

    .line 281
    .line 282
    invoke-direct {v11, v2}, Lorg/jetbrains/compose/resources/StringItem$Plurals;-><init>(Ljava/util/LinkedHashMap;)V

    .line 283
    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_a
    const-string v2, "string-array"

    .line 287
    .line 288
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    if-eqz v1, :cond_c

    .line 293
    .line 294
    sget-object v1, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt;->SimpleStringFormatRegex:Lkotlin/text/Regex;

    .line 295
    .line 296
    filled-new-array {v5}, [Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-static {v0, v1, v3}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    new-instance v1, Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 311
    .line 312
    .line 313
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    if-eqz v2, :cond_b

    .line 322
    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    check-cast v2, Ljava/lang/String;

    .line 328
    .line 329
    sget-object v4, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    .line 330
    .line 331
    invoke-static {v4, v2, v8, v3}, Lkotlin/io/encoding/Base64;->decode$default(Lkotlin/io/encoding/Base64;Ljava/lang/String;II)[B

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->decodeToString([B)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    goto :goto_7

    .line 343
    :cond_b
    new-instance v11, Lorg/jetbrains/compose/resources/StringItem$Array;

    .line 344
    .line 345
    invoke-direct {v11, v1}, Lorg/jetbrains/compose/resources/StringItem$Array;-><init>(Ljava/util/ArrayList;)V

    .line 346
    .line 347
    .line 348
    goto :goto_8

    .line 349
    :cond_c
    sget-object v1, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt;->SimpleStringFormatRegex:Lkotlin/text/Regex;

    .line 350
    .line 351
    new-instance v11, Lorg/jetbrains/compose/resources/StringItem$Value;

    .line 352
    .line 353
    sget-object v1, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    .line 354
    .line 355
    invoke-static {v1, v0, v8, v3}, Lkotlin/io/encoding/Base64;->decode$default(Lkotlin/io/encoding/Base64;Ljava/lang/String;II)[B

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->decodeToString([B)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-direct {v11, v0}, Lorg/jetbrains/compose/resources/StringItem$Value;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    :goto_8
    return-object v11

    .line 367
    :pswitch_0
    check-cast v9, Landroidx/datastore/core/DataStoreImpl;

    .line 368
    .line 369
    iget v0, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 370
    .line 371
    if-eqz v0, :cond_f

    .line 372
    .line 373
    if-eq v0, v12, :cond_e

    .line 374
    .line 375
    if-ne v0, v7, :cond_d

    .line 376
    .line 377
    iget-object v0, v1, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v0, Ljava/lang/Throwable;

    .line 380
    .line 381
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    move-object/from16 v1, p1

    .line 385
    .line 386
    goto :goto_b

    .line 387
    :cond_d
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    move-object v11, v13

    .line 391
    goto :goto_d

    .line 392
    :cond_e
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 393
    .line 394
    .line 395
    move-object/from16 v0, p1

    .line 396
    .line 397
    goto :goto_9

    .line 398
    :catchall_2
    move-exception v0

    .line 399
    goto :goto_a

    .line 400
    :cond_f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    :try_start_3
    iput v12, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 404
    .line 405
    invoke-static {v9, v12, v1}, Landroidx/datastore/core/DataStoreImpl;->access$readDataOrHandleCorruption(Landroidx/datastore/core/DataStoreImpl;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    if-ne v0, v11, :cond_10

    .line 410
    .line 411
    goto :goto_d

    .line 412
    :cond_10
    :goto_9
    check-cast v0, Landroidx/datastore/core/State;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 413
    .line 414
    goto :goto_c

    .line 415
    :goto_a
    invoke-virtual {v9}, Landroidx/datastore/core/DataStoreImpl;->getCoordinator()Landroidx/datastore/core/SingleProcessCoordinator;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    iput-object v0, v1, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 420
    .line 421
    iput v7, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 422
    .line 423
    invoke-virtual {v2}, Landroidx/datastore/core/SingleProcessCoordinator;->getVersion()Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    if-ne v1, v11, :cond_11

    .line 428
    .line 429
    goto :goto_d

    .line 430
    :cond_11
    :goto_b
    check-cast v1, Ljava/lang/Number;

    .line 431
    .line 432
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    new-instance v2, Landroidx/datastore/core/ReadException;

    .line 437
    .line 438
    invoke-direct {v2, v0, v1}, Landroidx/datastore/core/ReadException;-><init>(Ljava/lang/Throwable;I)V

    .line 439
    .line 440
    .line 441
    move-object v0, v2

    .line 442
    :goto_c
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 443
    .line 444
    new-instance v11, Lkotlin/Pair;

    .line 445
    .line 446
    invoke-direct {v11, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    :goto_d
    return-object v11

    .line 450
    :pswitch_1
    iget v0, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 451
    .line 452
    if-eqz v0, :cond_13

    .line 453
    .line 454
    if-ne v0, v12, :cond_12

    .line 455
    .line 456
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    goto :goto_e

    .line 460
    :cond_12
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    move-object v6, v13

    .line 464
    goto :goto_e

    .line 465
    :cond_13
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    iget-object v0, v1, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 469
    .line 470
    check-cast v0, Landroidx/compose/material3/internal/AnchoredDraggableState;

    .line 471
    .line 472
    new-instance v2, Landroidx/compose/material3/internal/AnchoredDraggableState$$ExternalSyntheticLambda0;

    .line 473
    .line 474
    invoke-direct {v2, v0, v3}, Landroidx/compose/material3/internal/AnchoredDraggableState$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/internal/AnchoredDraggableState;I)V

    .line 475
    .line 476
    .line 477
    new-instance v3, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;

    .line 478
    .line 479
    check-cast v9, Lkotlin/jvm/functions/Function3;

    .line 480
    .line 481
    const/16 v4, 0x1a

    .line 482
    .line 483
    invoke-direct {v3, v9, v0, v13, v4}, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 484
    .line 485
    .line 486
    iput v12, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 487
    .line 488
    invoke-static {v2, v3, v1}, Landroidx/compose/material3/internal/Icons$Filled;->access$restartable(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    if-ne v0, v11, :cond_14

    .line 493
    .line 494
    move-object v6, v11

    .line 495
    :cond_14
    :goto_e
    return-object v6

    .line 496
    :pswitch_2
    check-cast v9, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider$SessionImpl;

    .line 497
    .line 498
    iget-object v0, v1, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 499
    .line 500
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;

    .line 501
    .line 502
    iget-object v2, v0, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;->session$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 503
    .line 504
    iget v0, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 505
    .line 506
    if-eqz v0, :cond_16

    .line 507
    .line 508
    if-ne v0, v12, :cond_15

    .line 509
    .line 510
    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 511
    .line 512
    .line 513
    goto :goto_10

    .line 514
    :catchall_3
    move-exception v0

    .line 515
    goto :goto_12

    .line 516
    :cond_15
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    move-object v6, v13

    .line 520
    goto :goto_11

    .line 521
    :cond_16
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 522
    .line 523
    .line 524
    :try_start_5
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    iput v12, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 528
    .line 529
    iget-object v0, v9, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider$SessionImpl;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 530
    .line 531
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    invoke-static {v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->receive$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 538
    if-ne v0, v11, :cond_17

    .line 539
    .line 540
    goto :goto_f

    .line 541
    :cond_17
    move-object v0, v6

    .line 542
    :goto_f
    if-ne v0, v11, :cond_18

    .line 543
    .line 544
    move-object v6, v11

    .line 545
    goto :goto_11

    .line 546
    :cond_18
    :goto_10
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    :goto_11
    return-object v6

    .line 550
    :goto_12
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    throw v0

    .line 554
    :pswitch_3
    iget-object v0, v1, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 555
    .line 556
    move-object v2, v0

    .line 557
    check-cast v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;

    .line 558
    .line 559
    iget-object v3, v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 560
    .line 561
    iget-object v4, v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->view:Landroid/view/View;

    .line 562
    .line 563
    iget v0, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 564
    .line 565
    const/16 v5, 0x13

    .line 566
    .line 567
    if-eqz v0, :cond_1a

    .line 568
    .line 569
    if-ne v0, v12, :cond_19

    .line 570
    .line 571
    :try_start_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 572
    .line 573
    .line 574
    goto/16 :goto_17

    .line 575
    .line 576
    :catchall_4
    move-exception v0

    .line 577
    goto/16 :goto_1b

    .line 578
    .line 579
    :cond_19
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    move-object v6, v13

    .line 583
    goto/16 :goto_1a

    .line 584
    .line 585
    :cond_1a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 586
    .line 587
    .line 588
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextContextMenuSessionImpl;

    .line 589
    .line 590
    invoke-direct {v0}, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextContextMenuSessionImpl;-><init>()V

    .line 591
    .line 592
    .line 593
    check-cast v9, Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;

    .line 594
    .line 595
    new-instance v7, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextActionModeCallbackImpl;

    .line 596
    .line 597
    new-instance v10, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3;

    .line 598
    .line 599
    invoke-direct {v10, v2, v9, v8}, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;I)V

    .line 600
    .line 601
    .line 602
    new-instance v8, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3;

    .line 603
    .line 604
    invoke-direct {v8, v2, v9, v12}, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;Landroidx/compose/foundation/text/contextmenu/provider/TextContextMenuDataProvider;I)V

    .line 605
    .line 606
    .line 607
    invoke-direct {v7, v0, v10, v8, v4}, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextActionModeCallbackImpl;-><init>(Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextContextMenuSessionImpl;Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3;Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3;Landroid/view/View;)V

    .line 608
    .line 609
    .line 610
    iget-object v8, v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->callbackInjector:Lkotlin/jvm/functions/Function1;

    .line 611
    .line 612
    if-eqz v8, :cond_1c

    .line 613
    .line 614
    invoke-interface {v8, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v8

    .line 618
    check-cast v8, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextActionModeCallbackImpl;

    .line 619
    .line 620
    if-nez v8, :cond_1b

    .line 621
    .line 622
    goto :goto_13

    .line 623
    :cond_1b
    move-object v7, v8

    .line 624
    :cond_1c
    :goto_13
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 625
    .line 626
    .line 627
    move-result-object v8

    .line 628
    invoke-virtual {v4}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 629
    .line 630
    .line 631
    move-result-object v9

    .line 632
    if-eqz v9, :cond_1d

    .line 633
    .line 634
    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 635
    .line 636
    .line 637
    move-result-object v9

    .line 638
    goto :goto_14

    .line 639
    :cond_1d
    move-object v9, v13

    .line 640
    :goto_14
    if-eq v8, v9, :cond_1f

    .line 641
    .line 642
    iget-object v8, v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->startActionModeRunnable:Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 643
    .line 644
    if-nez v8, :cond_1e

    .line 645
    .line 646
    new-instance v8, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 647
    .line 648
    const/16 v9, 0xb

    .line 649
    .line 650
    invoke-direct {v8, v2, v7, v0, v9}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 651
    .line 652
    .line 653
    iput-object v8, v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->startActionModeRunnable:Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 654
    .line 655
    :cond_1e
    invoke-virtual {v4, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 656
    .line 657
    .line 658
    goto :goto_15

    .line 659
    :cond_1f
    new-instance v8, Landroidx/compose/foundation/text/contextmenu/internal/FloatingTextActionModeCallback;

    .line 660
    .line 661
    invoke-direct {v8, v7}, Landroidx/compose/foundation/text/contextmenu/internal/FloatingTextActionModeCallback;-><init>(Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextActionModeCallbackImpl;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v4, v8, v12}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    .line 665
    .line 666
    .line 667
    move-result-object v7

    .line 668
    if-nez v7, :cond_20

    .line 669
    .line 670
    goto :goto_1a

    .line 671
    :cond_20
    iput-object v7, v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->actionMode:Landroid/view/ActionMode;

    .line 672
    .line 673
    :goto_15
    :try_start_7
    iput v12, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 674
    .line 675
    iget-object v0, v0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider$TextContextMenuSessionImpl;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 676
    .line 677
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 678
    .line 679
    .line 680
    invoke-static {v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->receive$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 684
    if-ne v0, v11, :cond_21

    .line 685
    .line 686
    goto :goto_16

    .line 687
    :cond_21
    move-object v0, v6

    .line 688
    :goto_16
    if-ne v0, v11, :cond_22

    .line 689
    .line 690
    move-object v6, v11

    .line 691
    goto :goto_1a

    .line 692
    :cond_22
    :goto_17
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->clear()V

    .line 693
    .line 694
    .line 695
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    invoke-virtual {v4}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    if-eqz v1, :cond_23

    .line 704
    .line 705
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 706
    .line 707
    .line 708
    move-result-object v1

    .line 709
    goto :goto_18

    .line 710
    :cond_23
    move-object v1, v13

    .line 711
    :goto_18
    if-eq v0, v1, :cond_25

    .line 712
    .line 713
    iget-object v0, v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->finishActionModeRunnable:Ljava/lang/Runnable;

    .line 714
    .line 715
    if-nez v0, :cond_24

    .line 716
    .line 717
    new-instance v0, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;

    .line 718
    .line 719
    invoke-direct {v0, v5, v2}, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 720
    .line 721
    .line 722
    iput-object v0, v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->finishActionModeRunnable:Ljava/lang/Runnable;

    .line 723
    .line 724
    :cond_24
    invoke-virtual {v4, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 725
    .line 726
    .line 727
    goto :goto_19

    .line 728
    :cond_25
    iget-object v0, v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->actionMode:Landroid/view/ActionMode;

    .line 729
    .line 730
    if-eqz v0, :cond_26

    .line 731
    .line 732
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 733
    .line 734
    .line 735
    :cond_26
    :goto_19
    iget-object v0, v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->startActionModeRunnable:Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 736
    .line 737
    if-eqz v0, :cond_27

    .line 738
    .line 739
    invoke-virtual {v4, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 740
    .line 741
    .line 742
    :cond_27
    iput-object v13, v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->actionMode:Landroid/view/ActionMode;

    .line 743
    .line 744
    :goto_1a
    return-object v6

    .line 745
    :goto_1b
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->clear()V

    .line 746
    .line 747
    .line 748
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 749
    .line 750
    .line 751
    move-result-object v1

    .line 752
    invoke-virtual {v4}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 753
    .line 754
    .line 755
    move-result-object v3

    .line 756
    if-eqz v3, :cond_28

    .line 757
    .line 758
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 759
    .line 760
    .line 761
    move-result-object v3

    .line 762
    goto :goto_1c

    .line 763
    :cond_28
    move-object v3, v13

    .line 764
    :goto_1c
    if-eq v1, v3, :cond_2a

    .line 765
    .line 766
    iget-object v1, v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->finishActionModeRunnable:Ljava/lang/Runnable;

    .line 767
    .line 768
    if-nez v1, :cond_29

    .line 769
    .line 770
    new-instance v1, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;

    .line 771
    .line 772
    invoke-direct {v1, v5, v2}, Landroidx/camera/core/Preview$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 773
    .line 774
    .line 775
    iput-object v1, v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->finishActionModeRunnable:Ljava/lang/Runnable;

    .line 776
    .line 777
    :cond_29
    invoke-virtual {v4, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 778
    .line 779
    .line 780
    goto :goto_1d

    .line 781
    :cond_2a
    iget-object v1, v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->actionMode:Landroid/view/ActionMode;

    .line 782
    .line 783
    if-eqz v1, :cond_2b

    .line 784
    .line 785
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 786
    .line 787
    .line 788
    :cond_2b
    :goto_1d
    iget-object v1, v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->startActionModeRunnable:Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 789
    .line 790
    if-eqz v1, :cond_2c

    .line 791
    .line 792
    invoke-virtual {v4, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 793
    .line 794
    .line 795
    :cond_2c
    iput-object v13, v2, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->actionMode:Landroid/view/ActionMode;

    .line 796
    .line 797
    throw v0

    .line 798
    :pswitch_4
    iget-object v0, v1, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 799
    .line 800
    check-cast v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    .line 801
    .line 802
    iget-object v3, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->infoBundleMap:Ljava/util/LinkedHashMap;

    .line 803
    .line 804
    check-cast v9, Ljava/util/List;

    .line 805
    .line 806
    iget v4, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 807
    .line 808
    if-eqz v4, :cond_2e

    .line 809
    .line 810
    if-ne v4, v12, :cond_2d

    .line 811
    .line 812
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 813
    .line 814
    .line 815
    move-object/from16 v0, p1

    .line 816
    .line 817
    goto/16 :goto_1f

    .line 818
    .line 819
    :cond_2d
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    move-object v0, v13

    .line 823
    goto/16 :goto_1f

    .line 824
    .line 825
    :cond_2e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 826
    .line 827
    .line 828
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 829
    .line 830
    .line 831
    move-result v4

    .line 832
    sget-object v5, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;->DEFAULT:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;

    .line 833
    .line 834
    if-eqz v4, :cond_2f

    .line 835
    .line 836
    new-instance v4, Ljava/lang/StringBuilder;

    .line 837
    .line 838
    const-string v6, "UseCaseCameraRequestControlImpl#removeParametersAsync: ["

    .line 839
    .line 840
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    const-string v6, "] keys = "

    .line 847
    .line 848
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v4

    .line 858
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    .line 860
    .line 861
    :cond_2f
    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    move-result-object v2

    .line 865
    if-nez v2, :cond_30

    .line 866
    .line 867
    new-instance v2, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    .line 868
    .line 869
    const/16 v4, 0xf

    .line 870
    .line 871
    invoke-direct {v2, v13, v13, v13, v4}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;-><init>(Landroidx/camera/core/Preview$Builder;Ljava/util/LinkedHashMap;Landroidx/camera/camera2/pipe/RequestTemplate;I)V

    .line 872
    .line 873
    .line 874
    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    :cond_30
    check-cast v2, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    .line 878
    .line 879
    new-instance v4, Landroidx/camera/core/Preview$Builder;

    .line 880
    .line 881
    invoke-direct {v4, v12}, Landroidx/camera/core/Preview$Builder;-><init>(I)V

    .line 882
    .line 883
    .line 884
    iget-object v6, v2, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->options:Landroidx/camera/core/Preview$Builder;

    .line 885
    .line 886
    iget-object v6, v6, Landroidx/camera/core/Preview$Builder;->mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 887
    .line 888
    invoke-virtual {v4, v6}, Landroidx/camera/core/Preview$Builder;->insertAllOptions(Landroidx/camera/core/impl/Config;)V

    .line 889
    .line 890
    .line 891
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 892
    .line 893
    .line 894
    move-result-object v6

    .line 895
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 896
    .line 897
    .line 898
    move-result v7

    .line 899
    if-eqz v7, :cond_31

    .line 900
    .line 901
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v7

    .line 905
    check-cast v7, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 906
    .line 907
    invoke-static {v7}, Landroidx/work/Data$Companion;->createCaptureRequestOption(Landroid/hardware/camera2/CaptureRequest$Key;)Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 908
    .line 909
    .line 910
    move-result-object v7

    .line 911
    iget-object v8, v4, Landroidx/camera/core/Preview$Builder;->mMutableConfig:Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 912
    .line 913
    invoke-virtual {v8, v7}, Landroidx/camera/core/impl/MutableOptionsBundle;->removeOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)V

    .line 914
    .line 915
    .line 916
    goto :goto_1e

    .line 917
    :cond_31
    iget-object v6, v2, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->tags:Ljava/util/Map;

    .line 918
    .line 919
    invoke-static {v6}, Lkotlin/collections/MapsKt__MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 920
    .line 921
    .line 922
    move-result-object v6

    .line 923
    iget-object v7, v2, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->listeners:Ljava/util/Set;

    .line 924
    .line 925
    check-cast v7, Ljava/lang/Iterable;

    .line 926
    .line 927
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 928
    .line 929
    .line 930
    move-result-object v7

    .line 931
    iget-object v2, v2, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->template:Landroidx/camera/camera2/pipe/RequestTemplate;

    .line 932
    .line 933
    new-instance v8, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    .line 934
    .line 935
    invoke-direct {v8, v4, v6, v7, v2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;-><init>(Landroidx/camera/core/Preview$Builder;Ljava/util/Map;Ljava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;)V

    .line 936
    .line 937
    .line 938
    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    iget-object v2, v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->infoBundleMap:Ljava/util/LinkedHashMap;

    .line 942
    .line 943
    invoke-static {v2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->merge(Ljava/util/LinkedHashMap;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    .line 944
    .line 945
    .line 946
    move-result-object v2

    .line 947
    iput v12, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 948
    .line 949
    invoke-virtual {v0, v2, v13, v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->updateCameraStateAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Ljava/util/LinkedHashSet;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    move-result-object v0

    .line 953
    if-ne v0, v11, :cond_32

    .line 954
    .line 955
    move-object v0, v11

    .line 956
    :cond_32
    :goto_1f
    return-object v0

    .line 957
    :pswitch_5
    check-cast v9, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    .line 958
    .line 959
    iget-object v6, v9, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 960
    .line 961
    iget v0, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 962
    .line 963
    const-string v8, "Cannot acquire the CameraGraph.Session"

    .line 964
    .line 965
    const/4 v9, 0x4

    .line 966
    if-eqz v0, :cond_37

    .line 967
    .line 968
    if-eq v0, v12, :cond_36

    .line 969
    .line 970
    if-eq v0, v7, :cond_35

    .line 971
    .line 972
    if-eq v0, v3, :cond_34

    .line 973
    .line 974
    if-ne v0, v9, :cond_33

    .line 975
    .line 976
    :try_start_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_0

    .line 977
    .line 978
    .line 979
    move-object/from16 v0, p1

    .line 980
    .line 981
    goto/16 :goto_27

    .line 982
    .line 983
    :catch_0
    move-exception v0

    .line 984
    goto/16 :goto_29

    .line 985
    .line 986
    :cond_33
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 987
    .line 988
    .line 989
    move-object v11, v13

    .line 990
    goto/16 :goto_2a

    .line 991
    .line 992
    :cond_34
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 993
    .line 994
    .line 995
    goto/16 :goto_26

    .line 996
    .line 997
    :cond_35
    iget-object v0, v1, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 998
    .line 999
    move-object v4, v0

    .line 1000
    check-cast v4, Ljava/lang/AutoCloseable;

    .line 1001
    .line 1002
    :try_start_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1003
    .line 1004
    .line 1005
    move-object/from16 v0, p1

    .line 1006
    .line 1007
    goto :goto_22

    .line 1008
    :catchall_5
    move-exception v0

    .line 1009
    move-object v10, v4

    .line 1010
    :goto_20
    move-object v4, v0

    .line 1011
    goto :goto_23

    .line 1012
    :cond_36
    :try_start_a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_1

    .line 1013
    .line 1014
    .line 1015
    move-object/from16 v0, p1

    .line 1016
    .line 1017
    goto :goto_21

    .line 1018
    :catch_1
    move-exception v0

    .line 1019
    goto :goto_24

    .line 1020
    :cond_37
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1021
    .line 1022
    .line 1023
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 1024
    .line 1025
    .line 1026
    move-result v0

    .line 1027
    if-eqz v0, :cond_38

    .line 1028
    .line 1029
    const-string v0, "UseCaseCameraRequestControlImpl#cancelFocusAndMeteringAsync"

    .line 1030
    .line 1031
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    .line 1033
    .line 1034
    :cond_38
    :try_start_b
    invoke-virtual {v6}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v0

    .line 1038
    iput v12, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 1039
    .line 1040
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->acquireSession(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v0

    .line 1044
    if-ne v0, v11, :cond_39

    .line 1045
    .line 1046
    goto/16 :goto_2a

    .line 1047
    .line 1048
    :cond_39
    :goto_21
    move-object v10, v0

    .line 1049
    check-cast v10, Ljava/lang/AutoCloseable;
    :try_end_b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b .. :try_end_b} :catch_1

    .line 1050
    .line 1051
    :try_start_c
    move-object v0, v10

    .line 1052
    check-cast v0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;

    .line 1053
    .line 1054
    iput-object v10, v1, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 1055
    .line 1056
    iput v7, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 1057
    .line 1058
    const/16 v7, 0x38

    .line 1059
    .line 1060
    invoke-static {v0, v4, v5, v7}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->unlock3A$default(Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;JI)Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 1064
    if-ne v0, v11, :cond_3a

    .line 1065
    .line 1066
    goto/16 :goto_2a

    .line 1067
    .line 1068
    :cond_3a
    move-object v4, v10

    .line 1069
    :goto_22
    :try_start_d
    check-cast v0, Lkotlinx/coroutines/Deferred;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 1070
    .line 1071
    :try_start_e
    invoke-static {v4, v13}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_e .. :try_end_e} :catch_1

    .line 1072
    .line 1073
    .line 1074
    goto :goto_25

    .line 1075
    :catchall_6
    move-exception v0

    .line 1076
    goto :goto_20

    .line 1077
    :goto_23
    :try_start_f
    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 1078
    :catchall_7
    move-exception v0

    .line 1079
    :try_start_10
    invoke-static {v10, v4}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 1080
    .line 1081
    .line 1082
    throw v0
    :try_end_10
    .catch Ljava/util/concurrent/CancellationException; {:try_start_10 .. :try_end_10} :catch_1

    .line 1083
    :goto_24
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 1084
    .line 1085
    .line 1086
    move-result v4

    .line 1087
    if-eqz v4, :cond_3b

    .line 1088
    .line 1089
    invoke-static {v2, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1090
    .line 1091
    .line 1092
    :cond_3b
    sget-object v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->submitFailedResult:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1093
    .line 1094
    :goto_25
    iput-object v13, v1, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 1095
    .line 1096
    iput v3, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 1097
    .line 1098
    invoke-interface {v0, v1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v0

    .line 1102
    if-ne v0, v11, :cond_3c

    .line 1103
    .line 1104
    goto :goto_2a

    .line 1105
    :cond_3c
    :goto_26
    :try_start_11
    invoke-virtual {v6}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v0

    .line 1109
    iput v9, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 1110
    .line 1111
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->acquireSession(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v0

    .line 1115
    if-ne v0, v11, :cond_3d

    .line 1116
    .line 1117
    goto :goto_2a

    .line 1118
    :cond_3d
    :goto_27
    move-object v1, v0

    .line 1119
    check-cast v1, Ljava/lang/AutoCloseable;
    :try_end_11
    .catch Ljava/util/concurrent/CancellationException; {:try_start_11 .. :try_end_11} :catch_0

    .line 1120
    .line 1121
    :try_start_12
    move-object v14, v1

    .line 1122
    check-cast v14, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;

    .line 1123
    .line 1124
    sget-object v0, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->METERING_REGIONS_DEFAULT:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 1125
    .line 1126
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v18

    .line 1130
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v19

    .line 1134
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1135
    .line 1136
    .line 1137
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v20

    .line 1141
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1142
    .line 1143
    .line 1144
    const/16 v21, 0x7

    .line 1145
    .line 1146
    const/4 v15, 0x0

    .line 1147
    const/16 v16, 0x0

    .line 1148
    .line 1149
    const/16 v17, 0x0

    .line 1150
    .line 1151
    invoke-static/range {v14 .. v21}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->update3A-ydBZfZg$default(Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Lkotlinx/coroutines/Deferred;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 1155
    :try_start_13
    invoke-static {v1, v13}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_13
    .catch Ljava/util/concurrent/CancellationException; {:try_start_13 .. :try_end_13} :catch_0

    .line 1156
    .line 1157
    .line 1158
    :goto_28
    move-object v11, v0

    .line 1159
    goto :goto_2a

    .line 1160
    :catchall_8
    move-exception v0

    .line 1161
    move-object v3, v0

    .line 1162
    :try_start_14
    throw v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 1163
    :catchall_9
    move-exception v0

    .line 1164
    :try_start_15
    invoke-static {v1, v3}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 1165
    .line 1166
    .line 1167
    throw v0
    :try_end_15
    .catch Ljava/util/concurrent/CancellationException; {:try_start_15 .. :try_end_15} :catch_0

    .line 1168
    :goto_29
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 1169
    .line 1170
    .line 1171
    move-result v1

    .line 1172
    if-eqz v1, :cond_3e

    .line 1173
    .line 1174
    invoke-static {v2, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1175
    .line 1176
    .line 1177
    :cond_3e
    sget-object v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->submitFailedResult:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1178
    .line 1179
    goto :goto_28

    .line 1180
    :goto_2a
    return-object v11

    .line 1181
    :pswitch_6
    check-cast v9, Landroidx/datastore/core/FileReadScope;

    .line 1182
    .line 1183
    iget v0, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 1184
    .line 1185
    if-eqz v0, :cond_41

    .line 1186
    .line 1187
    if-eq v0, v12, :cond_40

    .line 1188
    .line 1189
    if-ne v0, v7, :cond_3f

    .line 1190
    .line 1191
    iget-object v0, v1, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 1192
    .line 1193
    move-object v1, v0

    .line 1194
    check-cast v1, Ljava/io/FileInputStream;

    .line 1195
    .line 1196
    :try_start_16
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 1197
    .line 1198
    .line 1199
    move-object/from16 v0, p1

    .line 1200
    .line 1201
    goto :goto_2f

    .line 1202
    :catchall_a
    move-exception v0

    .line 1203
    move-object v3, v1

    .line 1204
    :goto_2b
    move-object v1, v0

    .line 1205
    goto :goto_30

    .line 1206
    :cond_3f
    invoke-static {v10}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1207
    .line 1208
    .line 1209
    move-object v11, v13

    .line 1210
    goto/16 :goto_32

    .line 1211
    .line 1212
    :cond_40
    iget-object v0, v1, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 1213
    .line 1214
    move-object v2, v0

    .line 1215
    check-cast v2, Ljava/io/FileInputStream;

    .line 1216
    .line 1217
    :try_start_17
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 1218
    .line 1219
    .line 1220
    move-object/from16 v0, p1

    .line 1221
    .line 1222
    goto :goto_2c

    .line 1223
    :catchall_b
    move-exception v0

    .line 1224
    move-object v3, v2

    .line 1225
    move-object v2, v0

    .line 1226
    goto :goto_2e

    .line 1227
    :cond_41
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1228
    .line 1229
    .line 1230
    :try_start_18
    new-instance v2, Ljava/io/FileInputStream;

    .line 1231
    .line 1232
    iget-object v0, v9, Landroidx/datastore/core/FileReadScope;->file:Ljava/io/File;

    .line 1233
    .line 1234
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_2

    .line 1235
    .line 1236
    .line 1237
    :try_start_19
    iget-object v0, v9, Landroidx/datastore/core/FileReadScope;->serializer:Landroidx/datastore/preferences/core/PreferencesFileSerializer;

    .line 1238
    .line 1239
    iput-object v2, v1, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 1240
    .line 1241
    iput v12, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 1242
    .line 1243
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/core/PreferencesFileSerializer;->readFrom(Ljava/io/FileInputStream;)Ljava/lang/Object;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    .line 1247
    if-ne v0, v11, :cond_42

    .line 1248
    .line 1249
    goto :goto_32

    .line 1250
    :cond_42
    :goto_2c
    :try_start_1a
    invoke-static {v2, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_2

    .line 1251
    .line 1252
    .line 1253
    :goto_2d
    move-object v11, v0

    .line 1254
    goto :goto_32

    .line 1255
    :goto_2e
    :try_start_1b
    throw v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    .line 1256
    :catchall_c
    move-exception v0

    .line 1257
    :try_start_1c
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1258
    .line 1259
    .line 1260
    throw v0
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_2

    .line 1261
    :catch_2
    iget-object v0, v9, Landroidx/datastore/core/FileReadScope;->file:Ljava/io/File;

    .line 1262
    .line 1263
    iget-object v2, v9, Landroidx/datastore/core/FileReadScope;->serializer:Landroidx/datastore/preferences/core/PreferencesFileSerializer;

    .line 1264
    .line 1265
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1266
    .line 1267
    .line 1268
    move-result v0

    .line 1269
    if-eqz v0, :cond_45

    .line 1270
    .line 1271
    :try_start_1d
    new-instance v3, Ljava/io/FileInputStream;

    .line 1272
    .line 1273
    iget-object v0, v9, Landroidx/datastore/core/FileReadScope;->file:Ljava/io/File;

    .line 1274
    .line 1275
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3

    .line 1276
    .line 1277
    .line 1278
    :try_start_1e
    iput-object v3, v1, Landroidx/datastore/core/FileReadScope$readData$2;->L$0:Ljava/lang/Object;

    .line 1279
    .line 1280
    iput v7, v1, Landroidx/datastore/core/FileReadScope$readData$2;->label:I

    .line 1281
    .line 1282
    invoke-virtual {v2, v3}, Landroidx/datastore/preferences/core/PreferencesFileSerializer;->readFrom(Ljava/io/FileInputStream;)Ljava/lang/Object;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    .line 1286
    if-ne v0, v11, :cond_43

    .line 1287
    .line 1288
    goto :goto_32

    .line 1289
    :cond_43
    move-object v1, v3

    .line 1290
    :goto_2f
    :try_start_1f
    invoke-static {v1, v13}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3

    .line 1291
    .line 1292
    .line 1293
    goto :goto_2d

    .line 1294
    :catch_3
    move-exception v0

    .line 1295
    goto :goto_31

    .line 1296
    :catchall_d
    move-exception v0

    .line 1297
    goto :goto_2b

    .line 1298
    :goto_30
    :try_start_20
    throw v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    .line 1299
    :catchall_e
    move-exception v0

    .line 1300
    :try_start_21
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1301
    .line 1302
    .line 1303
    throw v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_3

    .line 1304
    :goto_31
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    .line 1305
    .line 1306
    if-eqz v1, :cond_44

    .line 1307
    .line 1308
    iget-object v1, v9, Landroidx/datastore/core/FileReadScope;->file:Ljava/io/File;

    .line 1309
    .line 1310
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v1

    .line 1314
    check-cast v0, Ljava/io/FileNotFoundException;

    .line 1315
    .line 1316
    invoke-static {v1, v0}, Landroidx/core/util/DebugUtils;->wrapExceptionIfDueToDirectBoot(Ljava/lang/String;Ljava/io/FileNotFoundException;)Ljava/lang/Exception;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v0

    .line 1320
    :cond_44
    throw v0

    .line 1321
    :cond_45
    new-instance v0, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 1322
    .line 1323
    invoke-direct {v0, v12}, Landroidx/datastore/preferences/core/MutablePreferences;-><init>(Z)V

    .line 1324
    .line 1325
    .line 1326
    goto :goto_2d

    .line 1327
    :goto_32
    return-object v11

    .line 1328
    nop

    .line 1329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

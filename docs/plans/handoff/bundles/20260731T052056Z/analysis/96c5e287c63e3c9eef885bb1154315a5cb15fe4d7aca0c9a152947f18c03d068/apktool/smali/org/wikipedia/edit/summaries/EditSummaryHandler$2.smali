.class public final Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lokhttp3/MultipartBody$Builder;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/MultipartBody$Builder;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;->this$0:Lokhttp3/MultipartBody$Builder;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;->this$0:Lokhttp3/MultipartBody$Builder;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;-><init>(Lokhttp3/MultipartBody$Builder;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;-><init>(Lokhttp3/MultipartBody$Builder;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;->this$0:Lokhttp3/MultipartBody$Builder;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 16
    .line 17
    iget v7, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;->label:I

    .line 18
    .line 19
    if-eqz v7, :cond_2

    .line 20
    .line 21
    if-ne v7, v5, :cond_1

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    move-object v3, v6

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
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
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->editSummaryDao()Lorg/wikipedia/edit/db/EditSummaryDao_Impl;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v3, Lorg/wikipedia/edit/db/EditSummary;

    .line 46
    .line 47
    iget-object v2, v2, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Landroid/widget/AutoCompleteTextView;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-instance v4, Ljava/util/Date;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-direct {v3, v2, v4}, Lorg/wikipedia/edit/db/EditSummary;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 65
    .line 66
    .line 67
    iput v5, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;->label:I

    .line 68
    .line 69
    iget-object v2, p1, Lorg/wikipedia/edit/db/EditSummaryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 70
    .line 71
    new-instance v4, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 72
    .line 73
    const/16 v7, 0xe

    .line 74
    .line 75
    invoke-direct {v4, v7, p1, v3}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v2, v1, v5, v4, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    if-ne p0, v0, :cond_3

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    move-object p0, v6

    .line 86
    :goto_0
    if-ne p0, v0, :cond_0

    .line 87
    .line 88
    move-object v3, v0

    .line 89
    :goto_1
    return-object v3

    .line 90
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 91
    .line 92
    iget v7, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;->label:I

    .line 93
    .line 94
    if-eqz v7, :cond_5

    .line 95
    .line 96
    if-ne v7, v5, :cond_4

    .line 97
    .line 98
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 110
    .line 111
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->editSummaryDao()Lorg/wikipedia/edit/db/EditSummaryDao_Impl;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iput v5, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler$2;->label:I

    .line 120
    .line 121
    iget-object v3, p1, Lorg/wikipedia/edit/db/EditSummaryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 122
    .line 123
    new-instance v4, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 124
    .line 125
    const/4 v7, 0x5

    .line 126
    invoke-direct {v4, v7, p1}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v3, v5, v1, v4, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-ne p1, v0, :cond_6

    .line 134
    .line 135
    move-object v3, v0

    .line 136
    goto :goto_3

    .line 137
    :cond_6
    :goto_2
    check-cast p1, Ljava/util/List;

    .line 138
    .line 139
    new-instance p0, Landroid/widget/ArrayAdapter;

    .line 140
    .line 141
    iget-object v0, v2, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v0, Landroid/view/View;

    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const v1, 0x1090003

    .line 150
    .line 151
    .line 152
    invoke-direct {p0, v0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, v2, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p1, Landroid/widget/AutoCompleteTextView;

    .line 158
    .line 159
    invoke-virtual {p1, p0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    .line 161
    .line 162
    move-object v3, v6

    .line 163
    :goto_3
    return-object v3

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

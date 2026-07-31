.class public final Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;
.super Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final logger:Lnet/thunderbird/core/logging/Logger;

.field public final updateSortCriteria:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0, p2, p1}, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;-><init>(Lnet/thunderbird/core/logging/Logger;Lkotlin/jvm/functions/Function2;)V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 8
    .line 9
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;->updateSortCriteria:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;Lnet/thunderbird/core/logging/Logger;Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;->$r8$classId:I

    .line 12
    invoke-direct {p0, p3, p2}, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;-><init>(Lnet/thunderbird/core/logging/Logger;Lkotlin/jvm/functions/Function2;)V

    .line 13
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 14
    iput-object p4, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;->updateSortCriteria:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    .line 7
    .line 8
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 9
    .line 10
    check-cast p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object p0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$LoadConfigurations;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$LoadConfigurations;

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :pswitch_0
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    .line 29
    .line 30
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 31
    .line 32
    check-cast p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    instance-of p0, p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$ChangeSortCriteria;

    .line 44
    .line 45
    if-eqz p0, :cond_0

    .line 46
    .line 47
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_0

    .line 52
    .line 53
    const/4 p0, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p0, 0x0

    .line 56
    :goto_0
    return p0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic consume(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/MutatorMutex$mutate$2;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 259
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    check-cast p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;->consume(Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 260
    :pswitch_0
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    check-cast p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    check-cast p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;->consume(Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final consume(Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget p1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;->$r8$classId:I

    .line 2
    .line 3
    sget-object v0, Lnet/thunderbird/core/common/state/sideeffect/StateSideEffectHandler$ConsumeResult$Consumed;->INSTANCE:Lnet/thunderbird/core/common/state/sideeffect/StateSideEffectHandler$ConsumeResult$Consumed;

    .line 4
    .line 5
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;->updateSortCriteria:Ljava/lang/Object;

    .line 6
    .line 7
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 10
    .line 11
    const/high16 v4, -0x80000000

    .line 12
    .line 13
    const/4 v5, 0x2

    .line 14
    iget-object v6, p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 15
    .line 16
    const/4 v7, 0x1

    .line 17
    const/4 v8, 0x0

    .line 18
    packed-switch p1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    instance-of p1, p4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadSortCriteriaStateSideEffectHandler$consume$1;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    move-object p1, p4

    .line 26
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadSortCriteriaStateSideEffectHandler$consume$1;

    .line 27
    .line 28
    iget v9, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadSortCriteriaStateSideEffectHandler$consume$1;->label:I

    .line 29
    .line 30
    and-int v10, v9, v4

    .line 31
    .line 32
    if-eqz v10, :cond_0

    .line 33
    .line 34
    sub-int/2addr v9, v4

    .line 35
    iput v9, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadSortCriteriaStateSideEffectHandler$consume$1;->label:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadSortCriteriaStateSideEffectHandler$consume$1;

    .line 39
    .line 40
    check-cast p4, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 41
    .line 42
    invoke-direct {p1, p0, p4}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadSortCriteriaStateSideEffectHandler$consume$1;-><init>(Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object p4, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadSortCriteriaStateSideEffectHandler$consume$1;->result:Ljava/lang/Object;

    .line 46
    .line 47
    iget v4, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadSortCriteriaStateSideEffectHandler$consume$1;->label:I

    .line 48
    .line 49
    const-string v9, "LoadSortCriteriaStateSideEffectHandler"

    .line 50
    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    if-eq v4, v7, :cond_2

    .line 54
    .line 55
    if-ne v4, v5, :cond_1

    .line 56
    .line 57
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_1
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    move-object v0, v8

    .line 65
    goto :goto_3

    .line 66
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    new-instance p4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    const/4 v2, 0x3

    .line 76
    invoke-direct {p4, p2, p3, v2}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;I)V

    .line 77
    .line 78
    .line 79
    invoke-static {v6, v9, v8, p4, v5}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 80
    .line 81
    .line 82
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;

    .line 83
    .line 84
    iput v7, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadSortCriteriaStateSideEffectHandler$consume$1;->label:I

    .line 85
    .line 86
    invoke-virtual {v1, p1}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/GetSortCriteriaPerAccount;->invoke(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 87
    .line 88
    .line 89
    move-result-object p4

    .line 90
    if-ne p4, v3, :cond_4

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    :goto_1
    check-cast p4, Ljava/util/Map;

    .line 94
    .line 95
    new-instance p2, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    const/16 p3, 0xd

    .line 98
    .line 99
    invoke-direct {p2, p3, p4}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v6, v9, v8, p2, v5}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 103
    .line 104
    .line 105
    new-instance p2, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$SortCriteriaLoaded;

    .line 106
    .line 107
    invoke-direct {p2, p4}, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$SortCriteriaLoaded;-><init>(Ljava/util/Map;)V

    .line 108
    .line 109
    .line 110
    iput v5, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadSortCriteriaStateSideEffectHandler$consume$1;->label:I

    .line 111
    .line 112
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/sideeffect/MessageListStateSideEffectHandler;->dispatch:Lkotlin/jvm/functions/Function2;

    .line 113
    .line 114
    invoke-interface {p0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    if-ne p0, v3, :cond_5

    .line 119
    .line 120
    :goto_2
    move-object v0, v3

    .line 121
    :cond_5
    :goto_3
    return-object v0

    .line 122
    :pswitch_0
    instance-of p1, p4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect$consume$1;

    .line 123
    .line 124
    if-eqz p1, :cond_6

    .line 125
    .line 126
    move-object p1, p4

    .line 127
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect$consume$1;

    .line 128
    .line 129
    iget v9, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect$consume$1;->label:I

    .line 130
    .line 131
    and-int v10, v9, v4

    .line 132
    .line 133
    if-eqz v10, :cond_6

    .line 134
    .line 135
    sub-int/2addr v9, v4

    .line 136
    iput v9, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect$consume$1;->label:I

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_6
    new-instance p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect$consume$1;

    .line 140
    .line 141
    check-cast p4, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 142
    .line 143
    invoke-direct {p1, p0, p4}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect$consume$1;-><init>(Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 144
    .line 145
    .line 146
    :goto_4
    iget-object p0, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect$consume$1;->result:Ljava/lang/Object;

    .line 147
    .line 148
    iget p4, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect$consume$1;->label:I

    .line 149
    .line 150
    if-eqz p4, :cond_8

    .line 151
    .line 152
    if-ne p4, v7, :cond_7

    .line 153
    .line 154
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_7
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :goto_5
    move-object v0, v8

    .line 162
    goto :goto_8

    .line 163
    :cond_8
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    new-instance p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$$ExternalSyntheticLambda0;

    .line 167
    .line 168
    invoke-direct {p0, p2, p3, v7}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/LoadPreferencesSideEffect$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;I)V

    .line 169
    .line 170
    .line 171
    const-string p4, "ChangeSortCriteriaSideEffect"

    .line 172
    .line 173
    invoke-static {v6, p4, v8, p0, v5}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 174
    .line 175
    .line 176
    invoke-interface {p2}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->folder:Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 181
    .line 182
    if-nez p0, :cond_9

    .line 183
    .line 184
    invoke-interface {p3}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->folder:Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 189
    .line 190
    :cond_9
    if-eqz p0, :cond_a

    .line 191
    .line 192
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 193
    .line 194
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/Account;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 195
    .line 196
    goto :goto_6

    .line 197
    :cond_a
    move-object p0, v8

    .line 198
    :goto_6
    invoke-interface {p2}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    iget-object p2, p2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->sortCriteriaPerAccount:Lkotlinx/collections/immutable/PersistentMap;

    .line 203
    .line 204
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    check-cast p2, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;

    .line 209
    .line 210
    invoke-interface {p3}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;->getMetadata()Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 211
    .line 212
    .line 213
    move-result-object p3

    .line 214
    iget-object p3, p3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->sortCriteriaPerAccount:Lkotlinx/collections/immutable/PersistentMap;

    .line 215
    .line 216
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p3

    .line 220
    if-eqz p3, :cond_c

    .line 221
    .line 222
    check-cast p3, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;

    .line 223
    .line 224
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    if-nez p2, :cond_d

    .line 229
    .line 230
    check-cast v1, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;

    .line 231
    .line 232
    iput v7, p1, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/sideeffect/ChangeSortCriteriaSideEffect$consume$1;->label:I

    .line 233
    .line 234
    if-nez p0, :cond_b

    .line 235
    .line 236
    invoke-virtual {v1, p3, p1}, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;->updateUnifiedAccountSortCriteria(Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    goto :goto_7

    .line 241
    :cond_b
    invoke-virtual {v1, p0, p3, p1}, Lnet/thunderbird/app/common/feature/mail/message/list/LegacyUpdateSortCriteria;->updateAccountSortCriteria(Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    :goto_7
    if-ne p0, v3, :cond_d

    .line 246
    .line 247
    move-object v0, v3

    .line 248
    goto :goto_8

    .line 249
    :cond_c
    const-string p1, "The new sort criteria for account "

    .line 250
    .line 251
    const-string p2, " must not be null"

    .line 252
    .line 253
    invoke-static {p0, p2, p1}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_d
    :goto_8
    return-object v0

    .line 258
    nop

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

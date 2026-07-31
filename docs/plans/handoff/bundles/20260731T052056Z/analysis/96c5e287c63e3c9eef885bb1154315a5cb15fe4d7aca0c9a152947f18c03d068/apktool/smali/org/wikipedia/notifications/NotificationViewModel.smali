.class public final Lorg/wikipedia/notifications/NotificationViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public allUnreadCount:I

.field public currentContinueStr:Ljava/lang/String;

.field public currentSearchQuery:Ljava/lang/String;

.field public dbNameMap:Ljava/util/Map;

.field public final handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

.field public mentionsUnreadCount:I

.field public final notificationList:Ljava/util/ArrayList;

.field public final notificationRepository:Lorg/wikipedia/media/AvPlayer;

.field public selectedFilterTab:I

.field public final uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/media/AvPlayer;

    .line 5
    .line 6
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 7
    .line 8
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->notificationDao()Lorg/wikipedia/notifications/db/NotificationDao_Impl;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Lorg/wikipedia/media/AvPlayer;-><init>(Lorg/wikipedia/notifications/db/NotificationDao_Impl;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lorg/wikipedia/notifications/NotificationViewModel;->notificationRepository:Lorg/wikipedia/media/AvPlayer;

    .line 20
    .line 21
    new-instance v0, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/notifications/NotificationViewModel;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lorg/wikipedia/notifications/NotificationViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 27
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lorg/wikipedia/notifications/NotificationViewModel;->notificationList:Ljava/util/ArrayList;

    .line 34
    .line 35
    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 36
    .line 37
    iput-object v1, p0, Lorg/wikipedia/notifications/NotificationViewModel;->dbNameMap:Ljava/util/Map;

    .line 38
    .line 39
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lorg/wikipedia/notifications/NotificationViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 44
    .line 45
    new-instance v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 46
    .line 47
    invoke-direct {v2, v1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Lorg/wikipedia/notifications/NotificationViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 51
    .line 52
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Lorg/wikipedia/notifications/NotificationViewModel$1;

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-direct {v2, p0, v3, v4}, Lorg/wikipedia/notifications/NotificationViewModel$1;-><init>(Lorg/wikipedia/notifications/NotificationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 61
    .line 62
    .line 63
    const/4 v5, 0x2

    .line 64
    invoke-static {v1, v0, v3, v2, v5}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v4}, Lorg/wikipedia/notifications/NotificationViewModel;->fetchAndSave(Z)V

    .line 68
    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final excludedFiltersCount()I
    .locals 6

    .line 1
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationExcludedWikiCodes()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationExcludedTypeCodes()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget v1, Lorg/wikipedia/notifications/NotificationFilterActivity;->$r8$clinit:I

    .line 12
    .line 13
    invoke-static {}, Lokhttp3/HttpUrl$Companion;->allWikisList()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    move v2, v4

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move v2, v4

    .line 32
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_3

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {p0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    if-ltz v2, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-static {}, Landroidx/room/Room;->throwCountOverflow()V

    .line 56
    .line 57
    .line 58
    throw v3

    .line 59
    :cond_3
    :goto_1
    sget p0, Lorg/wikipedia/notifications/NotificationFilterActivity;->$r8$clinit:I

    .line 60
    .line 61
    invoke-static {}, Lokhttp3/HttpUrl$Companion;->allTypesIdList()Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_7

    .line 81
    .line 82
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Ljava/lang/String;

    .line 87
    .line 88
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_5

    .line 93
    .line 94
    add-int/lit8 v4, v4, 0x1

    .line 95
    .line 96
    if-ltz v4, :cond_6

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_6
    invoke-static {}, Landroidx/room/Room;->throwCountOverflow()V

    .line 100
    .line 101
    .line 102
    throw v3

    .line 103
    :cond_7
    :goto_3
    add-int/2addr v2, v4

    .line 104
    return v2
.end method

.method public final fetchAndSave(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iput-object v0, p0, Lorg/wikipedia/notifications/NotificationViewModel;->currentContinueStr:Ljava/lang/String;

    .line 5
    .line 6
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationViewModel;->notificationList:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Lorg/wikipedia/notifications/NotificationViewModel$1;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, p0, v0, v2}, Lorg/wikipedia/notifications/NotificationViewModel$1;-><init>(Lorg/wikipedia/notifications/NotificationViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationViewModel;->handler:Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 23
    .line 24
    invoke-static {p1, p0, v0, v1, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final filterAndPostNotifications(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 14

    .line 1
    instance-of v0, p1, Lorg/wikipedia/notifications/NotificationViewModel$filterAndPostNotifications$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/notifications/NotificationViewModel$filterAndPostNotifications$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/notifications/NotificationViewModel$filterAndPostNotifications$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/wikipedia/notifications/NotificationViewModel$filterAndPostNotifications$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/notifications/NotificationViewModel$filterAndPostNotifications$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/notifications/NotificationViewModel$filterAndPostNotifications$1;-><init>(Lorg/wikipedia/notifications/NotificationViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lorg/wikipedia/notifications/NotificationViewModel$filterAndPostNotifications$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/notifications/NotificationViewModel$filterAndPostNotifications$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v5, :cond_1

    .line 37
    .line 38
    iget-object v0, v0, Lorg/wikipedia/notifications/NotificationViewModel$filterAndPostNotifications$1;->L$0:Lorg/wikipedia/notifications/NotificationViewModel;

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v3

    .line 50
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput-object p0, v0, Lorg/wikipedia/notifications/NotificationViewModel$filterAndPostNotifications$1;->L$0:Lorg/wikipedia/notifications/NotificationViewModel;

    .line 54
    .line 55
    iput v5, v0, Lorg/wikipedia/notifications/NotificationViewModel$filterAndPostNotifications$1;->label:I

    .line 56
    .line 57
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationViewModel;->notificationRepository:Lorg/wikipedia/media/AvPlayer;

    .line 58
    .line 59
    iget-object p1, p1, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lorg/wikipedia/notifications/db/NotificationDao_Impl;

    .line 62
    .line 63
    iget-object v2, p1, Lorg/wikipedia/notifications/db/NotificationDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 64
    .line 65
    new-instance v6, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 66
    .line 67
    const/16 v7, 0x13

    .line 68
    .line 69
    invoke-direct {v6, v7, p1}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v2, v5, v4, v6, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-ne p1, v1, :cond_3

    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_3
    move-object v0, p0

    .line 80
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 81
    .line 82
    iget-object v1, v0, Lorg/wikipedia/notifications/NotificationViewModel;->notificationList:Ljava/util/ArrayList;

    .line 83
    .line 84
    iget-object v2, v0, Lorg/wikipedia/notifications/NotificationViewModel;->currentContinueStr:Ljava/lang/String;

    .line 85
    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_5

    .line 93
    .line 94
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 95
    .line 96
    .line 97
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_9

    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Lorg/wikipedia/notifications/db/Notification;

    .line 112
    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-eqz v6, :cond_6

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v7, :cond_8

    .line 131
    .line 132
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    check-cast v7, Lorg/wikipedia/notifications/db/Notification;

    .line 137
    .line 138
    iget-wide v8, v7, Lorg/wikipedia/notifications/db/Notification;->id:J

    .line 139
    .line 140
    iget-wide v10, v2, Lorg/wikipedia/notifications/db/Notification;->id:J

    .line 141
    .line 142
    cmp-long v8, v8, v10

    .line 143
    .line 144
    if-nez v8, :cond_7

    .line 145
    .line 146
    iget-object v7, v7, Lorg/wikipedia/notifications/db/Notification;->wiki:Ljava/lang/String;

    .line 147
    .line 148
    iget-object v8, v2, Lorg/wikipedia/notifications/db/Notification;->wiki:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-eqz v7, :cond_7

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_8
    :goto_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-le p1, v5, :cond_a

    .line 166
    .line 167
    new-instance p1, Lorg/wikipedia/notifications/NotificationViewModel$processList$$inlined$sortByDescending$1;

    .line 168
    .line 169
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 173
    .line 174
    .line 175
    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    :cond_b
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_d

    .line 189
    .line 190
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    move-object v6, v2

    .line 195
    check-cast v6, Lorg/wikipedia/notifications/db/Notification;

    .line 196
    .line 197
    sget-object v7, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 198
    .line 199
    new-array v7, v4, [Ljava/lang/Object;

    .line 200
    .line 201
    sget-object v8, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 202
    .line 203
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    const v9, 0x7f12062f

    .line 212
    .line 213
    .line 214
    invoke-static {v7, v4, v8, v9}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    invoke-static {v8, v4, v7, v4}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    if-eqz v7, :cond_c

    .line 227
    .line 228
    invoke-virtual {v6}, Lorg/wikipedia/notifications/db/Notification;->isUnread()Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    goto :goto_5

    .line 233
    :cond_c
    move v6, v5

    .line 234
    :goto_5
    if-eqz v6, :cond_b

    .line 235
    .line 236
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_d
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 241
    .line 242
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationExcludedTypeCodes()Ljava/util/Set;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getNotificationExcludedWikiCodes()Ljava/util/Set;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    sget v6, Lorg/wikipedia/notifications/NotificationFilterActivity;->$r8$clinit:I

    .line 251
    .line 252
    invoke-static {}, Lokhttp3/HttpUrl$Companion;->allWikisList()Ljava/util/ArrayList;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    check-cast v2, Ljava/lang/Iterable;

    .line 257
    .line 258
    invoke-static {v6, v2}, Lkotlin/collections/CollectionsKt;->minus(Ljava/util/List;Ljava/lang/Iterable;)Ljava/util/List;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    new-instance v6, Ljava/util/ArrayList;

    .line 263
    .line 264
    const/16 v7, 0xa

    .line 265
    .line 266
    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 271
    .line 272
    .line 273
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    if-eqz v7, :cond_e

    .line 282
    .line 283
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    check-cast v7, Ljava/lang/String;

    .line 288
    .line 289
    const-string v8, "-"

    .line 290
    .line 291
    filled-new-array {v8}, [Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    invoke-static {v7, v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    check-cast v7, Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_e
    sget v2, Lorg/wikipedia/notifications/NotificationFilterActivity;->$r8$clinit:I

    .line 310
    .line 311
    invoke-static {}, Lokhttp3/HttpUrl$Companion;->allWikisList()Ljava/util/ArrayList;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 320
    .line 321
    .line 322
    move-result v7

    .line 323
    if-eq v2, v7, :cond_f

    .line 324
    .line 325
    move v2, v5

    .line 326
    goto :goto_7

    .line 327
    :cond_f
    move v2, v4

    .line 328
    :goto_7
    new-instance v7, Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .line 332
    .line 333
    iput v4, v0, Lorg/wikipedia/notifications/NotificationViewModel;->allUnreadCount:I

    .line 334
    .line 335
    iput v4, v0, Lorg/wikipedia/notifications/NotificationViewModel;->mentionsUnreadCount:I

    .line 336
    .line 337
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    :cond_10
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 342
    .line 343
    .line 344
    move-result v8

    .line 345
    if-eqz v8, :cond_20

    .line 346
    .line 347
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v8

    .line 351
    check-cast v8, Lorg/wikipedia/notifications/db/Notification;

    .line 352
    .line 353
    iget-object v9, v8, Lorg/wikipedia/notifications/db/Notification;->contents:Lorg/wikipedia/notifications/db/Notification$Contents;

    .line 354
    .line 355
    iget-object v10, v8, Lorg/wikipedia/notifications/db/Notification;->category:Ljava/lang/String;

    .line 356
    .line 357
    if-eqz v9, :cond_11

    .line 358
    .line 359
    iget-object v11, v9, Lorg/wikipedia/notifications/db/Notification$Contents;->links:Lorg/wikipedia/notifications/db/Notification$Links;

    .line 360
    .line 361
    if-eqz v11, :cond_11

    .line 362
    .line 363
    iget-object v11, v11, Lorg/wikipedia/notifications/db/Notification$Links;->secondary:Ljava/util/List;

    .line 364
    .line 365
    if-eqz v11, :cond_11

    .line 366
    .line 367
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v11

    .line 371
    check-cast v11, Lorg/wikipedia/notifications/db/Notification$Link;

    .line 372
    .line 373
    if-eqz v11, :cond_11

    .line 374
    .line 375
    iget-object v11, v11, Lorg/wikipedia/notifications/db/Notification$Link;->label:Ljava/lang/String;

    .line 376
    .line 377
    goto :goto_9

    .line 378
    :cond_11
    move-object v11, v3

    .line 379
    :goto_9
    iget-object v12, v0, Lorg/wikipedia/notifications/NotificationViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 380
    .line 381
    if-eqz v12, :cond_16

    .line 382
    .line 383
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 384
    .line 385
    .line 386
    move-result v13

    .line 387
    if-nez v13, :cond_12

    .line 388
    .line 389
    goto :goto_a

    .line 390
    :cond_12
    iget-object v13, v8, Lorg/wikipedia/notifications/db/Notification;->title:Lorg/wikipedia/notifications/db/Notification$Title;

    .line 391
    .line 392
    if-eqz v13, :cond_13

    .line 393
    .line 394
    iget-object v13, v13, Lorg/wikipedia/notifications/db/Notification$Title;->full:Ljava/lang/String;

    .line 395
    .line 396
    if-eqz v13, :cond_13

    .line 397
    .line 398
    invoke-static {v13, v12, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 399
    .line 400
    .line 401
    move-result v13

    .line 402
    if-ne v13, v5, :cond_13

    .line 403
    .line 404
    goto :goto_a

    .line 405
    :cond_13
    if-eqz v9, :cond_14

    .line 406
    .line 407
    iget-object v13, v9, Lorg/wikipedia/notifications/db/Notification$Contents;->header:Ljava/lang/String;

    .line 408
    .line 409
    if-eqz v13, :cond_14

    .line 410
    .line 411
    invoke-static {v13, v12, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 412
    .line 413
    .line 414
    move-result v13

    .line 415
    if-ne v13, v5, :cond_14

    .line 416
    .line 417
    goto :goto_a

    .line 418
    :cond_14
    if-eqz v9, :cond_15

    .line 419
    .line 420
    iget-object v9, v9, Lorg/wikipedia/notifications/db/Notification$Contents;->body:Ljava/lang/String;

    .line 421
    .line 422
    if-eqz v9, :cond_15

    .line 423
    .line 424
    invoke-static {v9, v12, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 425
    .line 426
    .line 427
    move-result v9

    .line 428
    if-ne v9, v5, :cond_15

    .line 429
    .line 430
    goto :goto_a

    .line 431
    :cond_15
    if-eqz v11, :cond_10

    .line 432
    .line 433
    invoke-static {v11, v12, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 434
    .line 435
    .line 436
    move-result v9

    .line 437
    if-ne v9, v5, :cond_10

    .line 438
    .line 439
    :cond_16
    :goto_a
    move-object v9, v1

    .line 440
    check-cast v9, Ljava/lang/Iterable;

    .line 441
    .line 442
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 443
    .line 444
    .line 445
    move-result-object v9

    .line 446
    :cond_17
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 447
    .line 448
    .line 449
    move-result v11

    .line 450
    if-eqz v11, :cond_18

    .line 451
    .line 452
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v11

    .line 456
    move-object v12, v11

    .line 457
    check-cast v12, Ljava/lang/String;

    .line 458
    .line 459
    invoke-static {v10, v12, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 460
    .line 461
    .line 462
    move-result v12

    .line 463
    if-eqz v12, :cond_17

    .line 464
    .line 465
    goto :goto_b

    .line 466
    :cond_18
    move-object v11, v3

    .line 467
    :goto_b
    if-eqz v11, :cond_19

    .line 468
    .line 469
    goto/16 :goto_8

    .line 470
    .line 471
    :cond_19
    if-eqz v2, :cond_1a

    .line 472
    .line 473
    sget-object v9, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 474
    .line 475
    iget-object v9, v8, Lorg/wikipedia/notifications/db/Notification;->wiki:Ljava/lang/String;

    .line 476
    .line 477
    invoke-static {v9}, Lorg/wikipedia/util/StringUtil;->dbNameToLangCode(Ljava/lang/String;)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v9

    .line 481
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v9

    .line 485
    if-nez v9, :cond_1a

    .line 486
    .line 487
    goto/16 :goto_8

    .line 488
    .line 489
    :cond_1a
    sget-object v9, Lorg/wikipedia/notifications/NotificationCategory;->Companion:Lorg/wikipedia/notifications/NotificationCategory$Companion;

    .line 490
    .line 491
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    .line 496
    .line 497
    invoke-static {}, Lorg/wikipedia/notifications/NotificationCategory;->access$getMENTIONS_GROUP$cp()Ljava/util/List;

    .line 498
    .line 499
    .line 500
    move-result-object v9

    .line 501
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 502
    .line 503
    .line 504
    move-result-object v9

    .line 505
    :cond_1b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 506
    .line 507
    .line 508
    move-result v11

    .line 509
    if-eqz v11, :cond_1c

    .line 510
    .line 511
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v11

    .line 515
    move-object v12, v11

    .line 516
    check-cast v12, Lorg/wikipedia/notifications/NotificationCategory;

    .line 517
    .line 518
    invoke-virtual {v12}, Lorg/wikipedia/notifications/NotificationCategory;->getId()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v12

    .line 522
    invoke-static {v10, v12, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 523
    .line 524
    .line 525
    move-result v12

    .line 526
    if-eqz v12, :cond_1b

    .line 527
    .line 528
    goto :goto_c

    .line 529
    :cond_1c
    move-object v11, v3

    .line 530
    :goto_c
    if-eqz v11, :cond_1d

    .line 531
    .line 532
    move v9, v5

    .line 533
    goto :goto_d

    .line 534
    :cond_1d
    move v9, v4

    .line 535
    :goto_d
    invoke-virtual {v8}, Lorg/wikipedia/notifications/db/Notification;->isUnread()Z

    .line 536
    .line 537
    .line 538
    move-result v10

    .line 539
    if-eqz v10, :cond_1e

    .line 540
    .line 541
    iget v10, v0, Lorg/wikipedia/notifications/NotificationViewModel;->allUnreadCount:I

    .line 542
    .line 543
    add-int/2addr v10, v5

    .line 544
    iput v10, v0, Lorg/wikipedia/notifications/NotificationViewModel;->allUnreadCount:I

    .line 545
    .line 546
    if-eqz v9, :cond_1e

    .line 547
    .line 548
    iget v10, v0, Lorg/wikipedia/notifications/NotificationViewModel;->mentionsUnreadCount:I

    .line 549
    .line 550
    add-int/2addr v10, v5

    .line 551
    iput v10, v0, Lorg/wikipedia/notifications/NotificationViewModel;->mentionsUnreadCount:I

    .line 552
    .line 553
    :cond_1e
    iget v10, v0, Lorg/wikipedia/notifications/NotificationViewModel;->selectedFilterTab:I

    .line 554
    .line 555
    if-ne v10, v5, :cond_1f

    .line 556
    .line 557
    if-nez v9, :cond_1f

    .line 558
    .line 559
    goto/16 :goto_8

    .line 560
    .line 561
    :cond_1f
    new-instance v9, Lorg/wikipedia/notifications/NotificationListItemContainer;

    .line 562
    .line 563
    const/4 v10, 0x6

    .line 564
    invoke-direct {v9, v8, v10}, Lorg/wikipedia/notifications/NotificationListItemContainer;-><init>(Lorg/wikipedia/notifications/db/Notification;I)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    goto/16 :goto_8

    .line 571
    .line 572
    :cond_20
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationViewModel;->currentContinueStr:Ljava/lang/String;

    .line 573
    .line 574
    if-eqz p1, :cond_21

    .line 575
    .line 576
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 577
    .line 578
    .line 579
    move-result p1

    .line 580
    if-nez p1, :cond_22

    .line 581
    .line 582
    :cond_21
    move v4, v5

    .line 583
    :cond_22
    xor-int/lit8 p1, v4, 0x1

    .line 584
    .line 585
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 586
    .line 587
    .line 588
    move-result-object p1

    .line 589
    new-instance v0, Lkotlin/Pair;

    .line 590
    .line 591
    invoke-direct {v0, v7, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 592
    .line 593
    .line 594
    new-instance p1, Lorg/wikipedia/util/Resource$Success;

    .line 595
    .line 596
    invoke-direct {p1, v0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 597
    .line 598
    .line 599
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 600
    .line 601
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 602
    .line 603
    .line 604
    invoke-virtual {p0, v3, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 608
    .line 609
    return-object p0
.end method

.class public final synthetic Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final invoke$androidx$work$impl$constraints$controllers$BaseConstraintController$track$1$$ExternalSyntheticLambda0()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    .line 4
    .line 5
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/work/impl/constraints/controllers/BaseConstraintController;->tracker:Lorg/commonmark/node/Node;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lorg/commonmark/node/Node;->lastChild:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v2, v0, Lorg/commonmark/node/Node;->prev:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Ljava/util/LinkedHashSet;

    .line 20
    .line 21
    invoke-virtual {v2, p0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    iget-object p0, v0, Lorg/commonmark/node/Node;->prev:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Ljava/util/LinkedHashSet;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Lorg/commonmark/node/Node;->stopTracking()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    monitor-exit v1

    .line 44
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0

    .line 47
    :goto_1
    monitor-exit v1

    .line 48
    throw p0
.end method

.method private final invoke$okhttp3$internal$http2$Http2Connection$ReaderRunnable$$ExternalSyntheticLambda2()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 4
    .line 5
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lokhttp3/internal/http2/Settings;

    .line 8
    .line 9
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lokhttp3/internal/http2/Http2Connection;

    .line 17
    .line 18
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    .line 19
    .line 20
    monitor-enter v2

    .line 21
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    .line 23
    .line 24
    new-instance v4, Lokhttp3/internal/http2/Settings;

    .line 25
    .line 26
    invoke-direct {v4}, Lokhttp3/internal/http2/Settings;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    move v6, v5

    .line 34
    :goto_0
    const/16 v7, 0xa

    .line 35
    .line 36
    const/4 v8, 0x1

    .line 37
    if-ge v6, v7, :cond_1

    .line 38
    .line 39
    shl-int v7, v8, v6

    .line 40
    .line 41
    iget v8, v3, Lokhttp3/internal/http2/Settings;->set:I

    .line 42
    .line 43
    and-int/2addr v7, v8

    .line 44
    if-eqz v7, :cond_0

    .line 45
    .line 46
    iget-object v7, v3, Lokhttp3/internal/http2/Settings;->values:[I

    .line 47
    .line 48
    aget v7, v7, v6

    .line 49
    .line 50
    invoke-virtual {v4, v6, v7}, Lokhttp3/internal/http2/Settings;->set(II)V

    .line 51
    .line 52
    .line 53
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v6, v5

    .line 57
    :goto_1
    if-ge v6, v7, :cond_3

    .line 58
    .line 59
    shl-int v9, v8, v6

    .line 60
    .line 61
    iget v10, p0, Lokhttp3/internal/http2/Settings;->set:I

    .line 62
    .line 63
    and-int/2addr v9, v10

    .line 64
    if-eqz v9, :cond_2

    .line 65
    .line 66
    iget-object v9, p0, Lokhttp3/internal/http2/Settings;->values:[I

    .line 67
    .line 68
    aget v9, v9, v6

    .line 69
    .line 70
    invoke-virtual {v4, v6, v9}, Lokhttp3/internal/http2/Settings;->set(II)V

    .line 71
    .line 72
    .line 73
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    iput-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 77
    .line 78
    invoke-virtual {v4}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    int-to-long v6, p0

    .line 83
    invoke-virtual {v3}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    int-to-long v3, p0

    .line 88
    sub-long/2addr v6, v3

    .line 89
    const-wide/16 v3, 0x0

    .line 90
    .line 91
    cmp-long p0, v6, v3

    .line 92
    .line 93
    if-eqz p0, :cond_5

    .line 94
    .line 95
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/LinkedHashMap;

    .line 96
    .line 97
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_4

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/LinkedHashMap;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    new-array v4, v5, [Lokhttp3/internal/http2/Http2Stream;

    .line 111
    .line 112
    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, [Lokhttp3/internal/http2/Http2Stream;

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    goto :goto_6

    .line 121
    :cond_5
    :goto_2
    const/4 v3, 0x0

    .line 122
    :goto_3
    iget-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v4, Lokhttp3/internal/http2/Settings;

    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    iput-object v4, v0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    .line 130
    .line 131
    iget-object v4, v0, Lokhttp3/internal/http2/Http2Connection;->settingsListenerQueue:Lokhttp3/internal/concurrent/TaskQueue;

    .line 132
    .line 133
    new-instance v8, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    iget-object v9, v0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v9, " onSettings"

    .line 144
    .line 145
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    new-instance v9, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;

    .line 153
    .line 154
    const/16 v10, 0x17

    .line 155
    .line 156
    invoke-direct {v9, v0, v1, v10}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 157
    .line 158
    .line 159
    invoke-static {v4, v8, v9}, Lokhttp3/internal/concurrent/TaskQueue;->execute$default(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .line 161
    .line 162
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    :try_start_3
    iget-object v4, v0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    .line 164
    .line 165
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v1, Lokhttp3/internal/http2/Settings;

    .line 168
    .line 169
    invoke-virtual {v4, v1}, Lokhttp3/internal/http2/Http2Writer;->applyAndAckSettings(Lokhttp3/internal/http2/Settings;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :catchall_1
    move-exception p0

    .line 174
    goto :goto_7

    .line 175
    :catch_0
    move-exception v1

    .line 176
    :try_start_4
    sget-object v4, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 177
    .line 178
    invoke-virtual {v0, v4, v4, v1}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 179
    .line 180
    .line 181
    :goto_4
    monitor-exit v2

    .line 182
    if-eqz v3, :cond_7

    .line 183
    .line 184
    array-length v0, v3

    .line 185
    :goto_5
    if-ge v5, v0, :cond_7

    .line 186
    .line 187
    aget-object v1, v3, v5

    .line 188
    .line 189
    monitor-enter v1

    .line 190
    :try_start_5
    iget-wide v8, v1, Lokhttp3/internal/http2/Http2Stream;->writeBytesMaximum:J

    .line 191
    .line 192
    add-long/2addr v8, v6

    .line 193
    iput-wide v8, v1, Lokhttp3/internal/http2/Http2Stream;->writeBytesMaximum:J

    .line 194
    .line 195
    if-lez p0, :cond_6

    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 198
    .line 199
    .line 200
    :cond_6
    monitor-exit v1

    .line 201
    add-int/lit8 v5, v5, 0x1

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :catchall_2
    move-exception p0

    .line 205
    monitor-exit v1

    .line 206
    throw p0

    .line 207
    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 208
    .line 209
    return-object p0

    .line 210
    :goto_6
    :try_start_6
    monitor-exit v0

    .line 211
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 212
    :goto_7
    monitor-exit v2

    .line 213
    throw p0
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0xf

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lorg/koin/core/instance/ScopedInstanceFactory;

    .line 18
    .line 19
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 22
    .line 23
    iget-object v2, v1, Lorg/koin/core/instance/ScopedInstanceFactory;->values:Lj$/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    iget-object v0, v0, Lorg/koin/core/scope/Scope;->id:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-object v0, v1, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    .line 31
    .line 32
    iget-object v0, v0, Lorg/koin/core/definition/BeanDefinition;->callbacks:Lorg/koin/core/definition/Callbacks;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    return-object v7

    .line 38
    :pswitch_0
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Lokhttp3/internal/http2/Http2Connection;

    .line 41
    .line 42
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 45
    .line 46
    iget-object v2, v1, Lokhttp3/internal/http2/Http2Connection;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 47
    .line 48
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lokhttp3/internal/http2/Settings;

    .line 51
    .line 52
    invoke-virtual {v2, v1, v0}, Lokhttp3/internal/http2/Http2Connection$Listener;->onSettings(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Settings;)V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 56
    .line 57
    return-object v0

    .line 58
    :pswitch_1
    invoke-direct {v0}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->invoke$okhttp3$internal$http2$Http2Connection$ReaderRunnable$$ExternalSyntheticLambda2()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0

    .line 63
    :pswitch_2
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Lokhttp3/internal/http2/Http2Connection;

    .line 66
    .line 67
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 68
    .line 69
    move-object v2, v0

    .line 70
    check-cast v2, Lokhttp3/internal/http2/Http2Stream;

    .line 71
    .line 72
    :try_start_0
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Connection;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Lokhttp3/internal/http2/Http2Connection$Listener;->onStream(Lokhttp3/internal/http2/Http2Stream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    sget-object v4, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 80
    .line 81
    sget-object v4, Lokhttp3/internal/platform/Platform;->platform:Lokhttp3/internal/platform/Platform;

    .line 82
    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v6, "Http2Connection.Listener failure for "

    .line 86
    .line 87
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v4, v1, v0, v3}, Lokhttp3/internal/platform/Platform;->log(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 100
    .line 101
    .line 102
    :try_start_1
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 103
    .line 104
    invoke-virtual {v2, v1, v0}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .line 106
    .line 107
    :catch_1
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 108
    .line 109
    return-object v0

    .line 110
    :pswitch_3
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 113
    .line 114
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 117
    .line 118
    new-instance v2, Lnet/newpipe/app/model/License;

    .line 119
    .line 120
    const-string v3, "NewPipe"

    .line 121
    .line 122
    const-string v4, "GPL-3.0-or-later"

    .line 123
    .line 124
    const-string v5, "https://newpipe.net/"

    .line 125
    .line 126
    invoke-direct {v2, v3, v4, v5}, Lnet/newpipe/app/model/License;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v1, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 138
    .line 139
    return-object v0

    .line 140
    :pswitch_4
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 143
    .line 144
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v0, Lnet/newpipe/app/model/License;

    .line 147
    .line 148
    iget-object v0, v0, Lnet/newpipe/app/model/License;->website:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 157
    .line 158
    return-object v0

    .line 159
    :pswitch_5
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v1, Lnet/newpipe/app/navigation/Destination;

    .line 162
    .line 163
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 166
    .line 167
    new-array v2, v4, [Ljava/lang/Object;

    .line 168
    .line 169
    aput-object v1, v2, v6

    .line 170
    .line 171
    aput-object v0, v2, v5

    .line 172
    .line 173
    new-instance v0, Lorg/koin/core/parameter/ParametersHolder;

    .line 174
    .line 175
    new-instance v1, Ljava/util/ArrayList;

    .line 176
    .line 177
    new-instance v3, Lkotlin/collections/ArrayAsCollection;

    .line 178
    .line 179
    invoke-direct {v3, v2, v6}, Lkotlin/collections/ArrayAsCollection;-><init>([Ljava/lang/Object;Z)V

    .line 180
    .line 181
    .line 182
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 183
    .line 184
    .line 185
    invoke-direct {v0, v4, v1}, Lorg/koin/core/parameter/ParametersHolder;-><init>(ILjava/util/ArrayList;)V

    .line 186
    .line 187
    .line 188
    return-object v0

    .line 189
    :pswitch_6
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v1, Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 192
    .line 193
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v0, Lkotlinx/serialization/json/Json;

    .line 196
    .line 197
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 198
    .line 199
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 200
    .line 201
    .line 202
    iget-object v3, v0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 203
    .line 204
    invoke-static {v1, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->namingStrategy(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)V

    .line 205
    .line 206
    .line 207
    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    move v3, v6

    .line 212
    :goto_1
    if-ge v3, v0, :cond_6

    .line 213
    .line 214
    invoke-interface {v1, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementAnnotations(I)Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    new-instance v8, Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    :cond_0
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    if-eqz v9, :cond_1

    .line 232
    .line 233
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v9

    .line 237
    instance-of v10, v9, Lkotlinx/serialization/json/JsonNames;

    .line 238
    .line 239
    if-eqz v10, :cond_0

    .line 240
    .line 241
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-ne v4, v5, :cond_2

    .line 250
    .line 251
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    goto :goto_3

    .line 256
    :cond_2
    move-object v4, v7

    .line 257
    :goto_3
    check-cast v4, Lkotlinx/serialization/json/JsonNames;

    .line 258
    .line 259
    if-eqz v4, :cond_5

    .line 260
    .line 261
    invoke-interface {v4}, Lkotlinx/serialization/json/JsonNames;->names()[Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    if-eqz v4, :cond_5

    .line 266
    .line 267
    array-length v8, v4

    .line 268
    move v9, v6

    .line 269
    :goto_4
    if-ge v9, v8, :cond_5

    .line 270
    .line 271
    aget-object v10, v4, v9

    .line 272
    .line 273
    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lorg/jsoup/Jsoup;

    .line 274
    .line 275
    .line 276
    move-result-object v11

    .line 277
    sget-object v12, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    .line 278
    .line 279
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v11

    .line 283
    if-eqz v11, :cond_3

    .line 284
    .line 285
    const-string v11, "enum value"

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_3
    const-string v11, "property"

    .line 289
    .line 290
    :goto_5
    invoke-interface {v2, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v12

    .line 294
    if-nez v12, :cond_4

    .line 295
    .line 296
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v11

    .line 300
    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    add-int/lit8 v9, v9, 0x1

    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    const-string v4, "The suggested name \'"

    .line 309
    .line 310
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v4, "\' for "

    .line 317
    .line 318
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const/16 v4, 0x20

    .line 325
    .line 326
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-interface {v1, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v3, " is already one of the names for "

    .line 337
    .line 338
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-static {v10, v2}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    check-cast v2, Ljava/lang/Number;

    .line 352
    .line 353
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    invoke-interface {v1, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v2, " in "

    .line 365
    .line 366
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v11

    .line 376
    new-instance v8, Lkotlinx/serialization/json/JsonDecodingException;

    .line 377
    .line 378
    const/4 v0, -0x1

    .line 379
    invoke-static {v0, v11, v7, v7, v7}, Lkotlinx/serialization/json/internal/WriteModeKt;->formatDecodingException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v10

    .line 383
    const/4 v13, 0x0

    .line 384
    const/4 v14, 0x0

    .line 385
    const/4 v9, -0x1

    .line 386
    const/4 v12, 0x0

    .line 387
    invoke-direct/range {v8 .. v14}, Lkotlinx/serialization/json/JsonDecodingException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    throw v8

    .line 391
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 392
    .line 393
    goto/16 :goto_1

    .line 394
    .line 395
    :cond_6
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    if-eqz v0, :cond_7

    .line 400
    .line 401
    sget-object v2, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 402
    .line 403
    :cond_7
    return-object v2

    .line 404
    :pswitch_7
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast v1, Ljava/lang/String;

    .line 407
    .line 408
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 409
    .line 410
    check-cast v0, Lkotlinx/serialization/internal/ObjectSerializer;

    .line 411
    .line 412
    sget-object v2, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$3:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    .line 413
    .line 414
    new-array v3, v6, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 415
    .line 416
    new-instance v4, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 417
    .line 418
    const/4 v5, 0x5

    .line 419
    invoke-direct {v4, v0, v5}, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 420
    .line 421
    .line 422
    invoke-static {v1, v2, v3, v4}, Landroidx/work/OperationKt;->buildSerialDescriptor(Ljava/lang/String;Lorg/jsoup/Jsoup;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    return-object v0

    .line 427
    :pswitch_8
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast v1, Landroidx/work/impl/WorkManagerImpl;

    .line 430
    .line 431
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v0, Ljava/util/UUID;

    .line 434
    .line 435
    iget-object v3, v1, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 436
    .line 437
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    new-instance v4, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 441
    .line 442
    const/16 v5, 0xa

    .line 443
    .line 444
    invoke-direct {v4, v1, v0, v5}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 445
    .line 446
    .line 447
    new-instance v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 448
    .line 449
    invoke-direct {v0, v4, v2}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v3, v0}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    iget-object v0, v1, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    .line 456
    .line 457
    iget-object v2, v1, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 458
    .line 459
    iget-object v1, v1, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    .line 460
    .line 461
    invoke-static {v0, v2, v1}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 462
    .line 463
    .line 464
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 465
    .line 466
    return-object v0

    .line 467
    :pswitch_9
    invoke-direct {v0}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->invoke$androidx$work$impl$constraints$controllers$BaseConstraintController$track$1$$ExternalSyntheticLambda0()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    return-object v0

    .line 472
    :pswitch_a
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 473
    .line 474
    check-cast v1, Landroidx/work/impl/model/WorkTagDao_Impl$$ExternalSyntheticLambda1;

    .line 475
    .line 476
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 477
    .line 478
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 479
    .line 480
    sget-object v2, Landroidx/work/impl/constraints/SharedNetworkCallback;->requestsLock:Ljava/lang/Object;

    .line 481
    .line 482
    monitor-enter v2

    .line 483
    :try_start_2
    sget-object v3, Landroidx/work/impl/constraints/SharedNetworkCallback;->requests:Ljava/util/LinkedHashMap;

    .line 484
    .line 485
    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    if-eqz v1, :cond_8

    .line 493
    .line 494
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    sget-object v3, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;

    .line 499
    .line 500
    const-string v4, "NetworkRequestConstraintController unregister shared callback"

    .line 501
    .line 502
    invoke-virtual {v1, v3, v4}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    sget-object v1, Landroidx/work/impl/constraints/SharedNetworkCallback;->INSTANCE:Landroidx/work/impl/constraints/SharedNetworkCallback;

    .line 506
    .line 507
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 508
    .line 509
    .line 510
    sput-object v7, Landroidx/work/impl/constraints/SharedNetworkCallback;->isBlocked:Ljava/lang/Boolean;

    .line 511
    .line 512
    sput-object v7, Landroidx/work/impl/constraints/SharedNetworkCallback;->cachedCapabilities:Landroid/net/NetworkCapabilities;

    .line 513
    .line 514
    sput-boolean v6, Landroidx/work/impl/constraints/SharedNetworkCallback;->capabilitiesInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 515
    .line 516
    goto :goto_6

    .line 517
    :catchall_0
    move-exception v0

    .line 518
    goto :goto_7

    .line 519
    :cond_8
    :goto_6
    monitor-exit v2

    .line 520
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 521
    .line 522
    return-object v0

    .line 523
    :goto_7
    monitor-exit v2

    .line 524
    throw v0

    .line 525
    :pswitch_b
    sget-object v6, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    .line 526
    .line 527
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 528
    .line 529
    iget-object v3, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 530
    .line 531
    move-object v4, v3

    .line 532
    check-cast v4, Landroidx/work/impl/WorkManagerImpl;

    .line 533
    .line 534
    const-string v3, "org.schabi.newpipe_streams_notifications"

    .line 535
    .line 536
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 537
    .line 538
    check-cast v0, Landroidx/work/PeriodicWorkRequest;

    .line 539
    .line 540
    iget-object v9, v4, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 541
    .line 542
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 543
    .line 544
    .line 545
    move-result-object v8

    .line 546
    invoke-virtual {v8, v3}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    .line 547
    .line 548
    .line 549
    move-result-object v3

    .line 550
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 551
    .line 552
    .line 553
    move-result v10

    .line 554
    if-gt v10, v5, :cond_14

    .line 555
    .line 556
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    check-cast v3, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 561
    .line 562
    if-nez v3, :cond_9

    .line 563
    .line 564
    const-string v5, "org.schabi.newpipe_streams_notifications"

    .line 565
    .line 566
    invoke-static {v0}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 567
    .line 568
    .line 569
    move-result-object v7

    .line 570
    new-instance v3, Landroidx/work/impl/WorkContinuationImpl;

    .line 571
    .line 572
    const/4 v8, 0x0

    .line 573
    invoke-direct/range {v3 .. v8}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;I)V

    .line 574
    .line 575
    .line 576
    invoke-static {v3}, Landroidx/work/impl/utils/EnqueueRunnable;->enqueue(Landroidx/work/impl/WorkContinuationImpl;)V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_9

    .line 580
    .line 581
    :cond_9
    iget-object v5, v3, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 582
    .line 583
    invoke-virtual {v8, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    .line 584
    .line 585
    .line 586
    move-result-object v10

    .line 587
    if-eqz v10, :cond_13

    .line 588
    .line 589
    invoke-virtual {v10}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 590
    .line 591
    .line 592
    move-result v10

    .line 593
    if-eqz v10, :cond_12

    .line 594
    .line 595
    iget-object v10, v3, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/WorkInfo$State;

    .line 596
    .line 597
    sget-object v11, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    .line 598
    .line 599
    if-ne v10, v11, :cond_a

    .line 600
    .line 601
    invoke-virtual {v8, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->delete(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    const-string v5, "org.schabi.newpipe_streams_notifications"

    .line 605
    .line 606
    invoke-static {v0}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 607
    .line 608
    .line 609
    move-result-object v7

    .line 610
    new-instance v3, Landroidx/work/impl/WorkContinuationImpl;

    .line 611
    .line 612
    const/4 v8, 0x0

    .line 613
    invoke-direct/range {v3 .. v8}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;I)V

    .line 614
    .line 615
    .line 616
    invoke-static {v3}, Landroidx/work/impl/utils/EnqueueRunnable;->enqueue(Landroidx/work/impl/WorkContinuationImpl;)V

    .line 617
    .line 618
    .line 619
    goto/16 :goto_9

    .line 620
    .line 621
    :cond_a
    iget-object v10, v0, Landroidx/work/WorkRequest;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 622
    .line 623
    iget-object v11, v3, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    .line 624
    .line 625
    const/16 v22, 0x0

    .line 626
    .line 627
    const v23, 0x1fffffe

    .line 628
    .line 629
    .line 630
    const/4 v12, 0x0

    .line 631
    const/4 v13, 0x0

    .line 632
    const/4 v14, 0x0

    .line 633
    const/4 v15, 0x0

    .line 634
    const-wide/16 v16, 0x0

    .line 635
    .line 636
    const/16 v18, 0x0

    .line 637
    .line 638
    const/16 v19, 0x0

    .line 639
    .line 640
    const-wide/16 v20, 0x0

    .line 641
    .line 642
    invoke-static/range {v10 .. v23}, Landroidx/work/impl/model/WorkSpec;->copy$default(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Landroidx/work/Data;IJIIJII)Landroidx/work/impl/model/WorkSpec;

    .line 643
    .line 644
    .line 645
    move-result-object v11

    .line 646
    iget-object v3, v4, Landroidx/work/impl/WorkManagerImpl;->mProcessor:Landroidx/work/impl/Processor;

    .line 647
    .line 648
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    iget-object v5, v4, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    .line 655
    .line 656
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 657
    .line 658
    .line 659
    iget-object v12, v4, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    .line 660
    .line 661
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 662
    .line 663
    .line 664
    iget-object v14, v0, Landroidx/work/WorkRequest;->tags:Ljava/util/Set;

    .line 665
    .line 666
    const-string v0, "OneTime"

    .line 667
    .line 668
    const-string v4, "Periodic"

    .line 669
    .line 670
    iget-object v13, v11, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 671
    .line 672
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 673
    .line 674
    .line 675
    move-result-object v6

    .line 676
    invoke-virtual {v6, v13}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    .line 677
    .line 678
    .line 679
    move-result-object v10

    .line 680
    if-eqz v10, :cond_11

    .line 681
    .line 682
    iget-object v6, v10, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 683
    .line 684
    invoke-virtual {v6}, Landroidx/work/WorkInfo$State;->isFinished()Z

    .line 685
    .line 686
    .line 687
    move-result v6

    .line 688
    if-eqz v6, :cond_b

    .line 689
    .line 690
    goto :goto_9

    .line 691
    :cond_b
    invoke-virtual {v10}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 692
    .line 693
    .line 694
    move-result v6

    .line 695
    invoke-virtual {v11}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 696
    .line 697
    .line 698
    move-result v7

    .line 699
    xor-int/2addr v6, v7

    .line 700
    if-nez v6, :cond_e

    .line 701
    .line 702
    invoke-virtual {v3, v13}, Landroidx/work/impl/Processor;->isEnqueued(Ljava/lang/String;)Z

    .line 703
    .line 704
    .line 705
    move-result v15

    .line 706
    if-nez v15, :cond_c

    .line 707
    .line 708
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 713
    .line 714
    .line 715
    move-result v3

    .line 716
    if-eqz v3, :cond_c

    .line 717
    .line 718
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v3

    .line 722
    check-cast v3, Landroidx/work/impl/Scheduler;

    .line 723
    .line 724
    invoke-interface {v3, v13}, Landroidx/work/impl/Scheduler;->cancel(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    goto :goto_8

    .line 728
    :cond_c
    new-instance v8, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda1;

    .line 729
    .line 730
    invoke-direct/range {v8 .. v15}, Landroidx/work/impl/WorkerUpdater$$ExternalSyntheticLambda1;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    .line 731
    .line 732
    .line 733
    new-instance v0, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 734
    .line 735
    invoke-direct {v0, v8, v2}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v9, v0}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    if-nez v15, :cond_d

    .line 742
    .line 743
    invoke-static {v5, v9, v12}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 744
    .line 745
    .line 746
    :cond_d
    :goto_9
    move-object v7, v1

    .line 747
    goto :goto_b

    .line 748
    :cond_e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 749
    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    .line 751
    .line 752
    const-string v3, "Can\'t update "

    .line 753
    .line 754
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v10}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 758
    .line 759
    .line 760
    move-result v3

    .line 761
    if-eqz v3, :cond_f

    .line 762
    .line 763
    move-object v3, v4

    .line 764
    goto :goto_a

    .line 765
    :cond_f
    move-object v3, v0

    .line 766
    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    const-string v3, " Worker to "

    .line 770
    .line 771
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v11}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 775
    .line 776
    .line 777
    move-result v3

    .line 778
    if-eqz v3, :cond_10

    .line 779
    .line 780
    move-object v0, v4

    .line 781
    :cond_10
    const-string v3, " Worker. Update operation must preserve worker\'s type."

    .line 782
    .line 783
    invoke-static {v2, v0, v3}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    throw v1

    .line 791
    :cond_11
    const-string v0, "Worker with "

    .line 792
    .line 793
    const-string v1, " doesn\'t exist"

    .line 794
    .line 795
    invoke-static {v0, v13, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    goto :goto_b

    .line 803
    :cond_12
    const-string v0, "Can\'t update OneTimeWorker to Periodic Worker. Update operation must preserve worker\'s type."

    .line 804
    .line 805
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    goto :goto_b

    .line 809
    :cond_13
    const-string v0, "WorkSpec with "

    .line 810
    .line 811
    const-string v1, ", that matches a name \"org.schabi.newpipe_streams_notifications\", wasn\'t found"

    .line 812
    .line 813
    invoke-static {v0, v5, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    goto :goto_b

    .line 821
    :cond_14
    const-string v0, "Can\'t apply UPDATE policy to the chains of work."

    .line 822
    .line 823
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/String;)V

    .line 824
    .line 825
    .line 826
    :goto_b
    return-object v7

    .line 827
    :pswitch_c
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 828
    .line 829
    check-cast v1, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 830
    .line 831
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 832
    .line 833
    iget-object v1, v1, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;->composer:Landroidx/compose/runtime/GapComposer;

    .line 834
    .line 835
    iget-object v2, v1, Landroidx/compose/runtime/GapComposer;->slotTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 836
    .line 837
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 838
    .line 839
    .line 840
    move-result-object v4

    .line 841
    move v5, v6

    .line 842
    :goto_c
    :try_start_3
    iget v8, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->groupsSize:I

    .line 843
    .line 844
    if-ge v5, v8, :cond_1e

    .line 845
    .line 846
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->isNode(I)Z

    .line 847
    .line 848
    .line 849
    move-result v8

    .line 850
    if-eqz v8, :cond_18

    .line 851
    .line 852
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->node(I)Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v8

    .line 856
    if-eq v8, v0, :cond_17

    .line 857
    .line 858
    instance-of v9, v8, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 859
    .line 860
    if-eqz v9, :cond_15

    .line 861
    .line 862
    check-cast v8, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 863
    .line 864
    goto :goto_d

    .line 865
    :cond_15
    move-object v8, v7

    .line 866
    :goto_d
    if-eqz v8, :cond_16

    .line 867
    .line 868
    iget-object v8, v8, Landroidx/compose/runtime/GapRememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    .line 869
    .line 870
    goto :goto_e

    .line 871
    :cond_16
    move-object v8, v7

    .line 872
    :goto_e
    if-ne v8, v0, :cond_18

    .line 873
    .line 874
    :cond_17
    new-instance v0, Landroidx/compose/runtime/tooling/ObjectLocation;

    .line 875
    .line 876
    invoke-direct {v0, v5, v7}, Landroidx/compose/runtime/tooling/ObjectLocation;-><init>(ILjava/lang/Integer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 877
    .line 878
    .line 879
    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 880
    .line 881
    .line 882
    move-object v7, v0

    .line 883
    goto :goto_14

    .line 884
    :catchall_1
    move-exception v0

    .line 885
    goto/16 :goto_16

    .line 886
    .line 887
    :cond_18
    :try_start_4
    iget-object v8, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 888
    .line 889
    invoke-static {v8, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$slotAnchor([II)I

    .line 890
    .line 891
    .line 892
    move-result v9

    .line 893
    add-int/lit8 v10, v5, 0x1

    .line 894
    .line 895
    iget v11, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 896
    .line 897
    if-ge v10, v11, :cond_19

    .line 898
    .line 899
    mul-int/lit8 v11, v10, 0x5

    .line 900
    .line 901
    add-int/2addr v11, v3

    .line 902
    aget v8, v8, v11

    .line 903
    .line 904
    goto :goto_f

    .line 905
    :cond_19
    iget v8, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slotsSize:I

    .line 906
    .line 907
    :goto_f
    sub-int/2addr v8, v9

    .line 908
    move v9, v6

    .line 909
    :goto_10
    if-ge v9, v8, :cond_1f

    .line 910
    .line 911
    invoke-virtual {v4, v5, v9}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupGet(II)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    move-result-object v11

    .line 915
    if-eq v11, v0, :cond_1d

    .line 916
    .line 917
    instance-of v12, v11, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 918
    .line 919
    if-eqz v12, :cond_1a

    .line 920
    .line 921
    check-cast v11, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 922
    .line 923
    goto :goto_11

    .line 924
    :cond_1a
    move-object v11, v7

    .line 925
    :goto_11
    if-eqz v11, :cond_1b

    .line 926
    .line 927
    iget-object v11, v11, Landroidx/compose/runtime/GapRememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    .line 928
    .line 929
    goto :goto_12

    .line 930
    :cond_1b
    move-object v11, v7

    .line 931
    :goto_12
    if-ne v11, v0, :cond_1c

    .line 932
    .line 933
    goto :goto_13

    .line 934
    :cond_1c
    add-int/lit8 v9, v9, 0x1

    .line 935
    .line 936
    goto :goto_10

    .line 937
    :cond_1d
    :goto_13
    new-instance v7, Landroidx/compose/runtime/tooling/ObjectLocation;

    .line 938
    .line 939
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    invoke-direct {v7, v5, v0}, Landroidx/compose/runtime/tooling/ObjectLocation;-><init>(ILjava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 944
    .line 945
    .line 946
    :cond_1e
    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 947
    .line 948
    .line 949
    goto :goto_14

    .line 950
    :cond_1f
    move v5, v10

    .line 951
    goto :goto_c

    .line 952
    :goto_14
    if-eqz v7, :cond_20

    .line 953
    .line 954
    iget v0, v7, Landroidx/compose/runtime/tooling/ObjectLocation;->group:I

    .line 955
    .line 956
    iget-object v3, v7, Landroidx/compose/runtime/tooling/ObjectLocation;->dataOffset:Ljava/lang/Integer;

    .line 957
    .line 958
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 959
    .line 960
    .line 961
    move-result-object v2

    .line 962
    :try_start_5
    invoke-static {v2, v0, v3}, Landroidx/core/os/BundleKt;->traceForGroup(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;ILjava/lang/Integer;)Ljava/util/ArrayList;

    .line 963
    .line 964
    .line 965
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 966
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 967
    .line 968
    .line 969
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->parentStackTrace$runtime()Ljava/util/List;

    .line 970
    .line 971
    .line 972
    move-result-object v2

    .line 973
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    goto :goto_15

    .line 978
    :catchall_2
    move-exception v0

    .line 979
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 980
    .line 981
    .line 982
    throw v0

    .line 983
    :cond_20
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 984
    .line 985
    :goto_15
    new-instance v2, Landroidx/compose/runtime/tooling/ComposeStackTrace;

    .line 986
    .line 987
    iget-boolean v1, v1, Landroidx/compose/runtime/GapComposer;->sourceMarkersEnabled:Z

    .line 988
    .line 989
    invoke-direct {v2, v0, v1}, Landroidx/compose/runtime/tooling/ComposeStackTrace;-><init>(Ljava/util/List;Z)V

    .line 990
    .line 991
    .line 992
    return-object v2

    .line 993
    :goto_16
    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 994
    .line 995
    .line 996
    throw v0

    .line 997
    :pswitch_d
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 998
    .line 999
    check-cast v1, Landroidx/collection/MutableScatterSet;

    .line 1000
    .line 1001
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 1002
    .line 1003
    check-cast v0, Landroidx/compose/runtime/CompositionImpl;

    .line 1004
    .line 1005
    iget-object v2, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 1006
    .line 1007
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1008
    .line 1009
    array-length v3, v1

    .line 1010
    sub-int/2addr v3, v4

    .line 1011
    if-ltz v3, :cond_24

    .line 1012
    .line 1013
    move v4, v6

    .line 1014
    :goto_17
    aget-wide v7, v1, v4

    .line 1015
    .line 1016
    not-long v9, v7

    .line 1017
    const/4 v5, 0x7

    .line 1018
    shl-long/2addr v9, v5

    .line 1019
    and-long/2addr v9, v7

    .line 1020
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    and-long/2addr v9, v11

    .line 1026
    cmp-long v5, v9, v11

    .line 1027
    .line 1028
    if-eqz v5, :cond_23

    .line 1029
    .line 1030
    sub-int v5, v4, v3

    .line 1031
    .line 1032
    not-int v5, v5

    .line 1033
    ushr-int/lit8 v5, v5, 0x1f

    .line 1034
    .line 1035
    const/16 v9, 0x8

    .line 1036
    .line 1037
    rsub-int/lit8 v5, v5, 0x8

    .line 1038
    .line 1039
    move v10, v6

    .line 1040
    :goto_18
    if-ge v10, v5, :cond_22

    .line 1041
    .line 1042
    const-wide/16 v11, 0xff

    .line 1043
    .line 1044
    and-long/2addr v11, v7

    .line 1045
    const-wide/16 v13, 0x80

    .line 1046
    .line 1047
    cmp-long v11, v11, v13

    .line 1048
    .line 1049
    if-gez v11, :cond_21

    .line 1050
    .line 1051
    shl-int/lit8 v11, v4, 0x3

    .line 1052
    .line 1053
    add-int/2addr v11, v10

    .line 1054
    aget-object v11, v2, v11

    .line 1055
    .line 1056
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/CompositionImpl;->recordWriteOf(Ljava/lang/Object;)V

    .line 1057
    .line 1058
    .line 1059
    :cond_21
    shr-long/2addr v7, v9

    .line 1060
    add-int/lit8 v10, v10, 0x1

    .line 1061
    .line 1062
    goto :goto_18

    .line 1063
    :cond_22
    if-ne v5, v9, :cond_24

    .line 1064
    .line 1065
    :cond_23
    if-eq v4, v3, :cond_24

    .line 1066
    .line 1067
    add-int/lit8 v4, v4, 0x1

    .line 1068
    .line 1069
    goto :goto_17

    .line 1070
    :cond_24
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1071
    .line 1072
    return-object v0

    .line 1073
    :pswitch_e
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1074
    .line 1075
    check-cast v1, Lorg/acra/util/ProcessFinisher;

    .line 1076
    .line 1077
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 1078
    .line 1079
    check-cast v0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda1;

    .line 1080
    .line 1081
    iget-object v1, v1, Lorg/acra/util/ProcessFinisher;->context:Ljava/lang/Object;

    .line 1082
    .line 1083
    check-cast v1, Landroidx/compose/runtime/internal/AtomicInt;

    .line 1084
    .line 1085
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1086
    .line 1087
    .line 1088
    move-result v1

    .line 1089
    if-eqz v1, :cond_25

    .line 1090
    .line 1091
    goto :goto_19

    .line 1092
    :cond_25
    invoke-virtual {v0}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    :goto_19
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1096
    .line 1097
    return-object v0

    .line 1098
    :pswitch_f
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1099
    .line 1100
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1101
    .line 1102
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 1103
    .line 1104
    check-cast v0, Landroidx/compose/runtime/MovableContentStateReference;

    .line 1105
    .line 1106
    iget-object v2, v0, Landroidx/compose/runtime/MovableContentStateReference;->content:Landroidx/compose/runtime/MovableContent;

    .line 1107
    .line 1108
    iget-object v3, v0, Landroidx/compose/runtime/MovableContentStateReference;->locals:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1109
    .line 1110
    iget-object v0, v0, Landroidx/compose/runtime/MovableContentStateReference;->parameter:Ljava/lang/Object;

    .line 1111
    .line 1112
    invoke-virtual {v1, v2, v3, v0, v5}, Landroidx/compose/runtime/GapComposer;->invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Ljava/lang/Object;Z)V

    .line 1113
    .line 1114
    .line 1115
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1116
    .line 1117
    return-object v0

    .line 1118
    :pswitch_10
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1119
    .line 1120
    check-cast v1, Lkotlinx/coroutines/channels/Channel;

    .line 1121
    .line 1122
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 1123
    .line 1124
    check-cast v0, Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 1125
    .line 1126
    invoke-interface {v1, v0}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1130
    .line 1131
    return-object v0

    .line 1132
    :pswitch_11
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1133
    .line 1134
    check-cast v1, Lkotlinx/coroutines/channels/Channel;

    .line 1135
    .line 1136
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 1137
    .line 1138
    check-cast v0, Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 1139
    .line 1140
    invoke-interface {v1, v0}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1144
    .line 1145
    return-object v0

    .line 1146
    :pswitch_12
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1147
    .line 1148
    check-cast v1, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 1149
    .line 1150
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 1151
    .line 1152
    check-cast v0, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 1153
    .line 1154
    invoke-virtual {v1}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v1

    .line 1158
    check-cast v1, Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;

    .line 1159
    .line 1160
    new-instance v2, Lcom/grack/nanojson/JsonParser;

    .line 1161
    .line 1162
    iget-object v3, v0, Landroidx/compose/foundation/pager/PagerState;->scrollPosition:Lorg/schabi/newpipe/streams/WebMReader$Segment;

    .line 1163
    .line 1164
    iget-object v3, v3, Lorg/schabi/newpipe/streams/WebMReader$Segment;->this$0:Ljava/lang/Object;

    .line 1165
    .line 1166
    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 1167
    .line 1168
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->getValue()Ljava/lang/Object;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v3

    .line 1172
    check-cast v3, Lkotlin/ranges/IntRange;

    .line 1173
    .line 1174
    invoke-direct {v2, v3, v1}, Lcom/grack/nanojson/JsonParser;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;)V

    .line 1175
    .line 1176
    .line 1177
    new-instance v3, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    .line 1178
    .line 1179
    invoke-direct {v3, v0, v1, v2}, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;-><init>(Landroidx/compose/foundation/pager/DefaultPagerState;Landroidx/compose/foundation/pager/PagerLayoutIntervalContent;Lcom/grack/nanojson/JsonParser;)V

    .line 1180
    .line 1181
    .line 1182
    return-object v3

    .line 1183
    :pswitch_13
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1184
    .line 1185
    check-cast v1, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 1186
    .line 1187
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 1188
    .line 1189
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 1190
    .line 1191
    new-instance v2, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 1192
    .line 1193
    sget-object v3, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 1194
    .line 1195
    invoke-direct {v2, v1, v3, v0}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/util/Map;Landroidx/compose/runtime/saveable/SaveableStateHolder;)V

    .line 1196
    .line 1197
    .line 1198
    return-object v2

    .line 1199
    :pswitch_14
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1200
    .line 1201
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1202
    .line 1203
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 1204
    .line 1205
    check-cast v0, Landroidx/compose/foundation/FocusableNode;

    .line 1206
    .line 1207
    sget-object v2, Landroidx/compose/ui/layout/PinnableContainerKt;->LocalPinnableContainer:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1208
    .line 1209
    invoke-static {v0, v2}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v0

    .line 1213
    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1214
    .line 1215
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1216
    .line 1217
    return-object v0

    .line 1218
    :pswitch_15
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1219
    .line 1220
    check-cast v1, Landroidx/compose/foundation/BackgroundNode;

    .line 1221
    .line 1222
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 1223
    .line 1224
    check-cast v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 1225
    .line 1226
    iget-object v2, v1, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 1227
    .line 1228
    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 1229
    .line 1230
    iget-object v3, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lorg/acra/util/ProcessFinisher;

    .line 1231
    .line 1232
    invoke-virtual {v3}, Lorg/acra/util/ProcessFinisher;->getSize-NH-jbRc()J

    .line 1233
    .line 1234
    .line 1235
    move-result-wide v3

    .line 1236
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v5

    .line 1240
    invoke-interface {v2, v3, v4, v5, v0}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Brush;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    iput-object v0, v1, Landroidx/compose/foundation/BackgroundNode;->tmpOutline:Landroidx/compose/ui/graphics/Brush;

    .line 1245
    .line 1246
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1247
    .line 1248
    return-object v0

    .line 1249
    :pswitch_16
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1250
    .line 1251
    check-cast v1, Lkotlinx/coroutines/channels/Channel;

    .line 1252
    .line 1253
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 1254
    .line 1255
    invoke-interface {v1, v0}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    .line 1257
    .line 1258
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1259
    .line 1260
    return-object v0

    .line 1261
    :pswitch_17
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1262
    .line 1263
    check-cast v1, Lcoil3/fetch/Fetcher$Factory;

    .line 1264
    .line 1265
    iget-object v0, v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 1266
    .line 1267
    check-cast v0, Lkotlin/jvm/internal/ClassReference;

    .line 1268
    .line 1269
    new-instance v2, Lkotlin/Pair;

    .line 1270
    .line 1271
    invoke-direct {v2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1272
    .line 1273
    .line 1274
    invoke-static {v2}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v0

    .line 1278
    return-object v0

    .line 1279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

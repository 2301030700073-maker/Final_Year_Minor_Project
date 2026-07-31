.class public final Lorg/koin/compose/application/CompositionKoinApplicationLoader;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# instance fields
.field public koin:Lorg/koin/core/Koin;

.field public final koinApplication:Lorg/koin/core/KoinApplication;


# direct methods
.method public constructor <init>(Lorg/koin/core/KoinApplication;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/koin/compose/application/CompositionKoinApplicationLoader;->koinApplication:Lorg/koin/core/KoinApplication;

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/koin/compose/application/CompositionKoinApplicationLoader;->start()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onAbandoned()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/koin/compose/application/CompositionKoinApplicationLoader;->koin:Lorg/koin/core/Koin;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lorg/koin/core/logger/Logger;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "CompositionKoinApplicationLoader - onAbandoned - "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Lorg/koin/core/logger/Level;->WARNING:Lorg/koin/core/logger/Level;

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lorg/koin/core/logger/Logger;->log(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lorg/koin/compose/application/CompositionKoinApplicationLoader;->koin:Lorg/koin/core/Koin;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, v0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lorg/koin/core/logger/Logger;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const-string v1, "CompositionKoinApplicationLoader - stop"

    .line 41
    .line 42
    sget-object v2, Lorg/koin/core/logger/Level;->WARNING:Lorg/koin/core/logger/Level;

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Lorg/koin/core/logger/Logger;->log(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/koin/compose/application/CompositionKoinApplicationLoader;->koin:Lorg/koin/core/Koin;

    .line 49
    .line 50
    sget-object p0, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    .line 51
    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    sget-object v1, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {v1}, Lorg/koin/core/Koin;->close()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    sput-object v0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_1
    monitor-exit p0

    .line 68
    throw v0
.end method

.method public final onForgotten()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/koin/compose/application/CompositionKoinApplicationLoader;->koin:Lorg/koin/core/Koin;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lorg/koin/core/logger/Logger;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "CompositionKoinApplicationLoader - onForgotten - "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lorg/koin/core/logger/Logger;->log(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lorg/koin/compose/application/CompositionKoinApplicationLoader;->koin:Lorg/koin/core/Koin;

    .line 32
    .line 33
    return-void
.end method

.method public final onRemembered()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/koin/compose/application/CompositionKoinApplicationLoader;->start()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final start()V
    .locals 3

    .line 1
    sget-object v0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lorg/koin/compose/application/CompositionKoinApplicationLoader;->koinApplication:Lorg/koin/core/KoinApplication;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    :try_start_0
    sget-object v0, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    .line 10
    .line 11
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    sget-object v2, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iget-object v2, v1, Lorg/koin/core/KoinApplication;->koin:Lorg/koin/core/Koin;

    .line 17
    .line 18
    sput-object v2, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    .line 19
    .line 20
    invoke-virtual {v2}, Lorg/koin/core/Koin;->createEagerInstances()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    :try_start_2
    monitor-exit v0

    .line 24
    iget-object v0, v1, Lorg/koin/core/KoinApplication;->koin:Lorg/koin/core/Koin;

    .line 25
    .line 26
    iput-object v0, p0, Lorg/koin/compose/application/CompositionKoinApplicationLoader;->koin:Lorg/koin/core/Koin;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lorg/koin/core/logger/Logger;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, " -> attach Koin instance "

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lorg/koin/compose/application/CompositionKoinApplicationLoader;->koin:Lorg/koin/core/Koin;

    .line 49
    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    sget-object v1, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 61
    .line 62
    invoke-virtual {v0, v1, p0}, Lorg/koin/core/logger/Logger;->log(Lorg/koin/core/logger/Level;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catch_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    :try_start_3
    new-instance p0, Lorg/koin/core/error/ClosedScopeException;

    .line 71
    .line 72
    const-string v1, "A Koin Application has already been started"

    .line 73
    .line 74
    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    :goto_0
    :try_start_4
    monitor-exit v0

    .line 79
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 80
    :goto_1
    const-string v0, "Can\'t start Koin from Compose context - "

    .line 81
    .line 82
    invoke-static {p0, v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_1
    if-eqz v0, :cond_3

    .line 87
    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    iput-object v0, p0, Lorg/koin/compose/application/CompositionKoinApplicationLoader;->koin:Lorg/koin/core/Koin;

    .line 91
    .line 92
    iget-object v0, v0, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Lorg/koin/core/logger/Logger;

    .line 95
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, " -> re-attach Koin instance "

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lorg/koin/compose/application/CompositionKoinApplicationLoader;->koin:Lorg/koin/core/Koin;

    .line 110
    .line 111
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    sget-object v1, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 122
    .line 123
    invoke-virtual {v0, v1, p0}, Lorg/koin/core/logger/Logger;->log(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_2
    const-string p0, "KoinApplication has not been started"

    .line 128
    .line 129
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_3
    const-string p0, "Can\'t start Koin context, no koinApplication argument found nor existing context"

    .line 134
    .line 135
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

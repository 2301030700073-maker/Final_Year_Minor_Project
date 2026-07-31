.class public final Landroidx/camera/camera2/pipe/internal/OutputDistributor;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final availableOutputs:Ljava/util/LinkedHashMap;

.field public cameraOutputSequenceNumbers:J

.field public closed:Z

.field public lastFailedCameraOutputNumber:J

.field public lastFailedFrameNumber:J

.field public final lock:Ljava/lang/Object;

.field public newestCameraOutputNumber:J

.field public newestFrameNumber:J

.field public final outputMatcher:Landroidx/camera/camera2/pipe/internal/OutputMatcher;

.field public final startedOutputs:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/internal/OutputMatcher;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->outputMatcher:Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    .line 8
    .line 9
    new-instance p1, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lock:Ljava/lang/Object;

    .line 15
    .line 16
    const-wide/16 v0, 0x1

    .line 17
    .line 18
    iput-wide v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->cameraOutputSequenceNumbers:J

    .line 19
    .line 20
    const-wide/high16 v0, -0x8000000000000000L

    .line 21
    .line 22
    iput-wide v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->newestCameraOutputNumber:J

    .line 23
    .line 24
    iput-wide v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->newestFrameNumber:J

    .line 25
    .line 26
    iput-wide v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lastFailedFrameNumber:J

    .line 27
    .line 28
    iput-wide v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lastFailedCameraOutputNumber:J

    .line 29
    .line 30
    new-instance p1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/ArrayList;

    .line 36
    .line 37
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    :try_start_1
    iput-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->closed:Z

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroidx/camera/camera2/pipe/internal/OutputResult;

    .line 55
    .line 56
    iget-object v0, v0, Landroidx/camera/camera2/pipe/internal/OutputResult;->result:Ljava/lang/Object;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v1, Landroidx/camera/camera2/pipe/OutputStatus;

    .line 79
    .line 80
    const/16 v2, 0xb

    .line 81
    .line 82
    invoke-direct {v1, v2}, Landroidx/camera/camera2/pipe/OutputStatus;-><init>(I)V

    .line 83
    .line 84
    .line 85
    const-wide/16 v2, -0x1

    .line 86
    .line 87
    invoke-virtual {v0, v2, v3, v1}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->completeWith-DvZWqE8(JLjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    return-void

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    monitor-exit v0

    .line 94
    throw p0
.end method

.method public final onOutputFailure-Vw7M1qk(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    iput-wide p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lastFailedFrameNumber:J

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    move v4, v2

    .line 21
    move-object v5, v3

    .line 22
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-eqz v6, :cond_4

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    move-object v7, v6

    .line 33
    check-cast v7, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    .line 34
    .line 35
    iget-wide v7, v7, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    .line 36
    .line 37
    cmp-long v7, v7, p1

    .line 38
    .line 39
    const/4 v8, 0x1

    .line 40
    if-nez v7, :cond_2

    .line 41
    .line 42
    move v7, v8

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v7, v2

    .line 45
    :goto_1
    if-eqz v7, :cond_1

    .line 46
    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    :goto_2
    move-object v5, v3

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    move-object v5, v6

    .line 52
    move v4, v8

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_4

    .line 56
    :cond_4
    if-nez v4, :cond_5

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_5
    :goto_3
    check-cast v5, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    .line 60
    .line 61
    if-eqz v5, :cond_6

    .line 62
    .line 63
    iget-wide p1, v5, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputNumber:J

    .line 64
    .line 65
    iput-wide p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lastFailedCameraOutputNumber:J

    .line 66
    .line 67
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    move-object v3, v5

    .line 73
    :cond_6
    monitor-exit v0

    .line 74
    if-eqz v3, :cond_7

    .line 75
    .line 76
    new-instance p0, Landroidx/camera/camera2/pipe/OutputStatus;

    .line 77
    .line 78
    const/16 p1, 0xa

    .line 79
    .line 80
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/OutputStatus;-><init>(I)V

    .line 81
    .line 82
    .line 83
    const-wide/16 p1, -0x1

    .line 84
    .line 85
    invoke-virtual {v3, p1, p2, p0}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->completeWith-DvZWqE8(JLjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_7
    return-void

    .line 89
    :goto_4
    monitor-exit v0

    .line 90
    throw p0
.end method

.method public final onOutputResult-DvZWqE8(JLjava/lang/Object;)V
    .locals 10

    .line 1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->closed:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->outputMatcher:Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    .line 10
    .line 11
    iget-wide v3, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lastFailedCameraOutputNumber:J

    .line 12
    .line 13
    invoke-virtual {v0, v3, v4, p1, p2}, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->fuzzyEqual(JJ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    move-object v4, v3

    .line 38
    check-cast v4, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    .line 39
    .line 40
    iget-object v5, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->outputMatcher:Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    .line 41
    .line 42
    iget-wide v6, v4, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputNumber:J

    .line 43
    .line 44
    invoke-virtual {v5, v6, v7, p1, p2}, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->fuzzyEqual(JJ)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    move-object p0, v0

    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_2
    move-object v3, v2

    .line 56
    :goto_0
    check-cast v3, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    .line 57
    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    iget-boolean v9, v3, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->isOutOfOrder:Z

    .line 61
    .line 62
    iget-wide v5, v3, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    .line 63
    .line 64
    iget-wide v7, v3, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputNumber:J

    .line 65
    .line 66
    move-object v4, p0

    .line 67
    invoke-virtual/range {v4 .. v9}, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->removeOutputsOlderThan(JJZ)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v3, p1, p2, p3}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->completeWith-DvZWqE8(JLjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, v4, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-object p1, p0

    .line 80
    move-object p0, v2

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    move-object v4, p0

    .line 83
    iget-object p0, v4, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/LinkedHashMap;

    .line 84
    .line 85
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance p2, Landroidx/camera/camera2/pipe/internal/OutputResult;

    .line 90
    .line 91
    invoke-direct {p2, p3}, Landroidx/camera/camera2/pipe/internal/OutputResult;-><init>(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iget-object p0, v4, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/LinkedHashMap;

    .line 98
    .line 99
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    const/4 p1, 0x3

    .line 104
    if-le p0, p1, :cond_4

    .line 105
    .line 106
    iget-object p0, v4, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/LinkedHashMap;

    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    check-cast p0, Ljava/lang/Iterable;

    .line 113
    .line 114
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Ljava/lang/Number;

    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 121
    .line 122
    .line 123
    move-result-wide p0

    .line 124
    iget-object p2, v4, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/LinkedHashMap;

    .line 125
    .line 126
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-interface {p2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    :goto_1
    move-object p1, v2

    .line 135
    goto :goto_3

    .line 136
    :cond_4
    move-object p0, v2

    .line 137
    move-object p1, p0

    .line 138
    goto :goto_3

    .line 139
    :cond_5
    :goto_2
    new-instance p0, Landroidx/camera/camera2/pipe/internal/OutputResult;

    .line 140
    .line 141
    invoke-direct {p0, p3}, Landroidx/camera/camera2/pipe/internal/OutputResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :goto_3
    monitor-exit v1

    .line 146
    check-cast p0, Landroidx/camera/camera2/pipe/internal/OutputResult;

    .line 147
    .line 148
    if-eqz p0, :cond_6

    .line 149
    .line 150
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/OutputResult;->result:Ljava/lang/Object;

    .line 151
    .line 152
    instance-of p2, p0, Landroidx/camera/camera2/pipe/OutputStatus;

    .line 153
    .line 154
    if-nez p2, :cond_6

    .line 155
    .line 156
    if-eqz p0, :cond_6

    .line 157
    .line 158
    move-object v2, p0

    .line 159
    :cond_6
    if-eqz p1, :cond_7

    .line 160
    .line 161
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_7

    .line 170
    .line 171
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    new-instance p2, Landroidx/camera/camera2/pipe/OutputStatus;

    .line 181
    .line 182
    const/16 p3, 0xc

    .line 183
    .line 184
    invoke-direct {p2, p3}, Landroidx/camera/camera2/pipe/OutputStatus;-><init>(I)V

    .line 185
    .line 186
    .line 187
    const-wide/16 v0, -0x1

    .line 188
    .line 189
    invoke-virtual {p1, v0, v1, p2}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->completeWith-DvZWqE8(JLjava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_7
    return-void

    .line 194
    :goto_5
    monitor-exit v1

    .line 195
    throw p0
.end method

.method public final onOutputStarted-qGubWw0(JJJLandroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    move-wide/from16 v8, p5

    .line 6
    .line 7
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v11, v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v11

    .line 13
    :try_start_0
    iget-object v1, v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/4 v13, 0x0

    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    move-object v5, v4

    .line 31
    check-cast v5, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    .line 32
    .line 33
    iget-wide v14, v5, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraFrameNumber:J

    .line 34
    .line 35
    cmp-long v5, v14, v2

    .line 36
    .line 37
    if-nez v5, :cond_1

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v5, v13

    .line 42
    :goto_0
    if-eqz v5, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    move-object/from16 v17, v11

    .line 47
    .line 48
    goto/16 :goto_11

    .line 49
    .line 50
    :cond_2
    const/4 v4, 0x0

    .line 51
    :goto_1
    check-cast v4, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    .line 52
    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    const-string v0, "CXCP"

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v5, "onOutputStarted was invoked multiple times with a previously started output!onOutputStarted with "

    .line 63
    .line 64
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v3}, Landroidx/camera/camera2/pipe/FrameNumber;->toString-impl(J)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, ", "

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v3, "CameraTimestamp(value="

    .line 82
    .line 83
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    move-wide/from16 v14, p3

    .line 87
    .line 88
    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const/16 v3, 0x29

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, ", "

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v2, ". Previously started output: "

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v2, ". Ignoring."

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    .line 131
    monitor-exit v11

    .line 132
    return-void

    .line 133
    :cond_3
    move-wide/from16 v14, p3

    .line 134
    .line 135
    :try_start_1
    iget-boolean v7, v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->closed:Z

    .line 136
    .line 137
    iget-wide v4, v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->cameraOutputSequenceNumbers:J

    .line 138
    .line 139
    const-wide/16 v16, 0x1

    .line 140
    .line 141
    move/from16 v18, v7

    .line 142
    .line 143
    add-long v6, v4, v16

    .line 144
    .line 145
    iput-wide v6, v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->cameraOutputSequenceNumbers:J

    .line 146
    .line 147
    if-nez v18, :cond_4

    .line 148
    .line 149
    iget-wide v6, v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lastFailedFrameNumber:J

    .line 150
    .line 151
    cmp-long v1, v6, v2

    .line 152
    .line 153
    if-eqz v1, :cond_4

    .line 154
    .line 155
    iget-wide v6, v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lastFailedCameraOutputNumber:J

    .line 156
    .line 157
    cmp-long v1, v6, v8

    .line 158
    .line 159
    if-nez v1, :cond_5

    .line 160
    .line 161
    :cond_4
    move-object/from16 v17, v11

    .line 162
    .line 163
    goto/16 :goto_9

    .line 164
    .line 165
    :cond_5
    iget-wide v6, v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->newestFrameNumber:J

    .line 166
    .line 167
    cmp-long v1, v2, v6

    .line 168
    .line 169
    if-gez v1, :cond_6

    .line 170
    .line 171
    const/4 v1, 0x1

    .line 172
    goto :goto_2

    .line 173
    :cond_6
    move v1, v13

    .line 174
    :goto_2
    if-nez v1, :cond_7

    .line 175
    .line 176
    iput-wide v2, v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->newestFrameNumber:J

    .line 177
    .line 178
    :cond_7
    iget-wide v6, v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->newestCameraOutputNumber:J

    .line 179
    .line 180
    cmp-long v6, v8, v6

    .line 181
    .line 182
    if-gez v6, :cond_8

    .line 183
    .line 184
    const/4 v6, 0x1

    .line 185
    goto :goto_3

    .line 186
    :cond_8
    move v6, v13

    .line 187
    :goto_3
    if-nez v6, :cond_9

    .line 188
    .line 189
    iput-wide v8, v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->newestCameraOutputNumber:J

    .line 190
    .line 191
    :cond_9
    if-nez v1, :cond_b

    .line 192
    .line 193
    if-eqz v6, :cond_a

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_a
    move v1, v13

    .line 197
    goto :goto_5

    .line 198
    :cond_b
    :goto_4
    const/4 v1, 0x1

    .line 199
    :goto_5
    iget-object v6, v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/LinkedHashMap;

    .line 200
    .line 201
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    check-cast v6, Ljava/lang/Iterable;

    .line 206
    .line 207
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    if-eqz v7, :cond_d

    .line 216
    .line 217
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    move-object/from16 v16, v7

    .line 222
    .line 223
    check-cast v16, Ljava/lang/Number;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    .line 225
    move-object/from16 v17, v11

    .line 226
    .line 227
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->longValue()J

    .line 228
    .line 229
    .line 230
    move-result-wide v10

    .line 231
    iget-object v12, v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->outputMatcher:Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    .line 232
    .line 233
    invoke-virtual {v12, v8, v9, v10, v11}, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->fuzzyEqual(JJ)Z

    .line 234
    .line 235
    .line 236
    move-result v10

    .line 237
    if-eqz v10, :cond_c

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_c
    move-object/from16 v11, v17

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :catchall_1
    move-exception v0

    .line 244
    goto/16 :goto_11

    .line 245
    .line 246
    :cond_d
    move-object/from16 v17, v11

    .line 247
    .line 248
    const/4 v7, 0x0

    .line 249
    :goto_7
    check-cast v7, Ljava/lang/Long;

    .line 250
    .line 251
    if-eqz v7, :cond_e

    .line 252
    .line 253
    iget-object v2, v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/LinkedHashMap;

    .line 254
    .line 255
    invoke-interface {v2, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    move-wide/from16 v20, v4

    .line 260
    .line 261
    move v5, v1

    .line 262
    move-wide/from16 v1, v20

    .line 263
    .line 264
    move-wide v3, v8

    .line 265
    invoke-virtual/range {v0 .. v5}, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->removeOutputsOlderThan(JJZ)Ljava/util/ArrayList;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    const/4 v1, 0x0

    .line 270
    :goto_8
    const/16 v19, 0x1

    .line 271
    .line 272
    goto :goto_c

    .line 273
    :cond_e
    move-wide v6, v4

    .line 274
    iget-object v11, v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/ArrayList;

    .line 275
    .line 276
    new-instance v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    .line 277
    .line 278
    move-wide/from16 v8, p5

    .line 279
    .line 280
    move-object/from16 v10, p7

    .line 281
    .line 282
    move-wide v4, v14

    .line 283
    invoke-direct/range {v0 .. v10}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;-><init>(ZJJJJLandroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move/from16 v19, v13

    .line 290
    .line 291
    const/4 v0, 0x0

    .line 292
    const/4 v1, 0x0

    .line 293
    const/4 v6, 0x0

    .line 294
    goto :goto_c

    .line 295
    :goto_9
    iget-object v1, v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/LinkedHashMap;

    .line 296
    .line 297
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    check-cast v1, Ljava/lang/Iterable;

    .line 302
    .line 303
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    if-eqz v2, :cond_10

    .line 312
    .line 313
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    move-object v3, v2

    .line 318
    check-cast v3, Ljava/lang/Number;

    .line 319
    .line 320
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 321
    .line 322
    .line 323
    move-result-wide v3

    .line 324
    iget-object v5, v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->outputMatcher:Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    .line 325
    .line 326
    invoke-virtual {v5, v8, v9, v3, v4}, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->fuzzyEqual(JJ)Z

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    if-eqz v3, :cond_f

    .line 331
    .line 332
    goto :goto_a

    .line 333
    :cond_10
    const/4 v2, 0x0

    .line 334
    :goto_a
    check-cast v2, Ljava/lang/Long;

    .line 335
    .line 336
    if-eqz v2, :cond_11

    .line 337
    .line 338
    iget-object v0, v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/LinkedHashMap;

    .line 339
    .line 340
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    check-cast v0, Landroidx/camera/camera2/pipe/internal/OutputResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 345
    .line 346
    goto :goto_b

    .line 347
    :cond_11
    const/4 v0, 0x0

    .line 348
    :goto_b
    move-object v1, v0

    .line 349
    const/4 v0, 0x0

    .line 350
    const/4 v6, 0x0

    .line 351
    goto :goto_8

    .line 352
    :goto_c
    monitor-exit v17

    .line 353
    if-eqz v0, :cond_12

    .line 354
    .line 355
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    if-eqz v2, :cond_12

    .line 364
    .line 365
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    check-cast v2, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    .line 370
    .line 371
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    new-instance v3, Landroidx/camera/camera2/pipe/OutputStatus;

    .line 375
    .line 376
    const/16 v4, 0xc

    .line 377
    .line 378
    invoke-direct {v3, v4}, Landroidx/camera/camera2/pipe/OutputStatus;-><init>(I)V

    .line 379
    .line 380
    .line 381
    const-wide/16 v4, -0x1

    .line 382
    .line 383
    invoke-virtual {v2, v4, v5, v3}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->completeWith-DvZWqE8(JLjava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    goto :goto_d

    .line 387
    :cond_12
    if-eqz v1, :cond_14

    .line 388
    .line 389
    iget-object v0, v1, Landroidx/camera/camera2/pipe/internal/OutputResult;->result:Ljava/lang/Object;

    .line 390
    .line 391
    instance-of v1, v0, Landroidx/camera/camera2/pipe/OutputStatus;

    .line 392
    .line 393
    if-nez v1, :cond_13

    .line 394
    .line 395
    if-eqz v0, :cond_13

    .line 396
    .line 397
    move-object v12, v0

    .line 398
    goto :goto_e

    .line 399
    :cond_13
    const/4 v12, 0x0

    .line 400
    :cond_14
    :goto_e
    if-eqz v19, :cond_17

    .line 401
    .line 402
    if-eqz v18, :cond_15

    .line 403
    .line 404
    new-instance v0, Landroidx/camera/camera2/pipe/OutputStatus;

    .line 405
    .line 406
    const/16 v1, 0xb

    .line 407
    .line 408
    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/OutputStatus;-><init>(I)V

    .line 409
    .line 410
    .line 411
    :goto_f
    move-object/from16 v10, p7

    .line 412
    .line 413
    goto :goto_10

    .line 414
    :cond_15
    check-cast v6, Landroidx/camera/camera2/pipe/internal/OutputResult;

    .line 415
    .line 416
    if-eqz v6, :cond_16

    .line 417
    .line 418
    iget-object v0, v6, Landroidx/camera/camera2/pipe/internal/OutputResult;->result:Ljava/lang/Object;

    .line 419
    .line 420
    goto :goto_f

    .line 421
    :cond_16
    new-instance v0, Landroidx/camera/camera2/pipe/OutputStatus;

    .line 422
    .line 423
    const/16 v1, 0xa

    .line 424
    .line 425
    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/OutputStatus;-><init>(I)V

    .line 426
    .line 427
    .line 428
    goto :goto_f

    .line 429
    :goto_10
    invoke-interface {v10, v0}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;->onOutputComplete-3ejhThk(Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    :cond_17
    return-void

    .line 433
    :goto_11
    monitor-exit v17

    .line 434
    throw v0
.end method

.method public final removeOutputsOlderThan(JJZ)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v3, v2

    .line 23
    check-cast v3, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    .line 24
    .line 25
    iget-boolean v4, v3, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->isOutOfOrder:Z

    .line 26
    .line 27
    if-ne v4, p5, :cond_0

    .line 28
    .line 29
    iget-wide v4, v3, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputSequence:J

    .line 30
    .line 31
    cmp-long v4, v4, p1

    .line 32
    .line 33
    if-gez v4, :cond_0

    .line 34
    .line 35
    iget-wide v3, v3, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->cameraOutputNumber:J

    .line 36
    .line 37
    cmp-long v3, v3, p3

    .line 38
    .line 39
    if-gez v3, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

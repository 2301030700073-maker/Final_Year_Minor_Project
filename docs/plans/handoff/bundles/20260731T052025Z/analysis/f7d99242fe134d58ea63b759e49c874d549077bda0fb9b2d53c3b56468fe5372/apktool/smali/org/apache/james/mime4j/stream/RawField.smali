.class public final Lorg/apache/james/mime4j/stream/RawField;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/apache/james/mime4j/stream/Field;


# instance fields
.field public final synthetic $r8$classId:I

.field public body:Ljava/io/Serializable;

.field public delimiterIdx:I

.field public name:Ljava/lang/Object;

.field public nameLowerCase:Ljava/lang/Object;

.field public final raw:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/james/mime4j/stream/RawField;->$r8$classId:I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 69
    invoke-static {}, Landroidx/camera/core/impl/MutableOptionsBundle;->create()Landroidx/camera/core/impl/MutableOptionsBundle;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 72
    invoke-static {}, Landroidx/camera/core/impl/MutableTagBundle;->create()Landroidx/camera/core/impl/MutableTagBundle;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/apache/james/mime4j/stream/RawField;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 8
    .line 9
    sget-object p1, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessorKt;->graphRequestProcessorIds:Lkotlinx/atomicfu/AtomicInt;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 28
    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 35
    .line 36
    new-instance p1, Landroidx/biometric/BiometricPrompt;

    .line 37
    .line 38
    const/16 v0, 0x14

    .line 39
    .line 40
    invoke-direct {p1, v0, p0}, Landroidx/biometric/BiometricPrompt;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavGraph;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/stream/RawField;->$r8$classId:I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 47
    new-instance p1, Landroidx/collection/SparseArrayCompat;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    iput-object p1, p0, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$4;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/james/mime4j/stream/RawField;->$r8$classId:I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 64
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 65
    new-instance p1, Lokhttp3/internal/http1/HeadersReader;

    invoke-direct {p1}, Lokhttp3/internal/http1/HeadersReader;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Lokhttp3/ConnectionPool;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/james/mime4j/stream/RawField;->$r8$classId:I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 50
    iput p3, p0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 51
    iput-object p4, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 52
    const-string p1, "%s"

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 53
    invoke-static {p2, p1}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 54
    invoke-static {p2, p1}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    return-void

    .line 55
    :cond_0
    const-string p0, "recipientFormat must contain \'%s\'"

    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/util/ByteSequence;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/stream/RawField;->$r8$classId:I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    .line 57
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 58
    iput p2, p0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 59
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 60
    iput-object p4, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    return-void

    .line 61
    :cond_0
    const-string p0, "Field may not be null"

    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public abortCaptures$camera_camera2_pipe()V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 7
    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 15
    .line 16
    check-cast v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

    .line 37
    .line 38
    const-string v2, "InvokeInternalListeners"

    .line 39
    .line 40
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/4 v3, 0x0

    .line 50
    move v4, v3

    .line 51
    :goto_1
    if-ge v4, v2, :cond_1

    .line 52
    .line 53
    iget-object v5, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 60
    .line 61
    iget-object v6, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->listeners:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    move v7, v3

    .line 68
    :goto_2
    if-ge v7, v6, :cond_0

    .line 69
    .line 70
    iget-object v8, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->listeners:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    check-cast v8, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 77
    .line 78
    invoke-interface {v5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    invoke-interface {v8, v9}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v7, v7, 0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 92
    .line 93
    .line 94
    const-string v2, "InvokeRequestListeners"

    .line 95
    .line 96
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v2, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    move v4, v3

    .line 106
    :goto_3
    if-ge v4, v2, :cond_3

    .line 107
    .line 108
    iget-object v5, v1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 115
    .line 116
    invoke-interface {v5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    iget-object v6, v6, Landroidx/camera/camera2/pipe/Request;->listeners:Ljava/util/List;

    .line 121
    .line 122
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    move v7, v3

    .line 127
    :goto_4
    if-ge v7, v6, :cond_2

    .line 128
    .line 129
    invoke-interface {v5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    iget-object v8, v8, Landroidx/camera/camera2/pipe/Request;->listeners:Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    check-cast v8, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 140
    .line 141
    invoke-interface {v5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-interface {v8, v9}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    .line 146
    .line 147
    .line 148
    add-int/lit8 v7, v7, 0x1

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_4
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    .line 162
    .line 163
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->abortCaptures()V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :catchall_0
    move-exception p0

    .line 168
    monitor-exit v0

    .line 169
    throw p0
.end method

.method public addAllCameraCaptureCallbacks(Ljava/util/Collection;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/camera/core/impl/CameraCaptureCallback;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/stream/RawField;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public addDestination$navigation_common_release(Landroidx/navigation/NavDestination;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/navigation/NavGraph;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v2, p1, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 15
    .line 16
    iget v3, v2, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 17
    .line 18
    iget-object v4, v2, Landroidx/navigation/internal/NavDestinationImpl;->route:Ljava/io/Serializable;

    .line 19
    .line 20
    check-cast v4, Ljava/lang/String;

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p0, "Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML."

    .line 28
    .line 29
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :goto_0
    iget-object v5, v1, Landroidx/navigation/internal/NavDestinationImpl;->route:Ljava/io/Serializable;

    .line 34
    .line 35
    check-cast v5, Ljava/lang/String;

    .line 36
    .line 37
    const-string v6, "Destination "

    .line 38
    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const-string v0, " cannot have the same route as graph "

    .line 49
    .line 50
    invoke-static {v6, p1, v0, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    :goto_1
    iget v1, v1, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 55
    .line 56
    if-eq v3, v1, :cond_7

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroidx/navigation/NavDestination;

    .line 63
    .line 64
    if-ne v1, p1, :cond_4

    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    iget-object v3, p1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 68
    .line 69
    if-nez v3, :cond_6

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    iput-object v3, v1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 75
    .line 76
    :cond_5
    iput-object p0, p1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 77
    .line 78
    iget p0, v2, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 79
    .line 80
    invoke-virtual {v0, p0, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_6
    const-string p0, "Destination already has a parent set. Call NavGraph.remove() to remove the previous parent."

    .line 85
    .line 86
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_7
    const-string v0, " cannot have the same id as graph "

    .line 91
    .line 92
    invoke-static {v6, p1, v0, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public addImplementationOptions(Landroidx/camera/core/impl/Config;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Landroidx/camera/core/impl/Config;->listOptions()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/camera/core/impl/AutoValue_Config_Option;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v2, v1, v3}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v1}, Landroidx/camera/core/impl/Config;->retrieveOption(Landroidx/camera/core/impl/AutoValue_Config_Option;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object v3, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v3, Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 36
    .line 37
    invoke-interface {p1, v1}, Landroidx/camera/core/impl/Config;->getOptionPriority(Landroidx/camera/core/impl/AutoValue_Config_Option;)Landroidx/camera/core/impl/Config$OptionPriority;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v3, v1, v4, v2}, Landroidx/camera/core/impl/MutableOptionsBundle;->insertOption(Landroidx/camera/core/impl/AutoValue_Config_Option;Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-gez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/stream/RawField;->getOffset(I)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lokhttp3/internal/http1/HeadersReader;

    .line 21
    .line 22
    invoke-virtual {v1, p2, p3}, Lokhttp3/internal/http1/HeadersReader;->insert(IZ)V

    .line 23
    .line 24
    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/stream/RawField;->hideViewInternal(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/ArrayList;

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    add-int/lit8 p0, p0, -0x1

    .line 55
    .line 56
    :goto_1
    if-ltz p0, :cond_3

    .line 57
    .line 58
    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 65
    .line 66
    invoke-interface {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 p0, p0, -0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-gez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/stream/RawField;->getOffset(I)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lokhttp3/internal/http1/HeadersReader;

    .line 21
    .line 22
    invoke-virtual {v1, p2, p4}, Lokhttp3/internal/http1/HeadersReader;->insert(IZ)V

    .line 23
    .line 24
    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/stream/RawField;->hideViewInternal(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_5

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    .line 37
    .line 38
    .line 39
    move-result p4

    .line 40
    if-nez p4, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    if-eqz p4, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string p2, "Called attach on a child which is not detached: "

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0, p1}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    :goto_1
    sget-boolean p4, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 68
    .line 69
    if-eqz p4, :cond_4

    .line 70
    .line 71
    new-instance p4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v1, "reAttach "

    .line 74
    .line 75
    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p4

    .line 85
    const-string v1, "RecyclerView"

    .line 86
    .line 87
    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_4
    iget p4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 91
    .line 92
    and-int/lit16 p4, p4, -0x101

    .line 93
    .line 94
    iput p4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 98
    .line 99
    if-nez p0, :cond_6

    .line 100
    .line 101
    :goto_2
    invoke-static {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->access$000(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    new-instance p3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string p4, "No ViewHolder found for child: "

    .line 110
    .line 111
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const-string p4, ", index: "

    .line 122
    .line 123
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0
.end method

.method public build()Landroidx/camera/core/impl/CaptureConfig;
    .locals 9

    .line 1
    new-instance v0, Landroidx/camera/core/impl/CaptureConfig;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Landroidx/camera/core/impl/MutableOptionsBundle;

    .line 15
    .line 16
    invoke-static {v2}, Landroidx/camera/core/impl/OptionsBundle;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget v3, p0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 21
    .line 22
    new-instance v4, Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object v5, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 25
    .line 26
    check-cast v5, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Landroidx/camera/core/impl/MutableTagBundle;

    .line 34
    .line 35
    sget-object v5, Landroidx/camera/core/impl/TagBundle;->EMPTY_TAGBUNDLE:Landroidx/camera/core/impl/TagBundle;

    .line 36
    .line 37
    new-instance v5, Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v6, p0, Landroidx/camera/core/impl/TagBundle;->mTagMap:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_0

    .line 57
    .line 58
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    check-cast v7, Ljava/lang/String;

    .line 63
    .line 64
    iget-object v8, p0, Landroidx/camera/core/impl/TagBundle;->mTagMap:Landroid/util/ArrayMap;

    .line 65
    .line 66
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    new-instance p0, Landroidx/camera/core/impl/TagBundle;

    .line 75
    .line 76
    invoke-direct {p0, v5}, Landroidx/camera/core/impl/TagBundle;-><init>(Landroid/util/ArrayMap;)V

    .line 77
    .line 78
    .line 79
    move-object v5, p0

    .line 80
    invoke-direct/range {v0 .. v5}, Landroidx/camera/core/impl/CaptureConfig;-><init>(Ljava/util/ArrayList;Landroidx/camera/core/impl/OptionsBundle;ILjava/util/ArrayList;Landroidx/camera/core/impl/TagBundle;)V

    .line 81
    .line 82
    .line 83
    return-object v0
.end method

.method public createRecipientList(Ljava/util/List;)Landroid/text/SpannedString;
    .locals 7

    .line 1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 7
    .line 8
    move-object v3, v0

    .line 9
    check-cast v3, Ljava/lang/String;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v4, p0

    .line 14
    check-cast v4, Ljava/lang/String;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/16 v6, 0x70

    .line 18
    .line 19
    const-string v2, ", "

    .line 20
    .line 21
    move-object v0, p1

    .line 22
    invoke-static/range {v0 .. v6}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public detachViewFromParent(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/stream/RawField;->getOffset(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lokhttp3/internal/http1/HeadersReader;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lokhttp3/internal/http1/HeadersReader;->remove(I)Z

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "called detach on an already detached child "

    .line 46
    .line 47
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {p0, p1}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    :goto_0
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, "tmpDetach "

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "RecyclerView"

    .line 80
    .line 81
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :cond_2
    const/16 v1, 0x100

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 91
    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    :cond_4
    :goto_1
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->access$100(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v2, "No view at offset "

    .line 107
    .line 108
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0
.end method

.method public findNode$navigation_common_release(I)Landroidx/navigation/NavDestination;
    .locals 3

    .line 97
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    check-cast v0, Landroidx/navigation/NavGraph;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-virtual {p0, p1, v0, v2, v1}, Lorg/apache/james/mime4j/stream/RawField;->findNodeComprehensive$navigation_common_release(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public findNode$navigation_common_release(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lkotlin/UIntArray$Iterator;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, v2, v0}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lkotlin/sequences/ConstrainedOnceSequence;

    .line 22
    .line 23
    invoke-virtual {v0}, Lkotlin/sequences/ConstrainedOnceSequence;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v3, 0x0

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    move-object v4, v1

    .line 39
    check-cast v4, Landroidx/navigation/NavDestination;

    .line 40
    .line 41
    iget-object v5, v4, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 42
    .line 43
    iget-object v5, v5, Landroidx/navigation/internal/NavDestinationImpl;->route:Ljava/io/Serializable;

    .line 44
    .line 45
    check-cast v5, Ljava/lang/String;

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    invoke-static {v5, p1, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_2

    .line 53
    .line 54
    iget-object v4, v4, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 55
    .line 56
    invoke-virtual {v4, p1}, Landroidx/navigation/internal/NavDestinationImpl;->matchRoute$navigation_common_release(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-eqz v4, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move-object v1, v3

    .line 64
    :cond_2
    :goto_0
    check-cast v1, Landroidx/navigation/NavDestination;

    .line 65
    .line 66
    if-nez v1, :cond_5

    .line 67
    .line 68
    if-eqz p2, :cond_4

    .line 69
    .line 70
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p0, Landroidx/navigation/NavGraph;

    .line 73
    .line 74
    iget-object p0, p0, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 75
    .line 76
    if-eqz p0, :cond_4

    .line 77
    .line 78
    iget-object p0, p0, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_3

    .line 88
    .line 89
    return-object v3

    .line 90
    :cond_3
    invoke-virtual {p0, p1, v2}, Lorg/apache/james/mime4j/stream/RawField;->findNode$navigation_common_release(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :cond_4
    return-object v3

    .line 96
    :cond_5
    return-object v1
.end method

.method public findNodeComprehensive$navigation_common_release(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/navigation/NavGraph;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/collection/SparseArrayCompat;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/navigation/NavDestination;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    iget-object v3, v1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 25
    .line 26
    iget-object v4, p3, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 27
    .line 28
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_0
    move-object v1, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-eqz v1, :cond_2

    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_2
    :goto_0
    if-eqz p4, :cond_6

    .line 41
    .line 42
    new-instance v1, Lkotlin/UIntArray$Iterator;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-direct {v1, v3, p0}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Lkotlin/sequences/ConstrainedOnceSequence;

    .line 53
    .line 54
    invoke-virtual {p0}, Lkotlin/sequences/ConstrainedOnceSequence;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroidx/navigation/NavDestination;

    .line 69
    .line 70
    instance-of v4, v1, Landroidx/navigation/NavGraph;

    .line 71
    .line 72
    if-eqz v4, :cond_4

    .line 73
    .line 74
    invoke-virtual {v1, p2}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_4

    .line 79
    .line 80
    check-cast v1, Landroidx/navigation/NavGraph;

    .line 81
    .line 82
    iget-object v1, v1, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 83
    .line 84
    invoke-virtual {v1, p1, v0, p3, v3}, Lorg/apache/james/mime4j/stream/RawField;->findNodeComprehensive$navigation_common_release(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    move-object v1, v2

    .line 90
    :goto_1
    if-eqz v1, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    move-object v1, v2

    .line 94
    :cond_6
    :goto_2
    if-nez v1, :cond_8

    .line 95
    .line 96
    iget-object p0, v0, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 97
    .line 98
    if-eqz p0, :cond_7

    .line 99
    .line 100
    invoke-virtual {p0, p2}, Landroidx/navigation/NavGraph;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-nez p0, :cond_7

    .line 105
    .line 106
    iget-object p0, v0, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Landroidx/navigation/NavGraph;->impl:Lorg/apache/james/mime4j/stream/RawField;

    .line 112
    .line 113
    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/apache/james/mime4j/stream/RawField;->findNodeComprehensive$navigation_common_release(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0

    .line 118
    :cond_7
    return-object v2

    .line 119
    :cond_8
    return-object v1
.end method

.method public getBody()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/apache/james/mime4j/util/ByteSequence;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    if-eqz v0, :cond_d

    .line 13
    .line 14
    invoke-interface {v0}, Lorg/apache/james/mime4j/util/ByteSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget p0, p0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 19
    .line 20
    add-int/lit8 v2, p0, 0x1

    .line 21
    .line 22
    add-int/lit8 p0, p0, 0x2

    .line 23
    .line 24
    if-le v1, p0, :cond_1

    .line 25
    .line 26
    invoke-interface {v0, v2}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    and-int/lit16 v3, v3, 0xff

    .line 31
    .line 32
    int-to-char v3, v3

    .line 33
    invoke-static {v3}, Lokhttp3/Cookie$Companion;->isWhitespace(C)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    move v2, p0

    .line 40
    :cond_1
    sub-int/2addr v1, v2

    .line 41
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 42
    .line 43
    sget p0, Lorg/apache/james/mime4j/util/ContentUtil;->$r8$clinit:I

    .line 44
    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 48
    .line 49
    .line 50
    move v3, v2

    .line 51
    :goto_0
    add-int v4, v2, v1

    .line 52
    .line 53
    if-ge v3, v4, :cond_3

    .line 54
    .line 55
    invoke-interface {v0, v3}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    and-int/lit16 v4, v4, 0xff

    .line 60
    .line 61
    int-to-char v4, v4

    .line 62
    const v5, 0xff80

    .line 63
    .line 64
    .line 65
    and-int/2addr v5, v4

    .line 66
    if-nez v5, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-static {v0, v2, v1}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    :goto_1
    sget v0, Lorg/apache/james/mime4j/util/MimeUtil;->$r8$clinit:I

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/4 v1, 0x0

    .line 90
    move v2, v1

    .line 91
    :goto_2
    if-ge v2, v0, :cond_c

    .line 92
    .line 93
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    const/16 v4, 0xa

    .line 98
    .line 99
    const/16 v5, 0xd

    .line 100
    .line 101
    if-eq v3, v5, :cond_5

    .line 102
    .line 103
    if-ne v3, v4, :cond_4

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 116
    .line 117
    .line 118
    if-lez v2, :cond_6

    .line 119
    .line 120
    invoke-virtual {v3, p0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    :cond_6
    add-int/lit8 v1, v2, 0x1

    .line 124
    .line 125
    :goto_4
    if-ge v1, v0, :cond_a

    .line 126
    .line 127
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-eq v6, v5, :cond_7

    .line 132
    .line 133
    if-ne v6, v4, :cond_9

    .line 134
    .line 135
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 136
    .line 137
    if-le v1, v2, :cond_8

    .line 138
    .line 139
    invoke-virtual {v3, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    :cond_8
    move v2, v1

    .line 143
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    add-int/lit8 v0, v0, -0x1

    .line 151
    .line 152
    if-ge v2, v0, :cond_b

    .line 153
    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-lez v0, :cond_b

    .line 159
    .line 160
    add-int/lit8 v2, v2, 0x1

    .line 161
    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    invoke-virtual {v3, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    :cond_c
    return-object p0

    .line 174
    :cond_d
    const/4 p0, 0x0

    .line 175
    return-object p0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/stream/RawField;->getOffset(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public getChildCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 12
    .line 13
    check-cast p0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    sub-int/2addr v0, p0

    .line 20
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public getNameLowerCase()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    return-object p0
.end method

.method public getOffset(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/internal/http1/HeadersReader;

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    move v1, p1

    .line 19
    :goto_0
    if-ge v1, p0, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lokhttp3/internal/http1/HeadersReader;->countOnesBefore(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sub-int v2, v1, v2

    .line 26
    .line 27
    sub-int v2, p1, v2

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    :goto_1
    invoke-virtual {v0, v1}, Lokhttp3/internal/http1/HeadersReader;->get(I)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    return v1

    .line 41
    :cond_2
    add-int/2addr v1, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    :goto_2
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public getRaw()Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/apache/james/mime4j/util/ByteSequence;

    .line 4
    .line 5
    return-object p0
.end method

.method public getUnfilteredChildAt(I)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public getUnfilteredChildCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public hideViewInternal(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 11
    .line 12
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    iget v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 23
    .line 24
    const/4 v2, -0x1

    .line 25
    if-eq v1, v2, :cond_0

    .line 26
    .line 27
    iput v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 35
    .line 36
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x4

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iput v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public matchDeepLinkComprehensive$navigation_common_release(Landroidx/navigation/NavDestination$DeepLinkMatch;Lcom/fsck/k9/backend/imap/ImapSync;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 5

    .line 1
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/navigation/NavGraph;

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    move-object v2, v1

    .line 15
    check-cast v2, Landroidx/navigation/internal/NavGraphImpl$iterator$1;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/navigation/internal/NavGraphImpl$iterator$1;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/navigation/internal/NavGraphImpl$iterator$1;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroidx/navigation/NavDestination;

    .line 29
    .line 30
    invoke-static {v2, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2, p2}, Landroidx/navigation/NavDestination;->matchDeepLink(Lcom/fsck/k9/backend/imap/ImapSync;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    :cond_1
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/util/ArrayList;)Ljava/lang/Comparable;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    if-eqz p3, :cond_3

    .line 57
    .line 58
    invoke-virtual {v1, p4}, Landroidx/navigation/NavGraph;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-nez p3, :cond_3

    .line 63
    .line 64
    invoke-virtual {v1, p2, p0}, Landroidx/navigation/NavGraph;->matchDeepLinkComprehensive(Lcom/fsck/k9/backend/imap/ImapSync;Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    :cond_3
    const/4 p0, 0x3

    .line 69
    new-array p0, p0, [Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 70
    .line 71
    const/4 p2, 0x0

    .line 72
    aput-object p1, p0, p2

    .line 73
    .line 74
    const/4 p1, 0x1

    .line 75
    aput-object v0, p0, p1

    .line 76
    .line 77
    const/4 p1, 0x2

    .line 78
    aput-object v4, p0, p1

    .line 79
    .line 80
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/util/ArrayList;)Ljava/lang/Comparable;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 89
    .line 90
    return-object p0
.end method

.method public removeViewAt(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 4
    .line 5
    iget v1, p0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_3

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    if-eq v1, v3, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/stream/RawField;->getOffset(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    iput v3, p0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 28
    .line 29
    iput-object v1, p0, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    :try_start_1
    iput v2, p0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 33
    .line 34
    iput-object v4, p0, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    .line 35
    .line 36
    iget-object v2, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Lokhttp3/internal/http1/HeadersReader;

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Lokhttp3/internal/http1/HeadersReader;->remove(I)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/stream/RawField;->unhideViewInternal(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$4;->removeViewAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    iput v3, p0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 56
    .line 57
    iput-object v1, p0, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    .line 58
    .line 59
    return-void

    .line 60
    :goto_1
    iput v3, p0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 61
    .line 62
    iput-object v1, p0, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    .line 63
    .line 64
    throw p1

    .line 65
    :cond_2
    const-string p0, "Cannot call removeView(At) within removeViewIfHidden"

    .line 66
    .line 67
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    const-string p0, "Cannot call removeView(At) within removeView(At)"

    .line 72
    .line 73
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public setStartDestinationId$navigation_common_release(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/navigation/NavGraph;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 6
    .line 7
    iget v1, v1, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 8
    .line 9
    if-eq p1, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 12
    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/stream/RawField;->setStartDestinationRoute$navigation_common_release(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput p1, p0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 22
    .line 23
    iput-object v1, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const-string p0, "Start destination "

    .line 27
    .line 28
    const-string v1, " cannot use the same id as the graph "

    .line 29
    .line 30
    invoke-static {p0, p1, v1, v0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public setStartDestinationRoute$navigation_common_release(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/navigation/NavGraph;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, v0, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 10
    .line 11
    iget-object v1, v1, Landroidx/navigation/internal/NavDestinationImpl;->route:Ljava/io/Serializable;

    .line 12
    .line 13
    check-cast v1, Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    sget v0, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 28
    .line 29
    const-string v0, "android-app://androidx.navigation/"

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    :goto_0
    iput v0, p0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 40
    .line 41
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    const-string p0, "Cannot have an empty start destination route"

    .line 45
    .line 46
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    const-string p0, "Start destination "

    .line 51
    .line 52
    const-string v1, " cannot use the same route as the graph "

    .line 53
    .line 54
    invoke-static {p0, p1, v1, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public shutdown$camera_camera2_pipe()Lkotlin/Unit;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Closing "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "CXCP"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lkotlinx/atomicfu/AtomicBoolean;

    .line 23
    .line 24
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->disconnect$camera_camera2_pipe()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-object v1
.end method

.method public stopRepeating$camera_camera2_pipe()V
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->lock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    const-string v1, "CXCP"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v3, "#stopRepeating"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->session:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;

    .line 31
    .line 32
    invoke-interface {p0}, Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;->stopRepeating()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0

    .line 39
    throw p0
.end method

.method public submit$camera_camera2_pipe(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Z
    .locals 11

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lkotlinx/atomicfu/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-string p1, "CXCP"

    .line 25
    .line 26
    new-instance p3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p4, "Failed to submit "

    .line 29
    .line 30
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p2, ": "

    .line 37
    .line 38
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p0, " is closed."

    .line 45
    .line 46
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return v1

    .line 57
    :cond_0
    const-string v0, "CXCP#buildCaptureSequence"

    .line 58
    .line 59
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 63
    .line 64
    move-object v2, v0

    .line 65
    check-cast v2, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    .line 66
    .line 67
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->nameLowerCase:Ljava/lang/Object;

    .line 68
    .line 69
    move-object v8, v0

    .line 70
    check-cast v8, Landroidx/biometric/BiometricPrompt;

    .line 71
    .line 72
    move v3, p1

    .line 73
    move-object v4, p2

    .line 74
    move-object v5, p3

    .line 75
    move-object v6, p4

    .line 76
    move-object/from16 v7, p5

    .line 77
    .line 78
    move-object/from16 v9, p6

    .line 79
    .line 80
    invoke-virtual/range {v2 .. v9}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->build$1(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroidx/biometric/BiometricPrompt;Ljava/util/List;)Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

    .line 81
    .line 82
    .line 83
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 84
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 85
    .line 86
    .line 87
    if-nez p1, :cond_3

    .line 88
    .line 89
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    if-eqz p3, :cond_2

    .line 105
    .line 106
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    check-cast p3, Landroidx/camera/camera2/pipe/Request;

    .line 111
    .line 112
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    :goto_1
    const-string p1, "CXCP"

    .line 117
    .line 118
    new-instance p3, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string p4, "Failed to submit "

    .line 121
    .line 122
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string p2, ": "

    .line 129
    .line 130
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p0, " failed to build CaptureSequence."

    .line 137
    .line 138
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    return v1

    .line 149
    :cond_3
    iget-object p3, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast p3, Lkotlinx/atomicfu/AtomicBoolean;

    .line 152
    .line 153
    invoke-virtual {p3}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    .line 154
    .line 155
    .line 156
    move-result p3

    .line 157
    if-eqz p3, :cond_4

    .line 158
    .line 159
    const-string p1, "CXCP"

    .line 160
    .line 161
    new-instance p3, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string p4, "Failed to submit "

    .line 164
    .line 165
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string p2, ": "

    .line 172
    .line 173
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p0, " is closed."

    .line 180
    .line 181
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    return v1

    .line 192
    :cond_4
    iget-boolean p2, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->repeating:Z

    .line 193
    .line 194
    if-nez p2, :cond_5

    .line 195
    .line 196
    iget-object p2, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 197
    .line 198
    check-cast p2, Ljava/util/ArrayList;

    .line 199
    .line 200
    monitor-enter p2

    .line 201
    :try_start_1
    iget-object p3, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 202
    .line 203
    check-cast p3, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    .line 207
    .line 208
    monitor-exit p2

    .line 209
    goto :goto_2

    .line 210
    :catchall_0
    move-exception v0

    .line 211
    move-object p0, v0

    .line 212
    monitor-exit p2

    .line 213
    throw p0

    .line 214
    :cond_5
    :goto_2
    :try_start_2
    const-string p2, "CXCP"

    .line 215
    .line 216
    new-instance p3, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string p4, " submitting "

    .line 225
    .line 226
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p3

    .line 236
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    const-string p2, "InvokeInternalListeners"

    .line 240
    .line 241
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object p2, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 247
    .line 248
    .line 249
    move-result p2

    .line 250
    move p3, v1

    .line 251
    :goto_3
    if-ge p3, p2, :cond_7

    .line 252
    .line 253
    iget-object p4, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p4

    .line 259
    check-cast p4, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 260
    .line 261
    iget-object v0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->listeners:Ljava/util/List;

    .line 262
    .line 263
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    move v2, v1

    .line 268
    :goto_4
    if-ge v2, v0, :cond_6

    .line 269
    .line 270
    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->listeners:Ljava/util/List;

    .line 271
    .line 272
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    check-cast v3, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 277
    .line 278
    invoke-interface {v3, p4}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceCreated(Landroidx/camera/camera2/pipe/RequestMetadata;)V

    .line 279
    .line 280
    .line 281
    add-int/lit8 v2, v2, 0x1

    .line 282
    .line 283
    goto :goto_4

    .line 284
    :catchall_1
    move-exception v0

    .line 285
    move-object p2, v0

    .line 286
    move p3, v1

    .line 287
    goto/16 :goto_18

    .line 288
    .line 289
    :cond_6
    add-int/lit8 p3, p3, 0x1

    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 293
    .line 294
    .line 295
    const-string p2, "InvokeRequestListeners"

    .line 296
    .line 297
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    iget-object p2, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 301
    .line 302
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 303
    .line 304
    .line 305
    move-result p2

    .line 306
    move p3, v1

    .line 307
    :goto_5
    if-ge p3, p2, :cond_9

    .line 308
    .line 309
    iget-object p4, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object p4

    .line 315
    check-cast p4, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 316
    .line 317
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iget-object v0, v0, Landroidx/camera/camera2/pipe/Request;->listeners:Ljava/util/List;

    .line 322
    .line 323
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    move v2, v1

    .line 328
    :goto_6
    if-ge v2, v0, :cond_8

    .line 329
    .line 330
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    iget-object v3, v3, Landroidx/camera/camera2/pipe/Request;->listeners:Ljava/util/List;

    .line 335
    .line 336
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    check-cast v3, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 341
    .line 342
    invoke-interface {v3, p4}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceCreated(Landroidx/camera/camera2/pipe/RequestMetadata;)V

    .line 343
    .line 344
    .line 345
    add-int/lit8 v2, v2, 0x1

    .line 346
    .line 347
    goto :goto_6

    .line 348
    :cond_8
    add-int/lit8 p3, p3, 0x1

    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 352
    .line 353
    .line 354
    monitor-enter p1
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 355
    :try_start_3
    iget-object p2, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast p2, Lkotlinx/atomicfu/AtomicBoolean;

    .line 358
    .line 359
    invoke-virtual {p2}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    .line 360
    .line 361
    .line 362
    move-result p2

    .line 363
    if-eqz p2, :cond_e

    .line 364
    .line 365
    const-string p2, "CXCP"

    .line 366
    .line 367
    new-instance p3, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    const-string p4, "Failed to submit "

    .line 373
    .line 374
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    const-string p4, ": "

    .line 381
    .line 382
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string p4, " is closed."

    .line 389
    .line 390
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p3

    .line 397
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 398
    .line 399
    .line 400
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 401
    iget-boolean p2, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->repeating:Z

    .line 402
    .line 403
    if-nez p2, :cond_23

    .line 404
    .line 405
    iget-object p2, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 406
    .line 407
    check-cast p2, Ljava/util/ArrayList;

    .line 408
    .line 409
    monitor-enter p2

    .line 410
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 411
    .line 412
    check-cast p0, Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    monitor-exit p2

    .line 418
    const-string p0, "InvokeInternalListeners"

    .line 419
    .line 420
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    iget-object p0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 424
    .line 425
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 426
    .line 427
    .line 428
    move-result p0

    .line 429
    move p2, v1

    .line 430
    :goto_7
    if-ge p2, p0, :cond_b

    .line 431
    .line 432
    iget-object p3, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 433
    .line 434
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object p3

    .line 438
    check-cast p3, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 439
    .line 440
    iget-object p4, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->listeners:Ljava/util/List;

    .line 441
    .line 442
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    .line 443
    .line 444
    .line 445
    move-result p4

    .line 446
    move v0, v1

    .line 447
    :goto_8
    if-ge v0, p4, :cond_a

    .line 448
    .line 449
    iget-object v2, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->listeners:Ljava/util/List;

    .line 450
    .line 451
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    check-cast v2, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 456
    .line 457
    invoke-interface {p3}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    invoke-interface {v2, v3}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    .line 462
    .line 463
    .line 464
    add-int/lit8 v0, v0, 0x1

    .line 465
    .line 466
    goto :goto_8

    .line 467
    :cond_a
    add-int/lit8 p2, p2, 0x1

    .line 468
    .line 469
    goto :goto_7

    .line 470
    :cond_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 471
    .line 472
    .line 473
    const-string p0, "InvokeRequestListeners"

    .line 474
    .line 475
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    iget-object p0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 479
    .line 480
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 481
    .line 482
    .line 483
    move-result p0

    .line 484
    move p2, v1

    .line 485
    :goto_9
    if-ge p2, p0, :cond_d

    .line 486
    .line 487
    iget-object p3, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 488
    .line 489
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object p3

    .line 493
    check-cast p3, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 494
    .line 495
    invoke-interface {p3}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 496
    .line 497
    .line 498
    move-result-object p4

    .line 499
    iget-object p4, p4, Landroidx/camera/camera2/pipe/Request;->listeners:Ljava/util/List;

    .line 500
    .line 501
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    .line 502
    .line 503
    .line 504
    move-result p4

    .line 505
    move v0, v1

    .line 506
    :goto_a
    if-ge v0, p4, :cond_c

    .line 507
    .line 508
    invoke-interface {p3}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    iget-object v2, v2, Landroidx/camera/camera2/pipe/Request;->listeners:Ljava/util/List;

    .line 513
    .line 514
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v2

    .line 518
    check-cast v2, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 519
    .line 520
    invoke-interface {p3}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    invoke-interface {v2, v3}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    .line 525
    .line 526
    .line 527
    add-int/lit8 v0, v0, 0x1

    .line 528
    .line 529
    goto :goto_a

    .line 530
    :cond_c
    add-int/lit8 p2, p2, 0x1

    .line 531
    .line 532
    goto :goto_9

    .line 533
    :cond_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 534
    .line 535
    .line 536
    return v1

    .line 537
    :catchall_2
    move-exception v0

    .line 538
    move-object p2, v0

    .line 539
    goto/16 :goto_17

    .line 540
    .line 541
    :cond_e
    :try_start_5
    const-string p2, "CXCP#submit(CaptureSequence)"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 542
    .line 543
    :try_start_6
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    iget-object p2, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 547
    .line 548
    check-cast p2, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    .line 549
    .line 550
    invoke-virtual {p2, p1}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;->submit$1(Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;)Ljava/lang/Integer;

    .line 551
    .line 552
    .line 553
    move-result-object p2

    .line 554
    const/4 p3, -0x1

    .line 555
    if-eqz p2, :cond_f

    .line 556
    .line 557
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 558
    .line 559
    .line 560
    move-result p2

    .line 561
    goto :goto_b

    .line 562
    :catchall_3
    move-exception v0

    .line 563
    move-object p2, v0

    .line 564
    goto/16 :goto_16

    .line 565
    .line 566
    :cond_f
    move p2, p3

    .line 567
    :goto_b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 568
    .line 569
    .line 570
    move-result-object p4

    .line 571
    iput-object p4, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->_sequenceNumber:Ljava/lang/Integer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 572
    .line 573
    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 574
    .line 575
    .line 576
    :try_start_8
    monitor-exit p1

    .line 577
    if-eq p2, p3, :cond_14

    .line 578
    .line 579
    const-string p2, "InvokeInternalListeners"

    .line 580
    .line 581
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    iget-object p2, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 585
    .line 586
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 587
    .line 588
    .line 589
    move-result p2

    .line 590
    move p3, v1

    .line 591
    :goto_c
    if-ge p3, p2, :cond_11

    .line 592
    .line 593
    iget-object p4, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 594
    .line 595
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object p4

    .line 599
    check-cast p4, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 600
    .line 601
    iget-object v0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->listeners:Ljava/util/List;

    .line 602
    .line 603
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    move v2, v1

    .line 608
    :goto_d
    if-ge v2, v0, :cond_10

    .line 609
    .line 610
    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->listeners:Ljava/util/List;

    .line 611
    .line 612
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v3

    .line 616
    check-cast v3, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 617
    .line 618
    invoke-interface {v3, p4}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/RequestMetadata;)V

    .line 619
    .line 620
    .line 621
    add-int/lit8 v2, v2, 0x1

    .line 622
    .line 623
    goto :goto_d

    .line 624
    :cond_10
    add-int/lit8 p3, p3, 0x1

    .line 625
    .line 626
    goto :goto_c

    .line 627
    :cond_11
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 628
    .line 629
    .line 630
    const-string p2, "InvokeRequestListeners"

    .line 631
    .line 632
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    iget-object p2, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 636
    .line 637
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 638
    .line 639
    .line 640
    move-result p2

    .line 641
    move p3, v1

    .line 642
    :goto_e
    if-ge p3, p2, :cond_13

    .line 643
    .line 644
    iget-object p4, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 645
    .line 646
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object p4

    .line 650
    check-cast p4, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 651
    .line 652
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    iget-object v0, v0, Landroidx/camera/camera2/pipe/Request;->listeners:Ljava/util/List;

    .line 657
    .line 658
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 659
    .line 660
    .line 661
    move-result v0

    .line 662
    move v2, v1

    .line 663
    :goto_f
    if-ge v2, v0, :cond_12

    .line 664
    .line 665
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 666
    .line 667
    .line 668
    move-result-object v3

    .line 669
    iget-object v3, v3, Landroidx/camera/camera2/pipe/Request;->listeners:Ljava/util/List;

    .line 670
    .line 671
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v3

    .line 675
    check-cast v3, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 676
    .line 677
    invoke-interface {v3, p4}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/RequestMetadata;)V

    .line 678
    .line 679
    .line 680
    add-int/lit8 v2, v2, 0x1

    .line 681
    .line 682
    goto :goto_f

    .line 683
    :cond_12
    add-int/lit8 p3, p3, 0x1

    .line 684
    .line 685
    goto :goto_e

    .line 686
    :cond_13
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_8
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 687
    .line 688
    .line 689
    const/4 p2, 0x1

    .line 690
    :try_start_9
    const-string p3, "CXCP"

    .line 691
    .line 692
    new-instance p4, Ljava/lang/StringBuilder;

    .line 693
    .line 694
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    .line 696
    .line 697
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    const-string v0, " submitted "

    .line 701
    .line 702
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object p4

    .line 712
    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 713
    .line 714
    .line 715
    :goto_10
    move p3, p2

    .line 716
    goto :goto_11

    .line 717
    :catchall_4
    move-exception v0

    .line 718
    move-object p3, v0

    .line 719
    move-object v10, p3

    .line 720
    move p3, p2

    .line 721
    move-object p2, v10

    .line 722
    goto/16 :goto_18

    .line 723
    .line 724
    :cond_14
    :try_start_a
    const-string p2, "CXCP"

    .line 725
    .line 726
    new-instance p3, Ljava/lang/StringBuilder;

    .line 727
    .line 728
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 729
    .line 730
    .line 731
    const-string p4, "Failed to submit "

    .line 732
    .line 733
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    const-string p4, ": "

    .line 740
    .line 741
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    const-string p4, " received -1 from submit."

    .line 748
    .line 749
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object p3

    .line 756
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 757
    .line 758
    .line 759
    move p2, v1

    .line 760
    goto :goto_10

    .line 761
    :goto_11
    if-nez p3, :cond_19

    .line 762
    .line 763
    iget-boolean p3, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->repeating:Z

    .line 764
    .line 765
    if-nez p3, :cond_19

    .line 766
    .line 767
    iget-object p3, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 768
    .line 769
    check-cast p3, Ljava/util/ArrayList;

    .line 770
    .line 771
    monitor-enter p3

    .line 772
    :try_start_b
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 773
    .line 774
    check-cast p0, Ljava/util/ArrayList;

    .line 775
    .line 776
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 777
    .line 778
    .line 779
    monitor-exit p3

    .line 780
    const-string p0, "InvokeInternalListeners"

    .line 781
    .line 782
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    iget-object p0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 786
    .line 787
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 788
    .line 789
    .line 790
    move-result p0

    .line 791
    move p3, v1

    .line 792
    :goto_12
    if-ge p3, p0, :cond_16

    .line 793
    .line 794
    iget-object p4, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 795
    .line 796
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object p4

    .line 800
    check-cast p4, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 801
    .line 802
    iget-object v0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->listeners:Ljava/util/List;

    .line 803
    .line 804
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 805
    .line 806
    .line 807
    move-result v0

    .line 808
    move v2, v1

    .line 809
    :goto_13
    if-ge v2, v0, :cond_15

    .line 810
    .line 811
    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->listeners:Ljava/util/List;

    .line 812
    .line 813
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object v3

    .line 817
    check-cast v3, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 818
    .line 819
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 820
    .line 821
    .line 822
    move-result-object v4

    .line 823
    invoke-interface {v3, v4}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    .line 824
    .line 825
    .line 826
    add-int/lit8 v2, v2, 0x1

    .line 827
    .line 828
    goto :goto_13

    .line 829
    :cond_15
    add-int/lit8 p3, p3, 0x1

    .line 830
    .line 831
    goto :goto_12

    .line 832
    :cond_16
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 833
    .line 834
    .line 835
    const-string p0, "InvokeRequestListeners"

    .line 836
    .line 837
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    iget-object p0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 841
    .line 842
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 843
    .line 844
    .line 845
    move-result p0

    .line 846
    move p3, v1

    .line 847
    :goto_14
    if-ge p3, p0, :cond_18

    .line 848
    .line 849
    iget-object p4, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 850
    .line 851
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object p4

    .line 855
    check-cast p4, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 856
    .line 857
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    iget-object v0, v0, Landroidx/camera/camera2/pipe/Request;->listeners:Ljava/util/List;

    .line 862
    .line 863
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 864
    .line 865
    .line 866
    move-result v0

    .line 867
    move v2, v1

    .line 868
    :goto_15
    if-ge v2, v0, :cond_17

    .line 869
    .line 870
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 871
    .line 872
    .line 873
    move-result-object v3

    .line 874
    iget-object v3, v3, Landroidx/camera/camera2/pipe/Request;->listeners:Ljava/util/List;

    .line 875
    .line 876
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    move-result-object v3

    .line 880
    check-cast v3, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 881
    .line 882
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 883
    .line 884
    .line 885
    move-result-object v4

    .line 886
    invoke-interface {v3, v4}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    .line 887
    .line 888
    .line 889
    add-int/lit8 v2, v2, 0x1

    .line 890
    .line 891
    goto :goto_15

    .line 892
    :cond_17
    add-int/lit8 p3, p3, 0x1

    .line 893
    .line 894
    goto :goto_14

    .line 895
    :cond_18
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 896
    .line 897
    .line 898
    return p2

    .line 899
    :catchall_5
    move-exception v0

    .line 900
    move-object p0, v0

    .line 901
    monitor-exit p3

    .line 902
    throw p0

    .line 903
    :cond_19
    return p2

    .line 904
    :goto_16
    :try_start_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 905
    .line 906
    .line 907
    throw p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 908
    :goto_17
    :try_start_d
    monitor-exit p1

    .line 909
    throw p2
    :try_end_d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 910
    :goto_18
    if-nez p3, :cond_1e

    .line 911
    .line 912
    iget-boolean p3, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->repeating:Z

    .line 913
    .line 914
    if-nez p3, :cond_1e

    .line 915
    .line 916
    iget-object p3, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 917
    .line 918
    check-cast p3, Ljava/util/ArrayList;

    .line 919
    .line 920
    monitor-enter p3

    .line 921
    :try_start_e
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 922
    .line 923
    check-cast p0, Ljava/util/ArrayList;

    .line 924
    .line 925
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 926
    .line 927
    .line 928
    monitor-exit p3

    .line 929
    const-string p0, "InvokeInternalListeners"

    .line 930
    .line 931
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    iget-object p0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 935
    .line 936
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 937
    .line 938
    .line 939
    move-result p0

    .line 940
    move p3, v1

    .line 941
    :goto_19
    if-ge p3, p0, :cond_1b

    .line 942
    .line 943
    iget-object p4, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 944
    .line 945
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object p4

    .line 949
    check-cast p4, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 950
    .line 951
    iget-object v0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->listeners:Ljava/util/List;

    .line 952
    .line 953
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 954
    .line 955
    .line 956
    move-result v0

    .line 957
    move v2, v1

    .line 958
    :goto_1a
    if-ge v2, v0, :cond_1a

    .line 959
    .line 960
    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->listeners:Ljava/util/List;

    .line 961
    .line 962
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v3

    .line 966
    check-cast v3, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 967
    .line 968
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 969
    .line 970
    .line 971
    move-result-object v4

    .line 972
    invoke-interface {v3, v4}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    .line 973
    .line 974
    .line 975
    add-int/lit8 v2, v2, 0x1

    .line 976
    .line 977
    goto :goto_1a

    .line 978
    :cond_1a
    add-int/lit8 p3, p3, 0x1

    .line 979
    .line 980
    goto :goto_19

    .line 981
    :cond_1b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 982
    .line 983
    .line 984
    const-string p0, "InvokeRequestListeners"

    .line 985
    .line 986
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 987
    .line 988
    .line 989
    iget-object p0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 990
    .line 991
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 992
    .line 993
    .line 994
    move-result p0

    .line 995
    move p3, v1

    .line 996
    :goto_1b
    if-ge p3, p0, :cond_1d

    .line 997
    .line 998
    iget-object p4, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 999
    .line 1000
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1001
    .line 1002
    .line 1003
    move-result-object p4

    .line 1004
    check-cast p4, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 1005
    .line 1006
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    iget-object v0, v0, Landroidx/camera/camera2/pipe/Request;->listeners:Ljava/util/List;

    .line 1011
    .line 1012
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 1013
    .line 1014
    .line 1015
    move-result v0

    .line 1016
    move v2, v1

    .line 1017
    :goto_1c
    if-ge v2, v0, :cond_1c

    .line 1018
    .line 1019
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v3

    .line 1023
    iget-object v3, v3, Landroidx/camera/camera2/pipe/Request;->listeners:Ljava/util/List;

    .line 1024
    .line 1025
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v3

    .line 1029
    check-cast v3, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 1030
    .line 1031
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v4

    .line 1035
    invoke-interface {v3, v4}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    .line 1036
    .line 1037
    .line 1038
    add-int/lit8 v2, v2, 0x1

    .line 1039
    .line 1040
    goto :goto_1c

    .line 1041
    :cond_1c
    add-int/lit8 p3, p3, 0x1

    .line 1042
    .line 1043
    goto :goto_1b

    .line 1044
    :cond_1d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1045
    .line 1046
    .line 1047
    goto :goto_1d

    .line 1048
    :catchall_6
    move-exception v0

    .line 1049
    move-object p0, v0

    .line 1050
    monitor-exit p3

    .line 1051
    throw p0

    .line 1052
    :cond_1e
    :goto_1d
    throw p2

    .line 1053
    :catch_0
    iget-boolean p2, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->repeating:Z

    .line 1054
    .line 1055
    if-nez p2, :cond_23

    .line 1056
    .line 1057
    iget-object p2, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 1058
    .line 1059
    check-cast p2, Ljava/util/ArrayList;

    .line 1060
    .line 1061
    monitor-enter p2

    .line 1062
    :try_start_f
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 1063
    .line 1064
    check-cast p0, Ljava/util/ArrayList;

    .line 1065
    .line 1066
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 1067
    .line 1068
    .line 1069
    monitor-exit p2

    .line 1070
    const-string p0, "InvokeInternalListeners"

    .line 1071
    .line 1072
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    iget-object p0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 1076
    .line 1077
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 1078
    .line 1079
    .line 1080
    move-result p0

    .line 1081
    move p2, v1

    .line 1082
    :goto_1e
    if-ge p2, p0, :cond_20

    .line 1083
    .line 1084
    iget-object p3, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 1085
    .line 1086
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1087
    .line 1088
    .line 1089
    move-result-object p3

    .line 1090
    check-cast p3, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 1091
    .line 1092
    iget-object p4, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->listeners:Ljava/util/List;

    .line 1093
    .line 1094
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    .line 1095
    .line 1096
    .line 1097
    move-result p4

    .line 1098
    move v0, v1

    .line 1099
    :goto_1f
    if-ge v0, p4, :cond_1f

    .line 1100
    .line 1101
    iget-object v2, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->listeners:Ljava/util/List;

    .line 1102
    .line 1103
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v2

    .line 1107
    check-cast v2, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 1108
    .line 1109
    invoke-interface {p3}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v3

    .line 1113
    invoke-interface {v2, v3}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    .line 1114
    .line 1115
    .line 1116
    add-int/lit8 v0, v0, 0x1

    .line 1117
    .line 1118
    goto :goto_1f

    .line 1119
    :cond_1f
    add-int/lit8 p2, p2, 0x1

    .line 1120
    .line 1121
    goto :goto_1e

    .line 1122
    :cond_20
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1123
    .line 1124
    .line 1125
    const-string p0, "InvokeRequestListeners"

    .line 1126
    .line 1127
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1128
    .line 1129
    .line 1130
    iget-object p0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 1131
    .line 1132
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 1133
    .line 1134
    .line 1135
    move-result p0

    .line 1136
    move p2, v1

    .line 1137
    :goto_20
    if-ge p2, p0, :cond_22

    .line 1138
    .line 1139
    iget-object p3, p1, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->captureMetadataList:Ljava/util/ArrayList;

    .line 1140
    .line 1141
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1142
    .line 1143
    .line 1144
    move-result-object p3

    .line 1145
    check-cast p3, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 1146
    .line 1147
    invoke-interface {p3}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 1148
    .line 1149
    .line 1150
    move-result-object p4

    .line 1151
    iget-object p4, p4, Landroidx/camera/camera2/pipe/Request;->listeners:Ljava/util/List;

    .line 1152
    .line 1153
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    .line 1154
    .line 1155
    .line 1156
    move-result p4

    .line 1157
    move v0, v1

    .line 1158
    :goto_21
    if-ge v0, p4, :cond_21

    .line 1159
    .line 1160
    invoke-interface {p3}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v2

    .line 1164
    iget-object v2, v2, Landroidx/camera/camera2/pipe/Request;->listeners:Ljava/util/List;

    .line 1165
    .line 1166
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v2

    .line 1170
    check-cast v2, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 1171
    .line 1172
    invoke-interface {p3}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v3

    .line 1176
    invoke-interface {v2, v3}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    .line 1177
    .line 1178
    .line 1179
    add-int/lit8 v0, v0, 0x1

    .line 1180
    .line 1181
    goto :goto_21

    .line 1182
    :cond_21
    add-int/lit8 p2, p2, 0x1

    .line 1183
    .line 1184
    goto :goto_20

    .line 1185
    :cond_22
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1186
    .line 1187
    .line 1188
    goto :goto_22

    .line 1189
    :catchall_7
    move-exception v0

    .line 1190
    move-object p0, v0

    .line 1191
    monitor-exit p2

    .line 1192
    throw p0

    .line 1193
    :catch_1
    :cond_23
    :goto_22
    return v1

    .line 1194
    :catchall_8
    move-exception v0

    .line 1195
    move-object p0, v0

    .line 1196
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1197
    .line 1198
    .line 1199
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/stream/RawField;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lokhttp3/internal/http1/HeadersReader;

    .line 19
    .line 20
    invoke-virtual {v1}, Lokhttp3/internal/http1/HeadersReader;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", hidden list:"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 33
    .line 34
    check-cast p0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v1, "GraphRequestProcessor-"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget p0, p0, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :pswitch_3
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Lorg/apache/james/mime4j/util/ByteSequence;

    .line 68
    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ": "

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 94
    .line 95
    check-cast p0, Ljava/lang/String;

    .line 96
    .line 97
    if-eqz p0, :cond_1

    .line 98
    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    :goto_0
    return-object p0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unhideViewInternal(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 14
    .line 15
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iput v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 32
    .line 33
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    const/4 p0, 0x0

    .line 45
    iput p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 46
    .line 47
    :cond_1
    return-void
.end method

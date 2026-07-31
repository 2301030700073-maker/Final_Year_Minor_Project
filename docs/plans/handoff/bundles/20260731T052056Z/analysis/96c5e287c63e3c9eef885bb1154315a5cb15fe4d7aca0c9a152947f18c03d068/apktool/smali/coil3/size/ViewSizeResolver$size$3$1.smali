.class public Lcoil3/size/ViewSizeResolver$size$3$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final $preDrawListener:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final $viewTreeObserver:Ljava/lang/Object;

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public static synthetic $$$reportNull$$$0(I)V
    .locals 9

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    if-eq p0, v1, :cond_0

    .line 4
    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    .line 11
    .line 12
    :goto_0
    const/4 v3, 0x2

    .line 13
    if-eq p0, v1, :cond_1

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    move v4, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v4, v3

    .line 20
    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    .line 21
    .line 22
    const-string v5, "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction"

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x1

    .line 26
    if-eq p0, v7, :cond_4

    .line 27
    .line 28
    if-eq p0, v3, :cond_3

    .line 29
    .line 30
    if-eq p0, v1, :cond_2

    .line 31
    .line 32
    if-eq p0, v0, :cond_2

    .line 33
    .line 34
    const-string v8, "storageManager"

    .line 35
    .line 36
    aput-object v8, v4, v6

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    aput-object v5, v4, v6

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    const-string v8, "compute"

    .line 43
    .line 44
    aput-object v8, v4, v6

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    const-string v8, "map"

    .line 48
    .line 49
    aput-object v8, v4, v6

    .line 50
    .line 51
    :goto_2
    if-eq p0, v1, :cond_6

    .line 52
    .line 53
    if-eq p0, v0, :cond_5

    .line 54
    .line 55
    aput-object v5, v4, v7

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_5
    const-string v5, "raceCondition"

    .line 59
    .line 60
    aput-object v5, v4, v7

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_6
    const-string v5, "recursionDetected"

    .line 64
    .line 65
    aput-object v5, v4, v7

    .line 66
    .line 67
    :goto_3
    if-eq p0, v1, :cond_7

    .line 68
    .line 69
    if-eq p0, v0, :cond_7

    .line 70
    .line 71
    const-string v5, "<init>"

    .line 72
    .line 73
    aput-object v5, v4, v3

    .line 74
    .line 75
    :cond_7
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-eq p0, v1, :cond_8

    .line 80
    .line 81
    if-eq p0, v0, :cond_8

    .line 82
    .line 83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_4
    throw p0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->$viewTreeObserver:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->$preDrawListener:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->$preDrawListener:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->$viewTreeObserver:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 13
    .line 14
    iget-object v0, v3, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->exceptionHandlingStrategy:Lkotlin/reflect/jvm/internal/impl/storage/EmptySimpleLock;

    .line 15
    .line 16
    iget-object v4, v3, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->lock:Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;

    .line 17
    .line 18
    check-cast v2, Lj$/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->NULL_VALUE:Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$1;

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    .line 30
    .line 31
    if-eq v5, v8, :cond_0

    .line 32
    .line 33
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->unescapeThrowable(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    if-ne v5, v6, :cond_8

    .line 37
    .line 38
    move-object v5, v7

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->lock()V

    .line 41
    .line 42
    .line 43
    :try_start_0
    invoke-virtual {v2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    const/4 v9, 0x3

    .line 50
    const-string v10, ""

    .line 51
    .line 52
    if-ne v5, v8, :cond_3

    .line 53
    .line 54
    :try_start_1
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->RECURSION_WAS_DETECTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    .line 55
    .line 56
    invoke-virtual {v3, v10, p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->recursionDetectedDefault(Ljava/lang/String;Ljava/lang/Object;)Lkotlinx/serialization/json/internal/Composer;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    if-eqz v11, :cond_2

    .line 61
    .line 62
    iget-boolean v12, v11, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    .line 63
    .line 64
    if-nez v12, :cond_3

    .line 65
    .line 66
    iget-object v5, v11, Lkotlinx/serialization/json/internal/Composer;->writer:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    :cond_1
    :goto_0
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->unlock()V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_3

    .line 74
    :cond_2
    :try_start_2
    invoke-static {v9}, Lcoil3/size/ViewSizeResolver$size$3$1;->$$$reportNull$$$0(I)V

    .line 75
    .line 76
    .line 77
    throw v7

    .line 78
    :cond_3
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->RECURSION_WAS_DETECTED:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    .line 79
    .line 80
    if-ne v5, v11, :cond_5

    .line 81
    .line 82
    invoke-virtual {v3, v10, p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->recursionDetectedDefault(Ljava/lang/String;Ljava/lang/Object;)Lkotlinx/serialization/json/internal/Composer;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-eqz v3, :cond_4

    .line 87
    .line 88
    iget-boolean v9, v3, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    .line 89
    .line 90
    if-nez v9, :cond_5

    .line 91
    .line 92
    iget-object v5, v3, Lkotlinx/serialization/json/internal/Composer;->writer:Ljava/lang/Object;

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    invoke-static {v9}, Lcoil3/size/ViewSizeResolver$size$3$1;->$$$reportNull$$$0(I)V

    .line 96
    .line 97
    .line 98
    throw v7

    .line 99
    :cond_5
    if-eqz v5, :cond_6

    .line 100
    .line 101
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->unescapeThrowable(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    .line 103
    .line 104
    if-ne v5, v6, :cond_1

    .line 105
    .line 106
    move-object v5, v7

    .line 107
    goto :goto_0

    .line 108
    :cond_6
    :try_start_3
    invoke-virtual {v2, p1, v8}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 112
    .line 113
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    if-nez v5, :cond_7

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_7
    move-object v6, v5

    .line 121
    :goto_1
    invoke-virtual {v2, p1, v6}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-ne v1, v8, :cond_9

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    :goto_2
    return-object v5

    .line 129
    :cond_9
    invoke-virtual {p0, p1, v1}, Lcoil3/size/ViewSizeResolver$size$3$1;->raceCondition(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    :catchall_1
    move-exception v1

    .line 135
    :try_start_4
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->isProcessCanceledException(Ljava/lang/Throwable;)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-nez v3, :cond_c

    .line 140
    .line 141
    if-eq v1, v7, :cond_b

    .line 142
    .line 143
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper;

    .line 144
    .line 145
    invoke-direct {v3, v1}, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper;-><init>(Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, p1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;->COMPUTING:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$NotValue;

    .line 153
    .line 154
    if-eq v2, v3, :cond_a

    .line 155
    .line 156
    invoke-virtual {p0, p1, v2}, Lcoil3/size/ViewSizeResolver$size$3$1;->raceCondition(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    throw p0

    .line 161
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    throw v1

    .line 165
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    throw v1

    .line 169
    :cond_c
    invoke-virtual {v2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    check-cast v1, Ljava/lang/RuntimeException;

    .line 173
    .line 174
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 175
    :goto_3
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->unlock()V

    .line 176
    .line 177
    .line 178
    throw p0

    .line 179
    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    .line 180
    .line 181
    check-cast v3, Lcoil3/size/RealViewSizeResolver;

    .line 182
    .line 183
    check-cast v2, Landroid/view/ViewTreeObserver;

    .line 184
    .line 185
    check-cast v1, Lcoil3/size/ViewSizeResolver$size$3$preDrawListener$1;

    .line 186
    .line 187
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    if-eqz p0, :cond_d

    .line 192
    .line 193
    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 194
    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_d
    iget-object p0, v3, Lcoil3/size/RealViewSizeResolver;->view:Landroid/view/View;

    .line 198
    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-virtual {p0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 204
    .line 205
    .line 206
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 207
    .line 208
    return-object p0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public raceCondition(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/AssertionError;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Race condition detected on input "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, ". Old value is "

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, " under "

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcoil3/size/ViewSizeResolver$size$3$1;->this$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 29
    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->sanitizeStackTrace(Ljava/lang/AssertionError;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.class public final Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;
.super Lnet/openid/appauth/JsonUtil$Field;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;


# instance fields
.field public final outputId:I

.field public final remainingOutputResults:Lkotlinx/atomicfu/AtomicInt;

.field public final streamId:I

.field public final synthetic this$0:Landroidx/camera/camera2/pipe/internal/FrameState;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/internal/FrameState;IILkotlinx/atomicfu/AtomicInt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->this$0:Landroidx/camera/camera2/pipe/internal/FrameState;

    .line 2
    .line 3
    const/4 p1, 0x4

    .line 4
    invoke-direct {p0, p1}, Lnet/openid/appauth/JsonUtil$Field;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iput p2, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->streamId:I

    .line 8
    .line 9
    iput p3, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->outputId:I

    .line 10
    .line 11
    iput-object p4, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->remainingOutputResults:Lkotlinx/atomicfu/AtomicInt;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onOutputComplete-3ejhThk(Ljava/lang/Object;)V
    .locals 5

    .line 1
    sget-object v0, Landroidx/camera/camera2/pipe/internal/FrameState$State;->COMPLETE:Landroidx/camera/camera2/pipe/internal/FrameState$State;

    .line 2
    .line 3
    instance-of v1, p1, Landroidx/camera/camera2/pipe/OutputStatus;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    move-object v2, p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    :goto_0
    check-cast v2, Landroidx/camera/camera2/pipe/media/OutputImage;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v2, :cond_5

    .line 16
    .line 17
    instance-of p1, v2, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    check-cast v2, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->acquire()Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const-class p1, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;

    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {v2, p1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->acquire()Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    new-instance p1, Landroidx/core/view/MenuHostHelper;

    .line 48
    .line 49
    invoke-direct {p1, v2}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/camera/camera2/pipe/media/OutputImage;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;

    .line 53
    .line 54
    invoke-direct {v1, v2, p1}, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;-><init>(Landroidx/camera/camera2/pipe/media/OutputImage;Landroidx/core/view/MenuHostHelper;)V

    .line 55
    .line 56
    .line 57
    move-object p1, v1

    .line 58
    :goto_1
    iget-object v1, p0, Lnet/openid/appauth/JsonUtil$Field;->defaultValue:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 61
    .line 62
    new-instance v2, Landroidx/camera/camera2/pipe/internal/OutputResult;

    .line 63
    .line 64
    invoke-direct {v2, p1}, Landroidx/camera/camera2/pipe/internal/OutputResult;-><init>(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_8

    .line 72
    .line 73
    instance-of v1, p1, Ljava/lang/AutoCloseable;

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->close()V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    instance-of v1, p1, Ljava/util/concurrent/ExecutorService;

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    .line 86
    .line 87
    invoke-static {p1}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m(Ljava/util/concurrent/ExecutorService;)V

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_5
    iget-object v2, p0, Lnet/openid/appauth/JsonUtil$Field;->defaultValue:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v2, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 98
    .line 99
    if-nez v1, :cond_6

    .line 100
    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    move p1, v3

    .line 104
    goto :goto_2

    .line 105
    :cond_6
    if-nez p1, :cond_7

    .line 106
    .line 107
    const/4 p1, 0x2

    .line 108
    goto :goto_2

    .line 109
    :cond_7
    check-cast p1, Landroidx/camera/camera2/pipe/OutputStatus;

    .line 110
    .line 111
    iget p1, p1, Landroidx/camera/camera2/pipe/OutputStatus;->value:I

    .line 112
    .line 113
    :goto_2
    new-instance v1, Landroidx/camera/camera2/pipe/OutputStatus;

    .line 114
    .line 115
    invoke-direct {v1, p1}, Landroidx/camera/camera2/pipe/OutputStatus;-><init>(I)V

    .line 116
    .line 117
    .line 118
    new-instance p1, Landroidx/camera/camera2/pipe/internal/OutputResult;

    .line 119
    .line 120
    invoke-direct {p1, v1}, Landroidx/camera/camera2/pipe/internal/OutputResult;-><init>(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :cond_8
    :goto_3
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->remainingOutputResults:Lkotlinx/atomicfu/AtomicInt;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    sget-object v1, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 132
    .line 133
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_10

    .line 138
    .line 139
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->this$0:Landroidx/camera/camera2/pipe/internal/FrameState;

    .line 140
    .line 141
    iget-object p1, p1, Landroidx/camera/camera2/pipe/internal/FrameState;->listenerStates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-nez v2, :cond_f

    .line 155
    .line 156
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->this$0:Landroidx/camera/camera2/pipe/internal/FrameState;

    .line 157
    .line 158
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->remainingStreamCount:Lkotlinx/atomicfu/AtomicInt;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_9

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_9
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->state:Lkotlinx/atomicfu/AtomicRef;

    .line 171
    .line 172
    :cond_a
    iget-object p1, v1, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    .line 173
    .line 174
    move-object v2, p1

    .line 175
    check-cast v2, Landroidx/camera/camera2/pipe/internal/FrameState$State;

    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eqz v4, :cond_c

    .line 182
    .line 183
    if-ne v4, v3, :cond_b

    .line 184
    .line 185
    move-object v2, v0

    .line 186
    goto :goto_4

    .line 187
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 188
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v1, "Unexpected frame state for "

    .line 192
    .line 193
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string p0, "! State is "

    .line 200
    .line 201
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const/16 p0, 0x20

    .line 208
    .line 209
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p1

    .line 220
    :cond_c
    sget-object v2, Landroidx/camera/camera2/pipe/internal/FrameState$State;->STREAM_RESULTS_COMPLETE:Landroidx/camera/camera2/pipe/internal/FrameState$State;

    .line 221
    .line 222
    :goto_4
    invoke-virtual {v1, p1, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-eqz p1, :cond_a

    .line 227
    .line 228
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->listenerStates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-nez v1, :cond_e

    .line 242
    .line 243
    if-ne v2, v0, :cond_10

    .line 244
    .line 245
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameState;->listenerStates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 246
    .line 247
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-nez p1, :cond_d

    .line 259
    .line 260
    goto :goto_5

    .line 261
    :cond_d
    invoke-static {p0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    throw p0

    .line 266
    :cond_e
    invoke-static {p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    throw p0

    .line 271
    :cond_f
    invoke-static {p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    throw p0

    .line 276
    :cond_10
    :goto_5
    return-void
.end method

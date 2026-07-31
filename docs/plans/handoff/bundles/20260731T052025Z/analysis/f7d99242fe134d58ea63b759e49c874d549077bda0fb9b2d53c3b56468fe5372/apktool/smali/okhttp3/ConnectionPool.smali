.class public final Lokhttp3/ConnectionPool;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;
.implements Lcom/mikepenz/fastadapter/IIdDistributor;
.implements Lcom/takisoft/datetimepicker/widget/DayPickerView$OnDaySelectedListener;
.implements Ldagger/internal/Provider;
.implements Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;
.implements Lnet/thunderbird/core/common/state/StateMachine;


# instance fields
.field public final synthetic $r8$classId:I

.field public delegate:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, Lokhttp3/ConnectionPool;->$r8$classId:I

    const/16 v0, 0x10

    sparse-switch p1, :sswitch_data_0

    .line 421
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 422
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    sget-object p1, Lokhttp3/internal/concurrent/TaskRunner;->INSTANCE:Lokhttp3/internal/concurrent/TaskRunner;

    .line 424
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    new-instance v0, Lokhttp3/internal/connection/RealConnectionPool;

    invoke-direct {v0, p1}, Lokhttp3/internal/connection/RealConnectionPool;-><init>(Lokhttp3/internal/concurrent/TaskRunner;)V

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-object v0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    return-void

    .line 428
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 430
    iput-object p1, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    return-void

    .line 431
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    return-void

    .line 433
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, -0x2

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    return-void

    .line 435
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    new-instance p1, Lokhttp3/ConnectionPool;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {p1, v0, v1}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x13 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 420
    iput p1, p0, Lokhttp3/ConnectionPool;->$r8$classId:I

    iput-object p2, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 411
    iput p1, p0, Lokhttp3/ConnectionPool;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;I)V
    .locals 0

    const/16 p2, 0x9

    iput p2, p0, Lokhttp3/ConnectionPool;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p1, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lokhttp3/ConnectionPool;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 418
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 419
    iput-object v0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/core/logging/Logger;Lkotlin/time/Clock;Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;Landroidx/room/InvalidationTracker$implementation$1;Landroidx/room/InvalidationTracker$implementation$1;Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;)V
    .locals 9

    .line 1
    const/16 v0, 0x1d

    .line 2
    .line 3
    iput v0, p0, Lokhttp3/ConnectionPool;->$r8$classId:I

    .line 4
    .line 5
    new-instance v1, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;

    .line 6
    .line 7
    const/16 v7, 0x9

    .line 8
    .line 9
    move-object v2, p1

    .line 10
    move-object v6, p2

    .line 11
    move-object v4, p4

    .line 12
    move-object v5, p5

    .line 13
    move-object v3, p6

    .line 14
    invoke-direct/range {v1 .. v7}, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;

    .line 18
    .line 19
    invoke-direct {p1, p3}, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;-><init>(Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iget-object v4, p1, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->initialState:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    if-eqz v4, :cond_b

    .line 29
    .line 30
    iget-object p3, p1, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->stateRegistrar:Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    invoke-interface {p3}, Ljava/util/Map;->size()I

    .line 33
    .line 34
    .line 35
    move-result p4

    .line 36
    const/4 p5, 0x1

    .line 37
    if-le p4, p5, :cond_a

    .line 38
    .line 39
    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 40
    .line 41
    .line 42
    move-result-object p4

    .line 43
    check-cast p4, Ljava/lang/Iterable;

    .line 44
    .line 45
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    sget-object p5, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 50
    .line 51
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result p6

    .line 55
    if-eqz p6, :cond_0

    .line 56
    .line 57
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p6

    .line 61
    check-cast p6, Lnet/thunderbird/core/common/state/DefaultStateMachine$StateRegistry;

    .line 62
    .line 63
    iget-object p6, p6, Lnet/thunderbird/core/common/state/DefaultStateMachine$StateRegistry;->transitions:Ljava/util/Map;

    .line 64
    .line 65
    invoke-static {p5, p6}, Lkotlin/collections/MapsKt__MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    .line 68
    move-result-object p5

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result p4

    .line 74
    if-nez p4, :cond_9

    .line 75
    .line 76
    new-instance p4, Ljava/util/LinkedHashMap;

    .line 77
    .line 78
    invoke-direct {p4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 82
    .line 83
    .line 84
    move-result-object p6

    .line 85
    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p6

    .line 89
    :cond_1
    :goto_1
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_2

    .line 94
    .line 95
    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Ljava/util/Map$Entry;

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Lnet/thunderbird/core/common/state/DefaultStateMachine$StateRegistry;

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget-object v2, v2, Lnet/thunderbird/core/common/state/DefaultStateMachine$StateRegistry;->transitions:Ljava/util/Map;

    .line 111
    .line 112
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_1

    .line 117
    .line 118
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {p4, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result p6

    .line 134
    if-eqz p6, :cond_8

    .line 135
    .line 136
    iget-object p4, p1, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 137
    .line 138
    iget-object p6, p1, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->logTag:Ljava/lang/String;

    .line 139
    .line 140
    iget-object v1, p1, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->debuggerBuilder:Landroidx/compose/material/ripple/StateLayer;

    .line 141
    .line 142
    if-eqz v1, :cond_7

    .line 143
    .line 144
    iget-boolean v2, v1, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    .line 145
    .line 146
    if-eqz v2, :cond_6

    .line 147
    .line 148
    iget-object v2, v1, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v2, Lnet/thunderbird/core/logging/Logger;

    .line 151
    .line 152
    if-eqz v2, :cond_5

    .line 153
    .line 154
    iget-object v3, v1, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v3, Ljava/lang/String;

    .line 157
    .line 158
    iget-object v5, v1, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v5, Lkotlin/time/Clock;

    .line 161
    .line 162
    if-eqz v5, :cond_4

    .line 163
    .line 164
    iget-object p2, v1, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 167
    .line 168
    new-instance v1, Lorg/slf4j/event/EventRecodingLogger;

    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 180
    .line 181
    .line 182
    iput-object v5, v1, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/Object;

    .line 183
    .line 184
    new-instance v6, Lkotlin/collections/ArrayDeque;

    .line 185
    .line 186
    invoke-direct {v6}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 187
    .line 188
    .line 189
    iput-object v6, v1, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 190
    .line 191
    new-instance v6, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;

    .line 192
    .line 193
    sget-object v7, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 194
    .line 195
    const/4 v7, 0x2

    .line 196
    sget-object v8, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 197
    .line 198
    invoke-static {v7, v8}, Lkotlin/time/InstantKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 199
    .line 200
    .line 201
    move-result-wide v7

    .line 202
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 212
    .line 213
    .line 214
    iput-object v2, v6, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->logger:Ljava/lang/Object;

    .line 215
    .line 216
    iput-object v5, v6, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->clock:Ljava/lang/Object;

    .line 217
    .line 218
    iput-wide v7, v6, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->fullDumpCooldown:J

    .line 219
    .line 220
    if-eqz v3, :cond_3

    .line 221
    .line 222
    const-string v2, "$"

    .line 223
    .line 224
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    goto :goto_2

    .line 229
    :cond_3
    const-string v2, ""

    .line 230
    .line 231
    :goto_2
    const-string v3, "StatePrettyPrinter"

    .line 232
    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    iput-object v2, v6, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->logTag:Ljava/lang/Object;

    .line 238
    .line 239
    new-instance v2, Lnet/thunderbird/core/common/state/debug/ValueFormatter;

    .line 240
    .line 241
    invoke-direct {v2, p2}, Lnet/thunderbird/core/common/state/debug/ValueFormatter;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 242
    .line 243
    .line 244
    new-instance p2, Lokhttp3/ConnectionPool;

    .line 245
    .line 246
    const/16 v3, 0x1a

    .line 247
    .line 248
    invoke-direct {p2, v3, v2}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    new-instance v3, Lcom/google/zxing/BinaryBitmap;

    .line 252
    .line 253
    invoke-direct {v3, v0, v2, p2}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    iput-object v3, v6, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->formatter:Ljava/lang/Object;

    .line 257
    .line 258
    sget-object p2, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    .line 259
    .line 260
    const-wide v2, -0x2ed378be301L

    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    const p2, 0x3b9ac9ff

    .line 266
    .line 267
    .line 268
    invoke-static {p2, v2, v3}, Lkotlin/time/InstantKt;->fromEpochSeconds(IJ)Lkotlin/time/Instant;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    iput-object p2, v6, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->lastFullDumpTimestamp:Ljava/lang/Object;

    .line 273
    .line 274
    iput-object v6, v1, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/lang/Object;

    .line 275
    .line 276
    move-object p2, v1

    .line 277
    goto :goto_3

    .line 278
    :cond_4
    const-string p0, "clock must be provided for StateMachineDebugger"

    .line 279
    .line 280
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw p2

    .line 284
    :cond_5
    const-string p0, "logger must be provided for StateMachineDebugger"

    .line 285
    .line 286
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw p2

    .line 290
    :cond_6
    const-string p0, "StateMachineDebugger must be enabled to use"

    .line 291
    .line 292
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw p2

    .line 296
    :cond_7
    :goto_3
    new-instance v3, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 297
    .line 298
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 305
    .line 306
    .line 307
    iput-object p4, v3, Lcom/fsck/k9/mailstore/LockableDatabase;->mDb:Ljava/lang/Object;

    .line 308
    .line 309
    iput-object p6, v3, Lcom/fsck/k9/mailstore/LockableDatabase;->mReadLock:Ljava/lang/Object;

    .line 310
    .line 311
    iput-object p2, v3, Lcom/fsck/k9/mailstore/LockableDatabase;->mWriteLock:Ljava/lang/Object;

    .line 312
    .line 313
    iput-object p3, v3, Lcom/fsck/k9/mailstore/LockableDatabase;->context:Ljava/lang/Object;

    .line 314
    .line 315
    iput-object p5, v3, Lcom/fsck/k9/mailstore/LockableDatabase;->storageFilesProvider:Ljava/lang/Object;

    .line 316
    .line 317
    new-instance p2, Lkotlinx/coroutines/sync/MutexImpl;

    .line 318
    .line 319
    invoke-direct {p2}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 320
    .line 321
    .line 322
    iput-object p2, v3, Lcom/fsck/k9/mailstore/LockableDatabase;->inTransaction:Ljava/lang/Object;

    .line 323
    .line 324
    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    iput-object p2, v3, Lcom/fsck/k9/mailstore/LockableDatabase;->mSchemaDefinition:Ljava/lang/Object;

    .line 329
    .line 330
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/StateFlowImpl;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 331
    .line 332
    .line 333
    move-result-object p2

    .line 334
    iput-object p2, v3, Lcom/fsck/k9/mailstore/LockableDatabase;->generalSettingsManager:Ljava/lang/Object;

    .line 335
    .line 336
    new-instance v2, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 337
    .line 338
    const/16 v6, 0x16

    .line 339
    .line 340
    const/4 v7, 0x0

    .line 341
    const/4 v5, 0x0

    .line 342
    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;IZ)V

    .line 343
    .line 344
    .line 345
    const/4 p2, 0x3

    .line 346
    iget-object p1, p1, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->scope:Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 347
    .line 348
    invoke-static {p1, v5, v5, v2, p2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 349
    .line 350
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    .line 353
    .line 354
    iput-object v3, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 355
    .line 356
    return-void

    .line 357
    :cond_8
    invoke-virtual {p4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    move-object v0, p0

    .line 362
    check-cast v0, Ljava/lang/Iterable;

    .line 363
    .line 364
    new-instance v4, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    .line 365
    .line 366
    const/16 p0, 0x16

    .line 367
    .line 368
    invoke-direct {v4, p0}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    .line 369
    .line 370
    .line 371
    const/16 v5, 0x1e

    .line 372
    .line 373
    const-string v1, ", "

    .line 374
    .line 375
    const/4 v2, 0x0

    .line 376
    const/4 v3, 0x0

    .line 377
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    const-string p1, "Only the final states can have no transitions. States without transaction: [ "

    .line 382
    .line 383
    const-string p3, " ]"

    .line 384
    .line 385
    invoke-static {p1, p0, p3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    throw p2

    .line 393
    :cond_9
    const-string p0, "At least one transition must be defined."

    .line 394
    .line 395
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    throw p2

    .line 399
    :cond_a
    const-string p0, "At least two states must be defined."

    .line 400
    .line 401
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    throw p2

    .line 405
    :cond_b
    const-string p0, "Initial state is required."

    .line 406
    .line 407
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    throw p2
.end method

.method public constructor <init>(Lnet/thunderbird/feature/account/AccountId;)V
    .locals 1

    const/16 v0, 0x1c

    iput v0, p0, Lokhttp3/ConnectionPool;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object p1, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    return-void
.end method

.method public static appendEntryChanges(Ljava/lang/StringBuilder;Ljava/util/Iterator;Ljava/util/Iterator;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Lnet/thunderbird/core/common/state/debug/DiffContext;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p7

    .line 8
    .line 9
    iget v3, v3, Lnet/thunderbird/core/common/state/debug/DiffContext;->indentSize:I

    .line 10
    .line 11
    add-int/lit8 v4, v3, 0x2

    .line 12
    .line 13
    const-string v5, " "

    .line 14
    .line 15
    invoke-static {v5, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    move-object/from16 v7, p5

    .line 20
    .line 21
    invoke-static {v7, v6}, Lkotlin/text/StringsKt__IndentKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v6, 0xa

    .line 29
    .line 30
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    :goto_0
    const/4 v8, 0x1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    if-ne v9, v8, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    if-eqz p2, :cond_8

    .line 45
    .line 46
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    if-ne v9, v8, :cond_8

    .line 51
    .line 52
    :goto_1
    const/4 v9, 0x0

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    if-ne v10, v8, :cond_1

    .line 60
    .line 61
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    move-object v10, v9

    .line 67
    :goto_2
    if-eqz p2, :cond_2

    .line 68
    .line 69
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    if-ne v11, v8, :cond_2

    .line 74
    .line 75
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    :cond_2
    invoke-interface {v2, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    check-cast v8, Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    const-string v12, ": "

    .line 90
    .line 91
    const-string v13, "]"

    .line 92
    .line 93
    const-string v14, "["

    .line 94
    .line 95
    const-string v15, "Required value was null."

    .line 96
    .line 97
    if-nez v11, :cond_5

    .line 98
    .line 99
    add-int/lit8 v11, v7, 0x1

    .line 100
    .line 101
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    if-nez v9, :cond_3

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_3
    move-object v10, v9

    .line 109
    :goto_3
    if-eqz v10, :cond_4

    .line 110
    .line 111
    invoke-interface {v1, v7, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-interface {v2, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    check-cast v9, Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    new-instance v10, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    invoke-virtual {v7, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    const-string v10, " -> "

    .line 150
    .line 151
    invoke-static {v7, v8, v10, v9}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-static {v5, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    invoke-static {v7, v8}, Lkotlin/text/StringsKt__IndentKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    goto :goto_5

    .line 164
    :cond_4
    invoke-static {v15}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_5
    add-int/lit8 v11, v7, 0x1

    .line 169
    .line 170
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    if-nez v9, :cond_6

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_6
    move-object v10, v9

    .line 178
    :goto_4
    if-eqz v10, :cond_7

    .line 179
    .line 180
    invoke-interface {v1, v7, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    new-instance v9, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    invoke-virtual {v7, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    const-string v9, " (No changes)"

    .line 210
    .line 211
    invoke-static {v7, v8, v9}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    invoke-static {v5, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    invoke-static {v7, v8}, Lkotlin/text/StringsKt__IndentKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    :goto_5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    move v7, v11

    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :cond_7
    invoke-static {v15}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :cond_8
    invoke-static {v5, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    move-object/from16 v2, p6

    .line 241
    .line 242
    invoke-static {v2, v1}, Lkotlin/text/StringsKt__IndentKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    return-void
.end method

.method public static dbCreateDatabaseFromScratch(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 1
    const-string v0, "DROP TABLE IF EXISTS folders"

    .line 2
    .line 3
    const-string v1, "CREATE TABLE folders (id INTEGER PRIMARY KEY,name TEXT, last_updated INTEGER, unread_count INTEGER, visible_limit INTEGER, status TEXT, flagged_count INTEGER default 0, integrate INTEGER, top_group INTEGER, sync_enabled INTEGER DEFAULT 0, push_enabled INTEGER DEFAULT 0, visible INTEGER DEFAULT 1, notifications_enabled INTEGER DEFAULT 0, more_messages TEXT default \"unknown\", server_id TEXT, local_only INTEGER, type TEXT DEFAULT \"regular\", account_id TEXT)"

    .line 4
    .line 5
    const-string v2, "DROP TABLE IF EXISTS account_extra_values"

    .line 6
    .line 7
    const-string v3, "CREATE TABLE account_extra_values (name TEXT NOT NULL PRIMARY KEY, value_text TEXT, value_integer INTEGER )"

    .line 8
    .line 9
    invoke-static {p0, v2, v3, v0, v1}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "CREATE INDEX IF NOT EXISTS folders_account_id ON folders(account_id)"

    .line 13
    .line 14
    const-string v1, "DROP TABLE IF EXISTS folder_extra_values"

    .line 15
    .line 16
    const-string v2, "DROP INDEX IF EXISTS folder_server_id"

    .line 17
    .line 18
    const-string v3, "CREATE INDEX folder_server_id ON folders (server_id)"

    .line 19
    .line 20
    invoke-static {p0, v2, v3, v0, v1}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "CREATE TABLE messages (id INTEGER PRIMARY KEY, deleted INTEGER default 0, folder_id INTEGER, uid TEXT, subject TEXT, date INTEGER, flags TEXT, sender_list TEXT, to_list TEXT, cc_list TEXT, bcc_list TEXT, reply_to_list TEXT, attachment_count INTEGER, internal_date INTEGER, message_id TEXT, preview_type TEXT default \"none\", preview TEXT, mime_type TEXT, normalized_subject_hash INTEGER, empty INTEGER default 0, read INTEGER default 0, flagged INTEGER default 0, answered INTEGER default 0, forwarded INTEGER default 0, message_part_id INTEGER,encryption_type TEXT,new_message INTEGER DEFAULT 0,account_id TEXT)"

    .line 24
    .line 25
    const-string v1, "DROP INDEX IF EXISTS new_messages"

    .line 26
    .line 27
    const-string v2, "CREATE TABLE folder_extra_values (folder_id INTEGER NOT NULL, name TEXT NOT NULL, value_text TEXT, value_integer INTEGER, PRIMARY KEY (folder_id, name))"

    .line 28
    .line 29
    const-string v3, "DROP TABLE IF EXISTS messages"

    .line 30
    .line 31
    invoke-static {p0, v2, v3, v0, v1}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "CREATE TRIGGER new_message_reset AFTER UPDATE OF read ON messages FOR EACH ROW WHEN NEW.read = 1 AND NEW.new_message = 1 BEGIN UPDATE messages SET new_message = 0 WHERE ROWID = NEW.ROWID; END"

    .line 35
    .line 36
    const-string v1, "DROP TABLE IF EXISTS message_parts"

    .line 37
    .line 38
    const-string v2, "CREATE INDEX IF NOT EXISTS new_messages ON messages(new_message)"

    .line 39
    .line 40
    const-string v3, "CREATE INDEX IF NOT EXISTS messages_account_id ON messages(account_id)"

    .line 41
    .line 42
    invoke-static {p0, v2, v3, v0, v1}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "CREATE INDEX IF NOT EXISTS msg_uid ON messages (uid, folder_id)"

    .line 46
    .line 47
    const-string v1, "DROP INDEX IF EXISTS msg_folder_id"

    .line 48
    .line 49
    const-string v2, "CREATE TABLE message_parts (id INTEGER PRIMARY KEY, type INTEGER NOT NULL, root INTEGER, parent INTEGER NOT NULL, seq INTEGER NOT NULL, mime_type TEXT, decoded_body_size INTEGER, display_name TEXT, header TEXT, encoding TEXT, charset TEXT, data_location INTEGER NOT NULL, data BLOB, preamble TEXT, epilogue TEXT, boundary TEXT, content_id TEXT, server_extra TEXT)"

    .line 50
    .line 51
    const-string v3, "CREATE TRIGGER set_message_part_root AFTER INSERT ON message_parts BEGIN UPDATE message_parts SET root=id WHERE root IS NULL AND ROWID = NEW.ROWID; END"

    .line 52
    .line 53
    invoke-static {p0, v2, v3, v0, v1}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "DROP INDEX IF EXISTS msg_empty"

    .line 57
    .line 58
    const-string v1, "CREATE INDEX IF NOT EXISTS msg_empty ON messages (empty)"

    .line 59
    .line 60
    const-string v2, "DROP INDEX IF EXISTS msg_folder_id_date"

    .line 61
    .line 62
    const-string v3, "CREATE INDEX IF NOT EXISTS msg_folder_id_deleted_date ON messages (folder_id,deleted,internal_date)"

    .line 63
    .line 64
    invoke-static {p0, v2, v3, v0, v1}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "DROP INDEX IF EXISTS msg_flagged"

    .line 68
    .line 69
    const-string v1, "CREATE INDEX IF NOT EXISTS msg_flagged ON messages (flagged)"

    .line 70
    .line 71
    const-string v2, "DROP INDEX IF EXISTS msg_read"

    .line 72
    .line 73
    const-string v3, "CREATE INDEX IF NOT EXISTS msg_read ON messages (read)"

    .line 74
    .line 75
    invoke-static {p0, v2, v3, v0, v1}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v0, "DROP INDEX IF EXISTS message_parts_root"

    .line 79
    .line 80
    const-string v1, "CREATE INDEX IF NOT EXISTS message_parts_root ON message_parts (root)"

    .line 81
    .line 82
    const-string v2, "DROP INDEX IF EXISTS msg_composite"

    .line 83
    .line 84
    const-string v3, "CREATE INDEX IF NOT EXISTS msg_composite ON messages (deleted, empty,folder_id,flagged,read)"

    .line 85
    .line 86
    invoke-static {p0, v2, v3, v0, v1}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v0, "DROP INDEX IF EXISTS threads_message_id"

    .line 90
    .line 91
    const-string v1, "CREATE INDEX IF NOT EXISTS threads_message_id ON threads (message_id)"

    .line 92
    .line 93
    const-string v2, "DROP TABLE IF EXISTS threads"

    .line 94
    .line 95
    const-string v3, "CREATE TABLE threads (id INTEGER PRIMARY KEY, message_id INTEGER, root INTEGER, parent INTEGER)"

    .line 96
    .line 97
    invoke-static {p0, v2, v3, v0, v1}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v0, "DROP INDEX IF EXISTS threads_parent"

    .line 101
    .line 102
    const-string v1, "CREATE INDEX IF NOT EXISTS threads_parent ON threads (parent)"

    .line 103
    .line 104
    const-string v2, "DROP INDEX IF EXISTS threads_root"

    .line 105
    .line 106
    const-string v3, "CREATE INDEX IF NOT EXISTS threads_root ON threads (root)"

    .line 107
    .line 108
    invoke-static {p0, v2, v3, v0, v1}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v0, "DROP TABLE IF EXISTS outbox_state"

    .line 112
    .line 113
    const-string v1, "CREATE TABLE outbox_state (message_id INTEGER PRIMARY KEY NOT NULL REFERENCES messages(id) ON DELETE CASCADE,send_state TEXT,number_of_send_attempts INTEGER DEFAULT 0,error_timestamp INTEGER DEFAULT 0,error TEXT)"

    .line 114
    .line 115
    const-string v2, "DROP TRIGGER IF EXISTS set_thread_root"

    .line 116
    .line 117
    const-string v3, "CREATE TRIGGER set_thread_root AFTER INSERT ON threads BEGIN UPDATE threads SET root=id WHERE root IS NULL AND ROWID = NEW.ROWID; END"

    .line 118
    .line 119
    invoke-static {p0, v2, v3, v0, v1}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string v0, "DROP TRIGGER IF EXISTS delete_folder"

    .line 123
    .line 124
    const-string v1, "CREATE TRIGGER delete_folder BEFORE DELETE ON folders BEGIN DELETE FROM messages WHERE old.id = folder_id; END;"

    .line 125
    .line 126
    const-string v2, "DROP TABLE IF EXISTS pending_commands"

    .line 127
    .line 128
    const-string v3, "CREATE TABLE pending_commands (id INTEGER PRIMARY KEY, command TEXT, data TEXT)"

    .line 129
    .line 130
    invoke-static {p0, v2, v3, v0, v1}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v0, "DROP TRIGGER IF EXISTS delete_message"

    .line 134
    .line 135
    const-string v1, "CREATE TRIGGER delete_message BEFORE DELETE ON messages BEGIN DELETE FROM message_parts WHERE root = OLD.message_part_id; DELETE FROM messages_fulltext WHERE docid = OLD.id; DELETE FROM threads WHERE message_id = OLD.id; END"

    .line 136
    .line 137
    const-string v2, "DROP TRIGGER IF EXISTS delete_folder_extra_values"

    .line 138
    .line 139
    const-string v3, "CREATE TRIGGER delete_folder_extra_values BEFORE DELETE ON folders BEGIN DELETE FROM folder_extra_values WHERE old.id = folder_id; END;"

    .line 140
    .line 141
    invoke-static {p0, v2, v3, v0, v1}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string v0, "DROP TABLE IF EXISTS notifications"

    .line 145
    .line 146
    const-string v1, "CREATE TABLE notifications (message_id INTEGER PRIMARY KEY NOT NULL REFERENCES messages(id) ON DELETE CASCADE,notification_id INTEGER UNIQUE,timestamp INTEGER NOT NULL)"

    .line 147
    .line 148
    const-string v2, "DROP TABLE IF EXISTS messages_fulltext"

    .line 149
    .line 150
    const-string v3, "CREATE VIRTUAL TABLE messages_fulltext USING fts4 (fulltext)"

    .line 151
    .line 152
    invoke-static {p0, v2, v3, v0, v1}, Lkotlinx/io/Sink$-CC;->m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v0, "DROP INDEX IF EXISTS notifications_timestamp"

    .line 156
    .line 157
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v0, "CREATE INDEX IF NOT EXISTS notifications_timestamp ON notifications(timestamp)"

    .line 161
    .line 162
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method public static setDelegate(Lokhttp3/ConnectionPool;Ldagger/internal/Provider;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ldagger/internal/Provider;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw p0
.end method


# virtual methods
.method public appendScalarDiff(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;Lnet/thunderbird/core/common/state/debug/DiffContext;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget v0, p4, Lnet/thunderbird/core/common/state/debug/DiffContext;->indentSize:I

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lnet/thunderbird/core/common/state/debug/ValueFormatter;

    .line 6
    .line 7
    invoke-static {p0, p2}, Lnet/thunderbird/core/common/state/debug/ValueFormatter;->format$default(Lnet/thunderbird/core/common/state/debug/ValueFormatter;Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p0, p3}, Lnet/thunderbird/core/common/state/debug/ValueFormatter;->format$default(Lnet/thunderbird/core/common/state/debug/ValueFormatter;Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    const-string v1, " "

    .line 20
    .line 21
    const/16 v2, 0xa

    .line 22
    .line 23
    const-string v3, ": "

    .line 24
    .line 25
    const-string v4, ""

    .line 26
    .line 27
    if-nez p3, :cond_1

    .line 28
    .line 29
    if-eqz p5, :cond_0

    .line 30
    .line 31
    invoke-virtual {p5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    :cond_0
    const-string p3, " -> "

    .line 36
    .line 37
    invoke-static {v4, p2, p3, p0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {v1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p0, p2}, Lkotlin/text/StringsKt__IndentKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget-boolean p0, p4, Lnet/thunderbird/core/common/state/debug/DiffContext;->isStateClassChanged:Z

    .line 57
    .line 58
    if-eqz p0, :cond_3

    .line 59
    .line 60
    if-eqz p5, :cond_2

    .line 61
    .line 62
    invoke-virtual {p5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    :cond_2
    const-string p0, " (No changes)"

    .line 67
    .line 68
    invoke-static {v4, p2, p0}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {v1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-static {p0, p2}, Lkotlin/text/StringsKt__IndentKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :cond_3
    return-void
.end method

.method public buildDiff(Ljava/lang/Object;Ljava/lang/Object;Lnet/thunderbird/core/common/state/debug/DiffContext;)Ljava/lang/String;
    .locals 20

    .line 1
    move-object/from16 v4, p3

    .line 2
    .line 3
    iget-boolean v8, v4, Lnet/thunderbird/core/common/state/debug/DiffContext;->isStateClassChanged:Z

    .line 4
    .line 5
    iget v9, v4, Lnet/thunderbird/core/common/state/debug/DiffContext;->indentSize:I

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    if-eqz p2, :cond_1c

    .line 15
    .line 16
    :cond_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-static/range {p1 .. p1}, Lkotlin/ranges/RangesKt;->toPropertyMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v1, 0x0

    .line 24
    :goto_0
    sget-object v2, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    move-object v11, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move-object v11, v1

    .line 31
    :goto_1
    if-eqz p2, :cond_3

    .line 32
    .line 33
    invoke-static/range {p2 .. p2}, Lkotlin/ranges/RangesKt;->toPropertyMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    goto :goto_2

    .line 38
    :cond_3
    const/4 v1, 0x0

    .line 39
    :goto_2
    if-nez v1, :cond_4

    .line 40
    .line 41
    move-object v12, v2

    .line 42
    goto :goto_3

    .line 43
    :cond_4
    move-object v12, v1

    .line 44
    :goto_3
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    move-object/from16 v2, p1

    .line 58
    .line 59
    move-object/from16 v3, p2

    .line 60
    .line 61
    move-object v1, v0

    .line 62
    move-object/from16 v0, p0

    .line 63
    .line 64
    invoke-virtual/range {v0 .. v5}, Lokhttp3/ConnectionPool;->appendScalarDiff(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;Lnet/thunderbird/core/common/state/debug/DiffContext;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    move-object v0, v1

    .line 68
    goto/16 :goto_10

    .line 69
    .line 70
    :cond_5
    move-object/from16 v13, p0

    .line 71
    .line 72
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Ljava/lang/Iterable;

    .line 81
    .line 82
    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v14

    .line 94
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_1c

    .line 99
    .line 100
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    move-object v5, v1

    .line 105
    check-cast v5, Ljava/lang/String;

    .line 106
    .line 107
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-eqz v2, :cond_6

    .line 116
    .line 117
    invoke-static {v2}, Lkotlin/ranges/RangesKt;->toPropertyMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-nez v6, :cond_6

    .line 126
    .line 127
    const/4 v6, 0x1

    .line 128
    goto :goto_5

    .line 129
    :cond_6
    const/4 v6, 0x0

    .line 130
    :goto_5
    if-eqz v3, :cond_7

    .line 131
    .line 132
    invoke-static {v3}, Lkotlin/ranges/RangesKt;->toPropertyMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-nez v7, :cond_7

    .line 141
    .line 142
    const/4 v7, 0x1

    .line 143
    goto :goto_6

    .line 144
    :cond_7
    const/4 v7, 0x0

    .line 145
    :goto_6
    const-string v15, " "

    .line 146
    .line 147
    const-string v10, ": "

    .line 148
    .line 149
    const/16 v1, 0xa

    .line 150
    .line 151
    if-eqz v6, :cond_d

    .line 152
    .line 153
    if-eqz v7, :cond_d

    .line 154
    .line 155
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_b

    .line 160
    .line 161
    if-eqz v8, :cond_c

    .line 162
    .line 163
    if-eqz v2, :cond_8

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    goto :goto_7

    .line 174
    :cond_8
    const/4 v2, 0x0

    .line 175
    :goto_7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    if-eqz v2, :cond_9

    .line 179
    .line 180
    invoke-virtual {v2}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    if-nez v2, :cond_a

    .line 185
    .line 186
    :cond_9
    const-string v2, "null "

    .line 187
    .line 188
    :cond_a
    const-string v3, "(No changes)"

    .line 189
    .line 190
    invoke-static {v5, v10, v2, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-static {v15, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-static {v2, v3}, Lkotlin/text/StringsKt__IndentKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    goto :goto_8

    .line 209
    :cond_b
    const-string v4, ":"

    .line 210
    .line 211
    invoke-static {v5, v4}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-static {v15, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-static {v4, v5}, Lkotlin/text/StringsKt__IndentKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    add-int/lit8 v1, v9, 0x2

    .line 230
    .line 231
    new-instance v4, Lnet/thunderbird/core/common/state/debug/DiffContext;

    .line 232
    .line 233
    invoke-direct {v4, v1, v8}, Lnet/thunderbird/core/common/state/debug/DiffContext;-><init>(IZ)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v13, v2, v3, v4}, Lokhttp3/ConnectionPool;->buildDiff(Ljava/lang/Object;Ljava/lang/Object;Lnet/thunderbird/core/common/state/debug/DiffContext;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    :cond_c
    :goto_8
    move/from16 v17, v8

    .line 244
    .line 245
    move-object/from16 v19, v11

    .line 246
    .line 247
    goto/16 :goto_f

    .line 248
    .line 249
    :cond_d
    instance-of v6, v2, Ljava/util/Map;

    .line 250
    .line 251
    const-string v7, " (No changes)"

    .line 252
    .line 253
    const-string v4, " -> "

    .line 254
    .line 255
    if-eqz v6, :cond_15

    .line 256
    .line 257
    instance-of v6, v3, Ljava/util/Map;

    .line 258
    .line 259
    if-eqz v6, :cond_15

    .line 260
    .line 261
    check-cast v2, Ljava/util/Map;

    .line 262
    .line 263
    check-cast v3, Ljava/util/Map;

    .line 264
    .line 265
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    move/from16 v17, v8

    .line 274
    .line 275
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 280
    .line 281
    .line 282
    move-result-object v18

    .line 283
    move-object/from16 v19, v11

    .line 284
    .line 285
    move-object/from16 v11, v18

    .line 286
    .line 287
    check-cast v11, Ljava/lang/Iterable;

    .line 288
    .line 289
    invoke-static {v8, v11}, Lorg/jsoup/helper/Validate;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 294
    .line 295
    .line 296
    move-result v11

    .line 297
    if-eqz v11, :cond_f

    .line 298
    .line 299
    :cond_e
    const/4 v8, 0x0

    .line 300
    :goto_9
    const/4 v11, 0x5

    .line 301
    goto :goto_b

    .line 302
    :cond_f
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 307
    .line 308
    .line 309
    move-result v11

    .line 310
    if-eqz v11, :cond_e

    .line 311
    .line 312
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v11

    .line 316
    move-object/from16 v18, v8

    .line 317
    .line 318
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v8

    .line 322
    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v11

    .line 326
    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v8

    .line 330
    if-nez v8, :cond_10

    .line 331
    .line 332
    const/4 v8, 0x1

    .line 333
    goto :goto_9

    .line 334
    :cond_10
    move-object/from16 v8, v18

    .line 335
    .line 336
    goto :goto_a

    .line 337
    :goto_b
    if-gt v6, v11, :cond_12

    .line 338
    .line 339
    if-le v1, v11, :cond_11

    .line 340
    .line 341
    goto :goto_d

    .line 342
    :cond_11
    const/4 v11, 0x0

    .line 343
    :goto_c
    move-object/from16 v16, v2

    .line 344
    .line 345
    goto :goto_e

    .line 346
    :cond_12
    :goto_d
    const/4 v11, 0x1

    .line 347
    goto :goto_c

    .line 348
    :goto_e
    const-string v2, " entries}"

    .line 349
    .line 350
    move-object/from16 v18, v3

    .line 351
    .line 352
    const-string/jumbo v3, "{"

    .line 353
    .line 354
    .line 355
    if-eqz v8, :cond_13

    .line 356
    .line 357
    if-eqz v11, :cond_13

    .line 358
    .line 359
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    new-instance v7, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v6

    .line 377
    invoke-static {v1, v3, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-virtual {v5, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-static {v2, v6, v4, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-static {v15, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    invoke-static {v1, v2}, Lkotlin/text/StringsKt__IndentKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const/16 v1, 0xa

    .line 401
    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    goto/16 :goto_f

    .line 406
    .line 407
    :cond_13
    if-eqz v8, :cond_14

    .line 408
    .line 409
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    new-instance v3, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 426
    .line 427
    const/16 v4, 0x1c

    .line 428
    .line 429
    invoke-direct {v3, v4}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 430
    .line 431
    .line 432
    new-instance v4, Lnet/thunderbird/core/common/state/debug/StateDiffer$$ExternalSyntheticLambda1;

    .line 433
    .line 434
    const/4 v6, 0x0

    .line 435
    invoke-direct {v4, v13, v6}, Lnet/thunderbird/core/common/state/debug/StateDiffer$$ExternalSyntheticLambda1;-><init>(Lokhttp3/ConnectionPool;I)V

    .line 436
    .line 437
    .line 438
    const-string/jumbo v5, "{"

    .line 439
    .line 440
    .line 441
    const-string/jumbo v6, "}"

    .line 442
    .line 443
    .line 444
    move-object/from16 v7, p3

    .line 445
    .line 446
    invoke-static/range {v0 .. v7}, Lokhttp3/ConnectionPool;->appendEntryChanges(Ljava/lang/StringBuilder;Ljava/util/Iterator;Ljava/util/Iterator;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Lnet/thunderbird/core/common/state/debug/DiffContext;)V

    .line 447
    .line 448
    .line 449
    goto/16 :goto_f

    .line 450
    .line 451
    :cond_14
    if-eqz v17, :cond_1b

    .line 452
    .line 453
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    invoke-virtual {v5, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    invoke-static {v2, v1, v7}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-static {v15, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    invoke-static {v1, v2}, Lkotlin/text/StringsKt__IndentKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    const/16 v1, 0xa

    .line 491
    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    goto/16 :goto_f

    .line 496
    .line 497
    :cond_15
    move/from16 v17, v8

    .line 498
    .line 499
    move-object/from16 v19, v11

    .line 500
    .line 501
    const/4 v6, 0x0

    .line 502
    instance-of v1, v2, Ljava/util/Collection;

    .line 503
    .line 504
    if-eqz v1, :cond_1a

    .line 505
    .line 506
    instance-of v1, v3, Ljava/util/Collection;

    .line 507
    .line 508
    if-eqz v1, :cond_1a

    .line 509
    .line 510
    check-cast v2, Ljava/util/Collection;

    .line 511
    .line 512
    check-cast v3, Ljava/util/Collection;

    .line 513
    .line 514
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 515
    .line 516
    .line 517
    move-result v1

    .line 518
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 519
    .line 520
    .line 521
    move-result v8

    .line 522
    const/4 v11, 0x5

    .line 523
    if-gt v1, v11, :cond_16

    .line 524
    .line 525
    if-le v8, v11, :cond_17

    .line 526
    .line 527
    :cond_16
    const/4 v6, 0x1

    .line 528
    :cond_17
    const-string v11, " items]"

    .line 529
    .line 530
    move-object/from16 p2, v2

    .line 531
    .line 532
    const-string v2, "["

    .line 533
    .line 534
    if-eq v1, v8, :cond_18

    .line 535
    .line 536
    if-eqz v6, :cond_18

    .line 537
    .line 538
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    new-instance v3, Ljava/lang/StringBuilder;

    .line 542
    .line 543
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    invoke-static {v8, v2, v11}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    invoke-virtual {v5, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v3

    .line 564
    invoke-static {v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    invoke-static {v15, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    invoke-static {v1, v2}, Lkotlin/text/StringsKt__IndentKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    const/16 v1, 0xa

    .line 580
    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    goto :goto_f

    .line 585
    :cond_18
    if-eq v1, v8, :cond_19

    .line 586
    .line 587
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    new-instance v3, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;

    .line 596
    .line 597
    const/16 v4, 0x1d

    .line 598
    .line 599
    invoke-direct {v3, v4}, Lnet/thunderbird/core/common/CoreCommonModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 600
    .line 601
    .line 602
    new-instance v4, Lnet/thunderbird/core/common/state/debug/StateDiffer$$ExternalSyntheticLambda1;

    .line 603
    .line 604
    const/4 v5, 0x1

    .line 605
    invoke-direct {v4, v13, v5}, Lnet/thunderbird/core/common/state/debug/StateDiffer$$ExternalSyntheticLambda1;-><init>(Lokhttp3/ConnectionPool;I)V

    .line 606
    .line 607
    .line 608
    const-string v5, "["

    .line 609
    .line 610
    const-string v6, "]"

    .line 611
    .line 612
    move-object/from16 v7, p3

    .line 613
    .line 614
    invoke-static/range {v0 .. v7}, Lokhttp3/ConnectionPool;->appendEntryChanges(Ljava/lang/StringBuilder;Ljava/util/Iterator;Ljava/util/Iterator;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Lnet/thunderbird/core/common/state/debug/DiffContext;)V

    .line 615
    .line 616
    .line 617
    goto :goto_f

    .line 618
    :cond_19
    if-eqz v17, :cond_1b

    .line 619
    .line 620
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 621
    .line 622
    .line 623
    new-instance v3, Ljava/lang/StringBuilder;

    .line 624
    .line 625
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    invoke-virtual {v5, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    invoke-static {v2, v1, v7}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    invoke-static {v15, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    invoke-static {v1, v2}, Lkotlin/text/StringsKt__IndentKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    const/16 v1, 0xa

    .line 658
    .line 659
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    goto :goto_f

    .line 663
    :cond_1a
    move-object/from16 v4, p3

    .line 664
    .line 665
    move-object v1, v0

    .line 666
    move-object v0, v13

    .line 667
    invoke-virtual/range {v0 .. v5}, Lokhttp3/ConnectionPool;->appendScalarDiff(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;Lnet/thunderbird/core/common/state/debug/DiffContext;Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    move-object v0, v1

    .line 671
    :cond_1b
    :goto_f
    move-object/from16 v13, p0

    .line 672
    .line 673
    move/from16 v8, v17

    .line 674
    .line 675
    move-object/from16 v11, v19

    .line 676
    .line 677
    goto/16 :goto_4

    .line 678
    .line 679
    :cond_1c
    :goto_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    return-object v0
.end method

.method public checkIds(Ljava/util/List;)Ljava/util/List;
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/items/AbstractItem;->getIdentifier()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    const-wide/16 v5, -0x1

    .line 22
    .line 23
    cmp-long v3, v3, v5

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    iget-object v3, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Ljava/util/concurrent/atomic/AtomicLong;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    invoke-virtual {v2, v3, v4}, Lcom/mikepenz/fastadapter/items/AbstractItem;->setIdentifier(J)V

    .line 36
    .line 37
    .line 38
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object p1
.end method

.method public create(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lnet/thunderbird/feature/account/AccountId;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, "."

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    const-string p0, "Key must not be empty"

    .line 33
    .line 34
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method public decode(Landroidx/compose/runtime/Latch;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 25

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/Latch;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/Latch;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v1, v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:I

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/Latch;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/Latch;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/16 v4, 0x8

    .line 20
    .line 21
    invoke-static {v4}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->values(I)[I

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-byte v2, v2, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    .line 26
    .line 27
    aget v2, v5, v2

    .line 28
    .line 29
    move-object/from16 v5, p1

    .line 30
    .line 31
    iget-object v5, v5, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v5, Lcom/google/zxing/common/BitMatrix;

    .line 34
    .line 35
    iget v6, v5, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    move v8, v7

    .line 39
    :goto_0
    if-ge v8, v6, :cond_2

    .line 40
    .line 41
    move v9, v7

    .line 42
    :goto_1
    if-ge v9, v6, :cond_1

    .line 43
    .line 44
    invoke-static {v2, v8, v9}, Lcom/google/zxing/qrcode/decoder/DataMask$EnumUnboxingLocalUtility;->_dispatch_isMasked(III)Z

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    if-eqz v10, :cond_0

    .line 49
    .line 50
    invoke-virtual {v5, v9, v8}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    .line 51
    .line 52
    .line 53
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget v2, v3, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    .line 60
    .line 61
    const/4 v8, 0x4

    .line 62
    mul-int/2addr v2, v8

    .line 63
    add-int/lit8 v9, v2, 0x11

    .line 64
    .line 65
    iget v10, v3, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    .line 66
    .line 67
    new-instance v11, Lcom/google/zxing/common/BitMatrix;

    .line 68
    .line 69
    invoke-direct {v11, v9, v9}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 70
    .line 71
    .line 72
    const/16 v9, 0x9

    .line 73
    .line 74
    invoke-virtual {v11, v7, v7, v9, v9}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v12, v2, 0x9

    .line 78
    .line 79
    invoke-virtual {v11, v12, v7, v4, v9}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v11, v7, v12, v9, v4}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 83
    .line 84
    .line 85
    iget-object v12, v3, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    .line 86
    .line 87
    array-length v13, v12

    .line 88
    move v14, v7

    .line 89
    :goto_2
    const/4 v15, 0x2

    .line 90
    const/4 v8, 0x5

    .line 91
    if-ge v14, v13, :cond_7

    .line 92
    .line 93
    aget v16, v12, v14

    .line 94
    .line 95
    add-int/lit8 v4, v16, -0x2

    .line 96
    .line 97
    move/from16 v16, v15

    .line 98
    .line 99
    move v15, v7

    .line 100
    :goto_3
    if-ge v15, v13, :cond_6

    .line 101
    .line 102
    if-nez v14, :cond_3

    .line 103
    .line 104
    if-eqz v15, :cond_5

    .line 105
    .line 106
    add-int/lit8 v7, v13, -0x1

    .line 107
    .line 108
    if-eq v15, v7, :cond_5

    .line 109
    .line 110
    :cond_3
    add-int/lit8 v7, v13, -0x1

    .line 111
    .line 112
    if-ne v14, v7, :cond_4

    .line 113
    .line 114
    if-eqz v15, :cond_5

    .line 115
    .line 116
    :cond_4
    aget v7, v12, v15

    .line 117
    .line 118
    add-int/lit8 v7, v7, -0x2

    .line 119
    .line 120
    invoke-virtual {v11, v7, v4, v8, v8}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 121
    .line 122
    .line 123
    :cond_5
    add-int/lit8 v15, v15, 0x1

    .line 124
    .line 125
    const/4 v7, 0x0

    .line 126
    goto :goto_3

    .line 127
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 128
    .line 129
    const/16 v4, 0x8

    .line 130
    .line 131
    const/4 v7, 0x0

    .line 132
    const/4 v8, 0x4

    .line 133
    goto :goto_2

    .line 134
    :cond_7
    move/from16 v16, v15

    .line 135
    .line 136
    const/4 v4, 0x6

    .line 137
    const/4 v7, 0x1

    .line 138
    invoke-virtual {v11, v4, v9, v7, v2}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v11, v9, v4, v2, v7}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 142
    .line 143
    .line 144
    iget v3, v3, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    .line 145
    .line 146
    const/4 v12, 0x3

    .line 147
    if-le v3, v4, :cond_8

    .line 148
    .line 149
    add-int/2addr v2, v4

    .line 150
    const/4 v3, 0x0

    .line 151
    invoke-virtual {v11, v2, v3, v12, v4}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v11, v3, v2, v4, v12}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 155
    .line 156
    .line 157
    :cond_8
    new-array v2, v10, [B

    .line 158
    .line 159
    add-int/lit8 v3, v6, -0x1

    .line 160
    .line 161
    move v9, v3

    .line 162
    move/from16 v18, v7

    .line 163
    .line 164
    const/4 v13, 0x0

    .line 165
    const/4 v14, 0x0

    .line 166
    const/4 v15, 0x0

    .line 167
    :goto_4
    if-lez v9, :cond_f

    .line 168
    .line 169
    if-ne v9, v4, :cond_9

    .line 170
    .line 171
    add-int/lit8 v9, v9, -0x1

    .line 172
    .line 173
    :cond_9
    const/4 v4, 0x0

    .line 174
    :goto_5
    if-ge v4, v6, :cond_e

    .line 175
    .line 176
    if-eqz v18, :cond_a

    .line 177
    .line 178
    sub-int v20, v3, v4

    .line 179
    .line 180
    move/from16 v8, v20

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_a
    move v8, v4

    .line 184
    :goto_6
    move/from16 v22, v7

    .line 185
    .line 186
    move/from16 v7, v16

    .line 187
    .line 188
    const/4 v12, 0x0

    .line 189
    :goto_7
    if-ge v12, v7, :cond_d

    .line 190
    .line 191
    sub-int v7, v9, v12

    .line 192
    .line 193
    invoke-virtual {v11, v7, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 194
    .line 195
    .line 196
    move-result v23

    .line 197
    if-nez v23, :cond_c

    .line 198
    .line 199
    add-int/lit8 v14, v14, 0x1

    .line 200
    .line 201
    shl-int/lit8 v15, v15, 0x1

    .line 202
    .line 203
    invoke-virtual {v5, v7, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    if-eqz v7, :cond_b

    .line 208
    .line 209
    or-int/lit8 v7, v15, 0x1

    .line 210
    .line 211
    move v15, v7

    .line 212
    :cond_b
    const/16 v7, 0x8

    .line 213
    .line 214
    if-ne v14, v7, :cond_c

    .line 215
    .line 216
    add-int/lit8 v7, v13, 0x1

    .line 217
    .line 218
    int-to-byte v14, v15

    .line 219
    aput-byte v14, v2, v13

    .line 220
    .line 221
    move v13, v7

    .line 222
    const/4 v14, 0x0

    .line 223
    const/4 v15, 0x0

    .line 224
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 225
    .line 226
    const/4 v7, 0x2

    .line 227
    goto :goto_7

    .line 228
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 229
    .line 230
    move/from16 v7, v22

    .line 231
    .line 232
    const/4 v8, 0x5

    .line 233
    const/4 v12, 0x3

    .line 234
    const/16 v16, 0x2

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_e
    move/from16 v22, v7

    .line 238
    .line 239
    xor-int/lit8 v18, v18, 0x1

    .line 240
    .line 241
    add-int/lit8 v9, v9, -0x2

    .line 242
    .line 243
    const/4 v4, 0x6

    .line 244
    const/4 v8, 0x5

    .line 245
    const/4 v12, 0x3

    .line 246
    const/16 v16, 0x2

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_f
    move/from16 v22, v7

    .line 250
    .line 251
    if-ne v13, v10, :cond_4d

    .line 252
    .line 253
    iget v3, v0, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    .line 254
    .line 255
    iget v4, v0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    .line 256
    .line 257
    if-ne v10, v3, :cond_4c

    .line 258
    .line 259
    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lokio/PriorityQueue;

    .line 260
    .line 261
    invoke-static {v1}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    aget-object v0, v0, v3

    .line 266
    .line 267
    iget-object v3, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v3, [Landroidx/compose/material3/FabPlacement;

    .line 270
    .line 271
    iget v0, v0, Lokio/PriorityQueue;->size:I

    .line 272
    .line 273
    array-length v6, v3

    .line 274
    const/4 v7, 0x0

    .line 275
    const/4 v8, 0x0

    .line 276
    :goto_8
    if-ge v8, v6, :cond_10

    .line 277
    .line 278
    aget-object v9, v3, v8

    .line 279
    .line 280
    iget v9, v9, Landroidx/compose/material3/FabPlacement;->left:I

    .line 281
    .line 282
    add-int/2addr v7, v9

    .line 283
    add-int/lit8 v8, v8, 0x1

    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_10
    new-array v6, v7, [Lokio/PriorityQueue;

    .line 287
    .line 288
    array-length v8, v3

    .line 289
    const/4 v9, 0x0

    .line 290
    const/4 v10, 0x0

    .line 291
    :goto_9
    if-ge v10, v8, :cond_12

    .line 292
    .line 293
    aget-object v11, v3, v10

    .line 294
    .line 295
    const/4 v12, 0x0

    .line 296
    :goto_a
    iget v13, v11, Landroidx/compose/material3/FabPlacement;->left:I

    .line 297
    .line 298
    if-ge v12, v13, :cond_11

    .line 299
    .line 300
    iget v13, v11, Landroidx/compose/material3/FabPlacement;->height:I

    .line 301
    .line 302
    add-int v14, v0, v13

    .line 303
    .line 304
    add-int/lit8 v15, v9, 0x1

    .line 305
    .line 306
    const/16 v18, 0x0

    .line 307
    .line 308
    new-instance v5, Lokio/PriorityQueue;

    .line 309
    .line 310
    new-array v14, v14, [B

    .line 311
    .line 312
    move/from16 v23, v0

    .line 313
    .line 314
    const/16 v0, 0xe

    .line 315
    .line 316
    invoke-direct {v5, v13, v14, v0}, Lokio/PriorityQueue;-><init>(ILjava/io/Serializable;I)V

    .line 317
    .line 318
    .line 319
    aput-object v5, v6, v9

    .line 320
    .line 321
    add-int/lit8 v12, v12, 0x1

    .line 322
    .line 323
    move v9, v15

    .line 324
    move/from16 v0, v23

    .line 325
    .line 326
    goto :goto_a

    .line 327
    :cond_11
    move/from16 v23, v0

    .line 328
    .line 329
    const/16 v18, 0x0

    .line 330
    .line 331
    add-int/lit8 v10, v10, 0x1

    .line 332
    .line 333
    goto :goto_9

    .line 334
    :cond_12
    move/from16 v23, v0

    .line 335
    .line 336
    const/16 v17, 0x0

    .line 337
    .line 338
    const/16 v18, 0x0

    .line 339
    .line 340
    aget-object v0, v6, v17

    .line 341
    .line 342
    iget-object v0, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v0, [B

    .line 345
    .line 346
    array-length v0, v0

    .line 347
    add-int/lit8 v3, v7, -0x1

    .line 348
    .line 349
    :goto_b
    if-ltz v3, :cond_14

    .line 350
    .line 351
    aget-object v5, v6, v3

    .line 352
    .line 353
    iget-object v5, v5, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v5, [B

    .line 356
    .line 357
    array-length v5, v5

    .line 358
    if-ne v5, v0, :cond_13

    .line 359
    .line 360
    goto :goto_c

    .line 361
    :cond_13
    add-int/lit8 v3, v3, -0x1

    .line 362
    .line 363
    goto :goto_b

    .line 364
    :cond_14
    :goto_c
    add-int/lit8 v3, v3, 0x1

    .line 365
    .line 366
    sub-int v0, v0, v23

    .line 367
    .line 368
    const/4 v5, 0x0

    .line 369
    const/4 v8, 0x0

    .line 370
    :goto_d
    if-ge v5, v0, :cond_16

    .line 371
    .line 372
    move v10, v8

    .line 373
    const/4 v8, 0x0

    .line 374
    :goto_e
    if-ge v8, v9, :cond_15

    .line 375
    .line 376
    aget-object v11, v6, v8

    .line 377
    .line 378
    iget-object v11, v11, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 379
    .line 380
    check-cast v11, [B

    .line 381
    .line 382
    add-int/lit8 v12, v10, 0x1

    .line 383
    .line 384
    aget-byte v10, v2, v10

    .line 385
    .line 386
    aput-byte v10, v11, v5

    .line 387
    .line 388
    add-int/lit8 v8, v8, 0x1

    .line 389
    .line 390
    move v10, v12

    .line 391
    goto :goto_e

    .line 392
    :cond_15
    add-int/lit8 v5, v5, 0x1

    .line 393
    .line 394
    move v8, v10

    .line 395
    goto :goto_d

    .line 396
    :cond_16
    move v5, v3

    .line 397
    :goto_f
    if-ge v5, v9, :cond_17

    .line 398
    .line 399
    aget-object v10, v6, v5

    .line 400
    .line 401
    iget-object v10, v10, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v10, [B

    .line 404
    .line 405
    add-int/lit8 v11, v8, 0x1

    .line 406
    .line 407
    aget-byte v8, v2, v8

    .line 408
    .line 409
    aput-byte v8, v10, v0

    .line 410
    .line 411
    add-int/lit8 v5, v5, 0x1

    .line 412
    .line 413
    move v8, v11

    .line 414
    goto :goto_f

    .line 415
    :cond_17
    const/16 v17, 0x0

    .line 416
    .line 417
    aget-object v5, v6, v17

    .line 418
    .line 419
    iget-object v5, v5, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 420
    .line 421
    check-cast v5, [B

    .line 422
    .line 423
    array-length v5, v5

    .line 424
    :goto_10
    if-ge v0, v5, :cond_1a

    .line 425
    .line 426
    move v10, v8

    .line 427
    move/from16 v8, v17

    .line 428
    .line 429
    :goto_11
    if-ge v8, v9, :cond_19

    .line 430
    .line 431
    if-ge v8, v3, :cond_18

    .line 432
    .line 433
    move v11, v0

    .line 434
    goto :goto_12

    .line 435
    :cond_18
    add-int/lit8 v11, v0, 0x1

    .line 436
    .line 437
    :goto_12
    aget-object v12, v6, v8

    .line 438
    .line 439
    iget-object v12, v12, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast v12, [B

    .line 442
    .line 443
    add-int/lit8 v13, v10, 0x1

    .line 444
    .line 445
    aget-byte v10, v2, v10

    .line 446
    .line 447
    aput-byte v10, v12, v11

    .line 448
    .line 449
    add-int/lit8 v8, v8, 0x1

    .line 450
    .line 451
    move v10, v13

    .line 452
    goto :goto_11

    .line 453
    :cond_19
    add-int/lit8 v0, v0, 0x1

    .line 454
    .line 455
    move v8, v10

    .line 456
    goto :goto_10

    .line 457
    :cond_1a
    move/from16 v0, v17

    .line 458
    .line 459
    move v3, v0

    .line 460
    :goto_13
    if-ge v3, v7, :cond_1b

    .line 461
    .line 462
    aget-object v2, v6, v3

    .line 463
    .line 464
    iget v2, v2, Lokio/PriorityQueue;->size:I

    .line 465
    .line 466
    add-int/2addr v0, v2

    .line 467
    add-int/lit8 v3, v3, 0x1

    .line 468
    .line 469
    goto :goto_13

    .line 470
    :cond_1b
    new-array v9, v0, [B

    .line 471
    .line 472
    move/from16 v0, v17

    .line 473
    .line 474
    move v3, v0

    .line 475
    :goto_14
    if-ge v3, v7, :cond_20

    .line 476
    .line 477
    aget-object v2, v6, v3

    .line 478
    .line 479
    iget-object v5, v2, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 480
    .line 481
    check-cast v5, [B

    .line 482
    .line 483
    iget v2, v2, Lokio/PriorityQueue;->size:I

    .line 484
    .line 485
    array-length v8, v5

    .line 486
    new-array v10, v8, [I

    .line 487
    .line 488
    move/from16 v11, v17

    .line 489
    .line 490
    :goto_15
    if-ge v11, v8, :cond_1c

    .line 491
    .line 492
    aget-byte v12, v5, v11

    .line 493
    .line 494
    and-int/lit16 v12, v12, 0xff

    .line 495
    .line 496
    aput v12, v10, v11

    .line 497
    .line 498
    add-int/lit8 v11, v11, 0x1

    .line 499
    .line 500
    goto :goto_15

    .line 501
    :cond_1c
    move-object/from16 v11, p0

    .line 502
    .line 503
    :try_start_0
    iget-object v8, v11, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 504
    .line 505
    check-cast v8, Lokhttp3/ConnectionPool;

    .line 506
    .line 507
    array-length v12, v5

    .line 508
    sub-int/2addr v12, v2

    .line 509
    invoke-virtual {v8, v10, v12}, Lokhttp3/ConnectionPool;->decodeWithECCount([II)I
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    .line 511
    .line 512
    move/from16 v8, v17

    .line 513
    .line 514
    :goto_16
    if-ge v8, v2, :cond_1d

    .line 515
    .line 516
    aget v12, v10, v8

    .line 517
    .line 518
    int-to-byte v12, v12

    .line 519
    aput-byte v12, v5, v8

    .line 520
    .line 521
    add-int/lit8 v8, v8, 0x1

    .line 522
    .line 523
    goto :goto_16

    .line 524
    :cond_1d
    move/from16 v8, v17

    .line 525
    .line 526
    :goto_17
    if-ge v8, v2, :cond_1e

    .line 527
    .line 528
    add-int/lit8 v10, v0, 0x1

    .line 529
    .line 530
    aget-byte v12, v5, v8

    .line 531
    .line 532
    aput-byte v12, v9, v0

    .line 533
    .line 534
    add-int/lit8 v8, v8, 0x1

    .line 535
    .line 536
    move v0, v10

    .line 537
    goto :goto_17

    .line 538
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    .line 539
    .line 540
    goto :goto_14

    .line 541
    :catch_0
    sget-object v0, Lcom/google/zxing/ChecksumException;->INSTANCE:Lcom/google/zxing/ChecksumException;

    .line 542
    .line 543
    sget-boolean v0, Lcom/google/zxing/ReaderException;->isStackTrace:Z

    .line 544
    .line 545
    if-eqz v0, :cond_1f

    .line 546
    .line 547
    new-instance v0, Lcom/google/zxing/ChecksumException;

    .line 548
    .line 549
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 550
    .line 551
    .line 552
    goto :goto_18

    .line 553
    :cond_1f
    sget-object v0, Lcom/google/zxing/ChecksumException;->INSTANCE:Lcom/google/zxing/ChecksumException;

    .line 554
    .line 555
    :goto_18
    throw v0

    .line 556
    :cond_20
    new-instance v10, Lcom/google/zxing/common/BitSource;

    .line 557
    .line 558
    invoke-direct {v10, v9}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 559
    .line 560
    .line 561
    new-instance v11, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    const/16 v0, 0x32

    .line 564
    .line 565
    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 566
    .line 567
    .line 568
    new-instance v14, Ljava/util/ArrayList;

    .line 569
    .line 570
    move/from16 v0, v22

    .line 571
    .line 572
    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 573
    .line 574
    .line 575
    const/4 v0, -0x1

    .line 576
    move v2, v0

    .line 577
    move/from16 v3, v17

    .line 578
    .line 579
    move v5, v3

    .line 580
    move v6, v5

    .line 581
    move-object/from16 v13, v18

    .line 582
    .line 583
    :goto_19
    :try_start_1
    invoke-virtual {v10}, Lcom/google/zxing/common/BitSource;->available()I

    .line 584
    .line 585
    .line 586
    move-result v7
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 587
    sget-object v12, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 588
    .line 589
    const/4 v15, 0x4

    .line 590
    if-ge v7, v15, :cond_22

    .line 591
    .line 592
    :cond_21
    move-object v7, v12

    .line 593
    goto :goto_1a

    .line 594
    :cond_22
    :try_start_2
    invoke-virtual {v10, v15}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    .line 595
    .line 596
    .line 597
    move-result v7

    .line 598
    if-eqz v7, :cond_21

    .line 599
    .line 600
    const/4 v8, 0x1

    .line 601
    if-eq v7, v8, :cond_2b

    .line 602
    .line 603
    const/4 v8, 0x2

    .line 604
    if-eq v7, v8, :cond_2a

    .line 605
    .line 606
    const/4 v8, 0x3

    .line 607
    if-eq v7, v8, :cond_29

    .line 608
    .line 609
    if-eq v7, v15, :cond_28

    .line 610
    .line 611
    const/4 v8, 0x5

    .line 612
    if-eq v7, v8, :cond_27

    .line 613
    .line 614
    const/4 v8, 0x7

    .line 615
    if-eq v7, v8, :cond_26

    .line 616
    .line 617
    const/16 v8, 0x8

    .line 618
    .line 619
    if-eq v7, v8, :cond_25

    .line 620
    .line 621
    const/16 v8, 0x9

    .line 622
    .line 623
    if-eq v7, v8, :cond_24

    .line 624
    .line 625
    const/16 v8, 0xd

    .line 626
    .line 627
    if-ne v7, v8, :cond_23

    .line 628
    .line 629
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 630
    .line 631
    goto :goto_1a

    .line 632
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 633
    .line 634
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 635
    .line 636
    .line 637
    throw v0

    .line 638
    :cond_24
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 639
    .line 640
    goto :goto_1a

    .line 641
    :cond_25
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 642
    .line 643
    goto :goto_1a

    .line 644
    :cond_26
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 645
    .line 646
    goto :goto_1a

    .line 647
    :cond_27
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 648
    .line 649
    goto :goto_1a

    .line 650
    :cond_28
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 651
    .line 652
    goto :goto_1a

    .line 653
    :cond_29
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 654
    .line 655
    goto :goto_1a

    .line 656
    :cond_2a
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 657
    .line 658
    goto :goto_1a

    .line 659
    :cond_2b
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 660
    .line 661
    :goto_1a
    iget-object v8, v7, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    .line 662
    .line 663
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 664
    .line 665
    .line 666
    move-result v15

    .line 667
    if-eqz v15, :cond_40

    .line 668
    .line 669
    move/from16 v23, v0

    .line 670
    .line 671
    const/4 v0, 0x3

    .line 672
    if-eq v15, v0, :cond_3e

    .line 673
    .line 674
    const/4 v0, 0x5

    .line 675
    if-eq v15, v0, :cond_38

    .line 676
    .line 677
    const/4 v0, 0x7

    .line 678
    if-eq v15, v0, :cond_37

    .line 679
    .line 680
    const/16 v0, 0x8

    .line 681
    .line 682
    if-eq v15, v0, :cond_36

    .line 683
    .line 684
    const/16 v0, 0x9

    .line 685
    .line 686
    if-eq v15, v0, :cond_33

    .line 687
    .line 688
    if-gt v4, v0, :cond_2c

    .line 689
    .line 690
    move/from16 v0, v17

    .line 691
    .line 692
    goto :goto_1b

    .line 693
    :cond_2c
    const/16 v0, 0x1a

    .line 694
    .line 695
    if-gt v4, v0, :cond_2d

    .line 696
    .line 697
    const/4 v0, 0x1

    .line 698
    goto :goto_1b

    .line 699
    :cond_2d
    const/4 v0, 0x2

    .line 700
    :goto_1b
    aget v0, v8, v0

    .line 701
    .line 702
    invoke-virtual {v10, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    .line 703
    .line 704
    .line 705
    move-result v0

    .line 706
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 707
    .line 708
    .line 709
    move-result v8

    .line 710
    const/4 v15, 0x1

    .line 711
    if-eq v8, v15, :cond_32

    .line 712
    .line 713
    const/4 v15, 0x2

    .line 714
    if-eq v8, v15, :cond_31

    .line 715
    .line 716
    const/4 v15, 0x4

    .line 717
    if-eq v8, v15, :cond_30

    .line 718
    .line 719
    const/4 v15, 0x6

    .line 720
    if-ne v8, v15, :cond_2f

    .line 721
    .line 722
    invoke-static {v10, v11, v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    .line 723
    .line 724
    .line 725
    move-object v0, v12

    .line 726
    move/from16 v19, v15

    .line 727
    .line 728
    :cond_2e
    :goto_1c
    const/16 v8, 0x8

    .line 729
    .line 730
    goto/16 :goto_20

    .line 731
    .line 732
    :cond_2f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    throw v0

    .line 737
    :cond_30
    move-object v15, v12

    .line 738
    move v12, v0

    .line 739
    move-object v0, v15

    .line 740
    move-object/from16 v15, p2

    .line 741
    .line 742
    const/16 v19, 0x6

    .line 743
    .line 744
    invoke-static/range {v10 .. v15}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 745
    .line 746
    .line 747
    goto :goto_1c

    .line 748
    :cond_31
    move-object/from16 v19, v12

    .line 749
    .line 750
    move v12, v0

    .line 751
    move-object/from16 v0, v19

    .line 752
    .line 753
    const/16 v19, 0x6

    .line 754
    .line 755
    invoke-static {v10, v11, v12, v3}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V

    .line 756
    .line 757
    .line 758
    goto :goto_1c

    .line 759
    :cond_32
    move-object/from16 v19, v12

    .line 760
    .line 761
    move v12, v0

    .line 762
    move-object/from16 v0, v19

    .line 763
    .line 764
    const/16 v19, 0x6

    .line 765
    .line 766
    invoke-static {v10, v11, v12}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    .line 767
    .line 768
    .line 769
    goto :goto_1c

    .line 770
    :cond_33
    move-object v0, v12

    .line 771
    const/4 v15, 0x4

    .line 772
    const/16 v19, 0x6

    .line 773
    .line 774
    invoke-virtual {v10, v15}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    .line 775
    .line 776
    .line 777
    move-result v12

    .line 778
    const/16 v15, 0x9

    .line 779
    .line 780
    if-gt v4, v15, :cond_34

    .line 781
    .line 782
    move/from16 v15, v17

    .line 783
    .line 784
    goto :goto_1d

    .line 785
    :cond_34
    const/16 v15, 0x1a

    .line 786
    .line 787
    if-gt v4, v15, :cond_35

    .line 788
    .line 789
    const/4 v15, 0x1

    .line 790
    goto :goto_1d

    .line 791
    :cond_35
    const/4 v15, 0x2

    .line 792
    :goto_1d
    aget v8, v8, v15

    .line 793
    .line 794
    invoke-virtual {v10, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    .line 795
    .line 796
    .line 797
    move-result v8

    .line 798
    const/4 v15, 0x1

    .line 799
    if-ne v12, v15, :cond_2e

    .line 800
    .line 801
    invoke-static {v10, v11, v8}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    .line 802
    .line 803
    .line 804
    goto :goto_1c

    .line 805
    :cond_36
    move-object v0, v12

    .line 806
    const/16 v19, 0x6

    .line 807
    .line 808
    move-object v12, v13

    .line 809
    move/from16 v13, v23

    .line 810
    .line 811
    const/4 v3, 0x1

    .line 812
    const/4 v6, 0x1

    .line 813
    :goto_1e
    const/16 v8, 0x8

    .line 814
    .line 815
    goto/16 :goto_21

    .line 816
    .line 817
    :cond_37
    move-object v0, v12

    .line 818
    const/16 v19, 0x6

    .line 819
    .line 820
    move-object v12, v13

    .line 821
    move/from16 v13, v23

    .line 822
    .line 823
    const/4 v3, 0x1

    .line 824
    const/4 v5, 0x1

    .line 825
    goto :goto_1e

    .line 826
    :cond_38
    move-object v0, v12

    .line 827
    const/16 v8, 0x8

    .line 828
    .line 829
    const/16 v19, 0x6

    .line 830
    .line 831
    invoke-virtual {v10, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    .line 832
    .line 833
    .line 834
    move-result v12

    .line 835
    and-int/lit16 v8, v12, 0x80

    .line 836
    .line 837
    if-nez v8, :cond_39

    .line 838
    .line 839
    and-int/lit8 v8, v12, 0x7f

    .line 840
    .line 841
    goto :goto_1f

    .line 842
    :cond_39
    and-int/lit16 v8, v12, 0xc0

    .line 843
    .line 844
    const/16 v13, 0x80

    .line 845
    .line 846
    if-ne v8, v13, :cond_3a

    .line 847
    .line 848
    const/16 v8, 0x8

    .line 849
    .line 850
    invoke-virtual {v10, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    .line 851
    .line 852
    .line 853
    move-result v13

    .line 854
    and-int/lit8 v12, v12, 0x3f

    .line 855
    .line 856
    shl-int/2addr v12, v8

    .line 857
    or-int v8, v12, v13

    .line 858
    .line 859
    goto :goto_1f

    .line 860
    :cond_3a
    and-int/lit16 v8, v12, 0xe0

    .line 861
    .line 862
    const/16 v13, 0xc0

    .line 863
    .line 864
    if-ne v8, v13, :cond_3d

    .line 865
    .line 866
    const/16 v8, 0x10

    .line 867
    .line 868
    invoke-virtual {v10, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    .line 869
    .line 870
    .line 871
    move-result v13

    .line 872
    and-int/lit8 v12, v12, 0x1f

    .line 873
    .line 874
    shl-int/lit8 v8, v12, 0x10

    .line 875
    .line 876
    or-int/2addr v8, v13

    .line 877
    :goto_1f
    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/HashMap;

    .line 878
    .line 879
    if-ltz v8, :cond_3c

    .line 880
    .line 881
    const/16 v12, 0x384

    .line 882
    .line 883
    if-ge v8, v12, :cond_3c

    .line 884
    .line 885
    sget-object v12, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/HashMap;

    .line 886
    .line 887
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 888
    .line 889
    .line 890
    move-result-object v8

    .line 891
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    move-result-object v8

    .line 895
    move-object v13, v8

    .line 896
    check-cast v13, Lcom/google/zxing/common/CharacterSetECI;

    .line 897
    .line 898
    if-eqz v13, :cond_3b

    .line 899
    .line 900
    move-object v12, v13

    .line 901
    move/from16 v13, v23

    .line 902
    .line 903
    goto :goto_1e

    .line 904
    :cond_3b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 905
    .line 906
    .line 907
    move-result-object v0

    .line 908
    throw v0

    .line 909
    :cond_3c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 910
    .line 911
    .line 912
    move-result-object v0

    .line 913
    throw v0

    .line 914
    :cond_3d
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    throw v0

    .line 919
    :cond_3e
    move-object v0, v12

    .line 920
    const/16 v19, 0x6

    .line 921
    .line 922
    invoke-virtual {v10}, Lcom/google/zxing/common/BitSource;->available()I

    .line 923
    .line 924
    .line 925
    move-result v2

    .line 926
    const/16 v8, 0x10

    .line 927
    .line 928
    if-lt v2, v8, :cond_3f

    .line 929
    .line 930
    const/16 v8, 0x8

    .line 931
    .line 932
    invoke-virtual {v10, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    .line 933
    .line 934
    .line 935
    move-result v2

    .line 936
    invoke-virtual {v10, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    .line 937
    .line 938
    .line 939
    move-result v12

    .line 940
    move-object/from16 v24, v13

    .line 941
    .line 942
    move v13, v2

    .line 943
    move v2, v12

    .line 944
    move-object/from16 v12, v24

    .line 945
    .line 946
    goto :goto_21

    .line 947
    :cond_3f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 952
    :cond_40
    move/from16 v23, v0

    .line 953
    .line 954
    move-object v0, v12

    .line 955
    const/16 v8, 0x8

    .line 956
    .line 957
    const/16 v19, 0x6

    .line 958
    .line 959
    :goto_20
    move-object v12, v13

    .line 960
    move/from16 v13, v23

    .line 961
    .line 962
    :goto_21
    if-ne v7, v0, :cond_4b

    .line 963
    .line 964
    if-eqz v12, :cond_43

    .line 965
    .line 966
    if-eqz v5, :cond_41

    .line 967
    .line 968
    const/4 v15, 0x4

    .line 969
    goto :goto_22

    .line 970
    :cond_41
    if-eqz v6, :cond_42

    .line 971
    .line 972
    move/from16 v15, v19

    .line 973
    .line 974
    goto :goto_22

    .line 975
    :cond_42
    const/4 v15, 0x2

    .line 976
    goto :goto_22

    .line 977
    :cond_43
    if-eqz v5, :cond_44

    .line 978
    .line 979
    const/4 v15, 0x3

    .line 980
    goto :goto_22

    .line 981
    :cond_44
    if-eqz v6, :cond_45

    .line 982
    .line 983
    const/4 v15, 0x5

    .line 984
    goto :goto_22

    .line 985
    :cond_45
    const/4 v15, 0x1

    .line 986
    :goto_22
    new-instance v8, Lcom/google/zxing/common/DecoderResult;

    .line 987
    .line 988
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v10

    .line 992
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 993
    .line 994
    .line 995
    move-result v0

    .line 996
    if-eqz v0, :cond_46

    .line 997
    .line 998
    move-object/from16 v11, v18

    .line 999
    .line 1000
    :goto_23
    const/4 v0, 0x1

    .line 1001
    goto :goto_24

    .line 1002
    :cond_46
    move-object v11, v14

    .line 1003
    goto :goto_23

    .line 1004
    :goto_24
    if-eq v1, v0, :cond_4a

    .line 1005
    .line 1006
    const/4 v7, 0x2

    .line 1007
    if-eq v1, v7, :cond_49

    .line 1008
    .line 1009
    const/4 v0, 0x3

    .line 1010
    if-eq v1, v0, :cond_48

    .line 1011
    .line 1012
    const/4 v0, 0x4

    .line 1013
    if-ne v1, v0, :cond_47

    .line 1014
    .line 1015
    const-string v0, "H"

    .line 1016
    .line 1017
    :goto_25
    move-object v12, v0

    .line 1018
    move v14, v2

    .line 1019
    goto :goto_26

    .line 1020
    :cond_47
    throw v18

    .line 1021
    :cond_48
    const-string v0, "Q"

    .line 1022
    .line 1023
    goto :goto_25

    .line 1024
    :cond_49
    const-string v0, "M"

    .line 1025
    .line 1026
    goto :goto_25

    .line 1027
    :cond_4a
    const-string v0, "L"

    .line 1028
    .line 1029
    goto :goto_25

    .line 1030
    :goto_26
    invoke-direct/range {v8 .. v15}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 1031
    .line 1032
    .line 1033
    return-object v8

    .line 1034
    :cond_4b
    const/16 v21, 0x3

    .line 1035
    .line 1036
    move v0, v13

    .line 1037
    move-object v13, v12

    .line 1038
    goto/16 :goto_19

    .line 1039
    .line 1040
    :catch_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v0

    .line 1044
    throw v0

    .line 1045
    :cond_4c
    const/16 v18, 0x0

    .line 1046
    .line 1047
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 1048
    .line 1049
    .line 1050
    return-object v18

    .line 1051
    :cond_4d
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v0

    .line 1055
    throw v0
.end method

.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 8

    .line 1056
    new-instance v0, Landroidx/compose/runtime/Latch;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/Latch;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    const/4 p1, 0x0

    .line 1057
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lokhttp3/ConnectionPool;->decode(Landroidx/compose/runtime/Latch;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, p1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, p1

    .line 1058
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroidx/compose/runtime/Latch;->remask()V

    .line 1059
    iput-object p1, v0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 1060
    iput-object p1, v0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1061
    iput-boolean p1, v0, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 1062
    invoke-virtual {v0}, Landroidx/compose/runtime/Latch;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    .line 1063
    invoke-virtual {v0}, Landroidx/compose/runtime/Latch;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 1064
    iget-object p1, v0, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/common/BitMatrix;

    const/4 v3, 0x0

    .line 1065
    :goto_1
    iget v4, p1, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v3, v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    move v5, v4

    .line 1066
    :goto_2
    iget v6, p1, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v5, v6, :cond_1

    .line 1067
    invoke-virtual {p1, v3, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    invoke-virtual {p1, v5, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eq v6, v7, :cond_0

    .line 1068
    invoke-virtual {p1, v5, v3}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    .line 1069
    invoke-virtual {p1, v3, v5}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    move v3, v4

    goto :goto_1

    .line 1070
    :cond_2
    invoke-virtual {p0, v0, p2}, Lokhttp3/ConnectionPool;->decode(Landroidx/compose/runtime/Latch;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p0

    .line 1071
    new-instance p1, Lokio/AsyncTimeout$Companion;

    const/16 p2, 0x14

    .line 1072
    invoke-direct {p1, p2}, Lokio/AsyncTimeout$Companion;-><init>(I)V

    .line 1073
    iput-object p1, p0, Lcom/google/zxing/common/DecoderResult;->other:Lokio/AsyncTimeout$Companion;
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    :catch_2
    if-eqz v1, :cond_3

    .line 1074
    throw v1

    .line 1075
    :cond_3
    throw v2
.end method

.method public decodeWithECCount([II)I
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v1, v1, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 10
    .line 11
    array-length v3, v0

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v3, :cond_26

    .line 14
    .line 15
    array-length v3, v0

    .line 16
    const/4 v5, 0x1

    .line 17
    if-le v3, v5, :cond_2

    .line 18
    .line 19
    aget v6, v0, v4

    .line 20
    .line 21
    if-nez v6, :cond_2

    .line 22
    .line 23
    move v6, v5

    .line 24
    :goto_0
    if-ge v6, v3, :cond_0

    .line 25
    .line 26
    aget v7, v0, v6

    .line 27
    .line 28
    if-nez v7, :cond_0

    .line 29
    .line 30
    add-int/lit8 v6, v6, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    if-ne v6, v3, :cond_1

    .line 34
    .line 35
    filled-new-array {v4}, [I

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    sub-int/2addr v3, v6

    .line 41
    new-array v7, v3, [I

    .line 42
    .line 43
    invoke-static {v0, v6, v7, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    move-object v3, v7

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object v3, v0

    .line 49
    :goto_1
    new-array v6, v2, [I

    .line 50
    .line 51
    move v7, v4

    .line 52
    move v8, v5

    .line 53
    :goto_2
    if-ge v7, v2, :cond_7

    .line 54
    .line 55
    iget v9, v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->generatorBase:I

    .line 56
    .line 57
    add-int/2addr v9, v7

    .line 58
    iget-object v10, v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 59
    .line 60
    aget v9, v10, v9

    .line 61
    .line 62
    if-nez v9, :cond_3

    .line 63
    .line 64
    array-length v9, v3

    .line 65
    sub-int/2addr v9, v5

    .line 66
    aget v9, v3, v9

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_3
    if-ne v9, v5, :cond_5

    .line 70
    .line 71
    array-length v9, v3

    .line 72
    move v10, v4

    .line 73
    move v11, v10

    .line 74
    :goto_3
    if-ge v11, v9, :cond_4

    .line 75
    .line 76
    aget v12, v3, v11

    .line 77
    .line 78
    sget-object v13, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 79
    .line 80
    xor-int/2addr v10, v12

    .line 81
    add-int/lit8 v11, v11, 0x1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move v9, v10

    .line 85
    goto :goto_5

    .line 86
    :cond_5
    aget v10, v3, v4

    .line 87
    .line 88
    array-length v11, v3

    .line 89
    move v12, v5

    .line 90
    :goto_4
    if-ge v12, v11, :cond_4

    .line 91
    .line 92
    invoke-virtual {v1, v9, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    aget v13, v3, v12

    .line 97
    .line 98
    xor-int/2addr v10, v13

    .line 99
    add-int/lit8 v12, v12, 0x1

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :goto_5
    add-int/lit8 v10, v2, -0x1

    .line 103
    .line 104
    sub-int/2addr v10, v7

    .line 105
    aput v9, v6, v10

    .line 106
    .line 107
    if-eqz v9, :cond_6

    .line 108
    .line 109
    move v8, v4

    .line 110
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_7
    if-eqz v8, :cond_8

    .line 114
    .line 115
    return v4

    .line 116
    :cond_8
    new-instance v3, Lcom/google/zxing/BinaryBitmap;

    .line 117
    .line 118
    invoke-direct {v3, v1, v6}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    iget-object v6, v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/BinaryBitmap;

    .line 125
    .line 126
    if-ltz v2, :cond_25

    .line 127
    .line 128
    add-int/lit8 v7, v2, 0x1

    .line 129
    .line 130
    new-array v7, v7, [I

    .line 131
    .line 132
    aput v5, v7, v4

    .line 133
    .line 134
    new-instance v8, Lcom/google/zxing/BinaryBitmap;

    .line 135
    .line 136
    invoke-direct {v8, v1, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8}, Lcom/google/zxing/BinaryBitmap;->getDegree()I

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    invoke-virtual {v3}, Lcom/google/zxing/BinaryBitmap;->getDegree()I

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-ge v7, v9, :cond_9

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_9
    move-object/from16 v20, v8

    .line 151
    .line 152
    move-object v8, v3

    .line 153
    move-object/from16 v3, v20

    .line 154
    .line 155
    :goto_6
    iget-object v7, v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->one:Lcom/google/zxing/BinaryBitmap;

    .line 156
    .line 157
    move-object v9, v7

    .line 158
    move-object v7, v3

    .line 159
    move-object v3, v8

    .line 160
    move-object v8, v9

    .line 161
    move-object v9, v6

    .line 162
    :goto_7
    invoke-virtual {v3}, Lcom/google/zxing/BinaryBitmap;->getDegree()I

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    const/4 v11, 0x2

    .line 167
    mul-int/2addr v10, v11

    .line 168
    if-lt v10, v2, :cond_17

    .line 169
    .line 170
    invoke-virtual {v3}, Lcom/google/zxing/BinaryBitmap;->isZero()Z

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    if-nez v10, :cond_16

    .line 175
    .line 176
    invoke-virtual {v3}, Lcom/google/zxing/BinaryBitmap;->getDegree()I

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    invoke-virtual {v3, v10}, Lcom/google/zxing/BinaryBitmap;->getCoefficient(I)I

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    invoke-virtual {v1, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    move-object v11, v6

    .line 189
    :goto_8
    invoke-virtual {v7}, Lcom/google/zxing/BinaryBitmap;->getDegree()I

    .line 190
    .line 191
    .line 192
    move-result v12

    .line 193
    invoke-virtual {v3}, Lcom/google/zxing/BinaryBitmap;->getDegree()I

    .line 194
    .line 195
    .line 196
    move-result v13

    .line 197
    if-lt v12, v13, :cond_f

    .line 198
    .line 199
    invoke-virtual {v7}, Lcom/google/zxing/BinaryBitmap;->isZero()Z

    .line 200
    .line 201
    .line 202
    move-result v12

    .line 203
    if-nez v12, :cond_f

    .line 204
    .line 205
    invoke-virtual {v7}, Lcom/google/zxing/BinaryBitmap;->getDegree()I

    .line 206
    .line 207
    .line 208
    move-result v12

    .line 209
    invoke-virtual {v3}, Lcom/google/zxing/BinaryBitmap;->getDegree()I

    .line 210
    .line 211
    .line 212
    move-result v13

    .line 213
    sub-int/2addr v12, v13

    .line 214
    invoke-virtual {v7}, Lcom/google/zxing/BinaryBitmap;->getDegree()I

    .line 215
    .line 216
    .line 217
    move-result v13

    .line 218
    invoke-virtual {v7, v13}, Lcom/google/zxing/BinaryBitmap;->getCoefficient(I)I

    .line 219
    .line 220
    .line 221
    move-result v13

    .line 222
    invoke-virtual {v1, v13, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 223
    .line 224
    .line 225
    move-result v13

    .line 226
    if-ltz v12, :cond_e

    .line 227
    .line 228
    if-nez v13, :cond_a

    .line 229
    .line 230
    move-object v15, v6

    .line 231
    goto :goto_9

    .line 232
    :cond_a
    add-int/lit8 v14, v12, 0x1

    .line 233
    .line 234
    new-array v14, v14, [I

    .line 235
    .line 236
    aput v13, v14, v4

    .line 237
    .line 238
    new-instance v15, Lcom/google/zxing/BinaryBitmap;

    .line 239
    .line 240
    invoke-direct {v15, v1, v14}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 241
    .line 242
    .line 243
    :goto_9
    invoke-virtual {v11, v15}, Lcom/google/zxing/BinaryBitmap;->addOrSubtract(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/BinaryBitmap;

    .line 244
    .line 245
    .line 246
    move-result-object v11

    .line 247
    iget-object v14, v3, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v14, [I

    .line 250
    .line 251
    iget-object v15, v3, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v15, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 254
    .line 255
    if-ltz v12, :cond_d

    .line 256
    .line 257
    if-nez v13, :cond_b

    .line 258
    .line 259
    iget-object v12, v15, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/BinaryBitmap;

    .line 260
    .line 261
    move/from16 v16, v4

    .line 262
    .line 263
    move/from16 p0, v5

    .line 264
    .line 265
    goto :goto_b

    .line 266
    :cond_b
    move/from16 p0, v5

    .line 267
    .line 268
    array-length v5, v14

    .line 269
    add-int/2addr v12, v5

    .line 270
    new-array v12, v12, [I

    .line 271
    .line 272
    move/from16 v16, v4

    .line 273
    .line 274
    :goto_a
    if-ge v4, v5, :cond_c

    .line 275
    .line 276
    aget v2, v14, v4

    .line 277
    .line 278
    invoke-virtual {v15, v2, v13}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    aput v2, v12, v4

    .line 283
    .line 284
    add-int/lit8 v4, v4, 0x1

    .line 285
    .line 286
    move/from16 v2, p2

    .line 287
    .line 288
    goto :goto_a

    .line 289
    :cond_c
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 290
    .line 291
    invoke-direct {v2, v15, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 292
    .line 293
    .line 294
    move-object v12, v2

    .line 295
    :goto_b
    invoke-virtual {v7, v12}, Lcom/google/zxing/BinaryBitmap;->addOrSubtract(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/BinaryBitmap;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    move/from16 v5, p0

    .line 300
    .line 301
    move/from16 v2, p2

    .line 302
    .line 303
    move/from16 v4, v16

    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_d
    move/from16 v16, v4

    .line 307
    .line 308
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 309
    .line 310
    .line 311
    return v16

    .line 312
    :cond_e
    move/from16 v16, v4

    .line 313
    .line 314
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 315
    .line 316
    .line 317
    return v16

    .line 318
    :cond_f
    move/from16 v16, v4

    .line 319
    .line 320
    move/from16 p0, v5

    .line 321
    .line 322
    iget-object v2, v11, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast v2, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 325
    .line 326
    iget-object v4, v8, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 327
    .line 328
    check-cast v4, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 329
    .line 330
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-eqz v4, :cond_15

    .line 335
    .line 336
    invoke-virtual {v11}, Lcom/google/zxing/BinaryBitmap;->isZero()Z

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    if-nez v4, :cond_13

    .line 341
    .line 342
    invoke-virtual {v8}, Lcom/google/zxing/BinaryBitmap;->isZero()Z

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    if-eqz v4, :cond_10

    .line 347
    .line 348
    goto :goto_e

    .line 349
    :cond_10
    iget-object v4, v11, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v4, [I

    .line 352
    .line 353
    array-length v5, v4

    .line 354
    iget-object v10, v8, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v10, [I

    .line 357
    .line 358
    array-length v11, v10

    .line 359
    add-int v12, v5, v11

    .line 360
    .line 361
    add-int/lit8 v12, v12, -0x1

    .line 362
    .line 363
    new-array v12, v12, [I

    .line 364
    .line 365
    move/from16 v13, v16

    .line 366
    .line 367
    :goto_c
    if-ge v13, v5, :cond_12

    .line 368
    .line 369
    aget v14, v4, v13

    .line 370
    .line 371
    move/from16 v15, v16

    .line 372
    .line 373
    :goto_d
    if-ge v15, v11, :cond_11

    .line 374
    .line 375
    add-int v17, v13, v15

    .line 376
    .line 377
    aget v18, v12, v17

    .line 378
    .line 379
    move-object/from16 v19, v4

    .line 380
    .line 381
    aget v4, v10, v15

    .line 382
    .line 383
    invoke-virtual {v2, v14, v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    xor-int v4, v18, v4

    .line 388
    .line 389
    aput v4, v12, v17

    .line 390
    .line 391
    add-int/lit8 v15, v15, 0x1

    .line 392
    .line 393
    move-object/from16 v4, v19

    .line 394
    .line 395
    goto :goto_d

    .line 396
    :cond_11
    move-object/from16 v19, v4

    .line 397
    .line 398
    add-int/lit8 v13, v13, 0x1

    .line 399
    .line 400
    goto :goto_c

    .line 401
    :cond_12
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    .line 402
    .line 403
    invoke-direct {v4, v2, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 404
    .line 405
    .line 406
    goto :goto_f

    .line 407
    :cond_13
    :goto_e
    iget-object v4, v2, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/BinaryBitmap;

    .line 408
    .line 409
    :goto_f
    invoke-virtual {v4, v9}, Lcom/google/zxing/BinaryBitmap;->addOrSubtract(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/BinaryBitmap;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    invoke-virtual {v7}, Lcom/google/zxing/BinaryBitmap;->getDegree()I

    .line 414
    .line 415
    .line 416
    move-result v4

    .line 417
    invoke-virtual {v3}, Lcom/google/zxing/BinaryBitmap;->getDegree()I

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    if-ge v4, v5, :cond_14

    .line 422
    .line 423
    move-object v4, v7

    .line 424
    move-object v7, v3

    .line 425
    move-object v3, v4

    .line 426
    move/from16 v5, p0

    .line 427
    .line 428
    move-object v9, v8

    .line 429
    move/from16 v4, v16

    .line 430
    .line 431
    move-object v8, v2

    .line 432
    move/from16 v2, p2

    .line 433
    .line 434
    goto/16 :goto_7

    .line 435
    .line 436
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 437
    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    .line 439
    .line 440
    const-string v2, "Division algorithm failed to reduce polynomial? r: "

    .line 441
    .line 442
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    const-string v2, ", rLast: "

    .line 449
    .line 450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    throw v0

    .line 464
    :cond_15
    const-string v0, "GenericGFPolys do not have same GenericGF field"

    .line 465
    .line 466
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    return v16

    .line 470
    :cond_16
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    .line 471
    .line 472
    const-string v1, "r_{i-1} was zero"

    .line 473
    .line 474
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    throw v0

    .line 478
    :cond_17
    move v2, v4

    .line 479
    move/from16 p0, v5

    .line 480
    .line 481
    invoke-virtual {v8, v2}, Lcom/google/zxing/BinaryBitmap;->getCoefficient(I)I

    .line 482
    .line 483
    .line 484
    move-result v4

    .line 485
    if-eqz v4, :cond_24

    .line 486
    .line 487
    invoke-virtual {v1, v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    .line 488
    .line 489
    .line 490
    move-result v4

    .line 491
    invoke-virtual {v8, v4}, Lcom/google/zxing/BinaryBitmap;->multiply(I)Lcom/google/zxing/BinaryBitmap;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    invoke-virtual {v3, v4}, Lcom/google/zxing/BinaryBitmap;->multiply(I)Lcom/google/zxing/BinaryBitmap;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    new-array v4, v11, [Lcom/google/zxing/BinaryBitmap;

    .line 500
    .line 501
    aput-object v5, v4, v2

    .line 502
    .line 503
    aput-object v3, v4, p0

    .line 504
    .line 505
    aget-object v3, v4, v2

    .line 506
    .line 507
    aget-object v2, v4, p0

    .line 508
    .line 509
    invoke-virtual {v3}, Lcom/google/zxing/BinaryBitmap;->getDegree()I

    .line 510
    .line 511
    .line 512
    move-result v4

    .line 513
    move/from16 v5, p0

    .line 514
    .line 515
    if-ne v4, v5, :cond_18

    .line 516
    .line 517
    invoke-virtual {v3, v5}, Lcom/google/zxing/BinaryBitmap;->getCoefficient(I)I

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    filled-new-array {v3}, [I

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    goto :goto_11

    .line 526
    :cond_18
    new-array v5, v4, [I

    .line 527
    .line 528
    const/4 v6, 0x1

    .line 529
    const/4 v7, 0x0

    .line 530
    :goto_10
    iget v8, v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 531
    .line 532
    if-ge v6, v8, :cond_1a

    .line 533
    .line 534
    if-ge v7, v4, :cond_1a

    .line 535
    .line 536
    invoke-virtual {v3, v6}, Lcom/google/zxing/BinaryBitmap;->evaluateAt(I)I

    .line 537
    .line 538
    .line 539
    move-result v8

    .line 540
    if-nez v8, :cond_19

    .line 541
    .line 542
    invoke-virtual {v1, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    .line 543
    .line 544
    .line 545
    move-result v8

    .line 546
    aput v8, v5, v7

    .line 547
    .line 548
    add-int/lit8 v7, v7, 0x1

    .line 549
    .line 550
    :cond_19
    add-int/lit8 v6, v6, 0x1

    .line 551
    .line 552
    goto :goto_10

    .line 553
    :cond_1a
    if-ne v7, v4, :cond_23

    .line 554
    .line 555
    move-object v3, v5

    .line 556
    :goto_11
    array-length v4, v3

    .line 557
    new-array v5, v4, [I

    .line 558
    .line 559
    const/4 v6, 0x0

    .line 560
    :goto_12
    if-ge v6, v4, :cond_1f

    .line 561
    .line 562
    aget v7, v3, v6

    .line 563
    .line 564
    invoke-virtual {v1, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    .line 565
    .line 566
    .line 567
    move-result v7

    .line 568
    const/4 v8, 0x1

    .line 569
    const/4 v9, 0x0

    .line 570
    :goto_13
    if-ge v9, v4, :cond_1d

    .line 571
    .line 572
    if-eq v6, v9, :cond_1c

    .line 573
    .line 574
    aget v10, v3, v9

    .line 575
    .line 576
    invoke-virtual {v1, v10, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 577
    .line 578
    .line 579
    move-result v10

    .line 580
    and-int/lit8 v11, v10, 0x1

    .line 581
    .line 582
    if-nez v11, :cond_1b

    .line 583
    .line 584
    or-int/lit8 v10, v10, 0x1

    .line 585
    .line 586
    goto :goto_14

    .line 587
    :cond_1b
    and-int/lit8 v10, v10, -0x2

    .line 588
    .line 589
    :goto_14
    invoke-virtual {v1, v8, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 590
    .line 591
    .line 592
    move-result v8

    .line 593
    :cond_1c
    add-int/lit8 v9, v9, 0x1

    .line 594
    .line 595
    goto :goto_13

    .line 596
    :cond_1d
    invoke-virtual {v2, v7}, Lcom/google/zxing/BinaryBitmap;->evaluateAt(I)I

    .line 597
    .line 598
    .line 599
    move-result v9

    .line 600
    invoke-virtual {v1, v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    .line 601
    .line 602
    .line 603
    move-result v8

    .line 604
    invoke-virtual {v1, v9, v8}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 605
    .line 606
    .line 607
    move-result v8

    .line 608
    aput v8, v5, v6

    .line 609
    .line 610
    iget v9, v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->generatorBase:I

    .line 611
    .line 612
    if-eqz v9, :cond_1e

    .line 613
    .line 614
    invoke-virtual {v1, v8, v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    .line 615
    .line 616
    .line 617
    move-result v7

    .line 618
    aput v7, v5, v6

    .line 619
    .line 620
    :cond_1e
    add-int/lit8 v6, v6, 0x1

    .line 621
    .line 622
    goto :goto_12

    .line 623
    :cond_1f
    const/4 v2, 0x0

    .line 624
    :goto_15
    array-length v4, v3

    .line 625
    if-ge v2, v4, :cond_22

    .line 626
    .line 627
    array-length v4, v0

    .line 628
    const/4 v6, 0x1

    .line 629
    sub-int/2addr v4, v6

    .line 630
    aget v7, v3, v2

    .line 631
    .line 632
    if-eqz v7, :cond_21

    .line 633
    .line 634
    iget-object v8, v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    .line 635
    .line 636
    aget v7, v8, v7

    .line 637
    .line 638
    sub-int/2addr v4, v7

    .line 639
    if-ltz v4, :cond_20

    .line 640
    .line 641
    aget v7, v0, v4

    .line 642
    .line 643
    aget v8, v5, v2

    .line 644
    .line 645
    xor-int/2addr v7, v8

    .line 646
    aput v7, v0, v4

    .line 647
    .line 648
    add-int/lit8 v2, v2, 0x1

    .line 649
    .line 650
    goto :goto_15

    .line 651
    :cond_20
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    .line 652
    .line 653
    const-string v1, "Bad error location"

    .line 654
    .line 655
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    throw v0

    .line 659
    :cond_21
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 660
    .line 661
    .line 662
    const/16 v16, 0x0

    .line 663
    .line 664
    return v16

    .line 665
    :cond_22
    array-length v0, v3

    .line 666
    return v0

    .line 667
    :cond_23
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    .line 668
    .line 669
    const-string v1, "Error locator degree does not match number of roots"

    .line 670
    .line 671
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    throw v0

    .line 675
    :cond_24
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    .line 676
    .line 677
    const-string v1, "sigmaTilde(0) was zero"

    .line 678
    .line 679
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    throw v0

    .line 683
    :cond_25
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 684
    .line 685
    .line 686
    const/16 v16, 0x0

    .line 687
    .line 688
    return v16

    .line 689
    :cond_26
    move/from16 v16, v4

    .line 690
    .line 691
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 692
    .line 693
    .line 694
    return v16
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lokhttp3/ConnectionPool;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "id = ?"

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;->databaseId:J

    .line 14
    .line 15
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    filled-new-array {p0}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, "pending_commands"

    .line 24
    .line 25
    invoke-virtual {p1, v0, v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :pswitch_0
    new-instance v0, Landroid/content/ContentValues;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "deleted"

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    .line 43
    .line 44
    sget-object v3, Lcom/fsck/k9/mailstore/DatabasePreviewType;->Companion:Lcom/fsck/k9/mailstore/SendState$Companion;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v4}, Lcom/fsck/k9/mailstore/SendState$Companion;->fromPreviewType(I)Lcom/fsck/k9/mailstore/DatabasePreviewType;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget-object v3, v3, Lcom/fsck/k9/mailstore/DatabasePreviewType;->databaseValue:Ljava/lang/String;

    .line 54
    .line 55
    const-string v5, "preview_type"

    .line 56
    .line 57
    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const-string v6, "read"

    .line 66
    .line 67
    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    .line 69
    .line 70
    const-string v6, "flagged"

    .line 71
    .line 72
    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    .line 74
    .line 75
    const-string v6, "answered"

    .line 76
    .line 77
    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    .line 79
    .line 80
    const-string v6, "forwarded"

    .line 81
    .line 82
    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    .line 84
    .line 85
    const-string v5, "subject"

    .line 86
    .line 87
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v5, "sender_list"

    .line 91
    .line 92
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string v5, "date"

    .line 96
    .line 97
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v5, "to_list"

    .line 101
    .line 102
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v5, "cc_list"

    .line 106
    .line 107
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v5, "bcc_list"

    .line 111
    .line 112
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v5, "preview"

    .line 116
    .line 117
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v5, "reply_to_list"

    .line 121
    .line 122
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v5, "message_part_id"

    .line 126
    .line 127
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v5, "flags"

    .line 131
    .line 132
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string v5, "attachment_count"

    .line 136
    .line 137
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v5, "internal_date"

    .line 141
    .line 142
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v5, "mime_type"

    .line 146
    .line 147
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v5, "encryption_type"

    .line 151
    .line 152
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p0, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 158
    .line 159
    iget-wide v5, p0, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 160
    .line 161
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    filled-new-array {v5}, [Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    const-string v6, "messages"

    .line 170
    .line 171
    invoke-virtual {p1, v6, v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 175
    .line 176
    iget-wide v5, p0, Lcom/fsck/k9/mailstore/LocalMessage;->messagePartId:J

    .line 177
    .line 178
    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalFolder;->localStore:Lcom/fsck/k9/mailstore/LocalStore;

    .line 179
    .line 180
    iget-object v7, v2, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 181
    .line 182
    new-instance v8, Lcom/fsck/k9/mailstore/LocalFolder$6;

    .line 183
    .line 184
    invoke-direct {v8, v0, v5, v6, v4}, Lcom/fsck/k9/mailstore/LocalFolder$6;-><init>(Lcom/fsck/k9/mailstore/LocalFolder;JI)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v7, v3, v8}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    iget-object v0, v2, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 191
    .line 192
    new-instance v2, Lcom/fsck/k9/mailstore/LocalFolder$15;

    .line 193
    .line 194
    invoke-direct {v2, v5, v6}, Lcom/fsck/k9/mailstore/LocalFolder$15;-><init>(J)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v3, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalMessage;->mFolder:Lcom/fsck/k9/mailstore/LocalFolder;

    .line 201
    .line 202
    iget-wide v2, p0, Lcom/fsck/k9/mailstore/LocalMessage;->databaseId:J

    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    filled-new-array {p0}, [Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    const-string v0, "messages_fulltext"

    .line 216
    .line 217
    const-string v2, "docid = ?"

    .line 218
    .line 219
    invoke-virtual {p1, v0, v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    return-object v1

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ldagger/internal/Provider;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public getCurrentState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lnet/thunderbird/core/common/state/StateMachine;

    .line 4
    .line 5
    invoke-interface {p0}, Lnet/thunderbird/core/common/state/StateMachine;->getCurrentState()Lkotlinx/coroutines/flow/StateFlow;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getCurrentStateSnapshot()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lnet/thunderbird/core/common/state/StateMachine;

    .line 4
    .line 5
    invoke-interface {p0}, Lnet/thunderbird/core/common/state/StateMachine;->getCurrentStateSnapshot()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 10
    .line 11
    return-object p0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/database/Cursor;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/database/Cursor;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 1
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    move-object p1, p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 15
    .line 16
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-lez p1, :cond_1

    .line 34
    .line 35
    move p1, v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_1
    xor-int/2addr p1, v0

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-object p2
.end method

.method public onDaySelected(Ljava/util/Calendar;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/slf4j/event/EventRecodingLogger;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lcom/takisoft/datetimepicker/widget/CalendarView$OnDateChangeListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x5

    .line 22
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget-object p0, p0, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lcom/takisoft/datetimepicker/widget/CalendarView$OnDateChangeListener;

    .line 29
    .line 30
    check-cast p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$1;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate$1;->this$0:Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1, p1}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->setDate(III)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 41
    .line 42
    const/4 v0, 0x4

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Lcom/takisoft/datetimepicker/DatePickerDialog;

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->getYear()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->getMonth()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    iget-object v2, p1, Lcom/takisoft/datetimepicker/DatePickerDialog;->mDatePicker:Lcom/takisoft/datetimepicker/widget/DatePicker;

    .line 63
    .line 64
    invoke-virtual {v2, v0, v1, p0, p1}, Lcom/takisoft/datetimepicker/widget/DatePicker;->init(IIILcom/takisoft/datetimepicker/DatePickerDialog;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget v0, p0, Lokhttp3/ConnectionPool;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "itemAdapter"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0

    .line 15
    :pswitch_0
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    return v3

    .line 29
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v1

    .line 33
    :pswitch_1
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    iget-object p0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    return v3

    .line 47
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v1

    .line 51
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget v0, p0, Lokhttp3/ConnectionPool;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "itemAdapter"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->currentFolder:Lcom/fsck/k9/activity/FolderInfoHolder;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-wide v0, v0, Lcom/fsck/k9/activity/FolderInfoHolder;->databaseId:J

    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v0, v3

    .line 29
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->fragmentListener:Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 34
    .line 35
    invoke-virtual {v1, p1, v3, v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->startSearch(Ljava/lang/String;Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/Long;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->collapseSearchView$1()V

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    :cond_1
    const-string p0, "fragmentListener"

    .line 43
    .line 44
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v3

    .line 48
    :pswitch_0
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/fsck/k9/ui/managefolders/ManageFoldersFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 53
    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    iget-object p0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    return v2

    .line 62
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v3

    .line 66
    :pswitch_1
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/fsck/k9/ui/choosefolder/ChooseFolderActivity;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 71
    .line 72
    if-eqz p0, :cond_3

    .line 73
    .line 74
    iget-object p0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    return v2

    .line 80
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v3

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lnet/openid/appauth/AuthState;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lnet/openid/appauth/AuthState;->update(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p2, Lnet/openid/appauth/AuthState;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p2, Lnet/openid/appauth/AuthState;->mNeedsTokenRefreshOverride:Z

    .line 17
    .line 18
    invoke-virtual {p2}, Lnet/openid/appauth/AuthState;->getAccessToken()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget-object v0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lnet/openid/appauth/AuthState;

    .line 25
    .line 26
    invoke-virtual {v0}, Lnet/openid/appauth/AuthState;->getIdToken()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-object v0, p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v0, p2

    .line 32
    move-object p2, p1

    .line 33
    :goto_0
    iget-object v1, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lnet/openid/appauth/AuthState;

    .line 36
    .line 37
    iget-object v1, v1, Lnet/openid/appauth/AuthState;->mPendingActionsSyncObject:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_0
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lnet/openid/appauth/AuthState;

    .line 43
    .line 44
    iget-object v2, p0, Lnet/openid/appauth/AuthState;->mPendingActions:Ljava/util/ArrayList;

    .line 45
    .line 46
    iput-object p1, p0, Lnet/openid/appauth/AuthState;->mPendingActions:Ljava/util/ArrayList;

    .line 47
    .line 48
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/fsck/k9/backends/RealOAuth2TokenProvider$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    iget-object v1, p1, Lcom/fsck/k9/backends/RealOAuth2TokenProvider$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 66
    .line 67
    iget-object v2, p1, Lcom/fsck/k9/backends/RealOAuth2TokenProvider$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/fsck/k9/backends/RealOAuth2TokenProvider$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/CountDownLatch;

    .line 70
    .line 71
    iput-object p2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 72
    .line 73
    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    return-void

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw p0
.end method

.method public parse()Lcom/fsck/k9/preferences/SettingsFile$Contents;
    .locals 9

    .line 1
    iget-object v0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v2, v1

    .line 7
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x1

    .line 13
    if-ne v3, v4, :cond_7

    .line 14
    .line 15
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const-string v6, "k9settings"

    .line 20
    .line 21
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_6

    .line 26
    .line 27
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v6, "format"

    .line 38
    .line 39
    invoke-virtual {p0, v6}, Lokhttp3/ConnectionPool;->readAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    if-eqz v7, :cond_5

    .line 48
    .line 49
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-ne v6, v5, :cond_4

    .line 54
    .line 55
    const-string/jumbo v6, "version"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v6}, Lokhttp3/ConnectionPool;->readAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    if-eqz v7, :cond_3

    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-lez v8, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    move-object v7, v1

    .line 76
    :goto_0
    if-eqz v7, :cond_3

    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    new-instance v7, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    const/16 v8, 0x1c

    .line 85
    .line 86
    invoke-direct {v7, p0, v2, v4, v8}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v7}, Lokhttp3/ConnectionPool;->readElement(Lkotlin/jvm/functions/Function1;)V

    .line 90
    .line 91
    .line 92
    new-instance v7, Lcom/fsck/k9/preferences/SettingsFile$Contents;

    .line 93
    .line 94
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v2, Ljava/util/Map;

    .line 97
    .line 98
    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v4, Ljava/util/List;

    .line 101
    .line 102
    if-nez v4, :cond_2

    .line 103
    .line 104
    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 105
    .line 106
    :cond_2
    invoke-direct {v7, v6, v2, v4}, Lcom/fsck/k9/preferences/SettingsFile$Contents;-><init>(ILjava/util/Map;Ljava/util/List;)V

    .line 107
    .line 108
    .line 109
    move-object v2, v7

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    const-string p0, "Invalid content version: "

    .line 112
    .line 113
    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    new-instance v0, Lcom/fsck/k9/preferences/SettingsParserException;

    .line 118
    .line 119
    invoke-direct {v0, p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :cond_4
    const-string p0, "Unsupported file format version: "

    .line 124
    .line 125
    invoke-static {p0, v6}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    new-instance v0, Lcom/fsck/k9/preferences/SettingsParserException;

    .line 130
    .line 131
    invoke-direct {v0, p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :cond_5
    const-string p0, "Invalid file format version: "

    .line 136
    .line 137
    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    new-instance v0, Lcom/fsck/k9/preferences/SettingsParserException;

    .line 142
    .line 143
    invoke-direct {v0, p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_6
    invoke-virtual {p0}, Lokhttp3/ConnectionPool;->skipElement()V

    .line 148
    .line 149
    .line 150
    :cond_7
    :goto_1
    if-ne v3, v5, :cond_0

    .line 151
    .line 152
    if-eqz v2, :cond_8

    .line 153
    .line 154
    return-object v2

    .line 155
    :cond_8
    new-instance p0, Lcom/fsck/k9/preferences/SettingsParserException;

    .line 156
    .line 157
    const-string v0, "Missing \'k9settings\' element"

    .line 158
    .line 159
    invoke-direct {p0, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    throw p0
.end method

.method public perform(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    move v1, v2

    .line 20
    :cond_0
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    :cond_1
    if-ne v0, v2, :cond_3

    .line 27
    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    neg-int v0, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    :goto_0
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;

    .line 50
    .line 51
    if-eqz p0, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;->onDismiss(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    :cond_4
    return v2

    .line 57
    :cond_5
    return v1
.end method

.method public process(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lnet/thunderbird/core/common/state/StateMachine;

    .line 6
    .line 7
    invoke-interface {p0, p1, p2}, Lnet/thunderbird/core/common/state/StateMachine;->process(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public readAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const-string p0, "Missing \'"

    .line 14
    .line 15
    const-string v1, "\' attribute"

    .line 16
    .line 17
    invoke-static {p0, p1, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance p1, Lcom/fsck/k9/preferences/SettingsParserException;

    .line 22
    .line 23
    invoke-direct {p1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public readElement(Lkotlin/jvm/functions/Function1;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    .line 5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_3

    .line 11
    .line 12
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    if-eq v2, v3, :cond_2

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    if-eq v2, v3, :cond_1

    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-ne v2, v1, :cond_0

    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    const-string p0, "End of document reached while reading element \'"

    .line 56
    .line 57
    const-string p1, "\'"

    .line 58
    .line 59
    invoke-static {p0, v0, p1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    new-instance p1, Lcom/fsck/k9/preferences/SettingsParserException;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-direct {p1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_3
    const-string p0, "Failed requirement."

    .line 71
    .line 72
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public readServerSettings()Lcom/fsck/k9/preferences/SettingsFile$Server;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 14
    .line 15
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 19
    .line 20
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 24
    .line 25
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 29
    .line 30
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 34
    .line 35
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 39
    .line 40
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v0, v1, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    .line 46
    .line 47
    const/4 v10, 0x0

    .line 48
    const-string v11, "type"

    .line 49
    .line 50
    invoke-interface {v0, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v13

    .line 54
    new-instance v0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda4;

    .line 55
    .line 56
    const/4 v10, 0x0

    .line 57
    invoke-direct/range {v0 .. v10}, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lokhttp3/ConnectionPool;->readElement(Lkotlin/jvm/functions/Function1;)V

    .line 61
    .line 62
    .line 63
    new-instance v12, Lcom/fsck/k9/preferences/SettingsFile$Server;

    .line 64
    .line 65
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 66
    .line 67
    move-object v14, v0

    .line 68
    check-cast v14, Ljava/lang/String;

    .line 69
    .line 70
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 71
    .line 72
    move-object v15, v0

    .line 73
    check-cast v15, Ljava/lang/String;

    .line 74
    .line 75
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 76
    .line 77
    move-object/from16 v16, v0

    .line 78
    .line 79
    check-cast v16, Ljava/lang/String;

    .line 80
    .line 81
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 82
    .line 83
    move-object/from16 v17, v0

    .line 84
    .line 85
    check-cast v17, Ljava/lang/String;

    .line 86
    .line 87
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 88
    .line 89
    move-object/from16 v18, v0

    .line 90
    .line 91
    check-cast v18, Ljava/lang/String;

    .line 92
    .line 93
    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 94
    .line 95
    move-object/from16 v19, v0

    .line 96
    .line 97
    check-cast v19, Ljava/lang/String;

    .line 98
    .line 99
    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 100
    .line 101
    move-object/from16 v20, v0

    .line 102
    .line 103
    check-cast v20, Ljava/lang/String;

    .line 104
    .line 105
    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 106
    .line 107
    move-object/from16 v21, v0

    .line 108
    .line 109
    check-cast v21, Ljava/util/Map;

    .line 110
    .line 111
    invoke-direct/range {v12 .. v21}, Lcom/fsck/k9/preferences/SettingsFile$Server;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    .line 113
    .line 114
    return-object v12
.end method

.method public readSettingsContainer()Ljava/util/LinkedHashMap;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/16 v2, 0x12

    .line 9
    .line 10
    invoke-direct {v1, v2, p0, v0}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lokhttp3/ConnectionPool;->readElement(Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public readText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    .line 5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string p0, ""

    .line 21
    .line 22
    return-object p0
.end method

.method public serverIdOrThrow()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/database/Cursor;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    invoke-virtual {p0}, Lokhttp3/ConnectionPool;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Lokhttp3/ConnectionPool;->getId()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v4, "No server ID found for folder \'"

    .line 26
    .line 27
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\' ("

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ")"

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public skipElement()V
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v0, v1, v2

    .line 14
    .line 15
    const-string v0, "Skipping element \'%s\'"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/16 v1, 0xf

    .line 23
    .line 24
    invoke-direct {v0, v1}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lokhttp3/ConnectionPool;->readElement(Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/mailstore/LocalStore$3;

    .line 4
    .line 5
    const-string v0, "Database downgrades are not supported. Please fix the account database \'"

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/16 v2, 0x5b

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x2

    .line 22
    new-array v4, v4, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    aput-object v1, v4, v5

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    aput-object v3, v4, v1

    .line 29
    .line 30
    const-string v1, "Upgrading database from version %d to version %d"

    .line 31
    .line 32
    invoke-static {v1, v4}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-gt v1, v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/16 v1, 0x3d

    .line 49
    .line 50
    if-ge v0, v1, :cond_0

    .line 51
    .line 52
    invoke-static {p1}, Lokhttp3/ConnectionPool;->dbCreateDatabaseFromScratch(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    invoke-static {p1, p0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/fsck/k9/mailstore/LocalStore$3;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-ne p0, v2, :cond_1

    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    const-string p0, "Database upgrade failed!"

    .line 78
    .line 79
    invoke-static {p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    :try_start_1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$3;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 86
    .line 87
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 88
    .line 89
    new-instance v1, Ljava/lang/AssertionError;

    .line 90
    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p0, "\' manually or clear app data."

    .line 100
    .line 101
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-direct {v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

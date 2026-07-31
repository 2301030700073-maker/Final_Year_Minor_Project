.class public final Landroidx/compose/runtime/Latch$await$2$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $co:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2;ZLandroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    const/4 p2, 0x4

    .line 2
    iput p2, p0, Landroidx/compose/runtime/Latch$await$2$2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method private final invoke$androidx$compose$runtime$snapshots$GlobalSnapshot$takeNestedMutableSnapshot$1$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v3, p1

    .line 2
    check-cast v3, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 3
    .line 4
    sget-object p1, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    sget-wide v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:J

    .line 8
    .line 9
    const-wide/16 v4, 0x1

    .line 10
    .line 11
    add-long/2addr v4, v1

    .line 12
    sput-wide v4, Landroidx/compose/runtime/snapshots/SnapshotKt;->nextSnapshotId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p1

    .line 15
    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v4, p1

    .line 18
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v5, p0

    .line 23
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    new-instance v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 26
    .line 27
    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/snapshots/MutableSnapshot;-><init>(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    move-object p0, v0

    .line 33
    monitor-exit p1

    .line 34
    throw p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Ljava/lang/Number;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :pswitch_1
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 66
    .line 67
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayAccount;

    .line 70
    .line 71
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p0

    .line 77
    :pswitch_2
    check-cast p1, Ljava/lang/Number;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p0, Lkotlinx/collections/immutable/ImmutableList;

    .line 90
    .line 91
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {v0, p0}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :pswitch_3
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityState;

    .line 108
    .line 109
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityState;->stateDescription:Ljava/util/Map;

    .line 117
    .line 118
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->state:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;

    .line 119
    .line 120
    iget-boolean v7, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->selected:Z

    .line 121
    .line 122
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->active:Z

    .line 123
    .line 124
    sget-object v8, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListScreenAccessibilityState$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    aget v1, v8, v1

    .line 131
    .line 132
    if-ne v1, v6, :cond_0

    .line 133
    .line 134
    if-eqz p0, :cond_0

    .line 135
    .line 136
    sget-object p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;->ActiveNewMessage:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_0
    if-ne v1, v2, :cond_1

    .line 140
    .line 141
    if-eqz p0, :cond_1

    .line 142
    .line 143
    sget-object p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;->ActiveReadMessage:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_1
    if-ne v1, v3, :cond_2

    .line 147
    .line 148
    if-eqz p0, :cond_2

    .line 149
    .line 150
    sget-object p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;->ActiveUnreadMessage:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_2
    if-ne v1, v6, :cond_3

    .line 154
    .line 155
    if-eqz v7, :cond_3

    .line 156
    .line 157
    sget-object p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;->SelectedNewMessage:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_3
    if-ne v1, v2, :cond_4

    .line 161
    .line 162
    if-eqz v7, :cond_4

    .line 163
    .line 164
    sget-object p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;->SelectedReadMessage:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_4
    if-ne v1, v3, :cond_5

    .line 168
    .line 169
    if-eqz v7, :cond_5

    .line 170
    .line 171
    sget-object p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;->SelectedUnreadMessage:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_5
    if-ne v1, v6, :cond_6

    .line 175
    .line 176
    sget-object p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;->NewMessage:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_6
    if-ne v1, v2, :cond_7

    .line 180
    .line 181
    sget-object p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;->ReadMessage:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_7
    if-ne v1, v3, :cond_8

    .line 185
    .line 186
    sget-object p0, Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;->UnreadMessage:Lnet/thunderbird/feature/mail/message/list/internal/ui/MessageListStateDescription;

    .line 187
    .line 188
    :goto_0
    invoke-static {v0, p0}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    check-cast p0, Ljava/lang/String;

    .line 193
    .line 194
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 195
    .line 196
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->StateDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 197
    .line 198
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 199
    .line 200
    aget-object v1, v1, v5

    .line 201
    .line 202
    invoke-interface {p1, v0, p0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_8
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 209
    .line 210
    .line 211
    :goto_1
    return-object v4

    .line 212
    :pswitch_4
    check-cast p1, Ljava/lang/Number;

    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v0, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 221
    .line 222
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast p0, Ljava/util/List;

    .line 225
    .line 226
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-virtual {v0, p0}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    return-object p0

    .line 235
    :pswitch_5
    check-cast p1, Ljava/lang/Number;

    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v0, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 244
    .line 245
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast p0, Ljava/util/List;

    .line 252
    .line 253
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-virtual {v0, v1, p0}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    return-object p0

    .line 262
    :pswitch_6
    check-cast p1, Ljava/lang/Throwable;

    .line 263
    .line 264
    instance-of v0, p1, Landroidx/work/impl/WorkerStoppedException;

    .line 265
    .line 266
    if-eqz v0, :cond_9

    .line 267
    .line 268
    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v0, Landroidx/work/ListenableWorker;

    .line 271
    .line 272
    check-cast p1, Landroidx/work/impl/WorkerStoppedException;

    .line 273
    .line 274
    iget p1, p1, Landroidx/work/impl/WorkerStoppedException;->reason:I

    .line 275
    .line 276
    iget-object v0, v0, Landroidx/work/ListenableWorker;->mStopReason:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 277
    .line 278
    const/16 v1, -0x100

    .line 279
    .line 280
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 281
    .line 282
    .line 283
    :cond_9
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 286
    .line 287
    invoke-interface {p0, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 288
    .line 289
    .line 290
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 291
    .line 292
    return-object p0

    .line 293
    :pswitch_7
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Latch$await$2$2;->invoke$androidx$compose$runtime$snapshots$GlobalSnapshot$takeNestedMutableSnapshot$1$1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    return-object p0

    .line 298
    :pswitch_8
    check-cast p1, Landroidx/compose/ui/input/key/KeyEvent;

    .line 299
    .line 300
    iget-object p1, p1, Landroidx/compose/ui/input/key/KeyEvent;->nativeKeyEvent:Landroid/view/KeyEvent;

    .line 301
    .line 302
    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast p1, Landroidx/compose/runtime/MutableState;

    .line 305
    .line 306
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast p0, Landroidx/compose/material3/TooltipStateImpl;

    .line 309
    .line 310
    invoke-virtual {p0}, Landroidx/compose/material3/TooltipStateImpl;->isVisible()Z

    .line 311
    .line 312
    .line 313
    move-result p0

    .line 314
    if-nez p0, :cond_a

    .line 315
    .line 316
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 317
    .line 318
    invoke-interface {p1, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    :cond_a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 322
    .line 323
    return-object p0

    .line 324
    :pswitch_9
    check-cast p1, Landroidx/compose/ui/input/key/KeyEvent;

    .line 325
    .line 326
    iget-object p1, p1, Landroidx/compose/ui/input/key/KeyEvent;->nativeKeyEvent:Landroid/view/KeyEvent;

    .line 327
    .line 328
    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 331
    .line 332
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2;

    .line 335
    .line 336
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-ne v1, v6, :cond_e

    .line 341
    .line 342
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    .line 343
    .line 344
    .line 345
    move-result-wide v1

    .line 346
    sget v3, Landroidx/compose/ui/input/key/Key;->$r8$clinit:I

    .line 347
    .line 348
    sget-wide v3, Landroidx/compose/ui/input/key/Key;->DirectionCenter:J

    .line 349
    .line 350
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    if-nez v3, :cond_b

    .line 355
    .line 356
    sget-wide v3, Landroidx/compose/ui/input/key/Key;->Enter:J

    .line 357
    .line 358
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    if-nez v3, :cond_b

    .line 363
    .line 364
    sget-wide v3, Landroidx/compose/ui/input/key/Key;->NumPadEnter:J

    .line 365
    .line 366
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-eqz v1, :cond_c

    .line 371
    .line 372
    :cond_b
    move v5, v6

    .line 373
    :cond_c
    if-nez v5, :cond_d

    .line 374
    .line 375
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 380
    .line 381
    .line 382
    move-result-wide v1

    .line 383
    sget-wide v3, Landroidx/compose/ui/input/key/Key;->Spacebar:J

    .line 384
    .line 385
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 386
    .line 387
    .line 388
    move-result p1

    .line 389
    if-eqz p1, :cond_e

    .line 390
    .line 391
    :cond_d
    invoke-virtual {p0}, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2;->invoke()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    :cond_e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 395
    .line 396
    invoke-interface {v0, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    return-object p0

    .line 400
    :pswitch_a
    check-cast p1, Landroidx/compose/ui/input/key/KeyEvent;

    .line 401
    .line 402
    iget-object p1, p1, Landroidx/compose/ui/input/key/KeyEvent;->nativeKeyEvent:Landroid/view/KeyEvent;

    .line 403
    .line 404
    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast v0, Landroidx/compose/ui/focus/FocusOwner;

    .line 407
    .line 408
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    if-nez v4, :cond_f

    .line 413
    .line 414
    goto/16 :goto_2

    .line 415
    .line 416
    :cond_f
    const/16 v7, 0x201

    .line 417
    .line 418
    invoke-virtual {v4, v7}, Landroid/view/InputDevice;->supportsSource(I)Z

    .line 419
    .line 420
    .line 421
    move-result v7

    .line 422
    if-nez v7, :cond_10

    .line 423
    .line 424
    goto/16 :goto_2

    .line 425
    .line 426
    :cond_10
    invoke-virtual {v4}, Landroid/view/InputDevice;->isVirtual()Z

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    if-eqz v4, :cond_11

    .line 431
    .line 432
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    const v7, 0x2000001

    .line 437
    .line 438
    .line 439
    if-eq v4, v7, :cond_11

    .line 440
    .line 441
    goto :goto_2

    .line 442
    :cond_11
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    if-ne v4, v2, :cond_18

    .line 447
    .line 448
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    const/16 v4, 0x101

    .line 453
    .line 454
    if-ne v2, v4, :cond_12

    .line 455
    .line 456
    goto :goto_2

    .line 457
    :cond_12
    const/16 v2, 0x13

    .line 458
    .line 459
    invoke-static {v2, p1}, Landroidx/compose/foundation/text/BasicTextKt;->access$isKeyCode-YhN2O0w(ILandroid/view/KeyEvent;)Z

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    if-eqz v2, :cond_13

    .line 464
    .line 465
    const/4 p0, 0x5

    .line 466
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 467
    .line 468
    invoke-virtual {v0, p0, v6}, Landroidx/compose/ui/focus/FocusOwnerImpl;->moveFocus-aToIllA(IZ)Z

    .line 469
    .line 470
    .line 471
    move-result v5

    .line 472
    goto :goto_2

    .line 473
    :cond_13
    const/16 v2, 0x14

    .line 474
    .line 475
    invoke-static {v2, p1}, Landroidx/compose/foundation/text/BasicTextKt;->access$isKeyCode-YhN2O0w(ILandroid/view/KeyEvent;)Z

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    if-eqz v2, :cond_14

    .line 480
    .line 481
    const/4 p0, 0x6

    .line 482
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 483
    .line 484
    invoke-virtual {v0, p0, v6}, Landroidx/compose/ui/focus/FocusOwnerImpl;->moveFocus-aToIllA(IZ)Z

    .line 485
    .line 486
    .line 487
    move-result v5

    .line 488
    goto :goto_2

    .line 489
    :cond_14
    const/16 v2, 0x15

    .line 490
    .line 491
    invoke-static {v2, p1}, Landroidx/compose/foundation/text/BasicTextKt;->access$isKeyCode-YhN2O0w(ILandroid/view/KeyEvent;)Z

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    if-eqz v2, :cond_15

    .line 496
    .line 497
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 498
    .line 499
    invoke-virtual {v0, v3, v6}, Landroidx/compose/ui/focus/FocusOwnerImpl;->moveFocus-aToIllA(IZ)Z

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    goto :goto_2

    .line 504
    :cond_15
    const/16 v2, 0x16

    .line 505
    .line 506
    invoke-static {v2, p1}, Landroidx/compose/foundation/text/BasicTextKt;->access$isKeyCode-YhN2O0w(ILandroid/view/KeyEvent;)Z

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    if-eqz v2, :cond_16

    .line 511
    .line 512
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 513
    .line 514
    invoke-virtual {v0, v1, v6}, Landroidx/compose/ui/focus/FocusOwnerImpl;->moveFocus-aToIllA(IZ)Z

    .line 515
    .line 516
    .line 517
    move-result v5

    .line 518
    goto :goto_2

    .line 519
    :cond_16
    const/16 v0, 0x17

    .line 520
    .line 521
    invoke-static {v0, p1}, Landroidx/compose/foundation/text/BasicTextKt;->access$isKeyCode-YhN2O0w(ILandroid/view/KeyEvent;)Z

    .line 522
    .line 523
    .line 524
    move-result p1

    .line 525
    if-eqz p1, :cond_18

    .line 526
    .line 527
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 528
    .line 529
    check-cast p0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 530
    .line 531
    iget-object p0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->keyboardController:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    .line 532
    .line 533
    if-eqz p0, :cond_17

    .line 534
    .line 535
    check-cast p0, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;

    .line 536
    .line 537
    invoke-virtual {p0}, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;->show()V

    .line 538
    .line 539
    .line 540
    :cond_17
    move v5, v6

    .line 541
    :cond_18
    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 542
    .line 543
    .line 544
    move-result-object p0

    .line 545
    return-object p0

    .line 546
    :pswitch_b
    check-cast p1, Landroidx/compose/ui/input/key/KeyEvent;

    .line 547
    .line 548
    iget-object p1, p1, Landroidx/compose/ui/input/key/KeyEvent;->nativeKeyEvent:Landroid/view/KeyEvent;

    .line 549
    .line 550
    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 551
    .line 552
    check-cast v0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 553
    .line 554
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHandleState()Landroidx/compose/foundation/text/HandleState;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    sget-object v2, Landroidx/compose/foundation/text/HandleState;->Selection:Landroidx/compose/foundation/text/HandleState;

    .line 559
    .line 560
    if-ne v0, v2, :cond_19

    .line 561
    .line 562
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 563
    .line 564
    .line 565
    move-result v0

    .line 566
    if-ne v0, v1, :cond_19

    .line 567
    .line 568
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    .line 569
    .line 570
    .line 571
    move-result p1

    .line 572
    if-ne p1, v6, :cond_19

    .line 573
    .line 574
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 575
    .line 576
    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 577
    .line 578
    invoke-virtual {p0, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->deselect-_kEHs6E$foundation(Landroidx/compose/ui/geometry/Offset;)V

    .line 579
    .line 580
    .line 581
    move v5, v6

    .line 582
    :cond_19
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 583
    .line 584
    .line 585
    move-result-object p0

    .line 586
    return-object p0

    .line 587
    :pswitch_c
    check-cast p1, Ljava/lang/Throwable;

    .line 588
    .line 589
    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast p1, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 592
    .line 593
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 594
    .line 595
    check-cast p0, Landroidx/camera/camera2/impl/LowLightBoostControl;

    .line 596
    .line 597
    iget-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 598
    .line 599
    if-eq p1, v0, :cond_1a

    .line 600
    .line 601
    goto :goto_3

    .line 602
    :cond_1a
    iput-object v4, p0, Landroidx/camera/camera2/impl/LowLightBoostControl;->_updateSignal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 603
    .line 604
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 605
    .line 606
    return-object p0

    .line 607
    :pswitch_d
    check-cast p1, Ljava/lang/Throwable;

    .line 608
    .line 609
    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 610
    .line 611
    check-cast p1, Landroidx/compose/runtime/Latch;

    .line 612
    .line 613
    iget-object v0, p1, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 614
    .line 615
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 616
    .line 617
    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 618
    .line 619
    monitor-enter v0

    .line 620
    :try_start_0
    iget-object p1, p1, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 621
    .line 622
    check-cast p1, Ljava/util/ArrayList;

    .line 623
    .line 624
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    .line 626
    .line 627
    monitor-exit v0

    .line 628
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 629
    .line 630
    return-object p0

    .line 631
    :catchall_0
    move-exception p0

    .line 632
    monitor-exit v0

    .line 633
    throw p0

    .line 634
    nop

    .line 635
    :pswitch_data_0
    .packed-switch 0x0
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

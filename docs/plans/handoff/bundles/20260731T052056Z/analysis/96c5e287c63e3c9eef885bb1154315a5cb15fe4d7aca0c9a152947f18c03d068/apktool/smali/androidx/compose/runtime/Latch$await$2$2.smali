.class public final Landroidx/compose/runtime/Latch$await$2$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $co:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    .locals 6

    .line 1
    iget v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :pswitch_0
    check-cast p1, Lorg/wikipedia/page/PageTitle;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 40
    .line 41
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 44
    .line 45
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 60
    .line 61
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 66
    .line 67
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Lorg/wikipedia/activitytab/ModuleType;

    .line 70
    .line 71
    invoke-virtual {v1, p0, p1}, Lorg/wikipedia/activitytab/ActivityTabModules;->setModuleEnabled(Lorg/wikipedia/activitytab/ModuleType;Z)Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-interface {v0, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 79
    .line 80
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 85
    .line 86
    invoke-static {p0}, Lorg/wikipedia/settings/Prefs;->setActivityTabModules(Lorg/wikipedia/activitytab/ActivityTabModules;)V

    .line 87
    .line 88
    .line 89
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 90
    .line 91
    return-object p0

    .line 92
    :pswitch_2
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    .line 93
    .line 94
    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;

    .line 97
    .line 98
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->conflict(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V

    .line 106
    .line 107
    .line 108
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 109
    .line 110
    return-object p0

    .line 111
    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    .line 112
    .line 113
    instance-of v0, p1, Landroidx/work/impl/WorkerStoppedException;

    .line 114
    .line 115
    if-eqz v0, :cond_0

    .line 116
    .line 117
    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, Landroidx/work/ListenableWorker;

    .line 120
    .line 121
    check-cast p1, Landroidx/work/impl/WorkerStoppedException;

    .line 122
    .line 123
    iget p1, p1, Landroidx/work/impl/WorkerStoppedException;->reason:I

    .line 124
    .line 125
    iget-object v0, v0, Landroidx/work/ListenableWorker;->mStopReason:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 126
    .line 127
    const/16 v1, -0x100

    .line 128
    .line 129
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 130
    .line 131
    .line 132
    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 135
    .line 136
    invoke-interface {p0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 137
    .line 138
    .line 139
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 140
    .line 141
    return-object p0

    .line 142
    :pswitch_4
    invoke-direct {p0, p1}, Landroidx/compose/runtime/Latch$await$2$2;->invoke$androidx$compose$runtime$snapshots$GlobalSnapshot$takeNestedMutableSnapshot$1$1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    return-object p0

    .line 147
    :pswitch_5
    check-cast p1, Landroidx/compose/ui/input/key/KeyEvent;

    .line 148
    .line 149
    iget-object p1, p1, Landroidx/compose/ui/input/key/KeyEvent;->nativeKeyEvent:Landroid/view/KeyEvent;

    .line 150
    .line 151
    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast p1, Landroidx/compose/runtime/MutableState;

    .line 154
    .line 155
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p0, Landroidx/compose/material3/TooltipStateImpl;

    .line 158
    .line 159
    invoke-virtual {p0}, Landroidx/compose/material3/TooltipStateImpl;->isVisible()Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-nez p0, :cond_1

    .line 164
    .line 165
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 166
    .line 167
    invoke-interface {p1, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 171
    .line 172
    return-object p0

    .line 173
    :pswitch_6
    check-cast p1, Landroidx/compose/ui/input/key/KeyEvent;

    .line 174
    .line 175
    iget-object p1, p1, Landroidx/compose/ui/input/key/KeyEvent;->nativeKeyEvent:Landroid/view/KeyEvent;

    .line 176
    .line 177
    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v0, Landroidx/compose/ui/focus/FocusOwner;

    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    if-nez v4, :cond_3

    .line 186
    .line 187
    :cond_2
    :goto_0
    move v2, v3

    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    :cond_3
    const/16 v5, 0x201

    .line 191
    .line 192
    invoke-virtual {v4, v5}, Landroid/view/InputDevice;->supportsSource(I)Z

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    if-nez v5, :cond_4

    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_4
    invoke-virtual {v4}, Landroid/view/InputDevice;->isVirtual()Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-eqz v4, :cond_5

    .line 204
    .line 205
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    const v5, 0x2000001

    .line 210
    .line 211
    .line 212
    if-eq v4, v5, :cond_5

    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_5
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    const/4 v5, 0x2

    .line 220
    if-ne v4, v5, :cond_2

    .line 221
    .line 222
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    const/16 v5, 0x101

    .line 227
    .line 228
    if-ne v4, v5, :cond_6

    .line 229
    .line 230
    goto :goto_0

    .line 231
    :cond_6
    const/16 v4, 0x13

    .line 232
    .line 233
    invoke-static {v4, p1}, Landroidx/compose/foundation/text/BasicTextKt;->isKeyCode-YhN2O0w(ILandroid/view/KeyEvent;)Z

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-eqz v4, :cond_7

    .line 238
    .line 239
    const/4 p0, 0x5

    .line 240
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 241
    .line 242
    invoke-virtual {v0, p0, v2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->moveFocus-aToIllA(IZ)Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    goto :goto_1

    .line 247
    :cond_7
    const/16 v4, 0x14

    .line 248
    .line 249
    invoke-static {v4, p1}, Landroidx/compose/foundation/text/BasicTextKt;->isKeyCode-YhN2O0w(ILandroid/view/KeyEvent;)Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-eqz v4, :cond_8

    .line 254
    .line 255
    const/4 p0, 0x6

    .line 256
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 257
    .line 258
    invoke-virtual {v0, p0, v2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->moveFocus-aToIllA(IZ)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    goto :goto_1

    .line 263
    :cond_8
    const/16 v4, 0x15

    .line 264
    .line 265
    invoke-static {v4, p1}, Landroidx/compose/foundation/text/BasicTextKt;->isKeyCode-YhN2O0w(ILandroid/view/KeyEvent;)Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-eqz v4, :cond_9

    .line 270
    .line 271
    const/4 p0, 0x3

    .line 272
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 273
    .line 274
    invoke-virtual {v0, p0, v2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->moveFocus-aToIllA(IZ)Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    goto :goto_1

    .line 279
    :cond_9
    const/16 v4, 0x16

    .line 280
    .line 281
    invoke-static {v4, p1}, Landroidx/compose/foundation/text/BasicTextKt;->isKeyCode-YhN2O0w(ILandroid/view/KeyEvent;)Z

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    if-eqz v4, :cond_a

    .line 286
    .line 287
    check-cast v0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 288
    .line 289
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->moveFocus-aToIllA(IZ)Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    goto :goto_1

    .line 294
    :cond_a
    const/16 v0, 0x17

    .line 295
    .line 296
    invoke-static {v0, p1}, Landroidx/compose/foundation/text/BasicTextKt;->isKeyCode-YhN2O0w(ILandroid/view/KeyEvent;)Z

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-eqz p1, :cond_2

    .line 301
    .line 302
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast p0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 305
    .line 306
    iget-object p0, p0, Landroidx/compose/foundation/text/LegacyTextFieldState;->keyboardController:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    .line 307
    .line 308
    if-eqz p0, :cond_b

    .line 309
    .line 310
    check-cast p0, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;

    .line 311
    .line 312
    invoke-virtual {p0}, Landroidx/compose/ui/platform/DelegatingSoftwareKeyboardController;->show()V

    .line 313
    .line 314
    .line 315
    :cond_b
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    return-object p0

    .line 320
    :pswitch_7
    check-cast p1, Landroidx/compose/ui/input/key/KeyEvent;

    .line 321
    .line 322
    iget-object p1, p1, Landroidx/compose/ui/input/key/KeyEvent;->nativeKeyEvent:Landroid/view/KeyEvent;

    .line 323
    .line 324
    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v0, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 327
    .line 328
    invoke-virtual {v0}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHandleState()Landroidx/compose/foundation/text/HandleState;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    sget-object v4, Landroidx/compose/foundation/text/HandleState;->Selection:Landroidx/compose/foundation/text/HandleState;

    .line 333
    .line 334
    if-ne v0, v4, :cond_c

    .line 335
    .line 336
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-ne v0, v1, :cond_c

    .line 341
    .line 342
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    if-ne p1, v2, :cond_c

    .line 347
    .line 348
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 351
    .line 352
    const/4 p1, 0x0

    .line 353
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->deselect-_kEHs6E$foundation(Landroidx/compose/ui/geometry/Offset;)V

    .line 354
    .line 355
    .line 356
    goto :goto_2

    .line 357
    :cond_c
    move v2, v3

    .line 358
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 359
    .line 360
    .line 361
    move-result-object p0

    .line 362
    return-object p0

    .line 363
    :pswitch_8
    check-cast p1, Ljava/lang/Throwable;

    .line 364
    .line 365
    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    .line 366
    .line 367
    check-cast p1, Landroidx/compose/runtime/Latch;

    .line 368
    .line 369
    iget-object v0, p1, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 370
    .line 371
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 374
    .line 375
    monitor-enter v0

    .line 376
    :try_start_0
    iget-object p1, p1, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 377
    .line 378
    check-cast p1, Ljava/util/ArrayList;

    .line 379
    .line 380
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    .line 382
    .line 383
    monitor-exit v0

    .line 384
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 385
    .line 386
    return-object p0

    .line 387
    :catchall_0
    move-exception p0

    .line 388
    monitor-exit v0

    .line 389
    throw p0

    .line 390
    nop

    .line 391
    :pswitch_data_0
    .packed-switch 0x0
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

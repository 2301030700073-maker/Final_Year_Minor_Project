.class public final Lcom/fsck/k9/controller/MessagingController$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/controller/MessagingController$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/fsck/k9/controller/MessagingController$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, v1, Lcom/fsck/k9/controller/MessagingController$1;->this$0:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v2, v0

    .line 14
    check-cast v2, Lokhttp3/internal/concurrent/TaskRunner;

    .line 15
    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    iget v0, v2, Lokhttp3/internal/concurrent/TaskRunner;->runCallCount:I

    .line 18
    .line 19
    add-int/2addr v0, v3

    .line 20
    iput v0, v2, Lokhttp3/internal/concurrent/TaskRunner;->runCallCount:I

    .line 21
    .line 22
    invoke-virtual {v2}, Lokhttp3/internal/concurrent/TaskRunner;->awaitTaskToRun()Lokhttp3/internal/concurrent/Task;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 26
    monitor-exit v2

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    :cond_1
    move-object v6, v0

    .line 40
    const-wide/16 v7, -0x1

    .line 41
    .line 42
    :try_start_1
    iget-object v0, v6, Lokhttp3/internal/concurrent/Task;->name:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v1, Lcom/fsck/k9/controller/MessagingController$1;->this$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lokhttp3/internal/concurrent/TaskRunner;

    .line 50
    .line 51
    iget-object v9, v0, Lokhttp3/internal/concurrent/TaskRunner;->logger$1:Ljava/util/logging/Logger;

    .line 52
    .line 53
    iget-object v10, v6, Lokhttp3/internal/concurrent/Task;->queue:Lokhttp3/internal/concurrent/TaskQueue;

    .line 54
    .line 55
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 59
    .line 60
    invoke-virtual {v9, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    if-eqz v11, :cond_2

    .line 65
    .line 66
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 67
    .line 68
    .line 69
    move-result-wide v12

    .line 70
    const-string v0, "starting"

    .line 71
    .line 72
    invoke-static {v9, v6, v10, v0}, Lkotlin/text/StringsKt__IndentKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    move-wide v12, v7

    .line 79
    :goto_0
    :try_start_2
    invoke-virtual {v6}, Lokhttp3/internal/concurrent/Task;->runOnce()J

    .line 80
    .line 81
    .line 82
    move-result-wide v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 83
    if-eqz v11, :cond_3

    .line 84
    .line 85
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 86
    .line 87
    .line 88
    move-result-wide v16

    .line 89
    sub-long v16, v16, v12

    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v11, "finished run in "

    .line 97
    .line 98
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-static/range {v16 .. v17}, Lkotlin/text/StringsKt__IndentKt;->formatDuration(J)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v9, v6, v10, v0}, Lkotlin/text/StringsKt__IndentKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_3
    iget-object v0, v1, Lcom/fsck/k9/controller/MessagingController$1;->this$0:Ljava/lang/Object;

    .line 116
    .line 117
    move-object v9, v0

    .line 118
    check-cast v9, Lokhttp3/internal/concurrent/TaskRunner;

    .line 119
    .line 120
    monitor-enter v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    :try_start_4
    invoke-static {v9, v6, v14, v15, v3}, Lokhttp3/internal/concurrent/TaskRunner;->access$afterRun(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/concurrent/Task;JZ)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9}, Lokhttp3/internal/concurrent/TaskRunner;->awaitTaskToRun()Lokhttp3/internal/concurrent/Task;

    .line 125
    .line 126
    .line 127
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 128
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 129
    if-nez v0, :cond_1

    .line 130
    .line 131
    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :catchall_1
    move-exception v0

    .line 136
    :try_start_6
    monitor-exit v9

    .line 137
    throw v0

    .line 138
    :catchall_2
    move-exception v0

    .line 139
    if-eqz v11, :cond_4

    .line 140
    .line 141
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 142
    .line 143
    .line 144
    move-result-wide v14

    .line 145
    sub-long/2addr v14, v12

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v11, "failed a run in "

    .line 152
    .line 153
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-static {v14, v15}, Lkotlin/text/StringsKt__IndentKt;->formatDuration(J)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v11

    .line 160
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-static {v9, v6, v10, v3}, Lkotlin/text/StringsKt__IndentKt;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_4
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 171
    :goto_2
    :try_start_7
    iget-object v1, v1, Lcom/fsck/k9/controller/MessagingController$1;->this$0:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v1, Lokhttp3/internal/concurrent/TaskRunner;

    .line 174
    .line 175
    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 176
    :try_start_8
    invoke-static {v1, v6, v7, v8, v4}, Lokhttp3/internal/concurrent/TaskRunner;->access$afterRun(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/concurrent/Task;JZ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 177
    .line 178
    .line 179
    :try_start_9
    monitor-exit v1

    .line 180
    instance-of v1, v0, Ljava/lang/InterruptedException;

    .line 181
    .line 182
    if-eqz v1, :cond_5

    .line 183
    .line 184
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :goto_3
    return-void

    .line 193
    :catchall_3
    move-exception v0

    .line 194
    goto :goto_4

    .line 195
    :cond_5
    throw v0

    .line 196
    :catchall_4
    move-exception v0

    .line 197
    monitor-exit v1

    .line 198
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 199
    :goto_4
    invoke-virtual {v2, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw v0

    .line 203
    :catchall_5
    move-exception v0

    .line 204
    monitor-exit v2

    .line 205
    throw v0

    .line 206
    :pswitch_0
    iget-object v0, v1, Lcom/fsck/k9/controller/MessagingController$1;->this$0:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v0, Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 209
    .line 210
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    invoke-virtual {v0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCollapse(Z)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :pswitch_1
    iget-object v0, v1, Lcom/fsck/k9/controller/MessagingController$1;->this$0:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->performLongClick()Z

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :pswitch_2
    iget-object v0, v1, Lcom/fsck/k9/controller/MessagingController$1;->this$0:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;

    .line 229
    .line 230
    iget-object v0, v0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mYearPickerView:Lcom/takisoft/datetimepicker/widget/YearPickerView;

    .line 231
    .line 232
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    if-eqz v0, :cond_6

    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 242
    .line 243
    .line 244
    :cond_6
    return-void

    .line 245
    :pswitch_3
    iget-object v0, v1, Lcom/fsck/k9/controller/MessagingController$1;->this$0:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 248
    .line 249
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 250
    .line 251
    iget-object v0, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 252
    .line 253
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :pswitch_4
    iget-object v0, v1, Lcom/fsck/k9/controller/MessagingController$1;->this$0:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;

    .line 263
    .line 264
    iput-boolean v4, v0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->mHasStableIds:Z

    .line 265
    .line 266
    iget-object v1, v0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->mViews:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 269
    .line 270
    iget-object v3, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 271
    .line 272
    if-eqz v3, :cond_7

    .line 273
    .line 274
    invoke-virtual {v3}, Landroidx/customview/widget/ViewDragHelper;->continueSettling()Z

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-eqz v3, :cond_7

    .line 279
    .line 280
    iget v1, v0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->mViewTypeCount:I

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->continueSettlingToState(I)V

    .line 283
    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_7
    iget v3, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 287
    .line 288
    if-ne v3, v2, :cond_8

    .line 289
    .line 290
    iget v0, v0, Landroidx/core/widget/RemoteViewsCompat$RemoteCollectionItems;->mViewTypeCount:I

    .line 291
    .line 292
    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 293
    .line 294
    .line 295
    :cond_8
    :goto_5
    return-void

    .line 296
    :pswitch_5
    iget-object v0, v1, Lcom/fsck/k9/controller/MessagingController$1;->this$0:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v0, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 299
    .line 300
    iget-object v1, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 301
    .line 302
    check-cast v1, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 303
    .line 304
    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v2, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 307
    .line 308
    invoke-virtual {v1, v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->refreshAttachmentThumbnail(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 309
    .line 310
    .line 311
    new-instance v1, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;

    .line 312
    .line 313
    invoke-direct {v1, v0, v3}, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;-><init>(Lcom/fsck/k9/mailstore/LocalStore$7;I)V

    .line 314
    .line 315
    .line 316
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 317
    .line 318
    new-array v2, v4, [Ljava/lang/Void;

    .line 319
    .line 320
    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :pswitch_6
    const-string v0, "Finished mail sync"

    .line 325
    .line 326
    new-array v2, v4, [Ljava/lang/Object;

    .line 327
    .line 328
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    iget-object v0, v1, Lcom/fsck/k9/controller/MessagingController$1;->this$0:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v0, Lcom/fsck/k9/controller/MessagingController$9;

    .line 334
    .line 335
    iget-object v1, v0, Lcom/fsck/k9/controller/MessagingController$9;->val$wakeLock:Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;

    .line 336
    .line 337
    if-eqz v1, :cond_9

    .line 338
    .line 339
    invoke-virtual {v1}, Lcom/fsck/k9/power/AndroidPowerManager$AndroidWakeLock;->release()V

    .line 340
    .line 341
    .line 342
    :cond_9
    iget-object v1, v0, Lcom/fsck/k9/controller/MessagingController$9;->this$0:Lcom/fsck/k9/controller/MessagingController;

    .line 343
    .line 344
    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingController$9;->val$listener:Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 345
    .line 346
    invoke-virtual {v1, v0}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;)Ljava/util/AbstractSet;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_a

    .line 359
    .line 360
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    check-cast v1, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;

    .line 365
    .line 366
    invoke-virtual {v1}, Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;->checkMailFinished()V

    .line 367
    .line 368
    .line 369
    goto :goto_6

    .line 370
    :cond_a
    return-void

    .line 371
    :pswitch_7
    iget-object v0, v1, Lcom/fsck/k9/controller/MessagingController$1;->this$0:Ljava/lang/Object;

    .line 372
    .line 373
    move-object v1, v0

    .line 374
    check-cast v1, Lcom/fsck/k9/controller/MessagingController;

    .line 375
    .line 376
    const/16 v0, 0xa

    .line 377
    .line 378
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 379
    .line 380
    .line 381
    :cond_b
    :goto_7
    const/4 v5, 0x0

    .line 382
    :try_start_a
    iget-object v0, v1, Lcom/fsck/k9/controller/MessagingController;->queuedCommands:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 383
    .line 384
    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    check-cast v0, Lcom/fsck/k9/controller/MessagingController$Command;

    .line 389
    .line 390
    if-eqz v0, :cond_b

    .line 391
    .line 392
    iget-object v5, v0, Lcom/fsck/k9/controller/MessagingController$Command;->description:Ljava/lang/String;

    .line 393
    .line 394
    const-string v6, "Running command \'%s\', seq = %s (%s priority)"

    .line 395
    .line 396
    iget v7, v0, Lcom/fsck/k9/controller/MessagingController$Command;->sequence:I

    .line 397
    .line 398
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 399
    .line 400
    .line 401
    move-result-object v7

    .line 402
    iget-boolean v8, v0, Lcom/fsck/k9/controller/MessagingController$Command;->isForegroundPriority:Z

    .line 403
    .line 404
    if-eqz v8, :cond_c

    .line 405
    .line 406
    const-string v8, "foreground"

    .line 407
    .line 408
    goto :goto_8

    .line 409
    :catch_0
    move-exception v0

    .line 410
    goto :goto_9

    .line 411
    :cond_c
    const-string v8, "background"

    .line 412
    .line 413
    :goto_8
    const/4 v9, 0x3

    .line 414
    new-array v9, v9, [Ljava/lang/Object;

    .line 415
    .line 416
    aput-object v5, v9, v4

    .line 417
    .line 418
    aput-object v7, v9, v3

    .line 419
    .line 420
    aput-object v8, v9, v2

    .line 421
    .line 422
    invoke-static {v6, v9}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    iget-object v6, v0, Lcom/fsck/k9/controller/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    .line 426
    .line 427
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 428
    .line 429
    .line 430
    const-string v6, " Command \'%s\' completed"

    .line 431
    .line 432
    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingController$Command;->description:Ljava/lang/String;

    .line 433
    .line 434
    new-array v7, v3, [Ljava/lang/Object;

    .line 435
    .line 436
    aput-object v0, v7, v4

    .line 437
    .line 438
    invoke-static {v6, v7}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 439
    .line 440
    .line 441
    goto :goto_7

    .line 442
    :goto_9
    const-string v6, "Error running command \'%s\'"

    .line 443
    .line 444
    new-array v7, v3, [Ljava/lang/Object;

    .line 445
    .line 446
    aput-object v5, v7, v4

    .line 447
    .line 448
    invoke-static {v0, v6, v7}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    goto :goto_7

    .line 452
    nop

    .line 453
    :pswitch_data_0
    .packed-switch 0x0
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

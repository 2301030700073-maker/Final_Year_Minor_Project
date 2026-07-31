.class public final synthetic Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;->f$4:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 4
    .line 5
    const/4 v5, 0x3

    .line 6
    const/4 v6, 0x0

    .line 7
    const/4 v7, 0x2

    .line 8
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    const/4 v9, 0x0

    .line 11
    const/4 v10, 0x1

    .line 12
    iget-object v11, v0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;->f$4:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v12, v0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v13, v0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v14, v0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/fsck/k9/preferences/XmlSettingsParser$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 21
    .line 22
    packed-switch v1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    check-cast v0, Lnet/thunderbird/core/logging/Logger;

    .line 26
    .line 27
    check-cast v14, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;

    .line 28
    .line 29
    check-cast v13, Landroidx/room/InvalidationTracker$implementation$1;

    .line 30
    .line 31
    check-cast v12, Landroidx/room/InvalidationTracker$implementation$1;

    .line 32
    .line 33
    check-cast v11, Lkotlin/time/Clock;

    .line 34
    .line 35
    move-object/from16 v1, p1

    .line 36
    .line 37
    check-cast v1, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iput-object v0, v1, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 43
    .line 44
    const-string v0, "MessageListStateMachine"

    .line 45
    .line 46
    iput-object v0, v1, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->logTag:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v0, v14, Lnet/thunderbird/core/preference/debugging/DefaultDebuggingSettingsPreferenceManager;->configState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 49
    .line 50
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 55
    .line 56
    iget-boolean v0, v0, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isDebugLoggingEnabled:Z

    .line 57
    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    new-instance v0, Landroidx/compose/material/ripple/StateLayer;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v11, v0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    .line 66
    .line 67
    new-instance v2, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;

    .line 68
    .line 69
    const/16 v3, 0x18

    .line 70
    .line 71
    invoke-direct {v2, v3}, Lnet/thunderbird/feature/funding/FeatureFundingModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 72
    .line 73
    .line 74
    iput-object v2, v0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    .line 75
    .line 76
    iput-boolean v10, v0, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    .line 77
    .line 78
    iget-object v2, v1, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 79
    .line 80
    iput-object v2, v0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    .line 81
    .line 82
    iget-object v2, v1, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->logTag:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v2, v0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    .line 85
    .line 86
    iput-object v0, v1, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->debuggerBuilder:Landroidx/compose/material/ripple/StateLayer;

    .line 87
    .line 88
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 89
    .line 90
    sget-object v16, Lkotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMap;->EMPTY:Lkotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMap;

    .line 91
    .line 92
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    new-instance v14, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 99
    .line 100
    sget-object v2, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 101
    .line 102
    invoke-static {v2}, Lokio/Okio;->toPersistentSet(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 103
    .line 104
    .line 105
    move-result-object v20

    .line 106
    sget-object v2, Lnet/thunderbird/feature/mail/message/list/domain/model/SortCriteria;->DateSortTypeOnly:Ljava/util/Set;

    .line 107
    .line 108
    check-cast v2, Ljava/lang/Iterable;

    .line 109
    .line 110
    invoke-static {v2}, Lokio/Okio;->toPersistentSet(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 111
    .line 112
    .line 113
    move-result-object v21

    .line 114
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;

    .line 115
    .line 116
    const-string v3, ""

    .line 117
    .line 118
    invoke-direct {v2, v3, v10}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;-><init>(Ljava/lang/String;Z)V

    .line 119
    .line 120
    .line 121
    new-instance v24, Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;

    .line 122
    .line 123
    invoke-direct/range {v24 .. v24}, Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;-><init>()V

    .line 124
    .line 125
    .line 126
    const/4 v15, 0x0

    .line 127
    const/16 v18, 0x0

    .line 128
    .line 129
    const/16 v19, 0x0

    .line 130
    .line 131
    const/16 v23, 0x0

    .line 132
    .line 133
    move-object/from16 v17, v16

    .line 134
    .line 135
    move-object/from16 v22, v2

    .line 136
    .line 137
    invoke-direct/range {v14 .. v24}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;Lkotlinx/collections/immutable/PersistentMap;Lkotlinx/collections/immutable/PersistentMap;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lkotlinx/collections/immutable/ImmutableSet;Lkotlinx/collections/immutable/ImmutableSet;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;ZLnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;)V

    .line 138
    .line 139
    .line 140
    sget-object v2, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->EMPTY:Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    .line 141
    .line 142
    invoke-direct {v0, v14, v6, v2}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 143
    .line 144
    .line 145
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadingMessagesStateKt$$ExternalSyntheticLambda0;

    .line 146
    .line 147
    invoke-direct {v2, v13, v10}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadingMessagesStateKt$$ExternalSyntheticLambda0;-><init>(Landroidx/room/InvalidationTracker$implementation$1;I)V

    .line 148
    .line 149
    .line 150
    const-class v3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 151
    .line 152
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v1, v3, v2}, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->state(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V

    .line 157
    .line 158
    .line 159
    iput-object v0, v1, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->initialState:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$WarmingUp;

    .line 160
    .line 161
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 162
    .line 163
    const/16 v2, 0x9

    .line 164
    .line 165
    invoke-direct {v0, v2}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 166
    .line 167
    .line 168
    const-class v3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState;

    .line 169
    .line 170
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v1, v3, v0}, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->state(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V

    .line 175
    .line 176
    .line 177
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadingMessagesStateKt$$ExternalSyntheticLambda0;

    .line 178
    .line 179
    invoke-direct {v0, v13, v9}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupLoadingMessagesStateKt$$ExternalSyntheticLambda0;-><init>(Landroidx/room/InvalidationTracker$implementation$1;I)V

    .line 180
    .line 181
    .line 182
    const-class v3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadingMessages;

    .line 183
    .line 184
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v1, v3, v0}, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->state(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V

    .line 189
    .line 190
    .line 191
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 192
    .line 193
    const/16 v3, 0xb

    .line 194
    .line 195
    invoke-direct {v0, v3}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 196
    .line 197
    .line 198
    const-class v3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$LoadedMessages;

    .line 199
    .line 200
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v1, v3, v0}, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->state(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V

    .line 205
    .line 206
    .line 207
    new-instance v0, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;

    .line 208
    .line 209
    invoke-direct {v0, v2, v13, v12}, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    const-class v2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SelectingMessages;

    .line 213
    .line 214
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v1, v2, v0}, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->state(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V

    .line 219
    .line 220
    .line 221
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 222
    .line 223
    const/16 v2, 0xc

    .line 224
    .line 225
    invoke-direct {v0, v2}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 226
    .line 227
    .line 228
    const-class v2, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListState$SearchingMessages;

    .line 229
    .line 230
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {v1, v2, v0}, Lnet/thunderbird/core/common/state/builder/StateMachineBuilder;->state(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V

    .line 235
    .line 236
    .line 237
    return-object v8

    .line 238
    :pswitch_0
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 239
    .line 240
    check-cast v14, Landroidx/compose/ui/unit/Density;

    .line 241
    .line 242
    check-cast v13, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 243
    .line 244
    check-cast v12, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 245
    .line 246
    check-cast v11, Lkotlinx/collections/immutable/ImmutableList;

    .line 247
    .line 248
    move-object/from16 v1, p1

    .line 249
    .line 250
    check-cast v1, Ljava/util/List;

    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    new-instance v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;

    .line 256
    .line 257
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    check-cast v3, Ljava/lang/Float;

    .line 265
    .line 266
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 267
    .line 268
    .line 269
    move-result v15

    .line 270
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    check-cast v3, Ljava/lang/String;

    .line 278
    .line 279
    invoke-static {v3}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 280
    .line 281
    .line 282
    move-result-object v16

    .line 283
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    check-cast v3, Ljava/lang/Float;

    .line 291
    .line 292
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 293
    .line 294
    .line 295
    move-result v17

    .line 296
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    check-cast v1, Ljava/lang/Float;

    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 306
    .line 307
    .line 308
    move-result v18

    .line 309
    move-object v9, v14

    .line 310
    move-object v14, v11

    .line 311
    move-object v11, v9

    .line 312
    move-object v9, v13

    .line 313
    move-object v13, v12

    .line 314
    move-object v12, v9

    .line 315
    move-object v10, v0

    .line 316
    move-object v9, v2

    .line 317
    invoke-direct/range {v9 .. v18}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;Lkotlinx/collections/immutable/ImmutableList;FLnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;FF)V

    .line 318
    .line 319
    .line 320
    return-object v9

    .line 321
    :pswitch_1
    move-object v1, v0

    .line 322
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 323
    .line 324
    move-object v2, v14

    .line 325
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 326
    .line 327
    move-object v3, v13

    .line 328
    check-cast v3, Landroidx/navigation/NavHostController;

    .line 329
    .line 330
    move-object v4, v12

    .line 331
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 332
    .line 333
    move-object v5, v11

    .line 334
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 335
    .line 336
    move-object/from16 v6, p1

    .line 337
    .line 338
    check-cast v6, Landroidx/navigation/NavGraphBuilder;

    .line 339
    .line 340
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    new-instance v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda0;

    .line 344
    .line 345
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 346
    .line 347
    .line 348
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 349
    .line 350
    const v11, -0x45eff374

    .line 351
    .line 352
    .line 353
    invoke-direct {v4, v11, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 354
    .line 355
    .line 356
    const-string v0, "autoconfig"

    .line 357
    .line 358
    invoke-static {v6, v0, v4}, Lcom/fsck/k9/sasl/OAuthBearer;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 359
    .line 360
    .line 361
    new-instance v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda1;

    .line 362
    .line 363
    invoke-direct {v0, v9, v2, v3}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda1;-><init>(ILandroidx/compose/runtime/MutableState;Landroidx/navigation/NavHostController;)V

    .line 364
    .line 365
    .line 366
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 367
    .line 368
    const v11, -0x52b557cb

    .line 369
    .line 370
    .line 371
    invoke-direct {v4, v11, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 372
    .line 373
    .line 374
    const-string v0, "incoming-server/config"

    .line 375
    .line 376
    invoke-static {v6, v0, v4}, Lcom/fsck/k9/sasl/OAuthBearer;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 377
    .line 378
    .line 379
    new-instance v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda1;

    .line 380
    .line 381
    invoke-direct {v0, v10, v1, v3}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda1;-><init>(ILandroidx/compose/runtime/MutableState;Landroidx/navigation/NavHostController;)V

    .line 382
    .line 383
    .line 384
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 385
    .line 386
    const v11, -0x443143ec

    .line 387
    .line 388
    .line 389
    invoke-direct {v4, v11, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 390
    .line 391
    .line 392
    const-string v0, "incoming-server/validation"

    .line 393
    .line 394
    invoke-static {v6, v0, v4}, Lcom/fsck/k9/sasl/OAuthBearer;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 395
    .line 396
    .line 397
    new-instance v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda3;

    .line 398
    .line 399
    invoke-direct {v0, v3, v9}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda3;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 400
    .line 401
    .line 402
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 403
    .line 404
    const v11, -0x35ad300d

    .line 405
    .line 406
    .line 407
    invoke-direct {v4, v11, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 408
    .line 409
    .line 410
    const-string v0, "outgoing-server/config"

    .line 411
    .line 412
    invoke-static {v6, v0, v4}, Lcom/fsck/k9/sasl/OAuthBearer;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 413
    .line 414
    .line 415
    new-instance v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda4;

    .line 416
    .line 417
    invoke-direct {v0, v3, v2, v1, v9}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 418
    .line 419
    .line 420
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 421
    .line 422
    const v4, -0x27291c2e

    .line 423
    .line 424
    .line 425
    invoke-direct {v2, v4, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 426
    .line 427
    .line 428
    const-string v0, "outgoing-server/validation"

    .line 429
    .line 430
    invoke-static {v6, v0, v2}, Lcom/fsck/k9/sasl/OAuthBearer;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 431
    .line 432
    .line 433
    new-instance v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda1;

    .line 434
    .line 435
    invoke-direct {v0, v3, v1}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda1;-><init>(Landroidx/navigation/NavHostController;Landroidx/compose/runtime/MutableState;)V

    .line 436
    .line 437
    .line 438
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 439
    .line 440
    const v2, -0x18a5084f

    .line 441
    .line 442
    .line 443
    invoke-direct {v1, v2, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 444
    .line 445
    .line 446
    const-string v0, "special-folders"

    .line 447
    .line 448
    invoke-static {v6, v0, v1}, Lcom/fsck/k9/sasl/OAuthBearer;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 449
    .line 450
    .line 451
    new-instance v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda3;

    .line 452
    .line 453
    invoke-direct {v0, v3, v10}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda3;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 454
    .line 455
    .line 456
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 457
    .line 458
    const v2, -0xa20f470

    .line 459
    .line 460
    .line 461
    invoke-direct {v1, v2, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 462
    .line 463
    .line 464
    const-string v0, "display-options"

    .line 465
    .line 466
    invoke-static {v6, v0, v1}, Lcom/fsck/k9/sasl/OAuthBearer;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 467
    .line 468
    .line 469
    new-instance v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda3;

    .line 470
    .line 471
    invoke-direct {v0, v3, v7}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda3;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 472
    .line 473
    .line 474
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 475
    .line 476
    const v2, 0x4631f6f

    .line 477
    .line 478
    .line 479
    invoke-direct {v1, v2, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 480
    .line 481
    .line 482
    const-string v0, "sync-options"

    .line 483
    .line 484
    invoke-static {v6, v0, v1}, Lcom/fsck/k9/sasl/OAuthBearer;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 485
    .line 486
    .line 487
    new-instance v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;

    .line 488
    .line 489
    invoke-direct {v0, v9, v5, v3}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 493
    .line 494
    const v2, 0x12e7334e

    .line 495
    .line 496
    .line 497
    invoke-direct {v1, v2, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 498
    .line 499
    .line 500
    const-string v0, "create-account"

    .line 501
    .line 502
    invoke-static {v6, v0, v1}, Lcom/fsck/k9/sasl/OAuthBearer;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 503
    .line 504
    .line 505
    return-object v8

    .line 506
    :pswitch_2
    check-cast v0, Lnet/thunderbird/core/outcome/Outcome;

    .line 507
    .line 508
    check-cast v14, Lnet/thunderbird/core/outcome/Outcome;

    .line 509
    .line 510
    check-cast v13, Lnet/thunderbird/core/outcome/Outcome;

    .line 511
    .line 512
    check-cast v12, Lnet/thunderbird/core/outcome/Outcome;

    .line 513
    .line 514
    check-cast v11, Lnet/thunderbird/core/outcome/Outcome;

    .line 515
    .line 516
    move-object/from16 v15, p1

    .line 517
    .line 518
    check-cast v15, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 519
    .line 520
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    .line 522
    .line 523
    iget-object v1, v15, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->server:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 524
    .line 525
    invoke-virtual {v1, v0}, Lnet/thunderbird/core/validation/input/StringInputField;->updateFromValidationOutcome(Lnet/thunderbird/core/outcome/Outcome;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 526
    .line 527
    .line 528
    move-result-object v17

    .line 529
    iget-object v0, v15, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->port:Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 530
    .line 531
    invoke-virtual {v0, v14}, Lnet/thunderbird/core/validation/input/NumberInputField;->updateFromValidationOutcome(Lnet/thunderbird/core/outcome/Outcome;)Lnet/thunderbird/core/validation/input/NumberInputField;

    .line 532
    .line 533
    .line 534
    move-result-object v19

    .line 535
    iget-object v0, v15, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->username:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 536
    .line 537
    invoke-virtual {v0, v13}, Lnet/thunderbird/core/validation/input/StringInputField;->updateFromValidationOutcome(Lnet/thunderbird/core/outcome/Outcome;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 538
    .line 539
    .line 540
    move-result-object v21

    .line 541
    iget-object v0, v15, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->password:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 542
    .line 543
    invoke-virtual {v0, v12}, Lnet/thunderbird/core/validation/input/StringInputField;->updateFromValidationOutcome(Lnet/thunderbird/core/outcome/Outcome;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 544
    .line 545
    .line 546
    move-result-object v22

    .line 547
    iget-object v0, v15, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->imapPrefix:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 548
    .line 549
    invoke-virtual {v0, v11}, Lnet/thunderbird/core/validation/input/StringInputField;->updateFromValidationOutcome(Lnet/thunderbird/core/outcome/Outcome;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 550
    .line 551
    .line 552
    move-result-object v25

    .line 553
    const/16 v27, 0x0

    .line 554
    .line 555
    const/16 v28, 0xd95

    .line 556
    .line 557
    const/16 v16, 0x0

    .line 558
    .line 559
    const/16 v18, 0x0

    .line 560
    .line 561
    const/16 v20, 0x0

    .line 562
    .line 563
    const/16 v23, 0x0

    .line 564
    .line 565
    const/16 v24, 0x0

    .line 566
    .line 567
    const/16 v26, 0x0

    .line 568
    .line 569
    invoke-static/range {v15 .. v28}, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->copy$default(Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;Lnet/thunderbird/core/validation/input/StringInputField;Lapp/k9mail/feature/account/common/domain/entity/ConnectionSecurity;Lnet/thunderbird/core/validation/input/NumberInputField;Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/StringInputField;Ljava/lang/String;ZLnet/thunderbird/core/validation/input/StringInputField;ZZI)Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    return-object v0

    .line 574
    :pswitch_3
    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 575
    .line 576
    check-cast v14, Ljava/util/ArrayList;

    .line 577
    .line 578
    check-cast v13, Lkotlin/jvm/internal/Ref$IntRef;

    .line 579
    .line 580
    check-cast v12, Landroidx/navigation/internal/NavControllerImpl;

    .line 581
    .line 582
    check-cast v11, Landroid/os/Bundle;

    .line 583
    .line 584
    move-object/from16 v1, p1

    .line 585
    .line 586
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 587
    .line 588
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 589
    .line 590
    .line 591
    iput-boolean v10, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 592
    .line 593
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 594
    .line 595
    .line 596
    move-result v0

    .line 597
    const/4 v2, -0x1

    .line 598
    if-eq v0, v2, :cond_1

    .line 599
    .line 600
    iget v2, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 601
    .line 602
    add-int/2addr v0, v10

    .line 603
    invoke-virtual {v14, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    iput v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 608
    .line 609
    goto :goto_0

    .line 610
    :cond_1
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 611
    .line 612
    :goto_0
    iget-object v0, v1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 613
    .line 614
    invoke-virtual {v12, v0, v11, v1, v2}, Landroidx/navigation/internal/NavControllerImpl;->addEntryToBackStack(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V

    .line 615
    .line 616
    .line 617
    return-object v8

    .line 618
    :pswitch_4
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 619
    .line 620
    check-cast v14, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    .line 621
    .line 622
    check-cast v13, Landroidx/compose/ui/text/input/ImeOptions;

    .line 623
    .line 624
    check-cast v12, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 625
    .line 626
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 627
    .line 628
    move-object/from16 v1, p1

    .line 629
    .line 630
    check-cast v1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    .line 631
    .line 632
    iget-object v2, v14, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->textInputModifierNode:Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;

    .line 633
    .line 634
    iput-object v0, v1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->state:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 635
    .line 636
    iput-object v13, v1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    .line 637
    .line 638
    iput-object v12, v1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->onEditCommand:Lkotlin/jvm/functions/Function1;

    .line 639
    .line 640
    iput-object v11, v1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->onImeActionPerformed:Lkotlin/jvm/functions/Function1;

    .line 641
    .line 642
    if-eqz v2, :cond_2

    .line 643
    .line 644
    iget-object v0, v2, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;->legacyTextFieldState:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 645
    .line 646
    goto :goto_1

    .line 647
    :cond_2
    move-object v0, v6

    .line 648
    :goto_1
    iput-object v0, v1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->legacyTextFieldState:Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 649
    .line 650
    if-eqz v2, :cond_3

    .line 651
    .line 652
    iget-object v0, v2, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;->textFieldSelectionManager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 653
    .line 654
    goto :goto_2

    .line 655
    :cond_3
    move-object v0, v6

    .line 656
    :goto_2
    iput-object v0, v1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->textFieldSelectionManager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 657
    .line 658
    if-eqz v2, :cond_4

    .line 659
    .line 660
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 661
    .line 662
    invoke-static {v2, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    move-object v6, v0

    .line 667
    check-cast v6, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 668
    .line 669
    :cond_4
    iput-object v6, v1, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 670
    .line 671
    return-object v8

    .line 672
    :pswitch_5
    check-cast v0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 673
    .line 674
    check-cast v14, Landroidx/compose/ui/text/input/OffsetMapping;

    .line 675
    .line 676
    check-cast v13, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 677
    .line 678
    check-cast v12, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 679
    .line 680
    check-cast v11, Landroidx/compose/ui/graphics/SolidColor;

    .line 681
    .line 682
    move-object/from16 v1, p1

    .line 683
    .line 684
    check-cast v1, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 685
    .line 686
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 687
    .line 688
    .line 689
    iget-object v15, v1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 690
    .line 691
    iget-object v0, v0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->cursorAlpha$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 692
    .line 693
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 694
    .line 695
    .line 696
    move-result v0

    .line 697
    const/16 v16, 0x20

    .line 698
    .line 699
    const/4 v2, 0x0

    .line 700
    cmpg-float v17, v0, v2

    .line 701
    .line 702
    if-nez v17, :cond_5

    .line 703
    .line 704
    goto/16 :goto_d

    .line 705
    .line 706
    :cond_5
    const-wide v17, 0xffffffffL

    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    iget-wide v3, v13, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 712
    .line 713
    sget v13, Landroidx/compose/ui/text/TextRange;->$r8$clinit:I

    .line 714
    .line 715
    shr-long v3, v3, v16

    .line 716
    .line 717
    long-to-int v3, v3

    .line 718
    invoke-interface {v14, v3}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 719
    .line 720
    .line 721
    move-result v3

    .line 722
    invoke-virtual {v12}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 723
    .line 724
    .line 725
    move-result-object v4

    .line 726
    if-eqz v4, :cond_6

    .line 727
    .line 728
    iget-object v2, v4, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 729
    .line 730
    invoke-virtual {v2, v3}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    goto :goto_3

    .line 735
    :cond_6
    new-instance v3, Landroidx/compose/ui/geometry/Rect;

    .line 736
    .line 737
    invoke-direct {v3, v2, v2, v2, v2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 738
    .line 739
    .line 740
    move-object v2, v3

    .line 741
    :goto_3
    const/high16 v3, 0x40000000    # 2.0f

    .line 742
    .line 743
    invoke-virtual {v1, v3}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->toPx-0680j_4(F)F

    .line 744
    .line 745
    .line 746
    move-result v1

    .line 747
    float-to-double v12, v1

    .line 748
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    .line 749
    .line 750
    .line 751
    move-result-wide v12

    .line 752
    double-to-float v1, v12

    .line 753
    const/high16 v4, 0x3f800000    # 1.0f

    .line 754
    .line 755
    cmpg-float v12, v1, v4

    .line 756
    .line 757
    if-gez v12, :cond_7

    .line 758
    .line 759
    move v1, v4

    .line 760
    :cond_7
    iget v4, v2, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 761
    .line 762
    div-float v3, v1, v3

    .line 763
    .line 764
    add-float/2addr v4, v3

    .line 765
    iget-object v12, v15, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 766
    .line 767
    invoke-virtual {v12}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 768
    .line 769
    .line 770
    move-result-wide v12

    .line 771
    shr-long v12, v12, v16

    .line 772
    .line 773
    long-to-int v12, v12

    .line 774
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 775
    .line 776
    .line 777
    move-result v12

    .line 778
    sub-float/2addr v12, v3

    .line 779
    cmpl-float v13, v4, v12

    .line 780
    .line 781
    if-lez v13, :cond_8

    .line 782
    .line 783
    move v4, v12

    .line 784
    :cond_8
    cmpg-float v12, v4, v3

    .line 785
    .line 786
    if-gez v12, :cond_9

    .line 787
    .line 788
    goto :goto_4

    .line 789
    :cond_9
    move v3, v4

    .line 790
    :goto_4
    float-to-int v4, v1

    .line 791
    rem-int/2addr v4, v7

    .line 792
    if-ne v4, v10, :cond_a

    .line 793
    .line 794
    float-to-double v3, v3

    .line 795
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 796
    .line 797
    .line 798
    move-result-wide v3

    .line 799
    double-to-float v3, v3

    .line 800
    const/high16 v4, 0x3f000000    # 0.5f

    .line 801
    .line 802
    add-float/2addr v3, v4

    .line 803
    goto :goto_5

    .line 804
    :cond_a
    float-to-double v3, v3

    .line 805
    invoke-static {v3, v4}, Ljava/lang/Math;->rint(D)D

    .line 806
    .line 807
    .line 808
    move-result-wide v3

    .line 809
    double-to-float v3, v3

    .line 810
    :goto_5
    iget v4, v2, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 811
    .line 812
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 813
    .line 814
    .line 815
    move-result v7

    .line 816
    int-to-long v12, v7

    .line 817
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 818
    .line 819
    .line 820
    move-result v4

    .line 821
    int-to-long v5, v4

    .line 822
    shl-long v12, v12, v16

    .line 823
    .line 824
    and-long v5, v5, v17

    .line 825
    .line 826
    or-long v22, v12, v5

    .line 827
    .line 828
    iget v2, v2, Landroidx/compose/ui/geometry/Rect;->bottom:F

    .line 829
    .line 830
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 831
    .line 832
    .line 833
    move-result v3

    .line 834
    int-to-long v3, v3

    .line 835
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 836
    .line 837
    .line 838
    move-result v2

    .line 839
    int-to-long v5, v2

    .line 840
    shl-long v2, v3, v16

    .line 841
    .line 842
    and-long v5, v5, v17

    .line 843
    .line 844
    or-long v24, v2, v5

    .line 845
    .line 846
    iget-object v2, v15, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 847
    .line 848
    iget-object v2, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 849
    .line 850
    iget-object v3, v15, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->strokePaint:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 851
    .line 852
    if-nez v3, :cond_b

    .line 853
    .line 854
    invoke-static {}, Landroidx/compose/ui/graphics/ColorKt;->Paint()Landroidx/compose/ui/graphics/AndroidPaint;

    .line 855
    .line 856
    .line 857
    move-result-object v3

    .line 858
    invoke-virtual {v3, v10}, Landroidx/compose/ui/graphics/AndroidPaint;->setStyle-k9PVt8s(I)V

    .line 859
    .line 860
    .line 861
    iput-object v3, v15, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->strokePaint:Landroidx/compose/ui/graphics/AndroidPaint;

    .line 862
    .line 863
    :cond_b
    iget-object v4, v3, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 864
    .line 865
    iget-object v5, v15, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    .line 866
    .line 867
    invoke-virtual {v5}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    .line 868
    .line 869
    .line 870
    move-result-wide v5

    .line 871
    invoke-virtual {v11, v0, v5, v6, v3}, Landroidx/compose/ui/graphics/SolidColor;->applyTo-Pq9zytI(FJLandroidx/compose/ui/graphics/AndroidPaint;)V

    .line 872
    .line 873
    .line 874
    iget-object v0, v3, Landroidx/compose/ui/graphics/AndroidPaint;->internalColorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    .line 875
    .line 876
    const/4 v5, 0x0

    .line 877
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 878
    .line 879
    .line 880
    move-result v0

    .line 881
    if-nez v0, :cond_c

    .line 882
    .line 883
    invoke-virtual {v3, v5}, Landroidx/compose/ui/graphics/AndroidPaint;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 884
    .line 885
    .line 886
    :cond_c
    iget v0, v3, Landroidx/compose/ui/graphics/AndroidPaint;->_blendMode:I

    .line 887
    .line 888
    const/4 v5, 0x3

    .line 889
    if-ne v0, v5, :cond_d

    .line 890
    .line 891
    goto :goto_6

    .line 892
    :cond_d
    invoke-virtual {v3, v5}, Landroidx/compose/ui/graphics/AndroidPaint;->setBlendMode-s9anfk8(I)V

    .line 893
    .line 894
    .line 895
    :goto_6
    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 896
    .line 897
    .line 898
    move-result v0

    .line 899
    cmpg-float v0, v0, v1

    .line 900
    .line 901
    if-nez v0, :cond_e

    .line 902
    .line 903
    goto :goto_7

    .line 904
    :cond_e
    invoke-virtual {v3, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->setStrokeWidth(F)V

    .line 905
    .line 906
    .line 907
    :goto_7
    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeMiter()F

    .line 908
    .line 909
    .line 910
    move-result v0

    .line 911
    const/high16 v1, 0x40800000    # 4.0f

    .line 912
    .line 913
    cmpg-float v0, v0, v1

    .line 914
    .line 915
    if-nez v0, :cond_f

    .line 916
    .line 917
    goto :goto_8

    .line 918
    :cond_f
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 919
    .line 920
    .line 921
    :goto_8
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/AndroidPaint;->getStrokeCap-KaPHkGw()I

    .line 922
    .line 923
    .line 924
    move-result v0

    .line 925
    if-nez v0, :cond_10

    .line 926
    .line 927
    goto :goto_9

    .line 928
    :cond_10
    invoke-virtual {v3, v9}, Landroidx/compose/ui/graphics/AndroidPaint;->setStrokeCap-BeK7IIE(I)V

    .line 929
    .line 930
    .line 931
    :goto_9
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/AndroidPaint;->getStrokeJoin-LxFBmk8()I

    .line 932
    .line 933
    .line 934
    move-result v0

    .line 935
    if-nez v0, :cond_11

    .line 936
    .line 937
    goto :goto_a

    .line 938
    :cond_11
    invoke-virtual {v3, v9}, Landroidx/compose/ui/graphics/AndroidPaint;->setStrokeJoin-Ww9F2mQ(I)V

    .line 939
    .line 940
    .line 941
    :goto_a
    invoke-virtual {v4}, Landroid/graphics/Paint;->isFilterBitmap()Z

    .line 942
    .line 943
    .line 944
    move-result v0

    .line 945
    if-ne v0, v10, :cond_12

    .line 946
    .line 947
    :goto_b
    move-object/from16 v21, v2

    .line 948
    .line 949
    move-object/from16 v26, v3

    .line 950
    .line 951
    goto :goto_c

    .line 952
    :cond_12
    invoke-virtual {v3, v10}, Landroidx/compose/ui/graphics/AndroidPaint;->setFilterQuality-vDHp3xo(I)V

    .line 953
    .line 954
    .line 955
    goto :goto_b

    .line 956
    :goto_c
    invoke-interface/range {v21 .. v26}, Landroidx/compose/ui/graphics/Canvas;->drawLine-Wko1d7g(JJLandroidx/compose/ui/graphics/AndroidPaint;)V

    .line 957
    .line 958
    .line 959
    :goto_d
    return-object v8

    .line 960
    :pswitch_6
    const/16 v16, 0x20

    .line 961
    .line 962
    const-wide v17, 0xffffffffL

    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    check-cast v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 968
    .line 969
    check-cast v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 970
    .line 971
    check-cast v13, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 972
    .line 973
    check-cast v12, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 974
    .line 975
    check-cast v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 976
    .line 977
    move-object/from16 v1, p1

    .line 978
    .line 979
    check-cast v1, Ljava/lang/Float;

    .line 980
    .line 981
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 982
    .line 983
    .line 984
    move-result v1

    .line 985
    iget-object v2, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 986
    .line 987
    invoke-static {v2}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->sumOrNull(Lkotlinx/coroutines/channels/BufferedChannel;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 988
    .line 989
    .line 990
    move-result-object v2

    .line 991
    if-eqz v2, :cond_13

    .line 992
    .line 993
    iget-object v0, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->velocityTracker:Landroidx/cardview/widget/CardView$1;

    .line 994
    .line 995
    iget-wide v3, v2, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->timeMillis:J

    .line 996
    .line 997
    iget-wide v5, v2, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->value:J

    .line 998
    .line 999
    iget-object v7, v0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 1000
    .line 1001
    check-cast v7, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 1002
    .line 1003
    move v15, v10

    .line 1004
    shr-long v9, v5, v16

    .line 1005
    .line 1006
    long-to-int v8, v9

    .line 1007
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1008
    .line 1009
    .line 1010
    move-result v8

    .line 1011
    invoke-virtual {v7, v8, v3, v4}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->addDataPoint(FJ)V

    .line 1012
    .line 1013
    .line 1014
    iget-object v0, v0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1015
    .line 1016
    check-cast v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 1017
    .line 1018
    and-long v5, v5, v17

    .line 1019
    .line 1020
    long-to-int v5, v5

    .line 1021
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1022
    .line 1023
    .line 1024
    move-result v5

    .line 1025
    invoke-virtual {v0, v5, v3, v4}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->addDataPoint(FJ)V

    .line 1026
    .line 1027
    .line 1028
    iget-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1029
    .line 1030
    check-cast v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 1031
    .line 1032
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->plus(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    iput-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1037
    .line 1038
    iget-wide v3, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->value:J

    .line 1039
    .line 1040
    invoke-virtual {v12, v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    .line 1041
    .line 1042
    .line 1043
    move-result-wide v3

    .line 1044
    invoke-virtual {v12, v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toSingleAxisDeltaFromAngle-k-4lQ0M(J)F

    .line 1045
    .line 1046
    .line 1047
    move-result v0

    .line 1048
    iput v0, v13, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1049
    .line 1050
    sub-float/2addr v0, v1

    .line 1051
    invoke-static {v0}, Landroidx/compose/foundation/gestures/ScrollableKt;->access$isLowScrollingDelta(F)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v0

    .line 1055
    xor-int/2addr v0, v15

    .line 1056
    iput-boolean v0, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1057
    .line 1058
    goto :goto_e

    .line 1059
    :cond_13
    move v15, v10

    .line 1060
    :goto_e
    if-eqz v2, :cond_14

    .line 1061
    .line 1062
    move v9, v15

    .line 1063
    goto :goto_f

    .line 1064
    :cond_14
    const/4 v9, 0x0

    .line 1065
    :goto_f
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v0

    .line 1069
    return-object v0

    .line 1070
    :pswitch_7
    move v15, v10

    .line 1071
    check-cast v0, Landroidx/activity/compose/ActivityResultLauncherHolder;

    .line 1072
    .line 1073
    check-cast v14, Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    .line 1074
    .line 1075
    check-cast v13, Ljava/lang/String;

    .line 1076
    .line 1077
    check-cast v12, Lcom/fsck/k9/sasl/OAuthBearer;

    .line 1078
    .line 1079
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 1080
    .line 1081
    move-object/from16 v1, p1

    .line 1082
    .line 1083
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 1084
    .line 1085
    new-instance v1, Landroidx/activity/compose/ActivityResultRegistryKt$$ExternalSyntheticLambda2;

    .line 1086
    .line 1087
    const/4 v2, 0x0

    .line 1088
    invoke-direct {v1, v2, v11}, Landroidx/activity/compose/ActivityResultRegistryKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 1089
    .line 1090
    .line 1091
    invoke-virtual {v14, v13, v12, v1}, Landroidx/activity/ComponentActivity$activityResultRegistry$1;->register(Ljava/lang/String;Lcom/fsck/k9/sasl/OAuthBearer;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v1

    .line 1095
    iput-object v1, v0, Landroidx/activity/compose/ActivityResultLauncherHolder;->launcher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 1096
    .line 1097
    new-instance v1, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;

    .line 1098
    .line 1099
    invoke-direct {v1, v15, v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    .line 1100
    .line 1101
    .line 1102
    return-object v1

    .line 1103
    :pswitch_8
    check-cast v0, Lokhttp3/ConnectionPool;

    .line 1104
    .line 1105
    check-cast v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1106
    .line 1107
    check-cast v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1108
    .line 1109
    check-cast v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1110
    .line 1111
    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1112
    .line 1113
    move-object/from16 v1, p1

    .line 1114
    .line 1115
    check-cast v1, Ljava/lang/Integer;

    .line 1116
    .line 1117
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1118
    .line 1119
    .line 1120
    move-result v1

    .line 1121
    if-ne v1, v7, :cond_1a

    .line 1122
    .line 1123
    iget-object v1, v0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 1124
    .line 1125
    check-cast v1, Lorg/xmlpull/v1/XmlPullParser;

    .line 1126
    .line 1127
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v1

    .line 1131
    if-eqz v1, :cond_19

    .line 1132
    .line 1133
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 1134
    .line 1135
    .line 1136
    move-result v2

    .line 1137
    sparse-switch v2, :sswitch_data_0

    .line 1138
    .line 1139
    .line 1140
    goto :goto_10

    .line 1141
    :sswitch_0
    const-string v2, "settings"

    .line 1142
    .line 1143
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1144
    .line 1145
    .line 1146
    move-result v1

    .line 1147
    if-nez v1, :cond_15

    .line 1148
    .line 1149
    goto :goto_10

    .line 1150
    :cond_15
    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->readSettingsContainer()Ljava/util/LinkedHashMap;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v0

    .line 1154
    iput-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1155
    .line 1156
    goto :goto_11

    .line 1157
    :sswitch_1
    const-string v2, "email"

    .line 1158
    .line 1159
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1160
    .line 1161
    .line 1162
    move-result v1

    .line 1163
    if-nez v1, :cond_16

    .line 1164
    .line 1165
    goto :goto_10

    .line 1166
    :cond_16
    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->readText()Ljava/lang/String;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v0

    .line 1170
    iput-object v0, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1171
    .line 1172
    goto :goto_11

    .line 1173
    :sswitch_2
    const-string v2, "name"

    .line 1174
    .line 1175
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1176
    .line 1177
    .line 1178
    move-result v1

    .line 1179
    if-nez v1, :cond_17

    .line 1180
    .line 1181
    goto :goto_10

    .line 1182
    :cond_17
    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->readText()Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v0

    .line 1186
    iput-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1187
    .line 1188
    goto :goto_11

    .line 1189
    :sswitch_3
    const-string v2, "description"

    .line 1190
    .line 1191
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1192
    .line 1193
    .line 1194
    move-result v1

    .line 1195
    if-nez v1, :cond_18

    .line 1196
    .line 1197
    goto :goto_10

    .line 1198
    :cond_18
    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->readText()Ljava/lang/String;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v0

    .line 1202
    iput-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1203
    .line 1204
    goto :goto_11

    .line 1205
    :cond_19
    :goto_10
    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->skipElement()V

    .line 1206
    .line 1207
    .line 1208
    :cond_1a
    :goto_11
    return-object v8

    .line 1209
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

    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    :sswitch_data_0
    .sparse-switch
        -0x66ca7c04 -> :sswitch_3
        0x337a8b -> :sswitch_2
        0x5c24b9c -> :sswitch_1
        0x5582bc23 -> :sswitch_0
    .end sparse-switch
.end method

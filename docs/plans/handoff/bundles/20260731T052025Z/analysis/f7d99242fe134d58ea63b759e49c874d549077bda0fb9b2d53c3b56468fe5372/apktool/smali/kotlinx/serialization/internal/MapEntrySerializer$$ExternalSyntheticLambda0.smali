.class public final synthetic Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x5

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    iget-object v7, p0, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object p0, p0, Lkotlinx/serialization/internal/MapEntrySerializer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p0, Lkotlinx/collections/immutable/ImmutableSet;

    .line 18
    .line 19
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    new-instance v1, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;

    .line 31
    .line 32
    const/4 v2, 0x7

    .line 33
    invoke-direct {v1, v2, p0, v7}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 34
    .line 35
    .line 36
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 37
    .line 38
    const v2, -0x5ae22b89

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v2, v1, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Landroidx/compose/foundation/lazy/LazyListScope$items$1;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListScope$items$1;

    .line 45
    .line 46
    invoke-virtual {p1, v0, v4, v1, p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 47
    .line 48
    .line 49
    return-object v6

    .line 50
    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 51
    .line 52
    check-cast v7, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemTrailingElement$FavouriteIconButton;

    .line 53
    .line 54
    check-cast p1, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-interface {p0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    return-object v6

    .line 63
    :pswitch_1
    check-cast p0, Landroidx/room/InvalidationTracker$implementation$1;

    .line 64
    .line 65
    check-cast v7, Landroidx/room/InvalidationTracker$implementation$1;

    .line 66
    .line 67
    check-cast p1, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1;

    .line 73
    .line 74
    invoke-direct {v0, p0, v7, v3}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1;-><init>(Landroidx/room/InvalidationTracker$implementation$1;Landroidx/room/InvalidationTracker$implementation$1;I)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p1, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->stateClass:Lkotlin/jvm/internal/ClassReference;

    .line 78
    .line 79
    const-class v3, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$ToggleSelectMessages;

    .line 80
    .line 81
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 86
    .line 87
    const/16 v8, 0x17

    .line 88
    .line 89
    invoke-direct {v4, v8}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 90
    .line 91
    .line 92
    new-instance v8, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 93
    .line 94
    const/16 v9, 0x13

    .line 95
    .line 96
    invoke-direct {v8, v9, v0}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v1, v3, v4, v8}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;

    .line 103
    .line 104
    invoke-direct {v0, v2, v7}, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    const-class v2, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageListEvent$ExitSelectionMode;

    .line 108
    .line 109
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    new-instance v3, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 114
    .line 115
    const/16 v4, 0x18

    .line 116
    .line 117
    invoke-direct {v3, v4}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 118
    .line 119
    .line 120
    new-instance v4, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 121
    .line 122
    const/16 v8, 0x14

    .line 123
    .line 124
    invoke-direct {v4, v8, v0}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1, v2, v3, v4}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 128
    .line 129
    .line 130
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1;

    .line 131
    .line 132
    invoke-direct {v0, p0, v7, v5}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupSelectingMessagesStateKt$$ExternalSyntheticLambda1;-><init>(Landroidx/room/InvalidationTracker$implementation$1;Landroidx/room/InvalidationTracker$implementation$1;I)V

    .line 133
    .line 134
    .line 135
    const-class p0, Lnet/thunderbird/feature/mail/message/list/ui/event/MessageItemEvent$OnMessageClick;

    .line 136
    .line 137
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;

    .line 142
    .line 143
    const/16 v3, 0x19

    .line 144
    .line 145
    invoke-direct {v2, v3}, Lnet/thunderbird/feature/mail/message/list/internal/ui/state/machine/SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2;-><init>(I)V

    .line 146
    .line 147
    .line 148
    new-instance v3, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;

    .line 149
    .line 150
    const/16 v4, 0x15

    .line 151
    .line 152
    invoke-direct {v3, v4, v0}, Landroidx/compose/material3/SheetDefaultsKt$DragHandleWithTooltip$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v1, p0, v2, v3}, Lnet/thunderbird/core/common/state/builder/InternalStateBuilder;->transition(Lkotlin/reflect/KClass;Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 156
    .line 157
    .line 158
    return-object v6

    .line 159
    :pswitch_2
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 160
    .line 161
    check-cast v7, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$EmailCantBeArchived;

    .line 162
    .line 163
    check-cast p1, Ljava/lang/Boolean;

    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 166
    .line 167
    .line 168
    iget-boolean p1, v7, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$EmailCantBeArchived;->isDoNotShowDialogAgainChecked:Z

    .line 169
    .line 170
    xor-int/2addr p1, v5

    .line 171
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    return-object v6

    .line 179
    :pswitch_3
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;

    .line 180
    .line 181
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 182
    .line 183
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$State$ChooseArchiveFolder;->folders:Ljava/util/List;

    .line 189
    .line 190
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    new-instance v8, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;

    .line 195
    .line 196
    invoke-direct {v8, v2, v0}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;-><init>(ILjava/util/List;)V

    .line 197
    .line 198
    .line 199
    new-instance v2, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3;

    .line 200
    .line 201
    invoke-direct {v2, v0, p0, v7, v1}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V

    .line 202
    .line 203
    .line 204
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 205
    .line 206
    const v0, 0x2fd4df92

    .line 207
    .line 208
    .line 209
    invoke-direct {p0, v0, v2, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v3, v4, v8, p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 213
    .line 214
    .line 215
    return-object v6

    .line 216
    :pswitch_4
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 217
    .line 218
    check-cast v7, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;

    .line 219
    .line 220
    check-cast p1, Ljava/lang/Boolean;

    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    iget-object v0, v7, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;->id:Ljava/lang/String;

    .line 227
    .line 228
    iget-object v1, v7, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;->title:Lkotlin/jvm/functions/Function0;

    .line 229
    .line 230
    iget-object v2, v7, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;->description:Lkotlin/jvm/functions/Function0;

    .line 231
    .line 232
    new-instance v3, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;

    .line 233
    .line 234
    invoke-direct {v3, v0, v1, v2, p1}, Lnet/thunderbird/core/ui/setting/SettingValue$Switch;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    .line 235
    .line 236
    .line 237
    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    return-object v6

    .line 241
    :pswitch_5
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 242
    .line 243
    check-cast v7, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;

    .line 244
    .line 245
    move-object v4, p1

    .line 246
    check-cast v4, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;

    .line 247
    .line 248
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    iget-object v1, v7, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;->id:Ljava/lang/String;

    .line 252
    .line 253
    iget-object v2, v7, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;->title:Lkotlin/jvm/functions/Function0;

    .line 254
    .line 255
    iget-object v3, v7, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;->description:Lkotlin/jvm/functions/Function0;

    .line 256
    .line 257
    iget-object v5, v7, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;->options:Lkotlinx/collections/immutable/ImmutableList;

    .line 258
    .line 259
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    new-instance v0, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;

    .line 263
    .line 264
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/core/ui/setting/SettingValue$SegmentedButton$SegmentedButtonOption;Lkotlinx/collections/immutable/ImmutableList;)V

    .line 265
    .line 266
    .line 267
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    return-object v6

    .line 271
    :pswitch_6
    check-cast p0, Lnet/thunderbird/core/ui/setting/SettingValue$Text;

    .line 272
    .line 273
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 274
    .line 275
    check-cast p1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    iget-object p0, p0, Lnet/thunderbird/core/ui/setting/SettingValue$Text;->transform:Lkotlin/jvm/functions/Function1;

    .line 281
    .line 282
    iget-object v0, p1, Landroidx/compose/ui/text/input/TextFieldValue;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    .line 283
    .line 284
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 285
    .line 286
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    check-cast p0, Ljava/lang/String;

    .line 291
    .line 292
    invoke-static {p1, p0}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Ljava/lang/String;)Landroidx/compose/ui/text/input/TextFieldValue;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-interface {v7, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    return-object v6

    .line 300
    :pswitch_7
    check-cast p0, Lkotlinx/collections/immutable/ImmutableList;

    .line 301
    .line 302
    check-cast v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 303
    .line 304
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    .line 305
    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    new-instance v0, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 310
    .line 311
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 312
    .line 313
    .line 314
    move-object v1, p0

    .line 315
    check-cast v1, Lkotlin/collections/AbstractCollection;

    .line 316
    .line 317
    invoke-virtual {v1}, Lkotlin/collections/AbstractCollection;->getSize()I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    new-instance v2, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;

    .line 322
    .line 323
    invoke-direct {v2, v0, p0}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;-><init>(Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;Ljava/util/List;)V

    .line 324
    .line 325
    .line 326
    new-instance v0, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;

    .line 327
    .line 328
    const/4 v3, 0x3

    .line 329
    invoke-direct {v0, v3, p0}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;-><init>(ILjava/util/List;)V

    .line 330
    .line 331
    .line 332
    new-instance v3, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$AutoHeightLazyVerticalGrid_Q2ewo60$lambda$0$0$0$$inlined$itemsIndexed$default$4;

    .line 333
    .line 334
    invoke-direct {v3, p0, v7}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/common/AutoHeightLazyVerticalGridKt$AutoHeightLazyVerticalGrid_Q2ewo60$lambda$0$0$0$$inlined$itemsIndexed$default$4;-><init>(Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 335
    .line 336
    .line 337
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 338
    .line 339
    const v4, -0x73c450aa

    .line 340
    .line 341
    .line 342
    invoke-direct {p0, v4, v3, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 343
    .line 344
    .line 345
    iget-object p1, p1, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->intervals:Lde/cketti/changelog/XmlParser;

    .line 346
    .line 347
    new-instance v3, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;

    .line 348
    .line 349
    sget-object v4, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->DefaultSpan:Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda0;

    .line 350
    .line 351
    invoke-direct {v3, v2, v4, v0, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridInterval;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p1, v1, v3}, Lde/cketti/changelog/XmlParser;->addInterval(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    .line 355
    .line 356
    .line 357
    return-object v6

    .line 358
    :pswitch_8
    check-cast p0, Landroidx/compose/foundation/gestures/DefaultDraggableState$dragScope$1;

    .line 359
    .line 360
    check-cast v7, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;

    .line 361
    .line 362
    check-cast p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragDelta;

    .line 363
    .line 364
    iget-wide v0, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragDelta;->delta:J

    .line 365
    .line 366
    const/high16 p1, 0x3f800000    # 1.0f

    .line 367
    .line 368
    invoke-static {p1, v0, v1}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(FJ)J

    .line 369
    .line 370
    .line 371
    move-result-wide v0

    .line 372
    iget-object p1, v7, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 373
    .line 374
    sget-object v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableKt;->NoOpOnDragStarted:Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;

    .line 375
    .line 376
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 380
    .line 381
    if-ne p1, v2, :cond_0

    .line 382
    .line 383
    const-wide v2, 0xffffffffL

    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    and-long/2addr v0, v2

    .line 389
    :goto_0
    long-to-int p1, v0

    .line 390
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 391
    .line 392
    .line 393
    move-result p1

    .line 394
    goto :goto_1

    .line 395
    :cond_0
    const/16 p1, 0x20

    .line 396
    .line 397
    shr-long/2addr v0, p1

    .line 398
    goto :goto_0

    .line 399
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DefaultDraggableState$dragScope$1;->dragBy(F)V

    .line 400
    .line 401
    .line 402
    return-object v6

    .line 403
    :pswitch_9
    check-cast p0, Lkotlin/collections/ArrayDeque;

    .line 404
    .line 405
    check-cast v7, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;

    .line 406
    .line 407
    check-cast p1, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 413
    .line 414
    .line 415
    move-result-object p0

    .line 416
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    if-eqz v0, :cond_2

    .line 421
    .line 422
    add-int/lit8 v0, v3, 0x1

    .line 423
    .line 424
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    check-cast v1, Lnet/thunderbird/core/common/state/StateMachine$StateTransitionRecord;

    .line 429
    .line 430
    if-lez v3, :cond_1

    .line 431
    .line 432
    const-string v2, "---"

    .line 433
    .line 434
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    const/16 v2, 0xa

    .line 438
    .line 439
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    :cond_1
    iget-object v2, v7, Lnet/thunderbird/core/common/state/debug/CommonStatePrettyPrinter;->formatter:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast v2, Lcom/google/zxing/BinaryBitmap;

    .line 445
    .line 446
    invoke-virtual {v2, v1, v4}, Lcom/google/zxing/BinaryBitmap;->buildTransitionRecord(Lnet/thunderbird/core/common/state/StateMachine$StateTransitionRecord;Lkotlin/time/Instant;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    iget-object v4, v1, Lnet/thunderbird/core/common/state/StateMachine$StateTransitionRecord;->timestamp:Lkotlin/time/Instant;

    .line 454
    .line 455
    move v3, v0

    .line 456
    goto :goto_2

    .line 457
    :cond_2
    return-object v6

    .line 458
    :pswitch_a
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 459
    .line 460
    check-cast v7, Lkotlinx/serialization/KSerializer;

    .line 461
    .line 462
    check-cast p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 463
    .line 464
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    .line 466
    .line 467
    const-string v0, "key"

    .line 468
    .line 469
    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 470
    .line 471
    .line 472
    move-result-object p0

    .line 473
    invoke-virtual {p1, v0, p0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 474
    .line 475
    .line 476
    const-string/jumbo p0, "value"

    .line 477
    .line 478
    .line 479
    invoke-interface {v7}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {p1, p0, v0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 484
    .line 485
    .line 486
    return-object v6

    .line 487
    :pswitch_data_0
    .packed-switch 0x0
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

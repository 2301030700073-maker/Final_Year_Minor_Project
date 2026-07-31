.class public final synthetic Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda2;->f$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda2;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda2;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x1

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    move-object/from16 v7, p2

    .line 20
    .line 21
    check-cast v7, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    and-int/lit8 v8, v7, 0x3

    .line 28
    .line 29
    if-eq v8, v5, :cond_0

    .line 30
    .line 31
    move v8, v6

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v8, v4

    .line 34
    :goto_0
    and-int/2addr v7, v6

    .line 35
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 36
    .line 37
    invoke-virtual {v1, v7, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_8

    .line 42
    .line 43
    new-array v5, v5, [Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 44
    .line 45
    sget-object v7, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;->BannerGlobalNotifications:Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 46
    .line 47
    aput-object v7, v5, v4

    .line 48
    .line 49
    sget-object v4, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;->SnackbarNotifications:Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 50
    .line 51
    aput-object v4, v5, v6

    .line 52
    .line 53
    invoke-static {v5}, Lokio/Okio;->persistentSetOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    iget-object v14, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda2;->f$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 58
    .line 59
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 68
    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    if-ne v4, v5, :cond_2

    .line 72
    .line 73
    :cond_1
    new-instance v12, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;

    .line 74
    .line 75
    const/16 v18, 0x0

    .line 76
    .line 77
    const/16 v19, 0x7

    .line 78
    .line 79
    const/4 v13, 0x2

    .line 80
    const-class v15, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 81
    .line 82
    const-string v16, "onSnackbarInAppNotificationEvent"

    .line 83
    .line 84
    const-string v17, "onSnackbarInAppNotificationEvent(Lnet/thunderbird/feature/notification/api/ui/host/visual/SnackbarVisual;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    .line 85
    .line 86
    invoke-direct/range {v12 .. v19}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    move-object v4, v12

    .line 93
    :cond_2
    check-cast v4, Lkotlin/reflect/KFunction;

    .line 94
    .line 95
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    if-nez v0, :cond_3

    .line 104
    .line 105
    if-ne v6, v5, :cond_4

    .line 106
    .line 107
    :cond_3
    new-instance v12, Landroidx/room/InvalidationTracker$implementation$1;

    .line 108
    .line 109
    const/16 v18, 0x0

    .line 110
    .line 111
    const/16 v19, 0xa

    .line 112
    .line 113
    const/4 v13, 0x1

    .line 114
    const-class v15, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 115
    .line 116
    const-string v16, "filterInAppNotificationEvents"

    .line 117
    .line 118
    const-string v17, "filterInAppNotificationEvents(Lnet/thunderbird/feature/notification/api/content/InAppNotification;)Z"

    .line 119
    .line 120
    invoke-direct/range {v12 .. v19}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    move-object v6, v12

    .line 127
    :cond_4
    check-cast v6, Lkotlin/reflect/KFunction;

    .line 128
    .line 129
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 130
    .line 131
    const/4 v7, 0x0

    .line 132
    const/4 v8, 0x3

    .line 133
    invoke-static {v0, v7, v8}, Landroidx/compose/animation/CrossfadeKt;->animateContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/ui/Modifier;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    if-nez v7, :cond_5

    .line 146
    .line 147
    if-ne v9, v5, :cond_6

    .line 148
    .line 149
    :cond_5
    new-instance v9, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 150
    .line 151
    const/16 v7, 0xc

    .line 152
    .line 153
    invoke-direct {v9, v7, v3}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_6
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 160
    .line 161
    invoke-static {v0, v9}, Landroidx/compose/ui/layout/RulerKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-ne v0, v5, :cond_7

    .line 170
    .line 171
    new-instance v0, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 172
    .line 173
    invoke-direct {v0, v8}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_7
    move-object v9, v0

    .line 180
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 181
    .line 182
    move-object v13, v4

    .line 183
    check-cast v13, Lkotlin/jvm/functions/Function2;

    .line 184
    .line 185
    move-object v14, v6

    .line 186
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 187
    .line 188
    const/16 v17, 0x186

    .line 189
    .line 190
    const/16 v18, 0x48

    .line 191
    .line 192
    const/4 v12, 0x0

    .line 193
    const/4 v15, 0x0

    .line 194
    move-object/from16 v16, v1

    .line 195
    .line 196
    invoke-static/range {v9 .. v18}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;->InAppNotificationHost(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlinx/collections/immutable/ImmutableSet;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 197
    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_8
    move-object/from16 v16, v1

    .line 201
    .line 202
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 203
    .line 204
    .line 205
    :goto_1
    return-object v2

    .line 206
    :pswitch_0
    move-object/from16 v1, p1

    .line 207
    .line 208
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 209
    .line 210
    move-object/from16 v7, p2

    .line 211
    .line 212
    check-cast v7, Ljava/lang/Integer;

    .line 213
    .line 214
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    and-int/lit8 v8, v7, 0x3

    .line 219
    .line 220
    if-eq v8, v5, :cond_9

    .line 221
    .line 222
    move v4, v6

    .line 223
    :cond_9
    and-int/lit8 v5, v7, 0x1

    .line 224
    .line 225
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 226
    .line 227
    invoke-virtual {v1, v5, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-eqz v4, :cond_a

    .line 232
    .line 233
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda2;->f$0:Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;

    .line 234
    .line 235
    iget-object v4, v0, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;->featureThemeProvider$delegate:Lkotlin/Lazy;

    .line 236
    .line 237
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    check-cast v4, Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 242
    .line 243
    new-instance v5, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda2;

    .line 244
    .line 245
    invoke-direct {v5, v0, v3, v6}, Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment$$ExternalSyntheticLambda2;-><init>(Lcom/fsck/k9/ui/messagelist/LegacyMessageListFragment;Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 246
    .line 247
    .line 248
    const v0, 0x7f52d62

    .line 249
    .line 250
    .line 251
    invoke-static {v0, v5, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    const/4 v3, 0x6

    .line 256
    check-cast v4, Lapp/k9mail/provider/K9FeatureThemeProvider;

    .line 257
    .line 258
    invoke-virtual {v4, v0, v1, v3}, Lapp/k9mail/provider/K9FeatureThemeProvider;->WithTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 259
    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_a
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 263
    .line 264
    .line 265
    :goto_2
    return-object v2

    .line 266
    nop

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

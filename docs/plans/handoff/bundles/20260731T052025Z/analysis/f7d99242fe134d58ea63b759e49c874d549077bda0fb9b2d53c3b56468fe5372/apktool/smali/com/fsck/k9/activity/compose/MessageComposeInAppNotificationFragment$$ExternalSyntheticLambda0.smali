.class public final synthetic Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p1

    .line 14
    .line 15
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 16
    .line 17
    move-object/from16 v6, p2

    .line 18
    .line 19
    check-cast v6, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    and-int/lit8 v7, v6, 0x3

    .line 26
    .line 27
    if-eq v7, v4, :cond_0

    .line 28
    .line 29
    move v7, v5

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v7, v3

    .line 32
    :goto_0
    and-int/2addr v6, v5

    .line 33
    move-object v15, v1

    .line 34
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 35
    .line 36
    invoke-virtual {v15, v6, v7}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_7

    .line 41
    .line 42
    iget-object v8, v0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;

    .line 43
    .line 44
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    if-ne v1, v14, :cond_2

    .line 57
    .line 58
    :cond_1
    new-instance v6, Landroidx/room/InvalidationTracker$implementation$1;

    .line 59
    .line 60
    const/4 v12, 0x0

    .line 61
    const/16 v13, 0x9

    .line 62
    .line 63
    const/4 v7, 0x1

    .line 64
    const-class v9, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;

    .line 65
    .line 66
    const-string v10, "onNotificationActionClick"

    .line 67
    .line 68
    const-string v11, "onNotificationActionClick(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;)V"

    .line 69
    .line 70
    invoke-direct/range {v6 .. v13}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    move-object v1, v6

    .line 77
    :cond_2
    check-cast v1, Lkotlin/reflect/KFunction;

    .line 78
    .line 79
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 80
    .line 81
    new-array v0, v4, [Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 82
    .line 83
    sget-object v4, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;->BannerGlobalNotifications:Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 84
    .line 85
    aput-object v4, v0, v3

    .line 86
    .line 87
    sget-object v3, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;->SnackbarNotifications:Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 88
    .line 89
    aput-object v3, v0, v5

    .line 90
    .line 91
    invoke-static {v0}, Lokio/Okio;->persistentSetOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    if-nez v3, :cond_3

    .line 104
    .line 105
    if-ne v4, v14, :cond_4

    .line 106
    .line 107
    :cond_3
    new-instance v6, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;

    .line 108
    .line 109
    const/4 v12, 0x0

    .line 110
    const/4 v13, 0x4

    .line 111
    const/4 v7, 0x2

    .line 112
    const-class v9, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;

    .line 113
    .line 114
    const-string v10, "onSnackbarInAppNotificationEvent"

    .line 115
    .line 116
    const-string v11, "onSnackbarInAppNotificationEvent(Lnet/thunderbird/feature/notification/api/ui/host/visual/SnackbarVisual;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    .line 117
    .line 118
    invoke-direct/range {v6 .. v13}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    move-object v4, v6

    .line 125
    :cond_4
    check-cast v4, Lkotlin/reflect/KFunction;

    .line 126
    .line 127
    move-object v12, v4

    .line 128
    check-cast v12, Lkotlin/jvm/functions/Function2;

    .line 129
    .line 130
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    if-nez v3, :cond_5

    .line 139
    .line 140
    if-ne v4, v14, :cond_6

    .line 141
    .line 142
    :cond_5
    new-instance v4, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 143
    .line 144
    const/4 v3, 0x3

    .line 145
    invoke-direct {v4, v3, v8}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_6
    move-object v13, v4

    .line 152
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 153
    .line 154
    const/16 v16, 0x180

    .line 155
    .line 156
    const/16 v17, 0x4a

    .line 157
    .line 158
    const/4 v9, 0x0

    .line 159
    const/4 v11, 0x0

    .line 160
    const/4 v14, 0x0

    .line 161
    move-object v10, v0

    .line 162
    move-object v8, v1

    .line 163
    invoke-static/range {v8 .. v17}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;->InAppNotificationHost(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlinx/collections/immutable/ImmutableSet;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_7
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 168
    .line 169
    .line 170
    :goto_1
    return-object v2

    .line 171
    :pswitch_0
    move-object/from16 v1, p1

    .line 172
    .line 173
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 174
    .line 175
    move-object/from16 v6, p2

    .line 176
    .line 177
    check-cast v6, Ljava/lang/Integer;

    .line 178
    .line 179
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    and-int/lit8 v7, v6, 0x3

    .line 184
    .line 185
    if-eq v7, v4, :cond_8

    .line 186
    .line 187
    move v3, v5

    .line 188
    :cond_8
    and-int/lit8 v4, v6, 0x1

    .line 189
    .line 190
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 191
    .line 192
    invoke-virtual {v1, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_9

    .line 197
    .line 198
    iget-object v0, v0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;

    .line 199
    .line 200
    iget-object v3, v0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;->themeProvider$delegate:Lkotlin/Lazy;

    .line 201
    .line 202
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    check-cast v3, Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 207
    .line 208
    new-instance v4, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$$ExternalSyntheticLambda0;

    .line 209
    .line 210
    invoke-direct {v4, v0, v5}, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;I)V

    .line 211
    .line 212
    .line 213
    const v0, -0x52b2f9f

    .line 214
    .line 215
    .line 216
    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    const/4 v4, 0x6

    .line 221
    check-cast v3, Lapp/k9mail/provider/K9FeatureThemeProvider;

    .line 222
    .line 223
    invoke-virtual {v3, v0, v1, v4}, Lapp/k9mail/provider/K9FeatureThemeProvider;->WithTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 224
    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_9
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 228
    .line 229
    .line 230
    :goto_2
    return-object v2

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

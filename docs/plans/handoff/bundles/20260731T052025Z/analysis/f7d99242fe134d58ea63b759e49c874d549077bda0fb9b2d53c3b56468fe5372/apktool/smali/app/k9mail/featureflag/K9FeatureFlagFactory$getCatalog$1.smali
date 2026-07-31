.class public final Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I


# direct methods
.method public synthetic constructor <init>(ILkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget p0, p0, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {p0, v0, p2, v1}, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;->L$0:Ljava/lang/Object;

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_0
    new-instance p0, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, v0, p2, v1}, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    return-object p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    iget v1, v0, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;->label:I

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    if-ne v1, v6, :cond_0

    .line 20
    .line 21
    iget-object v1, v0, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;->L$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 24
    .line 25
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 40
    .line 41
    :cond_2
    :goto_0
    invoke-interface {v1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    new-instance v3, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 52
    .line 53
    invoke-direct {v3, v6}, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 54
    .line 55
    .line 56
    iput-object v1, v0, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;->L$0:Ljava/lang/Object;

    .line 57
    .line 58
    iput v6, v0, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;->label:I

    .line 59
    .line 60
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->getMonotonicFrameClock(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/BroadcastFrameClock;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5, v3, v0}, Landroidx/compose/runtime/BroadcastFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-ne v3, v4, :cond_2

    .line 73
    .line 74
    move-object v2, v4

    .line 75
    :cond_3
    :goto_1
    return-object v2

    .line 76
    :pswitch_0
    iget-object v1, v0, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 79
    .line 80
    iget v7, v0, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;->label:I

    .line 81
    .line 82
    if-eqz v7, :cond_5

    .line 83
    .line 84
    if-ne v7, v6, :cond_4

    .line 85
    .line 86
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move-object/from16 v16, v2

    .line 90
    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :cond_4
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    goto/16 :goto_3

    .line 98
    .line 99
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    new-instance v3, Lnet/thunderbird/core/featureflag/FeatureFlag;

    .line 103
    .line 104
    const-string v7, "archive_marks_as_read"

    .line 105
    .line 106
    invoke-direct {v3, v7, v6}, Lnet/thunderbird/core/featureflag/FeatureFlag;-><init>(Ljava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    new-instance v7, Lnet/thunderbird/core/featureflag/FeatureFlag;

    .line 110
    .line 111
    const-string v8, "disable_font_size_config"

    .line 112
    .line 113
    invoke-direct {v7, v8, v6}, Lnet/thunderbird/core/featureflag/FeatureFlag;-><init>(Ljava/lang/String;Z)V

    .line 114
    .line 115
    .line 116
    new-instance v8, Lnet/thunderbird/core/featureflag/FeatureFlag;

    .line 117
    .line 118
    const-string v9, "email_notification_default"

    .line 119
    .line 120
    invoke-direct {v8, v9, v6}, Lnet/thunderbird/core/featureflag/FeatureFlag;-><init>(Ljava/lang/String;Z)V

    .line 121
    .line 122
    .line 123
    new-instance v9, Lnet/thunderbird/core/featureflag/FeatureFlag;

    .line 124
    .line 125
    const-string v10, "display_in_app_notifications"

    .line 126
    .line 127
    const/4 v11, 0x0

    .line 128
    invoke-direct {v9, v10, v11}, Lnet/thunderbird/core/featureflag/FeatureFlag;-><init>(Ljava/lang/String;Z)V

    .line 129
    .line 130
    .line 131
    new-instance v10, Lnet/thunderbird/core/featureflag/FeatureFlag;

    .line 132
    .line 133
    const-string/jumbo v12, "use_notification_sender_for_system_notifications"

    .line 134
    .line 135
    .line 136
    invoke-direct {v10, v12, v11}, Lnet/thunderbird/core/featureflag/FeatureFlag;-><init>(Ljava/lang/String;Z)V

    .line 137
    .line 138
    .line 139
    new-instance v12, Lnet/thunderbird/core/featureflag/FeatureFlag;

    .line 140
    .line 141
    const-string/jumbo v13, "use_compose_for_message_list_items"

    .line 142
    .line 143
    .line 144
    invoke-direct {v12, v13, v11}, Lnet/thunderbird/core/featureflag/FeatureFlag;-><init>(Ljava/lang/String;Z)V

    .line 145
    .line 146
    .line 147
    new-instance v13, Lnet/thunderbird/core/featureflag/FeatureFlag;

    .line 148
    .line 149
    const-string v14, "message_view_action_export_eml"

    .line 150
    .line 151
    invoke-direct {v13, v14, v11}, Lnet/thunderbird/core/featureflag/FeatureFlag;-><init>(Ljava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    new-instance v14, Lnet/thunderbird/core/featureflag/FeatureFlag;

    .line 155
    .line 156
    const-string v15, "enable_avatar_customization"

    .line 157
    .line 158
    invoke-direct {v14, v15, v6}, Lnet/thunderbird/core/featureflag/FeatureFlag;-><init>(Ljava/lang/String;Z)V

    .line 159
    .line 160
    .line 161
    new-instance v15, Lnet/thunderbird/core/featureflag/FeatureFlag;

    .line 162
    .line 163
    const-string/jumbo v5, "use_new_message_reader_css_styles"

    .line 164
    .line 165
    .line 166
    invoke-direct {v15, v5, v6}, Lnet/thunderbird/core/featureflag/FeatureFlag;-><init>(Ljava/lang/String;Z)V

    .line 167
    .line 168
    .line 169
    new-instance v5, Lnet/thunderbird/core/featureflag/FeatureFlag;

    .line 170
    .line 171
    const-string v6, "enable_message_list_new_state"

    .line 172
    .line 173
    invoke-direct {v5, v6, v11}, Lnet/thunderbird/core/featureflag/FeatureFlag;-><init>(Ljava/lang/String;Z)V

    .line 174
    .line 175
    .line 176
    new-instance v6, Lnet/thunderbird/core/featureflag/FeatureFlag;

    .line 177
    .line 178
    move-object/from16 v16, v2

    .line 179
    .line 180
    const-string/jumbo v2, "use_compose_for_message_reader"

    .line 181
    .line 182
    .line 183
    invoke-direct {v6, v2, v11}, Lnet/thunderbird/core/featureflag/FeatureFlag;-><init>(Ljava/lang/String;Z)V

    .line 184
    .line 185
    .line 186
    new-instance v2, Lnet/thunderbird/core/featureflag/FeatureFlag;

    .line 187
    .line 188
    move/from16 p1, v11

    .line 189
    .line 190
    const-string v11, "thundermail_onboarding_enabled"

    .line 191
    .line 192
    move-object/from16 v17, v3

    .line 193
    .line 194
    const/4 v3, 0x1

    .line 195
    invoke-direct {v2, v11, v3}, Lnet/thunderbird/core/featureflag/FeatureFlag;-><init>(Ljava/lang/String;Z)V

    .line 196
    .line 197
    .line 198
    const/16 v11, 0xc

    .line 199
    .line 200
    new-array v11, v11, [Lnet/thunderbird/core/featureflag/FeatureFlag;

    .line 201
    .line 202
    aput-object v17, v11, p1

    .line 203
    .line 204
    aput-object v7, v11, v3

    .line 205
    .line 206
    const/4 v3, 0x2

    .line 207
    aput-object v8, v11, v3

    .line 208
    .line 209
    const/4 v3, 0x3

    .line 210
    aput-object v9, v11, v3

    .line 211
    .line 212
    const/4 v3, 0x4

    .line 213
    aput-object v10, v11, v3

    .line 214
    .line 215
    const/4 v3, 0x5

    .line 216
    aput-object v12, v11, v3

    .line 217
    .line 218
    const/4 v3, 0x6

    .line 219
    aput-object v13, v11, v3

    .line 220
    .line 221
    const/4 v3, 0x7

    .line 222
    aput-object v14, v11, v3

    .line 223
    .line 224
    const/16 v3, 0x8

    .line 225
    .line 226
    aput-object v15, v11, v3

    .line 227
    .line 228
    const/16 v3, 0x9

    .line 229
    .line 230
    aput-object v5, v11, v3

    .line 231
    .line 232
    const/16 v3, 0xa

    .line 233
    .line 234
    aput-object v6, v11, v3

    .line 235
    .line 236
    const/16 v3, 0xb

    .line 237
    .line 238
    aput-object v2, v11, v3

    .line 239
    .line 240
    invoke-static {v11}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    const/4 v3, 0x0

    .line 245
    iput-object v3, v0, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;->L$0:Ljava/lang/Object;

    .line 246
    .line 247
    const/4 v3, 0x1

    .line 248
    iput v3, v0, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;->label:I

    .line 249
    .line 250
    invoke-interface {v1, v2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    if-ne v0, v4, :cond_6

    .line 255
    .line 256
    move-object v2, v4

    .line 257
    goto :goto_3

    .line 258
    :cond_6
    :goto_2
    move-object/from16 v2, v16

    .line 259
    .line 260
    :goto_3
    return-object v2

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

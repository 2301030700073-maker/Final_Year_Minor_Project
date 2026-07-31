.class public abstract Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final lambda$1908229429:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final lambda$25181172:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final lambda$59416341:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final lambda$944899621:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lnet/thunderbird/feature/notification/api/ui/ComposableSingletons$InAppNotificationHostKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/notification/api/ui/ComposableSingletons$InAppNotificationHostKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 8
    .line 9
    const v2, 0x1803bf4

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;->lambda$25181172:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 17
    .line 18
    new-instance v0, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 19
    .line 20
    const/16 v1, 0x11

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 26
    .line 27
    const v2, 0x38520625

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;->lambda$944899621:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 34
    .line 35
    new-instance v0, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 36
    .line 37
    const/16 v1, 0x12

    .line 38
    .line 39
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 43
    .line 44
    const v2, 0x38a9f15

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 48
    .line 49
    .line 50
    sput-object v1, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;->lambda$59416341:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 51
    .line 52
    new-instance v0, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;

    .line 53
    .line 54
    const/16 v1, 0x13

    .line 55
    .line 56
    invoke-direct {v0, v1}, Lnet/thunderbird/feature/notification/impl/inject/NotificationModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 60
    .line 61
    const v2, 0x71bd4535

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 65
    .line 66
    .line 67
    sput-object v1, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;->lambda$1908229429:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 68
    .line 69
    return-void
.end method

.method public static final BannerGlobalNotificationHost(Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object v7, p3

    .line 5
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const p3, 0x18f87fb5

    .line 8
    .line 9
    .line 10
    invoke-virtual {v7, p3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    const/4 p3, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p3, 0x2

    .line 22
    :goto_0
    or-int/2addr p3, p4

    .line 23
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x20

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/16 v0, 0x10

    .line 33
    .line 34
    :goto_1
    or-int/2addr p3, v0

    .line 35
    and-int/lit16 v0, p3, 0x93

    .line 36
    .line 37
    const/16 v1, 0x92

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    if-eq v0, v1, :cond_2

    .line 41
    .line 42
    move v0, v2

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    :goto_2
    and-int/2addr p3, v2

    .line 46
    invoke-virtual {v7, p3, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-eqz p3, :cond_4

    .line 51
    .line 52
    iget-object p3, p0, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->currentInAppNotificationHostState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 53
    .line 54
    invoke-static {p3, v7}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    check-cast p3, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;

    .line 63
    .line 64
    iget-object v0, p3, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;->bannerGlobalVisual:Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;

    .line 65
    .line 66
    const-string p3, "banner_global_notification_host"

    .line 67
    .line 68
    invoke-static {p2, p3}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 77
    .line 78
    if-ne p3, v2, :cond_3

    .line 79
    .line 80
    new-instance p3, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 81
    .line 82
    const/16 v2, 0x19

    .line 83
    .line 84
    invoke-direct {p3, v2}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, p3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    move-object v2, p3

    .line 91
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 92
    .line 93
    new-instance p3, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;

    .line 94
    .line 95
    const/16 v3, 0xb

    .line 96
    .line 97
    invoke-direct {p3, v3, p1}, Lcom/skydoves/landscapist/coil3/CoilImageKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    const v3, -0x6ed55e73

    .line 101
    .line 102
    .line 103
    invoke-static {v3, p3, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    const v8, 0x180180

    .line 108
    .line 109
    .line 110
    const/16 v9, 0x38

    .line 111
    .line 112
    const/4 v3, 0x0

    .line 113
    const/4 v4, 0x0

    .line 114
    const/4 v5, 0x0

    .line 115
    invoke-static/range {v0 .. v9}, Landroidx/compose/animation/CrossfadeKt;->AnimatedContent(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 120
    .line 121
    .line 122
    :goto_3
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    if-eqz p3, :cond_5

    .line 127
    .line 128
    new-instance v0, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 129
    .line 130
    const/16 v5, 0x1c

    .line 131
    .line 132
    move-object v1, p0

    .line 133
    move-object v2, p1

    .line 134
    move-object v3, p2

    .line 135
    move v4, p4

    .line 136
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 137
    .line 138
    .line 139
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 140
    .line 141
    :cond_5
    return-void
.end method

.method public static final BannerGlobalNotificationHostLayout(Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    move-object v0, p3

    .line 2
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const v3, -0x71820562

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    and-int/lit8 v3, p4, 0x6

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    const/4 v5, 0x4

    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    move v3, v5

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v4

    .line 25
    :goto_0
    or-int/2addr v3, p4

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v3, p4

    .line 28
    :goto_1
    and-int/lit8 v6, p4, 0x30

    .line 29
    .line 30
    if-nez v6, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_2

    .line 37
    .line 38
    const/16 v6, 0x20

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/16 v6, 0x10

    .line 42
    .line 43
    :goto_2
    or-int/2addr v3, v6

    .line 44
    :cond_3
    or-int/lit16 v3, v3, 0x180

    .line 45
    .line 46
    and-int/lit16 v6, v3, 0x93

    .line 47
    .line 48
    const/16 v7, 0x92

    .line 49
    .line 50
    const/4 v8, 0x1

    .line 51
    const/4 v9, 0x0

    .line 52
    if-eq v6, v7, :cond_4

    .line 53
    .line 54
    move v6, v8

    .line 55
    goto :goto_3

    .line 56
    :cond_4
    move v6, v9

    .line 57
    :goto_3
    and-int/2addr v3, v8

    .line 58
    invoke-virtual {v0, v3, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_b

    .line 63
    .line 64
    iget-object v3, p0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;->action:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 65
    .line 66
    iget-object v6, p0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;->message:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    if-nez v3, :cond_5

    .line 77
    .line 78
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 79
    .line 80
    if-ne v7, v3, :cond_6

    .line 81
    .line 82
    :cond_5
    new-instance v3, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;

    .line 83
    .line 84
    const/16 v7, 0x13

    .line 85
    .line 86
    invoke-direct {v3, v7, p0, p1}, Lcom/fsck/k9/ui/settings/AboutFragmentKt$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    new-instance v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 90
    .line 91
    const v10, 0xef91362

    .line 92
    .line 93
    .line 94
    invoke-direct {v7, v10, v3, v8}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 95
    .line 96
    .line 97
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->movableContentOf(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_6
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 105
    .line 106
    iget-object v3, p0, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerGlobalVisual;->severity:Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 113
    .line 114
    if-eqz v3, :cond_a

    .line 115
    .line 116
    if-eq v3, v8, :cond_a

    .line 117
    .line 118
    if-eq v3, v4, :cond_9

    .line 119
    .line 120
    const/4 v4, 0x3

    .line 121
    if-eq v3, v4, :cond_8

    .line 122
    .line 123
    if-ne v3, v5, :cond_7

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_7
    const v1, -0x1915ed91

    .line 127
    .line 128
    .line 129
    invoke-static {v0, v1, v9}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    throw v0

    .line 134
    :cond_8
    const v3, -0x9a2d8b1

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 138
    .line 139
    .line 140
    const-string/jumbo v3, "warning_banner_global_notification"

    .line 141
    .line 142
    .line 143
    invoke-static {v10, v3}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v9, v0, v3, v6, v7}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/BannerGlobalNotificationCardKt;->WarningBannerGlobalNotificationCard(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 151
    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_9
    :goto_4
    const v3, -0x99e71cb

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 158
    .line 159
    .line 160
    const-string v3, "info_banner_global_notification"

    .line 161
    .line 162
    invoke-static {v10, v3}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-static {v9, v0, v3, v6, v7}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/BannerGlobalNotificationCardKt;->InfoBannerGlobalNotificationCard(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 170
    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_a
    const v3, -0x1915e451

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 177
    .line 178
    .line 179
    const-string v3, "error_banner_global_notification"

    .line 180
    .line 181
    invoke-static {v10, v3}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-static {v9, v0, v3, v6, v7}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/global/BannerGlobalNotificationCardKt;->ErrorBannerGlobalNotificationCard(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 189
    .line 190
    .line 191
    :goto_5
    move-object v3, v10

    .line 192
    goto :goto_6

    .line 193
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 194
    .line 195
    .line 196
    move-object v3, p2

    .line 197
    :goto_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    if-eqz v6, :cond_c

    .line 202
    .line 203
    new-instance v0, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;

    .line 204
    .line 205
    const/16 v5, 0x8

    .line 206
    .line 207
    move-object v1, p0

    .line 208
    move-object v2, p1

    .line 209
    move v4, p4

    .line 210
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/value/TextItemKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 211
    .line 212
    .line 213
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 214
    .line 215
    :cond_c
    return-void
.end method

.method public static final BannerInlineItem(ILnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move/from16 v6, p6

    .line 4
    .line 5
    move-object/from16 v13, p5

    .line 6
    .line 7
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v0, 0x746fd617

    .line 10
    .line 11
    .line 12
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v0, v6, 0x6

    .line 16
    .line 17
    move/from16 v1, p0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x2

    .line 30
    :goto_0
    or-int/2addr v0, v6

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v0, v6

    .line 33
    :goto_1
    and-int/lit8 v3, v6, 0x30

    .line 34
    .line 35
    const/16 v7, 0x10

    .line 36
    .line 37
    if-nez v3, :cond_3

    .line 38
    .line 39
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    const/16 v3, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v3, v7

    .line 49
    :goto_2
    or-int/2addr v0, v3

    .line 50
    :cond_3
    and-int/lit16 v3, v6, 0x180

    .line 51
    .line 52
    if-nez v3, :cond_5

    .line 53
    .line 54
    move-object/from16 v3, p2

    .line 55
    .line 56
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_4

    .line 61
    .line 62
    const/16 v4, 0x100

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_4
    const/16 v4, 0x80

    .line 66
    .line 67
    :goto_3
    or-int/2addr v0, v4

    .line 68
    goto :goto_4

    .line 69
    :cond_5
    move-object/from16 v3, p2

    .line 70
    .line 71
    :goto_4
    and-int/lit16 v4, v6, 0xc00

    .line 72
    .line 73
    if-nez v4, :cond_7

    .line 74
    .line 75
    move-object/from16 v4, p3

    .line 76
    .line 77
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_6

    .line 82
    .line 83
    const/16 v5, 0x800

    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_6
    const/16 v5, 0x400

    .line 87
    .line 88
    :goto_5
    or-int/2addr v0, v5

    .line 89
    goto :goto_6

    .line 90
    :cond_7
    move-object/from16 v4, p3

    .line 91
    .line 92
    :goto_6
    or-int/lit16 v0, v0, 0x6000

    .line 93
    .line 94
    and-int/lit16 v5, v0, 0x2493

    .line 95
    .line 96
    const/16 v8, 0x2492

    .line 97
    .line 98
    const/4 v9, 0x1

    .line 99
    if-eq v5, v8, :cond_8

    .line 100
    .line 101
    move v5, v9

    .line 102
    goto :goto_7

    .line 103
    :cond_8
    const/4 v5, 0x0

    .line 104
    :goto_7
    and-int/2addr v0, v9

    .line 105
    invoke-virtual {v13, v0, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_b

    .line 110
    .line 111
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 116
    .line 117
    if-ne v0, v8, :cond_9

    .line 118
    .line 119
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_9
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 129
    .line 130
    iget-object v9, v2, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;->title:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v10, v2, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;->supportingText:Ljava/lang/String;

    .line 133
    .line 134
    const/4 v5, 0x3

    .line 135
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 136
    .line 137
    const/4 v12, 0x0

    .line 138
    invoke-static {v11, v12, v5}, Landroidx/compose/animation/CrossfadeKt;->animateContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/ui/Modifier;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    move-object v3, v0

    .line 143
    new-instance v0, Lnet/thunderbird/feature/notification/api/ui/BannerInlineNotificationListHostKt$$ExternalSyntheticLambda0;

    .line 144
    .line 145
    move v5, v1

    .line 146
    move-object v1, v4

    .line 147
    move-object/from16 v4, p2

    .line 148
    .line 149
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/feature/notification/api/ui/BannerInlineNotificationListHostKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;I)V

    .line 150
    .line 151
    .line 152
    const v1, 0x5d44e604

    .line 153
    .line 154
    .line 155
    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    if-ne v1, v8, :cond_a

    .line 164
    .line 165
    new-instance v1, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;

    .line 166
    .line 167
    invoke-direct {v1, v3, v7}, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_a
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 174
    .line 175
    const v14, 0x36180

    .line 176
    .line 177
    .line 178
    const/4 v15, 0x0

    .line 179
    move-object v2, v11

    .line 180
    sget-object v11, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;->Clipped:Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;

    .line 181
    .line 182
    move-object v7, v9

    .line 183
    move-object v8, v10

    .line 184
    move-object v10, v12

    .line 185
    move-object v9, v0

    .line 186
    move-object v12, v1

    .line 187
    invoke-static/range {v7 .. v15}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardKt;->ErrorBannerInlineNotificationCard(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 188
    .line 189
    .line 190
    move-object v5, v2

    .line 191
    goto :goto_8

    .line 192
    :cond_b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 193
    .line 194
    .line 195
    move-object/from16 v5, p4

    .line 196
    .line 197
    :goto_8
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    if-eqz v7, :cond_c

    .line 202
    .line 203
    new-instance v0, Lapp/k9mail/feature/account/common/ui/item/ListItemKt$$ExternalSyntheticLambda0;

    .line 204
    .line 205
    move/from16 v1, p0

    .line 206
    .line 207
    move-object/from16 v2, p1

    .line 208
    .line 209
    move-object/from16 v3, p2

    .line 210
    .line 211
    move-object/from16 v4, p3

    .line 212
    .line 213
    invoke-direct/range {v0 .. v6}, Lapp/k9mail/feature/account/common/ui/item/ListItemKt$$ExternalSyntheticLambda0;-><init>(ILnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;I)V

    .line 214
    .line 215
    .line 216
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 217
    .line 218
    :cond_c
    return-void
.end method

.method public static final BannerInlineNotificationListHost(Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-object v7, p4

    .line 8
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const p4, -0x6a02ec17

    .line 11
    .line 12
    .line 13
    invoke-virtual {v7, p4}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    if-eqz p4, :cond_0

    .line 21
    .line 22
    const/4 p4, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p4, 0x2

    .line 25
    :goto_0
    or-int/2addr p4, p5

    .line 26
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const/16 v0, 0x20

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/16 v0, 0x10

    .line 36
    .line 37
    :goto_1
    or-int/2addr p4, v0

    .line 38
    invoke-virtual {v7, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    const/16 v0, 0x100

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/16 v0, 0x80

    .line 48
    .line 49
    :goto_2
    or-int/2addr p4, v0

    .line 50
    and-int/lit16 v0, p4, 0x493

    .line 51
    .line 52
    const/16 v1, 0x492

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    if-eq v0, v1, :cond_3

    .line 56
    .line 57
    move v0, v2

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    const/4 v0, 0x0

    .line 60
    :goto_3
    and-int/2addr p4, v2

    .line 61
    invoke-virtual {v7, p4, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result p4

    .line 65
    if-eqz p4, :cond_6

    .line 66
    .line 67
    iget-object p4, p0, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->currentInAppNotificationHostState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 68
    .line 69
    invoke-static {p4, v7}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    invoke-interface {p4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p4

    .line 77
    check-cast p4, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;

    .line 78
    .line 79
    iget-object v0, p4, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;->bannerInlineVisuals:Lkotlinx/collections/immutable/ImmutableSet;

    .line 80
    .line 81
    const-string p4, "banner_inline_notification_host"

    .line 82
    .line 83
    invoke-static {p3, p4}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p4

    .line 91
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 92
    .line 93
    if-ne p4, v2, :cond_4

    .line 94
    .line 95
    new-instance p4, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    const/16 v3, 0x1a

    .line 98
    .line 99
    invoke-direct {p4, v3}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7, p4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 106
    .line 107
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    if-ne v3, v2, :cond_5

    .line 112
    .line 113
    new-instance v3, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 114
    .line 115
    const/16 v2, 0x1b

    .line 116
    .line 117
    invoke-direct {v3, v2}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    move-object v5, v3

    .line 124
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 125
    .line 126
    new-instance v2, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;

    .line 127
    .line 128
    const/4 v3, 0x6

    .line 129
    invoke-direct {v2, v3, p1, p2}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    const v3, 0x74b49930

    .line 133
    .line 134
    .line 135
    invoke-static {v3, v2, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    const v8, 0x1b0180

    .line 140
    .line 141
    .line 142
    const/16 v9, 0x18

    .line 143
    .line 144
    const/4 v3, 0x0

    .line 145
    const/4 v4, 0x0

    .line 146
    move-object v2, p4

    .line 147
    invoke-static/range {v0 .. v9}, Landroidx/compose/animation/CrossfadeKt;->AnimatedContent(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_6
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 152
    .line 153
    .line 154
    :goto_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 155
    .line 156
    .line 157
    move-result-object p4

    .line 158
    if-eqz p4, :cond_7

    .line 159
    .line 160
    new-instance v0, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;

    .line 161
    .line 162
    const/16 v6, 0x16

    .line 163
    .line 164
    move-object v1, p0

    .line 165
    move-object v2, p1

    .line 166
    move-object v3, p2

    .line 167
    move-object v4, p3

    .line 168
    move v5, p5

    .line 169
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/MaterialThemeKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 170
    .line 171
    .line 172
    iput-object v0, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 173
    .line 174
    :cond_7
    return-void
.end method

.method public static final BannerInlineNotificationListHostLayout(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlinx/collections/immutable/ImmutableSet;)V
    .locals 18

    .line 1
    move/from16 v5, p0

    .line 2
    .line 3
    move-object/from16 v4, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v1, p5

    .line 8
    .line 9
    move-object/from16 v11, p1

    .line 10
    .line 11
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v0, 0x606ff781

    .line 14
    .line 15
    .line 16
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    and-int/lit8 v0, v5, 0x6

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    const/4 v6, 0x4

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    move v0, v6

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v0, v2

    .line 34
    :goto_0
    or-int/2addr v0, v5

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v5

    .line 37
    :goto_1
    and-int/lit8 v7, v5, 0x30

    .line 38
    .line 39
    if-nez v7, :cond_3

    .line 40
    .line 41
    move-object/from16 v7, p4

    .line 42
    .line 43
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-eqz v9, :cond_2

    .line 48
    .line 49
    const/16 v9, 0x20

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v9, 0x10

    .line 53
    .line 54
    :goto_2
    or-int/2addr v0, v9

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    move-object/from16 v7, p4

    .line 57
    .line 58
    :goto_3
    and-int/lit16 v9, v5, 0x180

    .line 59
    .line 60
    if-nez v9, :cond_5

    .line 61
    .line 62
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-eqz v9, :cond_4

    .line 67
    .line 68
    const/16 v9, 0x100

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_4
    const/16 v9, 0x80

    .line 72
    .line 73
    :goto_4
    or-int/2addr v0, v9

    .line 74
    :cond_5
    and-int/lit16 v9, v5, 0xc00

    .line 75
    .line 76
    if-nez v9, :cond_7

    .line 77
    .line 78
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-eqz v9, :cond_6

    .line 83
    .line 84
    const/16 v9, 0x800

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_6
    const/16 v9, 0x400

    .line 88
    .line 89
    :goto_5
    or-int/2addr v0, v9

    .line 90
    :cond_7
    and-int/lit16 v9, v0, 0x493

    .line 91
    .line 92
    const/16 v10, 0x492

    .line 93
    .line 94
    const/4 v15, 0x1

    .line 95
    const/4 v13, 0x0

    .line 96
    if-eq v9, v10, :cond_8

    .line 97
    .line 98
    move v9, v15

    .line 99
    goto :goto_6

    .line 100
    :cond_8
    move v9, v13

    .line 101
    :goto_6
    and-int/lit8 v10, v0, 0x1

    .line 102
    .line 103
    invoke-virtual {v11, v10, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-eqz v9, :cond_14

    .line 108
    .line 109
    and-int/lit8 v9, v0, 0xe

    .line 110
    .line 111
    if-ne v9, v6, :cond_9

    .line 112
    .line 113
    move v10, v15

    .line 114
    goto :goto_7

    .line 115
    :cond_9
    move v10, v13

    .line 116
    :goto_7
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 121
    .line 122
    if-nez v10, :cond_a

    .line 123
    .line 124
    if-ne v12, v14, :cond_c

    .line 125
    .line 126
    :cond_a
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    if-le v10, v2, :cond_b

    .line 131
    .line 132
    invoke-static {v1, v15}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    move-object v12, v10

    .line 137
    goto :goto_8

    .line 138
    :cond_b
    move-object v12, v1

    .line 139
    :goto_8
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_c
    check-cast v12, Ljava/util/Collection;

    .line 143
    .line 144
    if-ne v9, v6, :cond_d

    .line 145
    .line 146
    move v6, v15

    .line 147
    goto :goto_9

    .line 148
    :cond_d
    move v6, v13

    .line 149
    :goto_9
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    if-nez v6, :cond_e

    .line 154
    .line 155
    if-ne v9, v14, :cond_f

    .line 156
    .line 157
    :cond_e
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    sub-int/2addr v6, v2

    .line 162
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_f
    check-cast v9, Ljava/lang/Number;

    .line 170
    .line 171
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    sget-object v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 176
    .line 177
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    check-cast v9, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 182
    .line 183
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    check-cast v9, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 191
    .line 192
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    const/high16 v9, 0x41800000    # 16.0f

    .line 196
    .line 197
    const/high16 v10, 0x40800000    # 4.0f

    .line 198
    .line 199
    invoke-static {v4, v9, v10}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    const-string v14, "banner_inline_notification_list"

    .line 204
    .line 205
    invoke-static {v9, v14}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    check-cast v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 214
    .line 215
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    new-instance v6, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 219
    .line 220
    new-instance v14, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 221
    .line 222
    const/16 p1, 0x20

    .line 223
    .line 224
    const/4 v8, 0x7

    .line 225
    invoke-direct {v14, v8}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 226
    .line 227
    .line 228
    invoke-direct {v6, v10, v15, v14}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 229
    .line 230
    .line 231
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 232
    .line 233
    invoke-static {v6, v8, v11, v13}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    iget-wide v13, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 238
    .line 239
    ushr-long v16, v13, p1

    .line 240
    .line 241
    xor-long v13, v13, v16

    .line 242
    .line 243
    long-to-int v8, v13

    .line 244
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    invoke-static {v11, v9}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 253
    .line 254
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 258
    .line 259
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 260
    .line 261
    .line 262
    iget-boolean v14, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 263
    .line 264
    if-eqz v14, :cond_10

    .line 265
    .line 266
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 267
    .line 268
    .line 269
    goto :goto_a

    .line 270
    :cond_10
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 271
    .line 272
    .line 273
    :goto_a
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 274
    .line 275
    invoke-static {v11, v6, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 276
    .line 277
    .line 278
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 279
    .line 280
    invoke-static {v11, v10, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 281
    .line 282
    .line 283
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 288
    .line 289
    invoke-static {v11, v6, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 290
    .line 291
    .line 292
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 293
    .line 294
    invoke-static {v11, v6}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 295
    .line 296
    .line 297
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 298
    .line 299
    invoke-static {v11, v9, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 300
    .line 301
    .line 302
    const v6, -0x83cf280

    .line 303
    .line 304
    .line 305
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 306
    .line 307
    .line 308
    check-cast v12, Ljava/lang/Iterable;

    .line 309
    .line 310
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 311
    .line 312
    .line 313
    move-result-object v13

    .line 314
    const/4 v6, 0x0

    .line 315
    :goto_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 316
    .line 317
    .line 318
    move-result v8

    .line 319
    const/4 v9, 0x3

    .line 320
    const/4 v10, 0x0

    .line 321
    if-eqz v8, :cond_12

    .line 322
    .line 323
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v8

    .line 327
    add-int/lit8 v14, v6, 0x1

    .line 328
    .line 329
    if-ltz v6, :cond_11

    .line 330
    .line 331
    check-cast v8, Lnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;

    .line 332
    .line 333
    shl-int/lit8 v9, v0, 0x3

    .line 334
    .line 335
    and-int/lit16 v12, v9, 0x1f80

    .line 336
    .line 337
    const/4 v10, 0x0

    .line 338
    move-object v9, v8

    .line 339
    move-object v8, v7

    .line 340
    move-object v7, v9

    .line 341
    move-object v9, v3

    .line 342
    invoke-static/range {v6 .. v12}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;->BannerInlineItem(ILnet/thunderbird/feature/notification/api/ui/host/visual/BannerInlineVisual;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 343
    .line 344
    .line 345
    move-object/from16 v7, p4

    .line 346
    .line 347
    move v6, v14

    .line 348
    goto :goto_b

    .line 349
    :cond_11
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 350
    .line 351
    .line 352
    throw v10

    .line 353
    :cond_12
    const/4 v0, 0x0

    .line 354
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 355
    .line 356
    .line 357
    if-lez v2, :cond_13

    .line 358
    .line 359
    const v2, 0xa39165

    .line 360
    .line 361
    .line 362
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 363
    .line 364
    .line 365
    sget-object v2, Lnet/thunderbird/feature/notification/resources/api/String0_commonMainKt;->banner_inline_notification_check_error_notifications$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 366
    .line 367
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    check-cast v2, Lorg/jetbrains/compose/resources/StringResource;

    .line 372
    .line 373
    invoke-static {v2, v11}, Lkotlin/text/CharsKt__CharKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v6

    .line 377
    sget-object v2, Lnet/thunderbird/feature/notification/resources/api/String0_commonMainKt;->banner_inline_notification_some_messages_need_attention$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 378
    .line 379
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    check-cast v2, Lorg/jetbrains/compose/resources/StringResource;

    .line 384
    .line 385
    invoke-static {v2, v11}, Lkotlin/text/CharsKt__CharKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v7

    .line 389
    new-instance v2, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;

    .line 390
    .line 391
    const/4 v8, 0x6

    .line 392
    invoke-direct {v2, v8, v3}, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda9;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 393
    .line 394
    .line 395
    const v8, 0x6a3a377d

    .line 396
    .line 397
    .line 398
    invoke-static {v8, v2, v11}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 399
    .line 400
    .line 401
    move-result-object v8

    .line 402
    const-string v2, "check_notifications_composable"

    .line 403
    .line 404
    sget-object v12, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 405
    .line 406
    invoke-static {v12, v2}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-static {v2, v10, v9}, Landroidx/compose/animation/CrossfadeKt;->animateContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/ui/Modifier;

    .line 411
    .line 412
    .line 413
    move-result-object v9

    .line 414
    const/16 v13, 0x180

    .line 415
    .line 416
    const/16 v14, 0x30

    .line 417
    .line 418
    const/4 v10, 0x0

    .line 419
    move-object v12, v11

    .line 420
    const/4 v11, 0x0

    .line 421
    invoke-static/range {v6 .. v14}, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardKt;->ErrorBannerInlineNotificationCard(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 422
    .line 423
    .line 424
    move-object v11, v12

    .line 425
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 426
    .line 427
    .line 428
    goto :goto_c

    .line 429
    :cond_13
    const v2, 0xb17097

    .line 430
    .line 431
    .line 432
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 436
    .line 437
    .line 438
    :goto_c
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 439
    .line 440
    .line 441
    goto :goto_d

    .line 442
    :cond_14
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 443
    .line 444
    .line 445
    :goto_d
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 446
    .line 447
    .line 448
    move-result-object v7

    .line 449
    if-eqz v7, :cond_15

    .line 450
    .line 451
    new-instance v0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;

    .line 452
    .line 453
    const/16 v6, 0x10

    .line 454
    .line 455
    move-object/from16 v2, p4

    .line 456
    .line 457
    invoke-direct/range {v0 .. v6}, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;II)V

    .line 458
    .line 459
    .line 460
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 461
    .line 462
    :cond_15
    return-void
.end method

.method public static final InAppNotificationHost(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlinx/collections/immutable/ImmutableSet;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    move-object/from16 v7, p7

    check-cast v7, Landroidx/compose/runtime/GapComposer;

    const v0, -0x6319b13c

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    and-int/lit8 v0, p8, 0x6

    const/4 v1, 0x2

    move-object/from16 v9, p0

    if-nez v0, :cond_1

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int v0, p8, v0

    goto :goto_1

    :cond_1
    move/from16 v0, p8

    :goto_1
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x30

    move-object/from16 v3, p1

    goto :goto_3

    :cond_2
    move-object/from16 v3, p1

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x20

    goto :goto_2

    :cond_3
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v0, v4

    :goto_3
    or-int/lit16 v0, v0, 0xc00

    and-int/lit8 v4, p9, 0x10

    if-nez v4, :cond_4

    move-object/from16 v4, p4

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x4000

    goto :goto_4

    :cond_4
    move-object/from16 v4, p4

    :cond_5
    const/16 v5, 0x2000

    :goto_4
    or-int/2addr v0, v5

    move-object/from16 v14, p5

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/high16 v5, 0x20000

    goto :goto_5

    :cond_6
    const/high16 v5, 0x10000

    :goto_5
    or-int/2addr v0, v5

    const/high16 v5, 0x180000

    or-int/2addr v0, v5

    const v5, 0x92493

    and-int/2addr v5, v0

    const v6, 0x92492

    if-eq v5, v6, :cond_7

    const/4 v5, 0x1

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_6
    and-int/lit8 v6, v0, 0x1

    invoke-virtual {v7, v6, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    and-int/lit8 v5, p8, 0x1

    const v6, -0xe001

    if-eqz v5, :cond_a

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_7

    .line 447
    :cond_8
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    and-int/lit8 v1, p9, 0x10

    if-eqz v1, :cond_9

    and-int/2addr v0, v6

    :cond_9
    move-object/from16 v6, p6

    move-object v1, v3

    move-object/from16 v3, p3

    goto :goto_a

    :cond_a
    :goto_7
    if-eqz v2, :cond_b

    .line 448
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_8

    :cond_b
    move-object v2, v3

    :goto_8
    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 449
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-YgX7TsA$default(IF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v3

    and-int/lit8 v5, p9, 0x10

    if-eqz v5, :cond_d

    .line 450
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 451
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v4, v5, :cond_c

    .line 452
    new-instance v4, Lcom/fsck/k9/Core$restoreNotifications$1;

    const/4 v5, 0x7

    const/4 v8, 0x0

    .line 453
    invoke-direct {v4, v1, v8, v5}, Lcom/fsck/k9/Core$restoreNotifications$1;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 454
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 455
    :cond_c
    move-object v1, v4

    check-cast v1, Lkotlin/jvm/functions/Function2;

    and-int/2addr v0, v6

    goto :goto_9

    :cond_d
    move-object v1, v4

    .line 456
    :goto_9
    sget-object v4, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;->lambda$25181172:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v6, v4

    move-object v4, v1

    move-object v1, v2

    .line 457
    :goto_a
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    move-object/from16 v11, p2

    .line 458
    invoke-static {v11, v7}, Lorg/jsoup/Jsoup;->rememberInAppNotificationHostStateHolder(Lkotlinx/collections/immutable/ImmutableSet;Landroidx/compose/runtime/Composer;)Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;

    move-result-object v2

    const v5, 0x3ffc7e

    and-int v8, v0, v5

    move-object v0, v9

    move-object v5, v14

    .line 459
    invoke-static/range {v0 .. v8}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;->InAppNotificationHost(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    move-object v10, v1

    move-object v12, v3

    move-object v15, v6

    :goto_b
    move-object v13, v4

    goto :goto_c

    :cond_e
    move-object/from16 v11, p2

    .line 460
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    move-object/from16 v12, p3

    move-object/from16 v15, p6

    move-object v10, v3

    goto :goto_b

    .line 461
    :goto_c
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v8, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt$$ExternalSyntheticLambda0;

    move-object/from16 v9, p0

    move-object/from16 v14, p5

    move/from16 v16, p8

    move/from16 v17, p9

    invoke-direct/range {v8 .. v17}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlinx/collections/immutable/ImmutableSet;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;II)V

    .line 462
    iput-object v8, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public static final InAppNotificationHost(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v5, p4

    .line 6
    .line 7
    move-object/from16 v0, p5

    .line 8
    .line 9
    move/from16 v8, p8

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-object/from16 v15, p7

    .line 18
    .line 19
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    const v2, 0x222251d2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    .line 27
    and-int/lit8 v2, v8, 0x6

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    const/4 v2, 0x4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v2, 0x2

    .line 40
    :goto_0
    or-int/2addr v2, v8

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v2, v8

    .line 43
    :goto_1
    and-int/lit8 v4, v8, 0x30

    .line 44
    .line 45
    move-object/from16 v13, p1

    .line 46
    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    const/16 v4, 0x20

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/16 v4, 0x10

    .line 59
    .line 60
    :goto_2
    or-int/2addr v2, v4

    .line 61
    :cond_3
    and-int/lit16 v4, v8, 0x180

    .line 62
    .line 63
    const/16 v6, 0x100

    .line 64
    .line 65
    if-nez v4, :cond_5

    .line 66
    .line 67
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_4

    .line 72
    .line 73
    move v4, v6

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    const/16 v4, 0x80

    .line 76
    .line 77
    :goto_3
    or-int/2addr v2, v4

    .line 78
    :cond_5
    and-int/lit16 v4, v8, 0xc00

    .line 79
    .line 80
    move-object/from16 v10, p3

    .line 81
    .line 82
    if-nez v4, :cond_7

    .line 83
    .line 84
    invoke-virtual {v15, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_6

    .line 89
    .line 90
    const/16 v4, 0x800

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_6
    const/16 v4, 0x400

    .line 94
    .line 95
    :goto_4
    or-int/2addr v2, v4

    .line 96
    :cond_7
    and-int/lit16 v4, v8, 0x6000

    .line 97
    .line 98
    const/16 v7, 0x4000

    .line 99
    .line 100
    if-nez v4, :cond_a

    .line 101
    .line 102
    const v4, 0x8000

    .line 103
    .line 104
    .line 105
    and-int/2addr v4, v8

    .line 106
    if-nez v4, :cond_8

    .line 107
    .line 108
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    goto :goto_5

    .line 113
    :cond_8
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    :goto_5
    if-eqz v4, :cond_9

    .line 118
    .line 119
    move v4, v7

    .line 120
    goto :goto_6

    .line 121
    :cond_9
    const/16 v4, 0x2000

    .line 122
    .line 123
    :goto_6
    or-int/2addr v2, v4

    .line 124
    :cond_a
    const/high16 v4, 0x30000

    .line 125
    .line 126
    and-int/2addr v4, v8

    .line 127
    if-nez v4, :cond_c

    .line 128
    .line 129
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_b

    .line 134
    .line 135
    const/high16 v4, 0x20000

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_b
    const/high16 v4, 0x10000

    .line 139
    .line 140
    :goto_7
    or-int/2addr v2, v4

    .line 141
    :cond_c
    const/high16 v4, 0x180000

    .line 142
    .line 143
    and-int/2addr v4, v8

    .line 144
    move-object/from16 v14, p6

    .line 145
    .line 146
    if-nez v4, :cond_e

    .line 147
    .line 148
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_d

    .line 153
    .line 154
    const/high16 v4, 0x100000

    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_d
    const/high16 v4, 0x80000

    .line 158
    .line 159
    :goto_8
    or-int/2addr v2, v4

    .line 160
    :cond_e
    move v11, v2

    .line 161
    const v2, 0x92493

    .line 162
    .line 163
    .line 164
    and-int/2addr v2, v11

    .line 165
    const v4, 0x92492

    .line 166
    .line 167
    .line 168
    const/4 v12, 0x0

    .line 169
    if-eq v2, v4, :cond_f

    .line 170
    .line 171
    const/4 v2, 0x1

    .line 172
    goto :goto_9

    .line 173
    :cond_f
    move v2, v12

    .line 174
    :goto_9
    and-int/lit8 v4, v11, 0x1

    .line 175
    .line 176
    invoke-virtual {v15, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_1c

    .line 181
    .line 182
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 183
    .line 184
    .line 185
    and-int/lit8 v2, v8, 0x1

    .line 186
    .line 187
    if-eqz v2, :cond_11

    .line 188
    .line 189
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_10

    .line 194
    .line 195
    goto :goto_a

    .line 196
    :cond_10
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 197
    .line 198
    .line 199
    :cond_11
    :goto_a
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 200
    .line 201
    .line 202
    iget-object v2, v3, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;->currentInAppNotificationHostState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 203
    .line 204
    invoke-static {v2, v15}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    shr-int/lit8 v4, v11, 0xf

    .line 209
    .line 210
    and-int/lit8 v4, v4, 0xe

    .line 211
    .line 212
    shr-int/lit8 v16, v11, 0x3

    .line 213
    .line 214
    and-int/lit8 v17, v16, 0x70

    .line 215
    .line 216
    or-int v4, v4, v17

    .line 217
    .line 218
    invoke-static {v0, v3, v15, v4}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;->InAppNotificationReceiverEffect(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;Landroidx/compose/runtime/Composer;I)V

    .line 219
    .line 220
    .line 221
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    check-cast v4, Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder$InAppNotificationHostStateImpl;

    .line 226
    .line 227
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    const v17, 0xe000

    .line 235
    .line 236
    .line 237
    and-int v9, v11, v17

    .line 238
    .line 239
    xor-int/lit16 v9, v9, 0x6000

    .line 240
    .line 241
    if-le v9, v7, :cond_12

    .line 242
    .line 243
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    if-nez v9, :cond_13

    .line 248
    .line 249
    :cond_12
    and-int/lit16 v9, v11, 0x6000

    .line 250
    .line 251
    if-ne v9, v7, :cond_14

    .line 252
    .line 253
    :cond_13
    const/4 v7, 0x1

    .line 254
    goto :goto_b

    .line 255
    :cond_14
    move v7, v12

    .line 256
    :goto_b
    or-int/2addr v4, v7

    .line 257
    and-int/lit16 v7, v11, 0x380

    .line 258
    .line 259
    const/16 v9, 0x180

    .line 260
    .line 261
    xor-int/2addr v7, v9

    .line 262
    if-le v7, v6, :cond_15

    .line 263
    .line 264
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    if-nez v7, :cond_16

    .line 269
    .line 270
    :cond_15
    and-int/lit16 v7, v11, 0x180

    .line 271
    .line 272
    if-ne v7, v6, :cond_17

    .line 273
    .line 274
    :cond_16
    const/4 v6, 0x1

    .line 275
    goto :goto_c

    .line 276
    :cond_17
    move v6, v12

    .line 277
    :goto_c
    or-int/2addr v4, v6

    .line 278
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 283
    .line 284
    const/16 v18, 0x0

    .line 285
    .line 286
    if-nez v4, :cond_18

    .line 287
    .line 288
    if-ne v6, v7, :cond_19

    .line 289
    .line 290
    :cond_18
    move-object v5, v2

    .line 291
    goto :goto_d

    .line 292
    :cond_19
    move-object v2, v6

    .line 293
    move-object v9, v7

    .line 294
    move-object/from16 v6, v18

    .line 295
    .line 296
    goto :goto_e

    .line 297
    :goto_d
    new-instance v2, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 298
    .line 299
    move-object v4, v7

    .line 300
    const/16 v7, 0x9

    .line 301
    .line 302
    move-object v9, v4

    .line 303
    move-object/from16 v6, v18

    .line 304
    .line 305
    move-object v4, v3

    .line 306
    move-object/from16 v3, p4

    .line 307
    .line 308
    invoke-direct/range {v2 .. v7}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 309
    .line 310
    .line 311
    move-object v5, v3

    .line 312
    move-object v3, v4

    .line 313
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    :goto_e
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 317
    .line 318
    invoke-static {v6, v5, v2, v15}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 319
    .line 320
    .line 321
    new-array v2, v12, [Ljava/lang/Object;

    .line 322
    .line 323
    sget-object v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;->Saver:Landroidx/compose/ui/platform/WeakCache;

    .line 324
    .line 325
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    if-ne v6, v9, :cond_1a

    .line 330
    .line 331
    new-instance v6, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute$$ExternalSyntheticLambda0;

    .line 332
    .line 333
    const/4 v7, 0x2

    .line 334
    invoke-direct {v6, v7}, Lnet/thunderbird/feature/navigation/changelog/api/ChangelogRoute$$ExternalSyntheticLambda0;-><init>(I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    :cond_1a
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 341
    .line 342
    const/16 v7, 0x180

    .line 343
    .line 344
    invoke-static {v2, v4, v6, v15, v7}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    check-cast v2, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;

    .line 349
    .line 350
    invoke-static {v15}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->rememberSplineBasedDecay(Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    if-ne v6, v9, :cond_1b

    .line 359
    .line 360
    new-instance v6, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;

    .line 361
    .line 362
    invoke-direct {v6, v2, v4}, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;-><init>(Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollState;Landroidx/compose/animation/core/DecayAnimationSpecImpl;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    :cond_1b
    move-object v9, v6

    .line 369
    check-cast v9, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;

    .line 370
    .line 371
    new-instance v2, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda1;

    .line 372
    .line 373
    invoke-direct {v2, v3, v1, v12}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;Lkotlin/jvm/functions/Function1;I)V

    .line 374
    .line 375
    .line 376
    const v4, -0x27a24002

    .line 377
    .line 378
    .line 379
    invoke-static {v4, v2, v15}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    new-instance v4, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda1;

    .line 384
    .line 385
    const/4 v6, 0x1

    .line 386
    invoke-direct {v4, v3, v1, v6}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;Lkotlin/jvm/functions/Function1;I)V

    .line 387
    .line 388
    .line 389
    const v6, -0x496ca423

    .line 390
    .line 391
    .line 392
    invoke-static {v6, v4, v15}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 393
    .line 394
    .line 395
    move-result-object v12

    .line 396
    sget v4, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;->$r8$clinit:I

    .line 397
    .line 398
    shr-int/lit8 v4, v11, 0x6

    .line 399
    .line 400
    and-int/lit8 v4, v4, 0x70

    .line 401
    .line 402
    const/16 v6, 0xd80

    .line 403
    .line 404
    or-int/2addr v4, v6

    .line 405
    shl-int/lit8 v6, v11, 0x9

    .line 406
    .line 407
    and-int v6, v6, v17

    .line 408
    .line 409
    or-int/2addr v4, v6

    .line 410
    const/high16 v6, 0x70000

    .line 411
    .line 412
    and-int v6, v16, v6

    .line 413
    .line 414
    or-int v16, v4, v6

    .line 415
    .line 416
    move-object v11, v2

    .line 417
    invoke-static/range {v9 .. v16}, Lkotlinx/atomicfu/AtomicFU;->InAppNotificationHostLayout(Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 418
    .line 419
    .line 420
    goto :goto_f

    .line 421
    :cond_1c
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 422
    .line 423
    .line 424
    :goto_f
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 425
    .line 426
    .line 427
    move-result-object v9

    .line 428
    if-eqz v9, :cond_1d

    .line 429
    .line 430
    new-instance v0, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda2;

    .line 431
    .line 432
    move-object/from16 v2, p1

    .line 433
    .line 434
    move-object/from16 v4, p3

    .line 435
    .line 436
    move-object/from16 v6, p5

    .line 437
    .line 438
    move-object/from16 v7, p6

    .line 439
    .line 440
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/ScaffoldKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;I)V

    .line 441
    .line 442
    .line 443
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 444
    .line 445
    :cond_1d
    return-void
.end method

.method public static final InAppNotificationReceiverEffect(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move/from16 v6, p3

    .line 6
    .line 7
    move-object/from16 v7, p2

    .line 8
    .line 9
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, -0x3091fd98

    .line 12
    .line 13
    .line 14
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, v6, 0x6

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    move v0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x2

    .line 31
    :goto_0
    or-int/2addr v0, v6

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, v6

    .line 34
    :goto_1
    and-int/lit8 v4, v6, 0x30

    .line 35
    .line 36
    const/16 v8, 0x10

    .line 37
    .line 38
    const/16 v5, 0x20

    .line 39
    .line 40
    if-nez v4, :cond_3

    .line 41
    .line 42
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    move v4, v5

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move v4, v8

    .line 51
    :goto_2
    or-int/2addr v0, v4

    .line 52
    :cond_3
    and-int/lit8 v4, v0, 0x13

    .line 53
    .line 54
    const/16 v9, 0x12

    .line 55
    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v11, 0x1

    .line 58
    if-eq v4, v9, :cond_4

    .line 59
    .line 60
    move v4, v11

    .line 61
    goto :goto_3

    .line 62
    :cond_4
    move v4, v10

    .line 63
    :goto_3
    and-int/lit8 v9, v0, 0x1

    .line 64
    .line 65
    invoke-virtual {v7, v9, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_c

    .line 70
    .line 71
    invoke-static {v7}, Lorg/koin/compose/KoinApplicationKt;->currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const/4 v9, 0x0

    .line 76
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    or-int/2addr v12, v13

    .line 85
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 90
    .line 91
    if-nez v12, :cond_5

    .line 92
    .line 93
    if-ne v13, v14, :cond_6

    .line 94
    .line 95
    :cond_5
    const-class v12, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream;

    .line 96
    .line 97
    invoke-static {v12, v4, v9, v9, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/Class;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;Landroidx/compose/runtime/GapComposer;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    :cond_6
    check-cast v13, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream;

    .line 102
    .line 103
    iget-object v4, v13, Lnet/thunderbird/feature/notification/impl/receiver/DefaultInAppNotificationStream;->notifications:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 104
    .line 105
    invoke-static {v4, v7}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    if-ne v9, v14, :cond_7

    .line 114
    .line 115
    sget-object v9, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 116
    .line 117
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_7
    check-cast v9, Landroidx/compose/runtime/MutableState;

    .line 125
    .line 126
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    check-cast v12, Ljava/util/Set;

    .line 131
    .line 132
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    and-int/lit8 v15, v0, 0xe

    .line 137
    .line 138
    if-ne v15, v2, :cond_8

    .line 139
    .line 140
    move v2, v11

    .line 141
    goto :goto_4

    .line 142
    :cond_8
    move v2, v10

    .line 143
    :goto_4
    or-int/2addr v2, v13

    .line 144
    and-int/lit8 v0, v0, 0x70

    .line 145
    .line 146
    if-ne v0, v5, :cond_9

    .line 147
    .line 148
    move v10, v11

    .line 149
    :cond_9
    or-int v0, v2, v10

    .line 150
    .line 151
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    if-nez v0, :cond_a

    .line 156
    .line 157
    if-ne v2, v14, :cond_b

    .line 158
    .line 159
    :cond_a
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;

    .line 160
    .line 161
    const/4 v5, 0x0

    .line 162
    move-object v2, v4

    .line 163
    move-object v4, v9

    .line 164
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    move-object v2, v0

    .line 171
    :cond_b
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 172
    .line 173
    invoke-static {v12, v1, v2, v7}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 174
    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_c
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 178
    .line 179
    .line 180
    :goto_5
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    if-eqz v0, :cond_d

    .line 185
    .line 186
    new-instance v2, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;

    .line 187
    .line 188
    invoke-direct {v2, v6, v8, v1, v3}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 192
    .line 193
    :cond_d
    return-void
.end method

.method public static final InAppNotificationScaffold(Landroidx/compose/ui/Modifier;Lkotlinx/collections/immutable/ImmutableSet;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lapp/k9mail/core/ui/compose/designsystem/organism/snackbar/Material3BackedSnackbarHostState;Lkotlin/jvm/functions/Function2;Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v11, p11

    .line 4
    .line 5
    move-object/from16 v0, p10

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v2, -0x5a23664f

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    and-int/lit8 v2, v11, 0x6

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x2

    .line 28
    :goto_0
    or-int/2addr v2, v11

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v2, v11

    .line 31
    :goto_1
    and-int/lit8 v3, v11, 0x30

    .line 32
    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    or-int/lit8 v2, v2, 0x10

    .line 36
    .line 37
    :cond_2
    or-int/lit16 v3, v2, 0xd80

    .line 38
    .line 39
    and-int/lit16 v4, v11, 0x6000

    .line 40
    .line 41
    if-nez v4, :cond_3

    .line 42
    .line 43
    or-int/lit16 v3, v2, 0x2d80

    .line 44
    .line 45
    :cond_3
    const/high16 v2, 0xdb0000

    .line 46
    .line 47
    or-int/2addr v2, v3

    .line 48
    const/high16 v3, 0x6000000

    .line 49
    .line 50
    and-int/2addr v3, v11

    .line 51
    move-object/from16 v9, p8

    .line 52
    .line 53
    if-nez v3, :cond_5

    .line 54
    .line 55
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    const/high16 v3, 0x4000000

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    const/high16 v3, 0x2000000

    .line 65
    .line 66
    :goto_2
    or-int/2addr v2, v3

    .line 67
    :cond_5
    const/high16 v3, 0x30000000

    .line 68
    .line 69
    and-int/2addr v3, v11

    .line 70
    move-object/from16 v10, p9

    .line 71
    .line 72
    if-nez v3, :cond_7

    .line 73
    .line 74
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_6

    .line 79
    .line 80
    const/high16 v3, 0x20000000

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_6
    const/high16 v3, 0x10000000

    .line 84
    .line 85
    :goto_3
    or-int/2addr v2, v3

    .line 86
    :cond_7
    const v3, 0x12492493

    .line 87
    .line 88
    .line 89
    and-int/2addr v3, v2

    .line 90
    const v4, 0x12492492

    .line 91
    .line 92
    .line 93
    if-eq v3, v4, :cond_8

    .line 94
    .line 95
    const/4 v3, 0x1

    .line 96
    goto :goto_4

    .line 97
    :cond_8
    const/4 v3, 0x0

    .line 98
    :goto_4
    and-int/lit8 v4, v2, 0x1

    .line 99
    .line 100
    invoke-virtual {v0, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_e

    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 107
    .line 108
    .line 109
    and-int/lit8 v3, v11, 0x1

    .line 110
    .line 111
    const v4, -0xe071

    .line 112
    .line 113
    .line 114
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 115
    .line 116
    if-eqz v3, :cond_a

    .line 117
    .line 118
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_9

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 126
    .line 127
    .line 128
    and-int/2addr v2, v4

    .line 129
    move-object/from16 v3, p1

    .line 130
    .line 131
    move-object/from16 v13, p2

    .line 132
    .line 133
    move-object/from16 v14, p3

    .line 134
    .line 135
    move-object/from16 v6, p4

    .line 136
    .line 137
    move-object/from16 v16, p5

    .line 138
    .line 139
    move-object/from16 v17, p6

    .line 140
    .line 141
    move-object/from16 v4, p7

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_a
    :goto_5
    sget-object v3, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;->Companion:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    sget-object v3, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;->AllNotifications:Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    if-ne v6, v5, :cond_b

    .line 156
    .line 157
    new-instance v6, Lapp/k9mail/core/ui/compose/designsystem/organism/snackbar/Material3BackedSnackbarHostState;

    .line 158
    .line 159
    new-instance v7, Landroidx/camera/view/PreviewView$1;

    .line 160
    .line 161
    const/16 v8, 0x10

    .line 162
    .line 163
    invoke-direct {v7, v8}, Landroidx/camera/view/PreviewView$1;-><init>(I)V

    .line 164
    .line 165
    .line 166
    invoke-direct {v6, v7}, Lapp/k9mail/core/ui/compose/designsystem/organism/snackbar/Material3BackedSnackbarHostState;-><init>(Landroidx/camera/view/PreviewView$1;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_b
    check-cast v6, Lapp/k9mail/core/ui/compose/designsystem/organism/snackbar/Material3BackedSnackbarHostState;

    .line 173
    .line 174
    and-int/2addr v2, v4

    .line 175
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    if-ne v4, v5, :cond_c

    .line 180
    .line 181
    new-instance v4, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 182
    .line 183
    const/16 v7, 0x1c

    .line 184
    .line 185
    invoke-direct {v4, v7}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    :cond_c
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 192
    .line 193
    sget-object v7, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;->lambda$944899621:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 194
    .line 195
    sget-object v8, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;->lambda$59416341:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 196
    .line 197
    sget-object v12, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;->lambda$1908229429:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 198
    .line 199
    sget-object v13, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;->End:Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;

    .line 200
    .line 201
    move-object v14, v8

    .line 202
    move-object/from16 v16, v12

    .line 203
    .line 204
    move-object/from16 v17, v13

    .line 205
    .line 206
    move-object v13, v7

    .line 207
    :goto_6
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 208
    .line 209
    .line 210
    shr-int/lit8 v2, v2, 0x3

    .line 211
    .line 212
    invoke-static {v3, v0}, Lorg/jsoup/Jsoup;->rememberInAppNotificationHostStateHolder(Lkotlinx/collections/immutable/ImmutableSet;Landroidx/compose/runtime/Composer;)Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    if-ne v8, v5, :cond_d

    .line 221
    .line 222
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 223
    .line 224
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    :cond_d
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 232
    .line 233
    const-string v5, "ins_inner_scaffold"

    .line 234
    .line 235
    invoke-static {v1, v5}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    new-instance v5, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;

    .line 240
    .line 241
    const/16 v15, 0x8

    .line 242
    .line 243
    invoke-direct {v5, v15, v6}, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    const v15, 0x4c14d72b    # 3.9017644E7f

    .line 247
    .line 248
    .line 249
    invoke-static {v15, v5, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 250
    .line 251
    .line 252
    move-result-object v15

    .line 253
    new-instance v5, Lcom/skydoves/landscapist/ImageLoadKt$$ExternalSyntheticLambda0;

    .line 254
    .line 255
    move-object/from16 p2, v4

    .line 256
    .line 257
    move-object/from16 p1, v5

    .line 258
    .line 259
    move-object/from16 p4, v6

    .line 260
    .line 261
    move-object/from16 p3, v7

    .line 262
    .line 263
    move-object/from16 p7, v8

    .line 264
    .line 265
    move-object/from16 p5, v9

    .line 266
    .line 267
    move-object/from16 p6, v10

    .line 268
    .line 269
    invoke-direct/range {p1 .. p7}, Lcom/skydoves/landscapist/ImageLoadKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lnet/thunderbird/feature/notification/api/ui/host/InAppNotificationHostStateHolder;Lapp/k9mail/core/ui/compose/designsystem/organism/snackbar/Material3BackedSnackbarHostState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/MutableState;)V

    .line 270
    .line 271
    .line 272
    const v7, -0x2dced35b

    .line 273
    .line 274
    .line 275
    invoke-static {v7, v5, v0}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 276
    .line 277
    .line 278
    move-result-object v18

    .line 279
    and-int/lit8 v5, v2, 0x70

    .line 280
    .line 281
    const v7, 0x180c00

    .line 282
    .line 283
    .line 284
    or-int/2addr v5, v7

    .line 285
    and-int/lit16 v7, v2, 0x380

    .line 286
    .line 287
    or-int/2addr v5, v7

    .line 288
    const v7, 0xe000

    .line 289
    .line 290
    .line 291
    and-int/2addr v7, v2

    .line 292
    or-int/2addr v5, v7

    .line 293
    const/high16 v7, 0x70000

    .line 294
    .line 295
    and-int/2addr v2, v7

    .line 296
    or-int v20, v5, v2

    .line 297
    .line 298
    const/16 v21, 0x0

    .line 299
    .line 300
    move-object/from16 v19, v0

    .line 301
    .line 302
    invoke-static/range {v12 .. v21}, Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldKt;->Scaffold(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 303
    .line 304
    .line 305
    move-object v2, v3

    .line 306
    move-object v8, v4

    .line 307
    move-object v5, v6

    .line 308
    move-object v3, v13

    .line 309
    move-object v4, v14

    .line 310
    move-object/from16 v6, v16

    .line 311
    .line 312
    move-object/from16 v7, v17

    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_e
    move-object/from16 v19, v0

    .line 316
    .line 317
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 318
    .line 319
    .line 320
    move-object/from16 v2, p1

    .line 321
    .line 322
    move-object/from16 v3, p2

    .line 323
    .line 324
    move-object/from16 v4, p3

    .line 325
    .line 326
    move-object/from16 v5, p4

    .line 327
    .line 328
    move-object/from16 v6, p5

    .line 329
    .line 330
    move-object/from16 v7, p6

    .line 331
    .line 332
    move-object/from16 v8, p7

    .line 333
    .line 334
    :goto_7
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 335
    .line 336
    .line 337
    move-result-object v12

    .line 338
    if-eqz v12, :cond_f

    .line 339
    .line 340
    new-instance v0, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda5;

    .line 341
    .line 342
    move-object/from16 v9, p8

    .line 343
    .line 344
    move-object/from16 v10, p9

    .line 345
    .line 346
    invoke-direct/range {v0 .. v11}, Landroidx/navigation/compose/NavHostKt$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/ui/Modifier;Lkotlinx/collections/immutable/ImmutableSet;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lapp/k9mail/core/ui/compose/designsystem/organism/snackbar/Material3BackedSnackbarHostState;Lkotlin/jvm/functions/Function2;Lapp/k9mail/core/ui/compose/designsystem/template/ScaffoldFabPosition;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 347
    .line 348
    .line 349
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 350
    .line 351
    :cond_f
    return-void
.end method

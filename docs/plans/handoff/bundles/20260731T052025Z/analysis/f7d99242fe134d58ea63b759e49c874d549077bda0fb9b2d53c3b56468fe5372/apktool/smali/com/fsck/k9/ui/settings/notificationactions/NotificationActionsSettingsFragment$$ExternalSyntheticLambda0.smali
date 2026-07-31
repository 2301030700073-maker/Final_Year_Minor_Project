.class public final synthetic Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x0

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
    if-eq v7, v3, :cond_0

    .line 28
    .line 29
    move v4, v5

    .line 30
    :cond_0
    and-int/lit8 v3, v6, 0x1

    .line 31
    .line 32
    move-object v10, v1

    .line 33
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 34
    .line 35
    invoke-virtual {v10, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    const v1, 0x7f1204ec

    .line 42
    .line 43
    .line 44
    invoke-static {v10, v1}, Landroidx/work/Operation$State;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    iget-object v13, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;

    .line 49
    .line 50
    iget-object v0, v13, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;->actionOrder:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-static {v0}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    iget v7, v13, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;->cutoff:I

    .line 57
    .line 58
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 69
    .line 70
    if-ne v1, v0, :cond_2

    .line 71
    .line 72
    :cond_1
    new-instance v11, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;

    .line 73
    .line 74
    const/16 v17, 0x0

    .line 75
    .line 76
    const/16 v18, 0xd

    .line 77
    .line 78
    const/4 v12, 0x2

    .line 79
    const-class v14, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;

    .line 80
    .line 81
    const-string v15, "onStateChanged"

    .line 82
    .line 83
    const-string v16, "onStateChanged(Ljava/util/List;I)V"

    .line 84
    .line 85
    invoke-direct/range {v11 .. v18}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    move-object v1, v11

    .line 92
    :cond_2
    check-cast v1, Lkotlin/reflect/KFunction;

    .line 93
    .line 94
    move-object v8, v1

    .line 95
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 96
    .line 97
    const/4 v9, 0x0

    .line 98
    const/4 v11, 0x0

    .line 99
    invoke-static/range {v5 .. v11}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->NotificationActionsSettingsScreen(Ljava/lang/String;Lkotlinx/collections/immutable/ImmutableList;ILkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 104
    .line 105
    .line 106
    :goto_0
    return-object v2

    .line 107
    :pswitch_0
    move-object/from16 v1, p1

    .line 108
    .line 109
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 110
    .line 111
    move-object/from16 v6, p2

    .line 112
    .line 113
    check-cast v6, Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    and-int/lit8 v7, v6, 0x3

    .line 120
    .line 121
    if-eq v7, v3, :cond_4

    .line 122
    .line 123
    move v4, v5

    .line 124
    :cond_4
    and-int/lit8 v3, v6, 0x1

    .line 125
    .line 126
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 127
    .line 128
    invoke-virtual {v1, v3, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_5

    .line 133
    .line 134
    iget-object v0, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;

    .line 135
    .line 136
    iget-object v3, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;->themeProvider$delegate:Lkotlin/Lazy;

    .line 137
    .line 138
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 143
    .line 144
    new-instance v4, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment$$ExternalSyntheticLambda0;

    .line 145
    .line 146
    invoke-direct {v4, v0, v5}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsFragment;I)V

    .line 147
    .line 148
    .line 149
    const v0, 0x5345216d

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const/4 v4, 0x6

    .line 157
    check-cast v3, Lapp/k9mail/provider/K9FeatureThemeProvider;

    .line 158
    .line 159
    invoke-virtual {v3, v0, v1, v4}, Lapp/k9mail/provider/K9FeatureThemeProvider;->WithTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_5
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 164
    .line 165
    .line 166
    :goto_1
    return-object v2

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

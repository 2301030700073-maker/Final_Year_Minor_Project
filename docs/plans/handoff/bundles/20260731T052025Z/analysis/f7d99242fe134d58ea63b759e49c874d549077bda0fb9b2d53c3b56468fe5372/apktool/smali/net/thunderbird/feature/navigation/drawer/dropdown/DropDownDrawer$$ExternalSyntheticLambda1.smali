.class public final synthetic Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer$$ExternalSyntheticLambda1;->f$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    iget-object v0, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer$$ExternalSyntheticLambda1;->f$0:Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;

    .line 10
    .line 11
    const/4 v5, 0x1

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
    move-object/from16 v6, p2

    .line 20
    .line 21
    check-cast v6, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    and-int/lit8 v7, v6, 0x3

    .line 28
    .line 29
    if-eq v7, v4, :cond_0

    .line 30
    .line 31
    move v3, v5

    .line 32
    :cond_0
    and-int/lit8 v4, v6, 0x1

    .line 33
    .line 34
    move-object v14, v1

    .line 35
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 36
    .line 37
    invoke-virtual {v14, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    iget-object v1, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->drawerState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 44
    .line 45
    invoke-static {v1, v14}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v5, v1

    .line 54
    check-cast v5, Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;

    .line 55
    .line 56
    iget-object v6, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->openAccount:Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    iget-object v7, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->openFolder:Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    iget-object v8, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->openUnifiedFolder:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 61
    .line 62
    iget-object v9, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->openManageFolders:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 63
    .line 64
    iget-object v10, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->openSettings:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 65
    .line 66
    iget-object v11, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->openAddAccount:Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;

    .line 67
    .line 68
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-nez v1, :cond_1

    .line 77
    .line 78
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 79
    .line 80
    if-ne v3, v1, :cond_2

    .line 81
    .line 82
    :cond_1
    new-instance v3, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    const/16 v1, 0xf

    .line 85
    .line 86
    invoke-direct {v3, v1, v0}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    move-object v12, v3

    .line 93
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 94
    .line 95
    const/4 v13, 0x0

    .line 96
    const/4 v15, 0x0

    .line 97
    invoke-static/range {v5 .. v15}, Lkotlin/ranges/RangesKt;->DrawerView(Lnet/thunderbird/feature/navigation/drawer/dropdown/FolderDrawerState;Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lcom/fsck/k9/activity/MessageHomeActivity$$ExternalSyntheticLambda5;Lkotlin/jvm/functions/Function0;Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;Landroidx/compose/runtime/Composer;I)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 102
    .line 103
    .line 104
    :goto_0
    return-object v2

    .line 105
    :pswitch_0
    move-object/from16 v1, p1

    .line 106
    .line 107
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 108
    .line 109
    move-object/from16 v6, p2

    .line 110
    .line 111
    check-cast v6, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    and-int/lit8 v7, v6, 0x3

    .line 118
    .line 119
    if-eq v7, v4, :cond_4

    .line 120
    .line 121
    move v3, v5

    .line 122
    :cond_4
    and-int/lit8 v4, v6, 0x1

    .line 123
    .line 124
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 125
    .line 126
    invoke-virtual {v1, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_5

    .line 131
    .line 132
    iget-object v3, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;->themeProvider$delegate:Lkotlin/Lazy;

    .line 133
    .line 134
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 139
    .line 140
    new-instance v4, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer$$ExternalSyntheticLambda1;

    .line 141
    .line 142
    invoke-direct {v4, v0, v5}, Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/DropDownDrawer;I)V

    .line 143
    .line 144
    .line 145
    const v0, 0x599aeb10    # 5.4507E15f

    .line 146
    .line 147
    .line 148
    invoke-static {v0, v4, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const/4 v4, 0x6

    .line 153
    check-cast v3, Lapp/k9mail/provider/K9FeatureThemeProvider;

    .line 154
    .line 155
    invoke-virtual {v3, v0, v1, v4}, Lapp/k9mail/provider/K9FeatureThemeProvider;->WithTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_5
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 160
    .line 161
    .line 162
    :goto_1
    return-object v2

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContentKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/content/res/Resources;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$4:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;ZLandroid/content/res/Resources;Lkotlin/jvm/functions/Function1;Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContentKt$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 5
    .line 6
    iput-boolean p2, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContentKt$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContentKt$$ExternalSyntheticLambda0;->f$2:Landroid/content/res/Resources;

    .line 9
    .line 10
    iput-object p4, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContentKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iput-object p5, p0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContentKt$$ExternalSyntheticLambda0;->f$4:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    check-cast v5, Landroidx/compose/foundation/layout/PaddingValues;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    move-object/from16 v2, p3

    .line 12
    .line 13
    check-cast v2, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    and-int/lit8 v3, v2, 0x6

    .line 23
    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    move-object v3, v1

    .line 27
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 28
    .line 29
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    const/4 v3, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v3, 0x2

    .line 38
    :goto_0
    or-int/2addr v2, v3

    .line 39
    :cond_1
    and-int/lit8 v3, v2, 0x13

    .line 40
    .line 41
    const/16 v4, 0x12

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    if-eq v3, v4, :cond_2

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v3, v6

    .line 49
    :goto_1
    and-int/lit8 v4, v2, 0x1

    .line 50
    .line 51
    move-object v7, v1

    .line 52
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 53
    .line 54
    invoke-virtual {v7, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 61
    .line 62
    sget-object v3, Landroidx/compose/foundation/layout/OffsetKt;->imeLambda:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 63
    .line 64
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/OffsetKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 69
    .line 70
    sget-object v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 71
    .line 72
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    new-instance v4, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 82
    .line 83
    new-instance v1, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 84
    .line 85
    const/4 v3, 0x6

    .line 86
    invoke-direct {v1, v3}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 87
    .line 88
    .line 89
    const/high16 v10, 0x41800000    # 16.0f

    .line 90
    .line 91
    invoke-direct {v4, v10, v6, v1}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 92
    .line 93
    .line 94
    iget-object v12, v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContentKt$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;

    .line 95
    .line 96
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    iget-boolean v13, v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContentKt$$ExternalSyntheticLambda0;->f$1:Z

    .line 101
    .line 102
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    or-int/2addr v1, v6

    .line 107
    iget-object v14, v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContentKt$$ExternalSyntheticLambda0;->f$2:Landroid/content/res/Resources;

    .line 108
    .line 109
    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    or-int/2addr v1, v6

    .line 114
    iget-object v15, v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContentKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function1;

    .line 115
    .line 116
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    or-int/2addr v1, v6

    .line 121
    iget-object v0, v0, Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContentKt$$ExternalSyntheticLambda0;->f$4:Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;

    .line 122
    .line 123
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    or-int/2addr v1, v6

    .line 128
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    if-nez v1, :cond_3

    .line 133
    .line 134
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 135
    .line 136
    if-ne v6, v1, :cond_4

    .line 137
    .line 138
    :cond_3
    new-instance v11, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda0;

    .line 139
    .line 140
    move-object/from16 v16, v0

    .line 141
    .line 142
    invoke-direct/range {v11 .. v16}, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda0;-><init>(Lapp/k9mail/feature/account/server/validation/ui/ServerValidationContract$State;ZLandroid/content/res/Resources;Lkotlin/jvm/functions/Function1;Lapp/k9mail/feature/account/oauth/ui/AccountOAuthContract$ViewModel;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    move-object v6, v11

    .line 149
    :cond_4
    move-object v10, v6

    .line 150
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 151
    .line 152
    shl-int/lit8 v0, v2, 0x6

    .line 153
    .line 154
    and-int/lit16 v0, v0, 0x380

    .line 155
    .line 156
    const/high16 v1, 0x30000

    .line 157
    .line 158
    or-int/2addr v0, v1

    .line 159
    const/16 v1, 0x1ca

    .line 160
    .line 161
    const/4 v2, 0x0

    .line 162
    const/4 v3, 0x0

    .line 163
    const/4 v6, 0x0

    .line 164
    const/4 v11, 0x0

    .line 165
    invoke-static/range {v0 .. v11}, Landroidx/appcompat/app/ActionBar;->LazyColumn(IILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_5
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 170
    .line 171
    .line 172
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 173
    .line 174
    return-object v0
.end method

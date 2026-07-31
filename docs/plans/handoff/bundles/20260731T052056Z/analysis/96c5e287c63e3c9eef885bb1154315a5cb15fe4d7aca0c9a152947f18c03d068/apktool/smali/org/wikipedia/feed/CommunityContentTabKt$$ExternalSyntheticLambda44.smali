.class public final synthetic Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$2:Lorg/wikipedia/feed/CommunityContentState;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$4:Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/CommunityContentState;Lkotlin/jvm/functions/Function1;Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$0:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$2:Lorg/wikipedia/feed/CommunityContentState;

    .line 12
    .line 13
    iput-object p4, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$3:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    iput-object p5, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$4:Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/CommunityContentState;Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 18
    const/4 p6, 0x1

    iput p6, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$0:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    iput-object p3, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$2:Lorg/wikipedia/feed/CommunityContentState;

    iput-object p4, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$4:Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;

    iput-object p5, p0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$3:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object/from16 v9, p1

    .line 12
    .line 13
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    move-object/from16 v1, p2

    .line 16
    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 23
    .line 24
    .line 25
    move-result v10

    .line 26
    iget-object v4, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$0:Landroidx/compose/ui/Modifier;

    .line 27
    .line 28
    iget-object v5, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 29
    .line 30
    iget-object v6, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$2:Lorg/wikipedia/feed/CommunityContentState;

    .line 31
    .line 32
    iget-object v7, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$4:Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;

    .line 33
    .line 34
    iget-object v8, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$3:Lkotlin/jvm/functions/Function1;

    .line 35
    .line 36
    invoke-static/range {v4 .. v10}, Lorg/wikipedia/feed/ForYouCardKt;->CommunityContentTab(Landroidx/compose/ui/Modifier;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/feed/CommunityContentState;Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 37
    .line 38
    .line 39
    return-object v2

    .line 40
    :pswitch_0
    move-object/from16 v1, p1

    .line 41
    .line 42
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 43
    .line 44
    move-object/from16 v4, p2

    .line 45
    .line 46
    check-cast v4, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    and-int/lit8 v5, v4, 0x3

    .line 53
    .line 54
    const/4 v6, 0x2

    .line 55
    if-eq v5, v6, :cond_0

    .line 56
    .line 57
    move v5, v3

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v5, 0x0

    .line 60
    :goto_0
    and-int/2addr v3, v4

    .line 61
    invoke-virtual {v1, v3, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 68
    .line 69
    iget-object v4, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$0:Landroidx/compose/ui/Modifier;

    .line 70
    .line 71
    invoke-interface {v4, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    const/high16 v3, 0x41800000    # 16.0f

    .line 76
    .line 77
    const/4 v4, 0x5

    .line 78
    const/4 v5, 0x0

    .line 79
    invoke-static {v5, v3, v5, v3, v4}, Landroidx/compose/foundation/layout/OffsetKt;->PaddingValues-a9UjIt4$default(FFFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 80
    .line 81
    .line 82
    move-result-object v13

    .line 83
    iget-object v5, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    .line 84
    .line 85
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    iget-object v4, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$2:Lorg/wikipedia/feed/CommunityContentState;

    .line 90
    .line 91
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    or-int/2addr v3, v6

    .line 96
    iget-object v6, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$3:Lkotlin/jvm/functions/Function1;

    .line 97
    .line 98
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    or-int/2addr v3, v7

    .line 103
    iget-object v7, v0, Lorg/wikipedia/feed/CommunityContentTabKt$$ExternalSyntheticLambda44;->f$4:Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;

    .line 104
    .line 105
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    or-int/2addr v0, v3

    .line 110
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    if-nez v0, :cond_1

    .line 115
    .line 116
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 117
    .line 118
    if-ne v3, v0, :cond_2

    .line 119
    .line 120
    :cond_1
    new-instance v3, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda7;

    .line 121
    .line 122
    const/16 v8, 0x8

    .line 123
    .line 124
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    move-object/from16 v19, v3

    .line 131
    .line 132
    check-cast v19, Lkotlin/jvm/functions/Function1;

    .line 133
    .line 134
    const/16 v21, 0x180

    .line 135
    .line 136
    const/16 v22, 0x1fa

    .line 137
    .line 138
    const/4 v12, 0x0

    .line 139
    const/4 v14, 0x0

    .line 140
    const/4 v15, 0x0

    .line 141
    const/16 v16, 0x0

    .line 142
    .line 143
    const/16 v17, 0x0

    .line 144
    .line 145
    const/16 v18, 0x0

    .line 146
    .line 147
    move-object/from16 v20, v1

    .line 148
    .line 149
    invoke-static/range {v11 .. v22}, Lkotlin/ExceptionsKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_3
    move-object/from16 v20, v1

    .line 154
    .line 155
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 156
    .line 157
    .line 158
    :goto_1
    return-object v2

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

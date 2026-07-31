.class public final synthetic Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/feed/ForYouContentState;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/ForYouContentState;ILorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;->f$0:Lorg/wikipedia/feed/ForYouContentState;

    .line 8
    .line 9
    iput p2, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;->f$1:I

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;->f$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 12
    .line 13
    iput-object p4, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;->f$3:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/feed/ForYouContentState;ILorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 16
    const/4 p5, 0x1

    iput p5, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;->f$0:Lorg/wikipedia/feed/ForYouContentState;

    iput p2, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;->f$1:I

    iput-object p3, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;->f$2:Lorg/wikipedia/dataclient/WikiSite;

    iput-object p4, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;->f$3:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;->$r8$classId:I

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
    move-object/from16 v8, p1

    .line 12
    .line 13
    check-cast v8, Landroidx/compose/runtime/GapComposer;

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
    move-result v9

    .line 26
    iget-object v4, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;->f$0:Lorg/wikipedia/feed/ForYouContentState;

    .line 27
    .line 28
    iget v5, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;->f$1:I

    .line 29
    .line 30
    iget-object v6, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;->f$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 31
    .line 32
    iget-object v7, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;->f$3:Lkotlin/jvm/functions/Function1;

    .line 33
    .line 34
    invoke-static/range {v4 .. v9}, Lorg/wikipedia/feed/ForYouCardKt;->ForYouContentTab(Lorg/wikipedia/feed/ForYouContentState;ILorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 35
    .line 36
    .line 37
    return-object v2

    .line 38
    :pswitch_0
    move-object/from16 v14, p1

    .line 39
    .line 40
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 41
    .line 42
    move-object/from16 v1, p2

    .line 43
    .line 44
    check-cast v1, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    and-int/lit8 v4, v1, 0x3

    .line 51
    .line 52
    const/4 v5, 0x2

    .line 53
    if-eq v4, v5, :cond_0

    .line 54
    .line 55
    move v4, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v4, 0x0

    .line 58
    :goto_0
    and-int/2addr v1, v3

    .line 59
    invoke-virtual {v14, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-static {v14}, Landroidx/compose/foundation/lazy/LazyListStateKt;->rememberLazyListState(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/lazy/LazyListState;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    iget-object v9, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;->f$0:Lorg/wikipedia/feed/ForYouContentState;

    .line 70
    .line 71
    iget-object v5, v9, Lorg/wikipedia/feed/ForYouContentState;->modules:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    or-int/2addr v3, v6

    .line 90
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    if-nez v3, :cond_1

    .line 95
    .line 96
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 97
    .line 98
    if-ne v6, v3, :cond_2

    .line 99
    .line 100
    :cond_1
    new-instance v6, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 101
    .line 102
    const/16 v3, 0xa

    .line 103
    .line 104
    const/4 v7, 0x0

    .line 105
    invoke-direct {v6, v4, v5, v7, v3}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 112
    .line 113
    invoke-static {v4, v1, v6, v14}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;)V

    .line 114
    .line 115
    .line 116
    sget-object v10, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 117
    .line 118
    new-instance v3, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda72;

    .line 119
    .line 120
    iget v6, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;->f$1:I

    .line 121
    .line 122
    iget-object v7, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;->f$2:Lorg/wikipedia/dataclient/WikiSite;

    .line 123
    .line 124
    iget-object v8, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda70;->f$3:Lkotlin/jvm/functions/Function1;

    .line 125
    .line 126
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda72;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Ljava/util/List;ILorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function1;Lorg/wikipedia/feed/ForYouContentState;)V

    .line 127
    .line 128
    .line 129
    const v0, -0x5a6151ff

    .line 130
    .line 131
    .line 132
    invoke-static {v0, v3, v14}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    const/16 v15, 0xc06

    .line 137
    .line 138
    const/16 v16, 0x6

    .line 139
    .line 140
    const/4 v11, 0x0

    .line 141
    const/4 v12, 0x0

    .line 142
    invoke-static/range {v10 .. v16}, Landroidx/compose/foundation/layout/OffsetKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_3
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 147
    .line 148
    .line 149
    :goto_1
    return-object v2

    .line 150
    nop

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

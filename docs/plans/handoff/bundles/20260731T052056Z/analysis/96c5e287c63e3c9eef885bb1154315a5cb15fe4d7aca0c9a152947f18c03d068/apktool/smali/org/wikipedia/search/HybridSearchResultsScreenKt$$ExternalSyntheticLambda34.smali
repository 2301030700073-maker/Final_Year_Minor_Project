.class public final synthetic Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/ui/Modifier;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;III)V
    .locals 0

    .line 20
    iput p7, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->$r8$classId:I

    iput-object p1, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$0:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$3:Ljava/lang/Object;

    iput p5, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$4:I

    iput p6, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$5:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;ILjava/lang/String;Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$0:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iput p3, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$4:I

    .line 12
    .line 13
    iput-object p4, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$2:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$3:Ljava/lang/Object;

    .line 16
    .line 17
    iput p6, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$5:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->$r8$classId:I

    .line 4
    .line 5
    iget v2, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$4:I

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object v4, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$1:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object v8, v6

    .line 19
    check-cast v8, Lorg/wikipedia/util/UiState;

    .line 20
    .line 21
    move-object v9, v5

    .line 22
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 23
    .line 24
    move-object v10, v4

    .line 25
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 26
    .line 27
    move-object/from16 v11, p1

    .line 28
    .line 29
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 30
    .line 31
    move-object/from16 v1, p2

    .line 32
    .line 33
    check-cast v1, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    or-int/lit8 v1, v2, 0x1

    .line 39
    .line 40
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 41
    .line 42
    .line 43
    move-result v12

    .line 44
    iget-object v7, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$0:Landroidx/compose/ui/Modifier;

    .line 45
    .line 46
    iget v13, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$5:I

    .line 47
    .line 48
    invoke-static/range {v7 .. v13}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->YearInReviewOnboardingScreen(Landroidx/compose/ui/Modifier;Lorg/wikipedia/util/UiState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;II)V

    .line 49
    .line 50
    .line 51
    return-object v3

    .line 52
    :pswitch_0
    move-object v15, v6

    .line 53
    check-cast v15, Ljava/lang/String;

    .line 54
    .line 55
    move-object/from16 v17, v5

    .line 56
    .line 57
    check-cast v17, Ljava/lang/String;

    .line 58
    .line 59
    move-object/from16 v18, v4

    .line 60
    .line 61
    check-cast v18, Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;

    .line 62
    .line 63
    move-object/from16 v19, p1

    .line 64
    .line 65
    check-cast v19, Landroidx/compose/runtime/GapComposer;

    .line 66
    .line 67
    move-object/from16 v1, p2

    .line 68
    .line 69
    check-cast v1, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget v1, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$5:I

    .line 75
    .line 76
    or-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 79
    .line 80
    .line 81
    move-result v20

    .line 82
    iget-object v14, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$0:Landroidx/compose/ui/Modifier;

    .line 83
    .line 84
    iget v0, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$4:I

    .line 85
    .line 86
    move/from16 v16, v0

    .line 87
    .line 88
    invoke-static/range {v14 .. v20}, Lorg/wikipedia/yearinreview/YearInReviewDialog;->ShareableHighlightsCard(Landroidx/compose/ui/Modifier;Ljava/lang/String;ILjava/lang/String;Lorg/wikipedia/yearinreview/YearInReviewScreenData$HighlightsScreen;Landroidx/compose/runtime/GapComposer;I)V

    .line 89
    .line 90
    .line 91
    return-object v3

    .line 92
    :pswitch_1
    check-cast v6, Ljava/lang/String;

    .line 93
    .line 94
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 95
    .line 96
    move-object v7, v4

    .line 97
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 98
    .line 99
    move-object/from16 v8, p1

    .line 100
    .line 101
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 102
    .line 103
    move-object/from16 v1, p2

    .line 104
    .line 105
    check-cast v1, Ljava/lang/Integer;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    or-int/lit8 v1, v2, 0x1

    .line 111
    .line 112
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    iget-object v4, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$0:Landroidx/compose/ui/Modifier;

    .line 117
    .line 118
    iget v10, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda34;->f$5:I

    .line 119
    .line 120
    move-object/from16 v21, v6

    .line 121
    .line 122
    move-object v6, v5

    .line 123
    move-object/from16 v5, v21

    .line 124
    .line 125
    invoke-static/range {v4 .. v10}, Lorg/wikipedia/search/NoSearchResultsKt;->SemanticSearchResultHeader(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;II)V

    .line 126
    .line 127
    .line 128
    return-object v3

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

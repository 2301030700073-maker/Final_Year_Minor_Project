.class public final synthetic Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$10:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function4;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$5:Ljava/util/ArrayList;

.field public final synthetic f$6:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$7:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$8:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$9:Lkotlin/jvm/functions/Function6;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function3;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function6;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$1:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$3:Lkotlin/jvm/functions/Function4;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$4:Lkotlin/jvm/functions/Function3;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$5:Ljava/util/ArrayList;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$6:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$7:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    iput-object p9, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$8:Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    iput-object p10, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$9:Lkotlin/jvm/functions/Function6;

    .line 23
    .line 24
    iput-object p11, p0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$10:Lkotlin/jvm/functions/Function2;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v2, "control"

    .line 11
    .line 12
    iget-object v3, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$0:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v4, 0x3

    .line 19
    const/4 v5, 0x0

    .line 20
    iget-object v7, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$1:Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object v8, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$2:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v9, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$3:Lkotlin/jvm/functions/Function4;

    .line 25
    .line 26
    iget-object v10, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$4:Lkotlin/jvm/functions/Function3;

    .line 27
    .line 28
    iget-object v12, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$5:Ljava/util/ArrayList;

    .line 29
    .line 30
    const/4 v15, 0x1

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    const-string v2, "lexicalsemantic"

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-object/from16 v16, v10

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    new-instance v6, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda24;

    .line 50
    .line 51
    const/4 v11, 0x0

    .line 52
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda24;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function3;I)V

    .line 53
    .line 54
    .line 55
    move-object/from16 v16, v10

    .line 56
    .line 57
    new-instance v10, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 58
    .line 59
    const v11, 0x326908ca

    .line 60
    .line 61
    .line 62
    invoke-direct {v10, v6, v15, v11}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v2, v10}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->items$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;ILandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda25;

    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    invoke-direct {v2, v7, v12, v6}, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda25;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 72
    .line 73
    .line 74
    new-instance v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 75
    .line 76
    const v10, 0x4aade641    # 5698336.5f

    .line 77
    .line 78
    .line 79
    invoke-direct {v6, v2, v15, v10}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v5, v6, v4}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 83
    .line 84
    .line 85
    :goto_1
    new-instance v2, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;

    .line 86
    .line 87
    const/16 v6, 0xb

    .line 88
    .line 89
    iget-object v10, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$6:Lkotlin/jvm/functions/Function0;

    .line 90
    .line 91
    iget-object v11, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$7:Lkotlin/jvm/functions/Function0;

    .line 92
    .line 93
    invoke-direct {v2, v12, v10, v11, v6}, Lorg/wikipedia/settings/AboutActivityKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 94
    .line 95
    .line 96
    new-instance v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 97
    .line 98
    const v10, -0x358b6f9a    # -4006937.5f

    .line 99
    .line 100
    .line 101
    invoke-direct {v6, v2, v15, v10}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v5, v6, v4}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 105
    .line 106
    .line 107
    move-object v13, v9

    .line 108
    new-instance v9, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda26;

    .line 109
    .line 110
    iget-object v11, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$8:Lkotlin/jvm/functions/Function1;

    .line 111
    .line 112
    move-object v10, v12

    .line 113
    iget-object v12, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$9:Lkotlin/jvm/functions/Function6;

    .line 114
    .line 115
    iget-object v14, v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda22;->f$10:Lkotlin/jvm/functions/Function2;

    .line 116
    .line 117
    invoke-direct/range {v9 .. v14}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda26;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function6;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function2;)V

    .line 118
    .line 119
    .line 120
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 121
    .line 122
    const v2, -0x5431d9e3

    .line 123
    .line 124
    .line 125
    invoke-direct {v0, v9, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 126
    .line 127
    .line 128
    invoke-static {v1, v5, v0, v4}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 129
    .line 130
    .line 131
    const-string v0, "semanticlexical"

    .line 132
    .line 133
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_2

    .line 138
    .line 139
    new-instance v0, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda25;

    .line 140
    .line 141
    invoke-direct {v0, v10, v7, v15}, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda25;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 142
    .line 143
    .line 144
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 145
    .line 146
    const v3, 0x3097138

    .line 147
    .line 148
    .line 149
    invoke-direct {v2, v0, v15, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 150
    .line 151
    .line 152
    invoke-static {v1, v5, v2, v4}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    new-instance v6, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda24;

    .line 160
    .line 161
    const/4 v11, 0x1

    .line 162
    move-object v9, v13

    .line 163
    move-object/from16 v10, v16

    .line 164
    .line 165
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/search/HybridSearchResultsScreenKt$$ExternalSyntheticLambda24;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function3;I)V

    .line 166
    .line 167
    .line 168
    new-instance v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 169
    .line 170
    const v3, -0x1779ea7f

    .line 171
    .line 172
    .line 173
    invoke-direct {v2, v6, v15, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 174
    .line 175
    .line 176
    invoke-static {v1, v0, v2}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->items$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;ILandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 177
    .line 178
    .line 179
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 180
    .line 181
    return-object v0
.end method

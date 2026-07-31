.class public final synthetic Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroidx/compose/animation/core/InfiniteTransition;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda5;->f$1:Landroidx/compose/animation/core/InfiniteTransition;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/16 v2, 0x1036

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0x10

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    iget-object v6, p0, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda5;->f$1:Landroidx/compose/animation/core/InfiniteTransition;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/wikipedia/search/HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object v0, p1

    .line 19
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 20
    .line 21
    move-object/from16 v7, p2

    .line 22
    .line 23
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    move-object/from16 v8, p3

    .line 26
    .line 27
    check-cast v8, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    and-int/lit8 v0, v8, 0x11

    .line 37
    .line 38
    if-eq v0, v4, :cond_0

    .line 39
    .line 40
    move v3, v5

    .line 41
    :cond_0
    and-int/lit8 v0, v8, 0x1

    .line 42
    .line 43
    invoke-virtual {v7, v0, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    const/4 v12, 0x0

    .line 50
    const/16 v13, 0xd

    .line 51
    .line 52
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 53
    .line 54
    const/4 v9, 0x0

    .line 55
    const/high16 v10, 0x41000000    # 8.0f

    .line 56
    .line 57
    const/4 v11, 0x0

    .line 58
    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, p0, v6, v7, v2}, Lorg/wikipedia/search/NoSearchResultsKt;->HorizontalHybridSearchListItemLoader(Landroidx/compose/ui/Modifier;Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/GapComposer;I)V

    .line 63
    .line 64
    .line 65
    invoke-static {v8, v10}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v7, p0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-object v1

    .line 77
    :pswitch_0
    move-object v0, p1

    .line 78
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 79
    .line 80
    move-object/from16 v7, p2

    .line 81
    .line 82
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 83
    .line 84
    move-object/from16 v8, p3

    .line 85
    .line 86
    check-cast v8, Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    and-int/lit8 v0, v8, 0x11

    .line 96
    .line 97
    if-eq v0, v4, :cond_2

    .line 98
    .line 99
    move v3, v5

    .line 100
    :cond_2
    and-int/lit8 v0, v8, 0x1

    .line 101
    .line 102
    invoke-virtual {v7, v0, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    const/4 v12, 0x0

    .line 109
    const/16 v13, 0xd

    .line 110
    .line 111
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 112
    .line 113
    const/4 v9, 0x0

    .line 114
    const/high16 v10, 0x41000000    # 8.0f

    .line 115
    .line 116
    const/4 v11, 0x0

    .line 117
    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0, p0, v6, v7, v2}, Lorg/wikipedia/search/NoSearchResultsKt;->HorizontalHybridSearchListItemLoader(Landroidx/compose/ui/Modifier;Ljava/util/List;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/GapComposer;I)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 126
    .line 127
    .line 128
    :goto_1
    return-object v1

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

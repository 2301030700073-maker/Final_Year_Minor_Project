.class public final synthetic Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda74;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lorg/wikipedia/feed/ForYouContentState;

.field public final synthetic f$2:I

.field public final synthetic f$3:F

.field public final synthetic f$4:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lorg/wikipedia/feed/ForYouContentState;IFLorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda74;->f$0:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda74;->f$1:Lorg/wikipedia/feed/ForYouContentState;

    .line 7
    .line 8
    iput p3, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda74;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda74;->f$3:F

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda74;->f$4:Lorg/wikipedia/dataclient/WikiSite;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda74;->f$5:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
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
    iget-object v9, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda74;->f$0:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v10

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v4, 0x2

    .line 23
    iget v14, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda74;->f$2:I

    .line 24
    .line 25
    iget v5, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda74;->f$3:F

    .line 26
    .line 27
    iget-object v15, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda74;->f$4:Lorg/wikipedia/dataclient/WikiSite;

    .line 28
    .line 29
    iget-object v6, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda74;->f$5:Lkotlin/jvm/functions/Function1;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    add-int/lit8 v11, v3, 0x1

    .line 38
    .line 39
    if-ltz v3, :cond_0

    .line 40
    .line 41
    check-cast v2, Lorg/wikipedia/feed/ForYouModule;

    .line 42
    .line 43
    new-instance v8, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;

    .line 44
    .line 45
    invoke-direct {v8, v6, v4}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 46
    .line 47
    .line 48
    move-object v7, v6

    .line 49
    move v4, v14

    .line 50
    move-object v6, v15

    .line 51
    invoke-static/range {v1 .. v8}, Lorg/wikipedia/feed/ForYouCardKt;->forYouModuleItem-FJfuzF0(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Lorg/wikipedia/feed/ForYouModule;IIFLorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 52
    .line 53
    .line 54
    move v3, v11

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    throw v0

    .line 61
    :cond_1
    move-object/from16 v16, v6

    .line 62
    .line 63
    new-instance v11, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    iget-object v12, v0, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda74;->f$1:Lorg/wikipedia/feed/ForYouContentState;

    .line 66
    .line 67
    move v13, v5

    .line 68
    invoke-direct/range {v11 .. v16}, Lorg/wikipedia/feed/ForYouContentTabKt$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/feed/ForYouContentState;FILorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function1;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    const v3, 0x6cc3d316

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v11, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 78
    .line 79
    .line 80
    const-string v3, "load-more-foryou"

    .line 81
    .line 82
    invoke-static {v1, v3, v0, v4}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, v12, Lorg/wikipedia/feed/ForYouContentState;->error:Ljava/lang/Throwable;

    .line 86
    .line 87
    iget-object v3, v12, Lorg/wikipedia/feed/ForYouContentState;->modules:Ljava/util/List;

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_2

    .line 96
    .line 97
    new-instance v0, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;

    .line 98
    .line 99
    const/16 v7, 0xc

    .line 100
    .line 101
    invoke-direct {v0, v7, v12, v6}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    new-instance v7, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 105
    .line 106
    const v8, 0x7bed7b31

    .line 107
    .line 108
    .line 109
    invoke-direct {v7, v0, v2, v8}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 110
    .line 111
    .line 112
    const-string v0, "error-foryou"

    .line 113
    .line 114
    invoke-static {v1, v0, v7, v4}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 115
    .line 116
    .line 117
    :cond_2
    iget-object v0, v12, Lorg/wikipedia/feed/ForYouContentState;->error:Ljava/lang/Throwable;

    .line 118
    .line 119
    if-nez v0, :cond_3

    .line 120
    .line 121
    iget-boolean v0, v12, Lorg/wikipedia/feed/ForYouContentState;->isLoadingMore:Z

    .line 122
    .line 123
    if-nez v0, :cond_3

    .line 124
    .line 125
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_3

    .line 130
    .line 131
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Lorg/wikipedia/feed/ForYouModule;

    .line 136
    .line 137
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    add-int/2addr v2, v3

    .line 142
    new-instance v7, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda17;

    .line 143
    .line 144
    const/16 v3, 0x9

    .line 145
    .line 146
    invoke-direct {v7, v3}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda17;-><init>(I)V

    .line 147
    .line 148
    .line 149
    move-object v3, v1

    .line 150
    move-object v1, v0

    .line 151
    move-object v0, v3

    .line 152
    move v4, v5

    .line 153
    move v3, v14

    .line 154
    move-object v5, v15

    .line 155
    invoke-static/range {v0 .. v7}, Lorg/wikipedia/feed/ForYouCardKt;->forYouModuleItem-FJfuzF0(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Lorg/wikipedia/feed/ForYouModule;IIFLorg/wikipedia/dataclient/WikiSite;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 159
    .line 160
    return-object v0
.end method

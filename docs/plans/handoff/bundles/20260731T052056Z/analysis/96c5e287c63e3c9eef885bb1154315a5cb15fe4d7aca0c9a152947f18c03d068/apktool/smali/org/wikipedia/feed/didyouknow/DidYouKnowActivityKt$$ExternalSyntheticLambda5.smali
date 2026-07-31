.class public final synthetic Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function3;

.field public final synthetic f$4:I

.field public final synthetic f$5:Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;

.field public final synthetic f$6:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;ILorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda5;->f$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda5;->f$2:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda5;->f$3:Lkotlin/jvm/functions/Function3;

    .line 11
    .line 12
    iput p5, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda5;->f$4:I

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda5;->f$5:Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda5;->f$6:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 2
    .line 3
    move-object v5, p2

    .line 4
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    and-int/lit8 p1, p2, 0x11

    .line 16
    .line 17
    const/16 p3, 0x10

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq p1, p3, :cond_0

    .line 22
    .line 23
    move p1, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p1, v0

    .line 26
    :goto_0
    and-int/2addr p2, v1

    .line 27
    invoke-virtual {v5, p2, p1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    new-instance p1, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda31;

    .line 34
    .line 35
    iget p2, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda5;->f$4:I

    .line 36
    .line 37
    iget-object p3, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda5;->f$5:Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;

    .line 38
    .line 39
    iget-object v1, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda5;->f$6:Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    invoke-direct {p1, p2, p3, v1}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda31;-><init>(ILorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    const p3, -0x783d05eb

    .line 45
    .line 46
    .line 47
    invoke-static {p3, p1, v5}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    iget-object p1, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda5;->f$3:Lkotlin/jvm/functions/Function3;

    .line 52
    .line 53
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    invoke-virtual {v5, p2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    or-int/2addr p3, v1

    .line 62
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-nez p3, :cond_1

    .line 67
    .line 68
    sget-object p3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 69
    .line 70
    if-ne v1, p3, :cond_2

    .line 71
    .line 72
    :cond_1
    new-instance v1, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda7;

    .line 73
    .line 74
    invoke-direct {v1, p2, v0, p1}, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda7;-><init>(IILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    move-object v4, v1

    .line 81
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 82
    .line 83
    const/16 v6, 0xc00

    .line 84
    .line 85
    iget-object v0, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda5;->f$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 86
    .line 87
    iget-object v1, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v2, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivityKt$$ExternalSyntheticLambda5;->f$2:Lkotlin/jvm/functions/Function1;

    .line 90
    .line 91
    invoke-static/range {v0 .. v6}, Lorg/wikipedia/util/TabUtil;->DidYouKnowListItem(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 96
    .line 97
    .line 98
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 99
    .line 100
    return-object p0
.end method

.class public final synthetic Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(ZZLandroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda1;->f$0:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Landroidx/compose/foundation/layout/PaddingValues;

    .line 2
    .line 3
    move-object v9, p2

    .line 4
    check-cast v9, Landroidx/compose/runtime/GapComposer;

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
    and-int/lit8 p3, p2, 0x6

    .line 16
    .line 17
    if-nez p3, :cond_1

    .line 18
    .line 19
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    const/4 p3, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p3, 0x2

    .line 28
    :goto_0
    or-int/2addr p2, p3

    .line 29
    :cond_1
    and-int/lit8 p3, p2, 0x13

    .line 30
    .line 31
    const/16 v0, 0x12

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    if-eq p3, v0, :cond_2

    .line 35
    .line 36
    move p3, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 p3, 0x0

    .line 39
    :goto_1
    and-int/2addr p2, v1

    .line 40
    invoke-virtual {v9, p2, p3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_5

    .line 45
    .line 46
    sget-object p2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 47
    .line 48
    invoke-static {p2, p1}, Landroidx/compose/foundation/layout/OffsetKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 p2, 0x0

    .line 53
    const/high16 p3, 0x41800000    # 16.0f

    .line 54
    .line 55
    invoke-static {p1, p2, p3, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-boolean p1, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda1;->f$0:Z

    .line 60
    .line 61
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    iget-boolean p3, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda1;->f$1:Z

    .line 66
    .line 67
    invoke-virtual {v9, p3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    or-int/2addr p2, v1

    .line 72
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-nez p2, :cond_3

    .line 77
    .line 78
    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 79
    .line 80
    if-ne v1, p2, :cond_4

    .line 81
    .line 82
    :cond_3
    new-instance v1, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3;

    .line 83
    .line 84
    iget-object p0, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/runtime/MutableState;

    .line 85
    .line 86
    invoke-direct {v1, p1, p3, p0}, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3;-><init>(ZZLandroidx/compose/runtime/MutableState;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    move-object v8, v1

    .line 93
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 94
    .line 95
    const/4 v10, 0x0

    .line 96
    const/16 v11, 0x1fe

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    const/4 v2, 0x0

    .line 100
    const/4 v3, 0x0

    .line 101
    const/4 v4, 0x0

    .line 102
    const/4 v5, 0x0

    .line 103
    const/4 v6, 0x0

    .line 104
    const/4 v7, 0x0

    .line 105
    invoke-static/range {v0 .. v11}, Lkotlin/ExceptionsKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;II)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 110
    .line 111
    .line 112
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 113
    .line 114
    return-object p0
.end method

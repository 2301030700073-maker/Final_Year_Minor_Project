.class public final synthetic Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/OffsetProvider;ZZ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p2, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3;->f$0:Z

    .line 10
    .line 11
    iput-boolean p3, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3;->f$1:Z

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(ZZLandroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3;->f$0:Z

    iput-boolean p2, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3;->f$1:Z

    iput-object p3, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-boolean v3, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3;->f$1:Z

    .line 7
    .line 8
    iget-boolean v4, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3;->f$0:Z

    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 16
    .line 17
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 18
    .line 19
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/OffsetProvider;->provide-F1C5BW0()J

    .line 20
    .line 21
    .line 22
    move-result-wide v7

    .line 23
    sget-object p0, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->SelectionHandleInfoKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 24
    .line 25
    new-instance v5, Landroidx/compose/foundation/text/selection/SelectionHandleInfo;

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    sget-object v0, Landroidx/compose/foundation/text/Handle;->SelectionStart:Landroidx/compose/foundation/text/Handle;

    .line 30
    .line 31
    :goto_0
    move-object v6, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    sget-object v0, Landroidx/compose/foundation/text/Handle;->SelectionEnd:Landroidx/compose/foundation/text/Handle;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :goto_1
    if-eqz v3, :cond_1

    .line 37
    .line 38
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;->Left:Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;

    .line 39
    .line 40
    :goto_2
    move-object v9, v0

    .line 41
    goto :goto_3

    .line 42
    :cond_1
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;->Right:Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :goto_3
    const-wide v3, 0x7fffffff7fffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    and-long/2addr v3, v7

    .line 51
    const-wide v10, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    cmp-long v0, v3, v10

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    :goto_4
    move v10, v2

    .line 61
    goto :goto_5

    .line 62
    :cond_2
    const/4 v2, 0x0

    .line 63
    goto :goto_4

    .line 64
    :goto_5
    invoke-direct/range {v5 .. v10}, Landroidx/compose/foundation/text/selection/SelectionHandleInfo;-><init>(Landroidx/compose/foundation/text/Handle;JLandroidx/compose/foundation/text/selection/SelectionHandleAnchor;Z)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, p0, v5}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-object v1

    .line 71
    :pswitch_0
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 72
    .line 73
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    sget-object v0, Lorg/wikipedia/activitytab/ImpactModuleKt;->lambda$567232380:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 79
    .line 80
    const/4 v5, 0x3

    .line 81
    const/4 v6, 0x0

    .line 82
    invoke-static {p1, v6, v0, v5}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->item$default(Landroidx/compose/foundation/lazy/LazyListIntervalContent;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lorg/wikipedia/activitytab/ModuleType;->getEntries()Lkotlin/enums/EnumEntries;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    move-object v5, v0

    .line 90
    check-cast v5, Lkotlin/collections/AbstractCollection;

    .line 91
    .line 92
    invoke-virtual {v5}, Lkotlin/collections/AbstractCollection;->getSize()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    new-instance v7, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;

    .line 97
    .line 98
    const/16 v8, 0x9

    .line 99
    .line 100
    invoke-direct {v7, v8, v0}, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;-><init>(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    new-instance v8, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$CustomizationScreen$lambda$4$0$0$$inlined$itemsIndexed$default$3;

    .line 104
    .line 105
    invoke-direct {v8, v0, v4, v3, p0}, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivityKt$CustomizationScreen$lambda$4$0$0$$inlined$itemsIndexed$default$3;-><init>(Lkotlin/enums/EnumEntries;ZZLandroidx/compose/runtime/MutableState;)V

    .line 106
    .line 107
    .line 108
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 109
    .line 110
    const v0, 0x799532c4

    .line 111
    .line 112
    .line 113
    invoke-direct {p0, v8, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v5, v6, v7, p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->items(ILandroidx/compose/runtime/Latch$await$2$2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 117
    .line 118
    .line 119
    return-object v1

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

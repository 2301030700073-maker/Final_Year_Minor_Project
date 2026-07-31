.class public final synthetic Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    check-cast v1, Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 10
    .line 11
    check-cast p1, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    check-cast p2, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 18
    .line 19
    check-cast p3, Landroidx/compose/ui/geometry/Offset;

    .line 20
    .line 21
    check-cast p4, Landroidx/compose/ui/geometry/Offset;

    .line 22
    .line 23
    check-cast p5, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    move-object v7, p6

    .line 30
    check-cast v7, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    iget-wide p5, p3, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 33
    .line 34
    invoke-virtual {v1, p2, p5, p6}, Landroidx/compose/foundation/text/selection/SelectionManager;->convertToContainerCoordinates-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    iget-wide p3, p4, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 39
    .line 40
    invoke-virtual {v1, p2, p3, p4}, Landroidx/compose/foundation/text/selection/SelectionManager;->convertToContainerCoordinates-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    invoke-virtual {v1, p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->setInTouchMode(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelection-jyLRC_s$foundation(JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_0
    check-cast p0, Lorg/wikipedia/search/SearchResultsFragment;

    .line 57
    .line 58
    check-cast p1, Lorg/wikipedia/search/SearchResult;

    .line 59
    .line 60
    check-cast p2, Lorg/wikipedia/page/PageTitle;

    .line 61
    .line 62
    check-cast p3, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    check-cast p4, Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result p4

    .line 74
    check-cast p5, Ljava/lang/Integer;

    .line 75
    .line 76
    check-cast p6, Landroid/location/Location;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 85
    .line 86
    .line 87
    move-result-object p5

    .line 88
    invoke-static {p5}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    if-eqz p4, :cond_0

    .line 95
    .line 96
    const-string p4, "semantic_search_link"

    .line 97
    .line 98
    :goto_0
    move-object v4, p4

    .line 99
    goto :goto_1

    .line 100
    :cond_0
    const-string p4, "semantic_search_result"

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :goto_1
    sget-object p4, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->flushEventsRunnable:Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 104
    .line 105
    invoke-static {p2}, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->getPageData$default(Lorg/wikipedia/page/PageTitle;)Lorg/wikimedia/testkitchen/context/PageData;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {p0}, Lorg/wikipedia/search/SearchResultsFragment;->getViewModel()Lorg/wikipedia/search/SearchResultsViewModel;

    .line 110
    .line 111
    .line 112
    move-result-object p4

    .line 113
    invoke-virtual {p4, p1}, Lorg/wikipedia/search/SearchResultsViewModel;->getHybridEventActionContext(Lorg/wikipedia/search/SearchResult;)Lkotlin/collections/builders/MapBuilder;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    const/16 v7, 0x56

    .line 118
    .line 119
    const-string v1, "search_result_click"

    .line 120
    .line 121
    const/4 v2, 0x0

    .line 122
    const/4 v3, 0x0

    .line 123
    invoke-static/range {v0 .. v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 124
    .line 125
    .line 126
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/search/SearchResultsFragment;->callback()Lorg/wikipedia/search/SearchFragment;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    if-eqz p0, :cond_2

    .line 131
    .line 132
    invoke-virtual {p0, p2, p3, p6}, Lorg/wikipedia/search/SearchFragment;->navigateToTitle(Lorg/wikipedia/page/PageTitle;ZLandroid/location/Location;)V

    .line 133
    .line 134
    .line 135
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 136
    .line 137
    return-object p0

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda3;->f$0:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p3, p0, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    .line 10
    .line 11
    iput-object p4, p0, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda3;->f$2:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    iput-object p5, p0, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p2, p0, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda3;->f$4:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Landroidx/compose/foundation/pager/DefaultPagerState;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda3;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    iput-object p4, p0, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda3;->f$4:Ljava/lang/Object;

    iput-object p5, p0, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda3;->f$2:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda3;->f$2:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda3;->f$4:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, p0, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda3;->f$3:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/wikipedia/onboarding/InitialOnboardingScreenKt$$ExternalSyntheticLambda3;->f$0:Landroid/content/Context;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v5, Ljava/util/Map;

    .line 19
    .line 20
    check-cast v3, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 21
    .line 22
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    move-object v8, p0

    .line 41
    check-cast v8, Ljava/lang/String;

    .line 42
    .line 43
    const/4 v12, 0x0

    .line 44
    const/16 v13, 0xf4

    .line 45
    .line 46
    const-string v7, "click"

    .line 47
    .line 48
    const/4 v9, 0x0

    .line 49
    const-string v10, "skip_button"

    .line 50
    .line 51
    const/4 v11, 0x0

    .line 52
    invoke-static/range {v6 .. v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    return-object v1

    .line 59
    :pswitch_0
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 60
    .line 61
    check-cast v3, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 62
    .line 63
    invoke-static {p0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    if-eqz v6, :cond_1

    .line 68
    .line 69
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Lorg/wikipedia/onboarding/OnboardingScreen;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    const/4 v12, 0x0

    .line 84
    const/16 v13, 0xf2

    .line 85
    .line 86
    const-string v7, "click"

    .line 87
    .line 88
    const/4 v8, 0x0

    .line 89
    const-string v10, "next_button"

    .line 90
    .line 91
    const/4 v11, 0x0

    .line 92
    invoke-static/range {v6 .. v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 93
    .line 94
    .line 95
    :cond_1
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    add-int/lit8 v0, v0, -0x1

    .line 104
    .line 105
    if-ne p0, v0, :cond_2

    .line 106
    .line 107
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    add-int/lit8 p0, p0, 0x1

    .line 116
    .line 117
    invoke-virtual {v3, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 118
    .line 119
    .line 120
    :goto_0
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    return-object v1

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

.field public final synthetic f$1:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda8;->f$0:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda8;->f$1:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda8;->f$2:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda8;->f$3:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object v5, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda8;->f$0:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 10
    .line 11
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 12
    .line 13
    move-object v11, p2

    .line 14
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    move-object/from16 p2, p3

    .line 17
    .line 18
    check-cast p2, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    packed-switch v0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    and-int/lit8 p1, p2, 0x11

    .line 31
    .line 32
    if-eq p1, v2, :cond_0

    .line 33
    .line 34
    move p1, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move p1, v4

    .line 37
    :goto_0
    and-int/2addr p2, v3

    .line 38
    invoke-virtual {v11, p2, p1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    sget-object v8, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;->PERSONALIZED:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 45
    .line 46
    if-ne v5, v8, :cond_1

    .line 47
    .line 48
    move v7, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v7, v4

    .line 51
    :goto_1
    const/16 v12, 0x180

    .line 52
    .line 53
    iget-object v6, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda8;->f$1:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

    .line 54
    .line 55
    iget-object v9, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda8;->f$2:Lkotlin/jvm/functions/Function1;

    .line 56
    .line 57
    iget-object v10, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda8;->f$3:Lkotlin/jvm/functions/Function1;

    .line 58
    .line 59
    invoke-static/range {v6 .. v12}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt;->HomePreferenceSection(Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;ZLorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 64
    .line 65
    .line 66
    :goto_2
    return-object v1

    .line 67
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    and-int/lit8 p1, p2, 0x11

    .line 71
    .line 72
    if-eq p1, v2, :cond_3

    .line 73
    .line 74
    move p1, v3

    .line 75
    goto :goto_3

    .line 76
    :cond_3
    move p1, v4

    .line 77
    :goto_3
    and-int/2addr p2, v3

    .line 78
    invoke-virtual {v11, p2, p1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    sget-object v8, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;->COMMUNITY:Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 85
    .line 86
    if-ne v5, v8, :cond_4

    .line 87
    .line 88
    move v7, v3

    .line 89
    goto :goto_4

    .line 90
    :cond_4
    move v7, v4

    .line 91
    :goto_4
    const/16 v12, 0x180

    .line 92
    .line 93
    iget-object v6, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda8;->f$1:Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;

    .line 94
    .line 95
    iget-object v9, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda8;->f$2:Lkotlin/jvm/functions/Function1;

    .line 96
    .line 97
    iget-object v10, p0, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt$$ExternalSyntheticLambda8;->f$3:Lkotlin/jvm/functions/Function1;

    .line 98
    .line 99
    invoke-static/range {v6 .. v12}, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceScreenKt;->HomePreferenceSection(Lorg/wikipedia/feed/personalization/homepreference/HomeContentState;ZLorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 100
    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 104
    .line 105
    .line 106
    :goto_5
    return-object v1

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

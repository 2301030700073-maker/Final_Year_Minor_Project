.class public final synthetic Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object p0, p0, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object v9, p1

    .line 14
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    check-cast p2, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    sget p2, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity;->$r8$clinit:I

    .line 23
    .line 24
    and-int/lit8 p2, p1, 0x3

    .line 25
    .line 26
    if-eq p2, v2, :cond_0

    .line 27
    .line 28
    move p2, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move p2, v3

    .line 31
    :goto_0
    and-int/2addr p1, v4

    .line 32
    invoke-virtual {v9, p1, p2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_5

    .line 37
    .line 38
    sget-object v6, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivityKt;->onboardingItems:Ljava/util/List;

    .line 39
    .line 40
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 49
    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    if-ne p2, v0, :cond_2

    .line 53
    .line 54
    :cond_1
    new-instance p2, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity$$ExternalSyntheticLambda2;

    .line 55
    .line 56
    invoke-direct {p2, p0, v3}, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v9, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    move-object v7, p2

    .line 63
    check-cast v7, Lkotlin/jvm/functions/Function0;

    .line 64
    .line 65
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    if-ne p2, v0, :cond_4

    .line 76
    .line 77
    :cond_3
    new-instance p2, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity$$ExternalSyntheticLambda2;

    .line 78
    .line 79
    invoke-direct {p2, p0, v4}, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    move-object v8, p2

    .line 86
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 87
    .line 88
    const/4 v10, 0x0

    .line 89
    const/4 v5, 0x0

    .line 90
    invoke-static/range {v5 .. v10}, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivityKt;->OnboardingScreen(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 95
    .line 96
    .line 97
    :goto_1
    return-object v1

    .line 98
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 99
    .line 100
    check-cast p2, Ljava/lang/Integer;

    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    sget v0, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity;->$r8$clinit:I

    .line 107
    .line 108
    and-int/lit8 v0, p2, 0x3

    .line 109
    .line 110
    if-eq v0, v2, :cond_6

    .line 111
    .line 112
    move v3, v4

    .line 113
    :cond_6
    and-int/2addr p2, v4

    .line 114
    invoke-virtual {p1, p2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-eqz p2, :cond_7

    .line 119
    .line 120
    new-instance p2, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity$$ExternalSyntheticLambda0;

    .line 121
    .line 122
    invoke-direct {p2, p0, v4}, Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/activitytab/ActivityTabOnboardingActivity;I)V

    .line 123
    .line 124
    .line 125
    const p0, -0x203cfcbb

    .line 126
    .line 127
    .line 128
    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    const/16 p2, 0x30

    .line 133
    .line 134
    const/4 v0, 0x0

    .line 135
    invoke-static {v0, p0, p1, p2, v4}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_7
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 140
    .line 141
    .line 142
    :goto_2
    return-object v1

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

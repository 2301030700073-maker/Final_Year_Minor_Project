.class public final synthetic Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivity;

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
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object p0, p0, Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivity;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    check-cast p2, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    sget v0, Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivity;->$r8$clinit:I

    .line 23
    .line 24
    and-int/lit8 v0, p2, 0x3

    .line 25
    .line 26
    if-eq v0, v3, :cond_0

    .line 27
    .line 28
    move v0, v5

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v4

    .line 31
    :goto_0
    and-int/2addr p2, v5

    .line 32
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 49
    .line 50
    if-ne v0, p2, :cond_2

    .line 51
    .line 52
    :cond_1
    new-instance v0, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    const/16 p2, 0xb

    .line 55
    .line 56
    invoke-direct {v0, p2, p0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 63
    .line 64
    invoke-static {v2, v0, p1, v4}, Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivityKt;->ExploreFeedBuildingScreen(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-object v1

    .line 72
    :pswitch_0
    sget v0, Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivity;->$r8$clinit:I

    .line 73
    .line 74
    and-int/lit8 v0, p2, 0x3

    .line 75
    .line 76
    if-eq v0, v3, :cond_4

    .line 77
    .line 78
    move v4, v5

    .line 79
    :cond_4
    and-int/2addr p2, v5

    .line 80
    invoke-virtual {p1, p2, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_5

    .line 85
    .line 86
    new-instance p2, Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivity$$ExternalSyntheticLambda0;

    .line 87
    .line 88
    invoke-direct {p2, p0, v5}, Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/feed/onboarding/ExploreFeedBuildingActivity;I)V

    .line 89
    .line 90
    .line 91
    const p0, -0xd894036

    .line 92
    .line 93
    .line 94
    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    const/16 p2, 0x30

    .line 99
    .line 100
    invoke-static {v2, p0, p1, p2, v5}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 105
    .line 106
    .line 107
    :goto_2
    return-object v1

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsStartDestination;

.field public final synthetic f$1:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/settings/homefeed/HomeFeedSettingsStartDestination;Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsStartDestination;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity;

    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/settings/homefeed/HomeFeedSettingsStartDestination;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    check-cast p2, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    packed-switch v0, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    sget v0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity;->$r8$clinit:I

    .line 24
    .line 25
    and-int/lit8 v0, p2, 0x3

    .line 26
    .line 27
    if-eq v0, v2, :cond_0

    .line 28
    .line 29
    move v0, v5

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v3

    .line 32
    :goto_0
    and-int/2addr p2, v5

    .line 33
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_3

    .line 38
    .line 39
    new-array p2, v3, [Landroidx/navigation/Navigator;

    .line 40
    .line 41
    invoke-static {p2, p1}, Lkotlin/ExceptionsKt;->rememberNavController([Landroidx/navigation/Navigator;Landroidx/compose/runtime/GapComposer;)Landroidx/navigation/NavHostController;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 56
    .line 57
    if-ne v2, v0, :cond_2

    .line 58
    .line 59
    :cond_1
    new-instance v2, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    const/16 v0, 0x1a

    .line 62
    .line 63
    invoke-direct {v2, v0, v4}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 70
    .line 71
    invoke-static {p2, p0, v2, p1, v3}, Lorg/jsoup/nodes/NodeUtils;->HomeFeedSettingsNavHost(Landroidx/navigation/NavHostController;Lorg/wikipedia/settings/homefeed/HomeFeedSettingsStartDestination;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-object v1

    .line 79
    :pswitch_0
    sget v0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity;->$r8$clinit:I

    .line 80
    .line 81
    and-int/lit8 v0, p2, 0x3

    .line 82
    .line 83
    if-eq v0, v2, :cond_4

    .line 84
    .line 85
    move v3, v5

    .line 86
    :cond_4
    and-int/2addr p2, v5

    .line 87
    invoke-virtual {p1, p2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-eqz p2, :cond_5

    .line 92
    .line 93
    new-instance p2, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity$$ExternalSyntheticLambda0;

    .line 94
    .line 95
    invoke-direct {p2, p0, v4, v5}, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/settings/homefeed/HomeFeedSettingsStartDestination;Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity;I)V

    .line 96
    .line 97
    .line 98
    const p0, 0x30f0d57

    .line 99
    .line 100
    .line 101
    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const/16 p2, 0x30

    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    invoke-static {v0, p0, p1, p2, v5}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 113
    .line 114
    .line 115
    :goto_2
    return-object v1

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

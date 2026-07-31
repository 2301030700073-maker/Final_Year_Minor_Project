.class public final synthetic Lorg/wikipedia/settings/AboutActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/settings/AboutActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/settings/AboutActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/settings/AboutActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/AboutActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/settings/AboutActivity;

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
    iget v0, p0, Lorg/wikipedia/settings/AboutActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    iget-object p0, p0, Lorg/wikipedia/settings/AboutActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/settings/AboutActivity;

    .line 8
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
    sget p2, Lorg/wikipedia/settings/AboutActivity;->$r8$clinit:I

    .line 23
    .line 24
    and-int/lit8 p2, p1, 0x3

    .line 25
    .line 26
    if-eq p2, v3, :cond_0

    .line 27
    .line 28
    move v2, v4

    .line 29
    :cond_0
    and-int/2addr p1, v4

    .line 30
    invoke-virtual {v9, p1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 37
    .line 38
    invoke-static {p1}, Landroidx/compose/foundation/layout/OffsetKt;->safeDrawingPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    iget-object v7, p0, Lorg/wikipedia/settings/AboutActivity;->credits:Ljava/util/List;

    .line 43
    .line 44
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 55
    .line 56
    if-ne p2, p1, :cond_2

    .line 57
    .line 58
    :cond_1
    new-instance p2, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    const/16 p1, 0x18

    .line 61
    .line 62
    invoke-direct {p2, p1, p0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    move-object v8, p2

    .line 69
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 70
    .line 71
    const/16 v10, 0x30

    .line 72
    .line 73
    const-string v6, "r/50598-r-2026-07-13"

    .line 74
    .line 75
    invoke-static/range {v5 .. v10}, Lorg/wikipedia/settings/PrefsIoUtil;->AboutWikipediaScreen(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-object v1

    .line 83
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 84
    .line 85
    check-cast p2, Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    sget v0, Lorg/wikipedia/settings/AboutActivity;->$r8$clinit:I

    .line 92
    .line 93
    and-int/lit8 v0, p2, 0x3

    .line 94
    .line 95
    if-eq v0, v3, :cond_4

    .line 96
    .line 97
    move v2, v4

    .line 98
    :cond_4
    and-int/2addr p2, v4

    .line 99
    invoke-virtual {p1, p2, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eqz p2, :cond_5

    .line 104
    .line 105
    new-instance p2, Lorg/wikipedia/settings/AboutActivity$$ExternalSyntheticLambda0;

    .line 106
    .line 107
    invoke-direct {p2, p0, v4}, Lorg/wikipedia/settings/AboutActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/settings/AboutActivity;I)V

    .line 108
    .line 109
    .line 110
    const p0, 0x73e4fdbe

    .line 111
    .line 112
    .line 113
    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    const/16 p2, 0x30

    .line 118
    .line 119
    const/4 v0, 0x0

    .line 120
    invoke-static {v0, p0, p1, p2, v4}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 125
    .line 126
    .line 127
    :goto_1
    return-object v1

    .line 128
    nop

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

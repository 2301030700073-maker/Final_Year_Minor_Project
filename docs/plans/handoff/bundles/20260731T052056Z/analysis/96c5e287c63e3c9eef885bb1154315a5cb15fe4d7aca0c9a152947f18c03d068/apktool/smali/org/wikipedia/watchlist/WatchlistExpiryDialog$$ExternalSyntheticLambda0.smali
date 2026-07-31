.class public final synthetic Lorg/wikipedia/watchlist/WatchlistExpiryDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/watchlist/WatchlistExpiryDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/watchlist/WatchlistExpiryDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/watchlist/WatchlistExpiryDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/watchlist/WatchlistExpiryDialog$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/watchlist/WatchlistExpiryDialog;

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
    iget v0, p0, Lorg/wikipedia/watchlist/WatchlistExpiryDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    iget-object p0, p0, Lorg/wikipedia/watchlist/WatchlistExpiryDialog$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/watchlist/WatchlistExpiryDialog;

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
    and-int/lit8 p2, p1, 0x3

    .line 23
    .line 24
    if-eq p2, v3, :cond_0

    .line 25
    .line 26
    move v2, v4

    .line 27
    :cond_0
    and-int/2addr p1, v4

    .line 28
    invoke-virtual {v9, p1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    sget-object p1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 35
    .line 36
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 41
    .line 42
    iget-wide p1, p1, Lorg/wikipedia/compose/theme/WikipediaColor;->paperColor:J

    .line 43
    .line 44
    sget-object v0, Landroidx/compose/ui/graphics/ColorKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 45
    .line 46
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 47
    .line 48
    invoke-static {v2, p1, p2, v0}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    iget-object v6, p0, Lorg/wikipedia/watchlist/WatchlistExpiryDialog;->expiryList:Ljava/util/List;

    .line 53
    .line 54
    sget-object v7, Lorg/wikipedia/watchlist/WatchlistExpiry;->NEVER:Lorg/wikipedia/watchlist/WatchlistExpiry;

    .line 55
    .line 56
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 67
    .line 68
    if-ne p2, p1, :cond_2

    .line 69
    .line 70
    :cond_1
    new-instance p2, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 71
    .line 72
    const/16 p1, 0x1d

    .line 73
    .line 74
    invoke-direct {p2, p1, p0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v9, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    move-object v8, p2

    .line 81
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 82
    .line 83
    const/16 v10, 0x180

    .line 84
    .line 85
    invoke-static/range {v5 .. v10}, Lokio/Options$Companion;->WatchlistExpiryDialogView(Landroidx/compose/ui/Modifier;Ljava/util/List;Lorg/wikipedia/watchlist/WatchlistExpiry;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-object v1

    .line 93
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 94
    .line 95
    check-cast p2, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    and-int/lit8 v0, p2, 0x3

    .line 102
    .line 103
    if-eq v0, v3, :cond_4

    .line 104
    .line 105
    move v2, v4

    .line 106
    :cond_4
    and-int/2addr p2, v4

    .line 107
    invoke-virtual {p1, p2, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-eqz p2, :cond_5

    .line 112
    .line 113
    new-instance p2, Lorg/wikipedia/watchlist/WatchlistExpiryDialog$$ExternalSyntheticLambda0;

    .line 114
    .line 115
    invoke-direct {p2, p0, v4}, Lorg/wikipedia/watchlist/WatchlistExpiryDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/watchlist/WatchlistExpiryDialog;I)V

    .line 116
    .line 117
    .line 118
    const p0, -0x653318a8

    .line 119
    .line 120
    .line 121
    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    const/16 p2, 0x30

    .line 126
    .line 127
    const/4 v0, 0x0

    .line 128
    invoke-static {v0, p0, p1, p2, v4}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 133
    .line 134
    .line 135
    :goto_1
    return-object v1

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

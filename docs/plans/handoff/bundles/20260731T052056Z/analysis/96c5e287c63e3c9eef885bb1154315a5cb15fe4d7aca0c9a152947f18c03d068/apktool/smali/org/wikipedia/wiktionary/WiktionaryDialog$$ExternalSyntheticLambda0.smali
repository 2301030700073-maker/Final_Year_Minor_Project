.class public final synthetic Lorg/wikipedia/wiktionary/WiktionaryDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/wiktionary/WiktionaryDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/wiktionary/WiktionaryDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/wiktionary/WiktionaryDialog;

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
    .locals 5

    .line 1
    iget v0, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object p0, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/wiktionary/WiktionaryDialog;

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    sget-object v0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->enabledLanguages:Ljava/util/List;

    .line 22
    .line 23
    and-int/lit8 v0, p2, 0x3

    .line 24
    .line 25
    if-eq v0, v2, :cond_0

    .line 26
    .line 27
    move v0, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v4

    .line 30
    :goto_0
    and-int/2addr p2, v3

    .line 31
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    iget-object p2, p0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 38
    .line 39
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Lorg/wikipedia/wiktionary/WiktionaryViewModel;

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

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
    new-instance v2, Lorg/wikipedia/wiktionary/WiktionaryDialog$$ExternalSyntheticLambda2;

    .line 60
    .line 61
    invoke-direct {v2, v4, p0}, Lorg/wikipedia/wiktionary/WiktionaryDialog$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 68
    .line 69
    invoke-static {p2, v2, p1, v4}, Lorg/jsoup/Jsoup;->WiktionaryDialogScreen(Lorg/wikipedia/wiktionary/WiktionaryViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;I)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 74
    .line 75
    .line 76
    :goto_1
    return-object v1

    .line 77
    :pswitch_0
    sget-object v0, Lorg/wikipedia/wiktionary/WiktionaryDialog;->enabledLanguages:Ljava/util/List;

    .line 78
    .line 79
    and-int/lit8 v0, p2, 0x3

    .line 80
    .line 81
    if-eq v0, v2, :cond_4

    .line 82
    .line 83
    move v4, v3

    .line 84
    :cond_4
    and-int/2addr p2, v3

    .line 85
    invoke-virtual {p1, p2, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_5

    .line 90
    .line 91
    new-instance p2, Lorg/wikipedia/wiktionary/WiktionaryDialog$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    invoke-direct {p2, p0, v3}, Lorg/wikipedia/wiktionary/WiktionaryDialog$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/wiktionary/WiktionaryDialog;I)V

    .line 94
    .line 95
    .line 96
    const p0, 0x1185d7a6

    .line 97
    .line 98
    .line 99
    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const/16 p2, 0x30

    .line 104
    .line 105
    const/4 v0, 0x0

    .line 106
    invoke-static {v0, p0, p1, p2, v3}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 111
    .line 112
    .line 113
    :goto_2
    return-object v1

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

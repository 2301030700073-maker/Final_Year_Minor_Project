.class public final synthetic Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/settings/LicenseActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/settings/LicenseActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/settings/LicenseActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object v10, p1

    .line 12
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    check-cast p2, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    sget p2, Lorg/wikipedia/settings/LicenseActivity;->$r8$clinit:I

    .line 21
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
    invoke-virtual {v10, p1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    .line 35
    .line 36
    iget-object v5, p0, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/settings/LicenseActivity;

    .line 37
    .line 38
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 49
    .line 50
    if-ne p2, p1, :cond_2

    .line 51
    .line 52
    :cond_1
    new-instance p2, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 53
    .line 54
    const/16 p1, 0x19

    .line 55
    .line 56
    invoke-direct {p2, p1, v5}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v10, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    move-object v9, p2

    .line 63
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 64
    .line 65
    const/4 v11, 0x6

    .line 66
    iget-object v7, p0, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v8, p0, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual/range {v5 .. v11}, Lorg/wikipedia/settings/LicenseActivity;->LicenseScreen(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-object v1

    .line 78
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 79
    .line 80
    check-cast p2, Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    sget v0, Lorg/wikipedia/settings/LicenseActivity;->$r8$clinit:I

    .line 87
    .line 88
    and-int/lit8 v0, p2, 0x3

    .line 89
    .line 90
    if-eq v0, v3, :cond_4

    .line 91
    .line 92
    move v2, v4

    .line 93
    :cond_4
    and-int/2addr p2, v4

    .line 94
    invoke-virtual {p1, p2, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_5

    .line 99
    .line 100
    new-instance p2, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda0;

    .line 101
    .line 102
    iget-object v0, p0, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/settings/LicenseActivity;

    .line 103
    .line 104
    iget-object v2, p0, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 105
    .line 106
    iget-object p0, p0, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 107
    .line 108
    invoke-direct {p2, v0, v2, p0, v4}, Lorg/wikipedia/settings/LicenseActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/settings/LicenseActivity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    const p0, 0x7cfeb856

    .line 112
    .line 113
    .line 114
    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    const/16 p2, 0x30

    .line 119
    .line 120
    const/4 v0, 0x0

    .line 121
    invoke-static {v0, p0, p1, p2, v4}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 126
    .line 127
    .line 128
    :goto_1
    return-object v1

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

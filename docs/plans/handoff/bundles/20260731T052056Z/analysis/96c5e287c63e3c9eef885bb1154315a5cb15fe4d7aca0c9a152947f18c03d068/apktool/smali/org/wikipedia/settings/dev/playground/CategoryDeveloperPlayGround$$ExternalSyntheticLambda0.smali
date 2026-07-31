.class public final synthetic Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;

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
    .locals 12

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    check-cast p2, Ljava/lang/String;

    .line 15
    .line 16
    sget v0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;->$r8$clinit:I

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    :goto_0
    move v3, v4

    .line 38
    :cond_1
    iget-object v10, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;

    .line 39
    .line 40
    invoke-virtual {v10, v3}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;->validateInput(Z)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {v10}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;->getViewModel()Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    invoke-static {}, Lj$/time/Year;->now()Lj$/time/Year;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lj$/time/Year;->getValue()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-ne p0, p1, :cond_3

    .line 68
    .line 69
    add-int/lit8 p0, p0, -0x1

    .line 70
    .line 71
    :cond_3
    move v9, p0

    .line 72
    invoke-static {v8}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 77
    .line 78
    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 79
    .line 80
    new-instance v6, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;

    .line 81
    .line 82
    const/4 v11, 0x0

    .line 83
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel$addTestDataBulk$1;-><init>(ILorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;ILandroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p0, p1, v2, v6, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 87
    .line 88
    .line 89
    :goto_1
    return-object v5

    .line 90
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 91
    .line 92
    check-cast p2, Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    sget v0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;->$r8$clinit:I

    .line 99
    .line 100
    and-int/lit8 v0, p2, 0x3

    .line 101
    .line 102
    if-eq v0, v1, :cond_4

    .line 103
    .line 104
    move v3, v4

    .line 105
    :cond_4
    and-int/2addr p2, v4

    .line 106
    invoke-virtual {p1, p2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_5

    .line 111
    .line 112
    iget-object p0, p0, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;

    .line 113
    .line 114
    invoke-virtual {p0}, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGround;->getViewModel()Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    iget-object p2, p2, Lorg/wikipedia/settings/dev/playground/CategoryDeveloperPlayGroundViewModel;->categoryState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 119
    .line 120
    invoke-static {p2, p1}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/MutableState;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    new-instance v0, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;

    .line 125
    .line 126
    const/16 v1, 0x8

    .line 127
    .line 128
    invoke-direct {v0, v1, p2, p0}, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    const p0, -0x7457ccf1

    .line 132
    .line 133
    .line 134
    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    const/16 p2, 0x30

    .line 139
    .line 140
    invoke-static {v2, p0, p1, p2, v4}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 145
    .line 146
    .line 147
    :goto_2
    return-object v5

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

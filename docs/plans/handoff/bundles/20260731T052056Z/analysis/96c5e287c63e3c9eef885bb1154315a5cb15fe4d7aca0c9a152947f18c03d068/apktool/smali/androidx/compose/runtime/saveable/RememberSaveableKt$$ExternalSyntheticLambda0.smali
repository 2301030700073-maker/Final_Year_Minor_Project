.class public final synthetic Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/Object;

.field public final synthetic f$5:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p7, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p6, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda0;->f$5:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda0;->f$5:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v7, v0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/compose/runtime/saveable/RememberSaveableKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v0, Landroid/content/Context;

    .line 24
    .line 25
    check-cast v7, Ljava/util/Map;

    .line 26
    .line 27
    check-cast v6, Ljava/util/List;

    .line 28
    .line 29
    check-cast v5, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 30
    .line 31
    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .line 32
    .line 33
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 34
    .line 35
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    if-eqz v9, :cond_0

    .line 40
    .line 41
    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v11, v0

    .line 54
    check-cast v11, Ljava/lang/String;

    .line 55
    .line 56
    const/4 v15, 0x0

    .line 57
    const/16 v16, 0xf4

    .line 58
    .line 59
    const-string v10, "click"

    .line 60
    .line 61
    const/4 v12, 0x0

    .line 62
    const-string v13, "next_button"

    .line 63
    .line 64
    const/4 v14, 0x0

    .line 65
    invoke-static/range {v9 .. v16}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 66
    .line 67
    .line 68
    :cond_0
    new-instance v0, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 69
    .line 70
    const/16 v1, 0xc

    .line 71
    .line 72
    invoke-direct {v0, v5, v3, v8, v1}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 73
    .line 74
    .line 75
    const/4 v1, 0x3

    .line 76
    invoke-static {v4, v8, v8, v0, v1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 77
    .line 78
    .line 79
    return-object v2

    .line 80
    :pswitch_0
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 81
    .line 82
    check-cast v7, Landroidx/compose/runtime/saveable/Saver;

    .line 83
    .line 84
    check-cast v6, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 85
    .line 86
    check-cast v5, Ljava/lang/String;

    .line 87
    .line 88
    check-cast v3, [Ljava/lang/Object;

    .line 89
    .line 90
    iget-object v1, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 91
    .line 92
    const/4 v9, 0x1

    .line 93
    if-eq v1, v6, :cond_1

    .line 94
    .line 95
    iput-object v6, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 96
    .line 97
    move v1, v9

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v1, 0x0

    .line 100
    :goto_0
    iget-object v6, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->key:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-nez v6, :cond_2

    .line 107
    .line 108
    iput-object v5, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->key:Ljava/lang/String;

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    move v9, v1

    .line 112
    :goto_1
    iput-object v7, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->saver:Landroidx/compose/runtime/saveable/Saver;

    .line 113
    .line 114
    iput-object v4, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->value:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object v3, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->inputs:[Ljava/lang/Object;

    .line 117
    .line 118
    iget-object v1, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 119
    .line 120
    if-eqz v1, :cond_3

    .line 121
    .line 122
    if-eqz v9, :cond_3

    .line 123
    .line 124
    check-cast v1, Lcom/caverock/androidsvg/SVG;

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->unregister()V

    .line 127
    .line 128
    .line 129
    iput-object v8, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 130
    .line 131
    invoke-virtual {v0}, Landroidx/compose/runtime/saveable/SaveableHolder;->register$1()V

    .line 132
    .line 133
    .line 134
    :cond_3
    return-object v2

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

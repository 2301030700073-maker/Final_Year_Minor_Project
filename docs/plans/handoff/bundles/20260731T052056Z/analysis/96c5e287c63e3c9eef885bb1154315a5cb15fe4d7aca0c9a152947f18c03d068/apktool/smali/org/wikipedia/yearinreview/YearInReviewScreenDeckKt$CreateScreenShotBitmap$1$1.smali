.class public final Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field public final synthetic $onBitmapReady:Lkotlin/jvm/functions/Function1;

.field public final synthetic $r8$classId:I

.field public label:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->$graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->$onBitmapReady:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget p1, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;

    .line 7
    .line 8
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->$onBitmapReady:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iget-object p0, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->$graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 12
    .line 13
    invoke-direct {p1, p0, v0, p2, v1}, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;-><init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;

    .line 18
    .line 19
    iget-object v0, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->$onBitmapReady:Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iget-object p0, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->$graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 23
    .line 24
    invoke-direct {p1, p0, v0, p2, v1}, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;-><init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->$onBitmapReady:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->$graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    iget v7, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->label:I

    .line 19
    .line 20
    if-eqz v7, :cond_1

    .line 21
    .line 22
    if-ne v7, v6, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v1, v4

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput v6, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->label:I

    .line 37
    .line 38
    invoke-virtual {v3, p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->toImageBitmap(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-ne p1, v0, :cond_2

    .line 43
    .line 44
    move-object v1, v0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    check-cast p1, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 47
    .line 48
    invoke-static {p1}, Landroidx/compose/ui/graphics/Api26Bitmap;->asAndroidBitmap(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroid/graphics/Bitmap;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :goto_1
    return-object v1

    .line 56
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 57
    .line 58
    iget v7, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->label:I

    .line 59
    .line 60
    if-eqz v7, :cond_4

    .line 61
    .line 62
    if-ne v7, v6, :cond_3

    .line 63
    .line 64
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    move-object v1, v4

    .line 72
    goto :goto_3

    .line 73
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iput v6, p0, Lorg/wikipedia/yearinreview/YearInReviewScreenDeckKt$CreateScreenShotBitmap$1$1;->label:I

    .line 77
    .line 78
    invoke-virtual {v3, p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->toImageBitmap(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-ne p1, v0, :cond_5

    .line 83
    .line 84
    move-object v1, v0

    .line 85
    goto :goto_3

    .line 86
    :cond_5
    :goto_2
    check-cast p1, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 87
    .line 88
    invoke-static {p1}, Landroidx/compose/ui/graphics/Api26Bitmap;->asAndroidBitmap(Landroidx/compose/ui/graphics/AndroidImageBitmap;)Landroid/graphics/Bitmap;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    :goto_3
    return-object v1

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

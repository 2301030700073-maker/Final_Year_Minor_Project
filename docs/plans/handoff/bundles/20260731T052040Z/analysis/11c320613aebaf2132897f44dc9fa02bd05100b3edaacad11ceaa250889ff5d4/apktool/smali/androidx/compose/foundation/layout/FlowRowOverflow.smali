.class public final Landroidx/compose/foundation/layout/FlowRowOverflow;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/foundation/layout/Arrangement$Vertical;
.implements Landroidx/compose/foundation/layout/Arrangement$Horizontal;


# static fields
.field public static final Clip:Landroidx/compose/foundation/layout/FlowRowOverflow;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/FlowRowOverflow;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/layout/FlowRowOverflow;->Clip:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/layout/FlowRowOverflow;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final access$systemInsets(ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    new-instance v0, Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;-><init>(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final access$valueInsetsIgnoringVisibility(ILjava/lang/String;)Landroidx/compose/foundation/layout/ValueInsets;
    .locals 2

    .line 1
    sget-object p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    new-instance p0, Landroidx/compose/foundation/layout/ValueInsets;

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/foundation/layout/InsetsValues;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/compose/foundation/layout/InsetsValues;-><init>(IIII)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/layout/ValueInsets;-><init>(Landroidx/compose/foundation/layout/InsetsValues;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public static current(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    new-instance v2, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Landroidx/compose/foundation/layout/WindowInsetsHolder;-><init>(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    check-cast v2, Landroidx/compose/foundation/layout/WindowInsetsHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    monitor-exit v1

    .line 34
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    or-int/2addr v1, v3

    .line 43
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 50
    .line 51
    if-ne v3, v1, :cond_2

    .line 52
    .line 53
    :cond_1
    new-instance v3, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;

    .line 54
    .line 55
    const/16 v1, 0xf

    .line 56
    .line 57
    invoke-direct {v3, v2, v0, v1}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 64
    .line 65
    invoke-static {v2, v3, p0}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 66
    .line 67
    .line 68
    return-object v2

    .line 69
    :goto_1
    monitor-exit v1

    .line 70
    throw p0
.end method


# virtual methods
.method public arrange(ILandroidx/compose/ui/layout/MeasureScope;[I[I)V
    .locals 3

    iget p0, p0, Landroidx/compose/foundation/layout/FlowRowOverflow;->$r8$classId:I

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 105
    array-length p0, p3

    move p1, p2

    move v0, p1

    :goto_0
    if-ge p2, p0, :cond_0

    aget v1, p3, p2

    add-int/lit8 v2, p1, 0x1

    .line 106
    aput v0, p4, p1

    add-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    move p1, v2

    goto :goto_0

    :cond_0
    return-void

    .line 107
    :pswitch_0
    invoke-static {p1, p3, p4, p2}, Landroidx/compose/foundation/layout/SpacerKt;->placeCenter$foundation_layout(I[I[IZ)V

    return-void

    .line 108
    :pswitch_1
    array-length p0, p3

    move v0, p2

    move v1, v0

    :goto_1
    if-ge v0, p0, :cond_1

    aget v2, p3, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v1

    .line 109
    array-length p0, p3

    move v0, p2

    :goto_2
    if-ge p2, p0, :cond_2

    aget v1, p3, p2

    add-int/lit8 v2, v0, 0x1

    .line 110
    aput p1, p4, v0

    add-int/2addr p1, v1

    add-int/lit8 p2, p2, 0x1

    move v0, v2

    goto :goto_2

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public arrange(Landroidx/compose/ui/layout/MeasureScope;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V
    .locals 3

    .line 1
    iget p0, p0, Landroidx/compose/foundation/layout/FlowRowOverflow;->$r8$classId:I

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    if-ne p4, v0, :cond_0

    .line 12
    .line 13
    array-length p0, p3

    .line 14
    move p1, v1

    .line 15
    move p2, p1

    .line 16
    :goto_0
    if-ge v1, p0, :cond_2

    .line 17
    .line 18
    aget p4, p3, v1

    .line 19
    .line 20
    add-int/lit8 v0, p1, 0x1

    .line 21
    .line 22
    aput p2, p5, p1

    .line 23
    .line 24
    add-int/2addr p2, p4

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    move p1, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    array-length p0, p3

    .line 30
    move p4, v1

    .line 31
    :goto_1
    if-ge v1, p0, :cond_1

    .line 32
    .line 33
    aget v0, p3, v1

    .line 34
    .line 35
    add-int/2addr p4, v0

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    sub-int/2addr p2, p4

    .line 40
    array-length p0, p3

    .line 41
    sub-int/2addr p0, v2

    .line 42
    :goto_2
    if-ge p1, p0, :cond_2

    .line 43
    .line 44
    aget p4, p3, p0

    .line 45
    .line 46
    aput p2, p5, p0

    .line 47
    .line 48
    add-int/2addr p2, p4

    .line 49
    add-int/lit8 p0, p0, -0x1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    return-void

    .line 53
    :pswitch_0
    if-ne p4, v0, :cond_4

    .line 54
    .line 55
    array-length p0, p3

    .line 56
    move p1, v1

    .line 57
    move p4, p1

    .line 58
    :goto_3
    if-ge p1, p0, :cond_3

    .line 59
    .line 60
    aget v0, p3, p1

    .line 61
    .line 62
    add-int/2addr p4, v0

    .line 63
    add-int/lit8 p1, p1, 0x1

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    sub-int/2addr p2, p4

    .line 67
    array-length p0, p3

    .line 68
    move p1, v1

    .line 69
    :goto_4
    if-ge v1, p0, :cond_5

    .line 70
    .line 71
    aget p4, p3, v1

    .line 72
    .line 73
    add-int/lit8 v0, p1, 0x1

    .line 74
    .line 75
    aput p2, p5, p1

    .line 76
    .line 77
    add-int/2addr p2, p4

    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    move p1, v0

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    array-length p0, p3

    .line 83
    sub-int/2addr p0, v2

    .line 84
    :goto_5
    if-ge p1, p0, :cond_5

    .line 85
    .line 86
    aget p2, p3, p0

    .line 87
    .line 88
    aput v1, p5, p0

    .line 89
    .line 90
    add-int/2addr v1, p2

    .line 91
    add-int/lit8 p0, p0, -0x1

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_5
    return-void

    .line 95
    :pswitch_1
    if-ne p4, v0, :cond_6

    .line 96
    .line 97
    invoke-static {p2, p3, p5, v1}, Landroidx/compose/foundation/layout/SpacerKt;->placeCenter$foundation_layout(I[I[IZ)V

    .line 98
    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_6
    invoke-static {p2, p3, p5, v2}, Landroidx/compose/foundation/layout/SpacerKt;->placeCenter$foundation_layout(I[I[IZ)V

    .line 102
    .line 103
    .line 104
    :goto_6
    return-void

    .line 105
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSpacing-D9Ej5fM()F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/foundation/layout/FlowRowOverflow;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :pswitch_1
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :pswitch_2
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :pswitch_3
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/FlowRowOverflow;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    const-string p0, "Arrangement#Top"

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_1
    const-string p0, "Arrangement#Start"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_2
    const-string p0, "Arrangement#End"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_3
    const-string p0, "Arrangement#Center"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_4
    const-string p0, "Arrangement#Bottom"

    .line 24
    .line 25
    return-object p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

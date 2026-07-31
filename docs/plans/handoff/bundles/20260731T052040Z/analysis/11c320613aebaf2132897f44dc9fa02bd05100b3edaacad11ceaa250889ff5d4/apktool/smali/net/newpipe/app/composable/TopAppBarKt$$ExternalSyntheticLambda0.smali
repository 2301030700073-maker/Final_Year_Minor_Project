.class public final synthetic Lnet/newpipe/app/composable/TopAppBarKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/ui/graphics/painter/Painter;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/newpipe/app/composable/TopAppBarKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/newpipe/app/composable/TopAppBarKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/graphics/painter/Painter;

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
    .locals 10

    .line 1
    iget v0, p0, Lnet/newpipe/app/composable/TopAppBarKt$$ExternalSyntheticLambda0;->$r8$classId:I

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
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 9
    .line 10
    check-cast p2, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    and-int/lit8 v0, p2, 0x3

    .line 20
    .line 21
    if-eq v0, v3, :cond_0

    .line 22
    .line 23
    move v2, v4

    .line 24
    :cond_0
    and-int/2addr p2, v4

    .line 25
    move-object v8, p1

    .line 26
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    invoke-virtual {v8, p2, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const-wide/16 v6, 0x0

    .line 35
    .line 36
    const/16 v9, 0x38

    .line 37
    .line 38
    iget-object v3, p0, Lnet/newpipe/app/composable/TopAppBarKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/graphics/painter/Painter;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-static/range {v3 .. v9}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-object v1

    .line 50
    :pswitch_0
    and-int/lit8 v0, p2, 0x3

    .line 51
    .line 52
    if-eq v0, v3, :cond_2

    .line 53
    .line 54
    move v2, v4

    .line 55
    :cond_2
    and-int/2addr p2, v4

    .line 56
    move-object v8, p1

    .line 57
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 58
    .line 59
    invoke-virtual {v8, p2, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    sget-object p1, Lnewpipe/shared/generated/resources/String0_commonMainKt;->navigate_back$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 66
    .line 67
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lorg/jetbrains/compose/resources/StringResource;

    .line 72
    .line 73
    invoke-static {p1, v8}, Lorg/jetbrains/compose/resources/StringResourcesKt;->stringResource(Lorg/jetbrains/compose/resources/StringResource;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    const-wide/16 v6, 0x0

    .line 78
    .line 79
    const/16 v9, 0x8

    .line 80
    .line 81
    iget-object v3, p0, Lnet/newpipe/app/composable/TopAppBarKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/graphics/painter/Painter;

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    invoke-static/range {v3 .. v9}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;I)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 89
    .line 90
    .line 91
    :goto_1
    return-object v1

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

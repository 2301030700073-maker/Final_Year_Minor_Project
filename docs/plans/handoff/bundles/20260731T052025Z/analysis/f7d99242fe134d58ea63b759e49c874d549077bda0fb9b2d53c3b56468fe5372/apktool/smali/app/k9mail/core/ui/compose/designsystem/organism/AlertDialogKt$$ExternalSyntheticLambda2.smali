.class public final synthetic Lapp/k9mail/core/ui/compose/designsystem/organism/AlertDialogKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/vector/ImageVector;I)V
    .locals 0

    .line 1
    iput p2, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/AlertDialogKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/AlertDialogKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/ui/graphics/vector/ImageVector;

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
    iget v0, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/AlertDialogKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

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
    if-eq v0, v2, :cond_0

    .line 22
    .line 23
    move v0, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v3

    .line 26
    :goto_0
    and-int/2addr p2, v4

    .line 27
    move-object v7, p1

    .line 28
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 29
    .line 30
    invoke-virtual {v7, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object v4, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/AlertDialogKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 37
    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    const p0, 0x134e297c

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    const p0, 0x134e297d

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 54
    .line 55
    .line 56
    const/4 v8, 0x0

    .line 57
    const/16 v9, 0xe

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    const/4 v6, 0x0

    .line 61
    invoke-static/range {v4 .. v9}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 66
    .line 67
    .line 68
    :goto_2
    return-object v1

    .line 69
    :pswitch_0
    and-int/lit8 v0, p2, 0x3

    .line 70
    .line 71
    if-eq v0, v2, :cond_3

    .line 72
    .line 73
    move v3, v4

    .line 74
    :cond_3
    and-int/2addr p2, v4

    .line 75
    move-object v7, p1

    .line 76
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 77
    .line 78
    invoke-virtual {v7, p2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    const/4 v8, 0x0

    .line 85
    const/16 v9, 0xe

    .line 86
    .line 87
    iget-object v4, p0, Lapp/k9mail/core/ui/compose/designsystem/organism/AlertDialogKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    const/4 v6, 0x0

    .line 91
    invoke-static/range {v4 .. v9}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 96
    .line 97
    .line 98
    :goto_3
    return-object v1

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

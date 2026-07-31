.class public final Landroidx/compose/material3/AlertDialogKt$AlertDialogImpl$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $confirmButton:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $dismissButton:Lkotlin/jvm/functions/Function2;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/compose/material3/AlertDialogKt$AlertDialogImpl$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/material3/AlertDialogKt$AlertDialogImpl$1$1;->$dismissButton:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/material3/AlertDialogKt$AlertDialogImpl$1$1;->$confirmButton:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Landroidx/compose/material3/AlertDialogKt$AlertDialogImpl$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/material3/AlertDialogKt$AlertDialogImpl$1$1;->$confirmButton:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/material3/AlertDialogKt$AlertDialogImpl$1$1;->$dismissButton:Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 16
    .line 17
    check-cast p2, Ljava/lang/Number;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    and-int/lit8 v6, p2, 0x3

    .line 28
    .line 29
    if-eq v6, v3, :cond_0

    .line 30
    .line 31
    move v3, v5

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v3, v4

    .line 34
    :goto_0
    and-int/2addr p2, v5

    .line 35
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 36
    .line 37
    invoke-virtual {p1, p2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    const p0, -0x41afc885

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    const p2, 0x2f6df146

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :goto_2
    invoke-virtual {v2, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 70
    .line 71
    .line 72
    :goto_3
    return-object v1

    .line 73
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 74
    .line 75
    check-cast p2, Ljava/lang/Number;

    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    and-int/lit8 v0, p2, 0x3

    .line 82
    .line 83
    if-eq v0, v3, :cond_3

    .line 84
    .line 85
    move v4, v5

    .line 86
    :cond_3
    and-int/2addr p2, v5

    .line 87
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 88
    .line 89
    invoke-virtual {p1, p2, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-eqz p2, :cond_4

    .line 94
    .line 95
    sget-object p2, Landroidx/compose/material3/AlertDialogKt;->DialogPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 96
    .line 97
    new-instance p2, Landroidx/compose/material3/AlertDialogKt$AlertDialogImpl$1$1;

    .line 98
    .line 99
    invoke-direct {p2, p0, v2, v5}, Landroidx/compose/material3/AlertDialogKt$AlertDialogImpl$1$1;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 100
    .line 101
    .line 102
    const p0, -0x1b6383e2

    .line 103
    .line 104
    .line 105
    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    const/16 p2, 0x1b6

    .line 110
    .line 111
    invoke-static {p0, p1, p2}, Landroidx/compose/material3/AlertDialogKt;->AlertDialogFlowRow-ixp7dh8(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 112
    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 116
    .line 117
    .line 118
    :goto_4
    return-object v1

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

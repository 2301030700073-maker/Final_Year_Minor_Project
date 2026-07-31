.class public final synthetic Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    const/4 p5, 0x1

    .line 2
    iput p5, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    iput p3, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->f$4:I

    .line 12
    .line 13
    iput-object p4, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    iput p4, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->f$4:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    .line 17
    iput p5, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Object;

    iput p4, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->f$4:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->f$4:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    iget-object v6, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v6, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 18
    .line 19
    check-cast v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 20
    .line 21
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 22
    .line 23
    check-cast p2, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    or-int/lit8 p0, v1, 0x1

    .line 29
    .line 30
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-virtual {v6, v3, v2, p1, p0}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->SaveableStateProvider(Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 35
    .line 36
    .line 37
    return-object v4

    .line 38
    :pswitch_0
    check-cast v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 39
    .line 40
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 41
    .line 42
    check-cast p2, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    or-int/2addr p0, v5

    .line 52
    invoke-virtual {v2, v6, v3, p1, p0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    return-object v4

    .line 56
    :pswitch_1
    check-cast v6, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 57
    .line 58
    check-cast v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 59
    .line 60
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 61
    .line 62
    check-cast p2, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    or-int/lit8 p0, v1, 0x1

    .line 68
    .line 69
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    invoke-virtual {v6, v3, v2, p1, p0}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;->SaveableStateProvider(Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 74
    .line 75
    .line 76
    return-object v4

    .line 77
    :pswitch_2
    move-object v7, v6

    .line 78
    check-cast v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 79
    .line 80
    move-object v11, p1

    .line 81
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 82
    .line 83
    check-cast p2, Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    iget-object v8, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    .line 93
    .line 94
    iget v9, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->f$4:I

    .line 95
    .line 96
    iget-object v10, p0, Landroidx/compose/material3/AlertDialogKt$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Object;

    .line 97
    .line 98
    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->SkippableItem-JVlU9Rs(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 99
    .line 100
    .line 101
    return-object v4

    .line 102
    :pswitch_3
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 103
    .line 104
    check-cast v3, Landroidx/compose/ui/window/DialogProperties;

    .line 105
    .line 106
    check-cast v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 107
    .line 108
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 109
    .line 110
    check-cast p2, Ljava/lang/Integer;

    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    or-int/lit8 p0, v1, 0x1

    .line 116
    .line 117
    invoke-static {p0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    invoke-static {v6, v3, v2, p1, p0}, Landroidx/compose/material3/AlertDialogKt;->BasicAlertDialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 122
    .line 123
    .line 124
    return-object v4

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

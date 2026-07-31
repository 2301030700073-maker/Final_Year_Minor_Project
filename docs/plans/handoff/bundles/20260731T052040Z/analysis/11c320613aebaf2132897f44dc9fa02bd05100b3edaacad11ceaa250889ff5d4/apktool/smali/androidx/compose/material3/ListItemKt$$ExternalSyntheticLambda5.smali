.class public final synthetic Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/Object;

.field public final synthetic f$6:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p7, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda5;->f$4:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda5;->f$6:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda5;->f$6:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda5;->f$4:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object v7, v0

    .line 21
    check-cast v7, Landroidx/compose/foundation/interaction/InteractionSource;

    .line 22
    .line 23
    move-object v8, v6

    .line 24
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 25
    .line 26
    move-object v9, v5

    .line 27
    check-cast v9, Landroidx/compose/runtime/MutableState;

    .line 28
    .line 29
    move-object v10, v4

    .line 30
    check-cast v10, Landroidx/compose/runtime/MutableState;

    .line 31
    .line 32
    move-object v11, v3

    .line 33
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 34
    .line 35
    move-object/from16 v12, p1

    .line 36
    .line 37
    check-cast v12, Landroidx/compose/runtime/Composer;

    .line 38
    .line 39
    move-object/from16 v0, p2

    .line 40
    .line 41
    check-cast v0, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const/16 v0, 0x6db1

    .line 47
    .line 48
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 49
    .line 50
    .line 51
    move-result v13

    .line 52
    invoke-static/range {v7 .. v13}, Landroidx/compose/material3/ListItemKt;->CollectInteractionsAsState(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V

    .line 53
    .line 54
    .line 55
    return-object v2

    .line 56
    :pswitch_0
    move-object v14, v0

    .line 57
    check-cast v14, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 58
    .line 59
    move-object v15, v6

    .line 60
    check-cast v15, Landroidx/compose/ui/Modifier;

    .line 61
    .line 62
    move-object/from16 v16, v5

    .line 63
    .line 64
    check-cast v16, Lkotlin/jvm/functions/Function2;

    .line 65
    .line 66
    move-object/from16 v17, v4

    .line 67
    .line 68
    check-cast v17, Lkotlin/jvm/functions/Function2;

    .line 69
    .line 70
    move-object/from16 v18, v3

    .line 71
    .line 72
    check-cast v18, Landroidx/compose/material3/ListItemColors;

    .line 73
    .line 74
    move-object/from16 v19, p1

    .line 75
    .line 76
    check-cast v19, Landroidx/compose/runtime/Composer;

    .line 77
    .line 78
    move-object/from16 v0, p2

    .line 79
    .line 80
    check-cast v0, Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x7

    .line 86
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 87
    .line 88
    .line 89
    move-result v20

    .line 90
    invoke-static/range {v14 .. v20}, Landroidx/compose/material3/ListItemKt;->ListItem-HXNGIdc(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ListItemColors;Landroidx/compose/runtime/Composer;I)V

    .line 91
    .line 92
    .line 93
    return-object v2

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

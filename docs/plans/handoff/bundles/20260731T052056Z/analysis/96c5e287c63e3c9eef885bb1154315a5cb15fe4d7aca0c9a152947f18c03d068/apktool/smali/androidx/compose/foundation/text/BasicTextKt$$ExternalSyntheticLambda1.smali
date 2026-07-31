.class public final synthetic Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/CharSequence;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$2:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$4:I

.field public final synthetic f$5:Z

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$9:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/lang/Object;III)V
    .locals 0

    .line 1
    iput p12, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/text/TextStyle;

    .line 8
    .line 9
    iput-object p4, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iput p5, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$4:I

    .line 12
    .line 13
    iput-boolean p6, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$5:Z

    .line 14
    .line 15
    iput p7, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$6:I

    .line 16
    .line 17
    iput p8, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$7:I

    .line 18
    .line 19
    iput-object p9, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$9:Ljava/lang/Object;

    .line 20
    .line 21
    iput p10, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$10:I

    .line 22
    .line 23
    iput p11, p0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$11:I

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$10:I

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$9:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/CharSequence;

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object v6, v5

    .line 17
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString;

    .line 18
    .line 19
    move-object v14, v4

    .line 20
    check-cast v14, Ljava/util/Map;

    .line 21
    .line 22
    move-object/from16 v15, p1

    .line 23
    .line 24
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    move-object/from16 v1, p2

    .line 27
    .line 28
    check-cast v1, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    or-int/lit8 v1, v3, 0x1

    .line 34
    .line 35
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 36
    .line 37
    .line 38
    move-result v16

    .line 39
    iget v1, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$11:I

    .line 40
    .line 41
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 42
    .line 43
    .line 44
    move-result v17

    .line 45
    iget-object v7, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 46
    .line 47
    iget-object v8, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/text/TextStyle;

    .line 48
    .line 49
    iget-object v9, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function1;

    .line 50
    .line 51
    iget v10, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$4:I

    .line 52
    .line 53
    iget-boolean v11, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$5:Z

    .line 54
    .line 55
    iget v12, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$6:I

    .line 56
    .line 57
    iget v13, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$7:I

    .line 58
    .line 59
    invoke-static/range {v6 .. v17}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-CL7eQgs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/runtime/GapComposer;II)V

    .line 60
    .line 61
    .line 62
    return-object v2

    .line 63
    :pswitch_0
    move-object/from16 v18, v5

    .line 64
    .line 65
    check-cast v18, Ljava/lang/String;

    .line 66
    .line 67
    move-object/from16 v26, v4

    .line 68
    .line 69
    check-cast v26, Landroidx/compose/foundation/text/AutoSizeStepBased;

    .line 70
    .line 71
    move-object/from16 v27, p1

    .line 72
    .line 73
    check-cast v27, Landroidx/compose/runtime/GapComposer;

    .line 74
    .line 75
    move-object/from16 v1, p2

    .line 76
    .line 77
    check-cast v1, Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    or-int/lit8 v1, v3, 0x1

    .line 83
    .line 84
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 85
    .line 86
    .line 87
    move-result v28

    .line 88
    iget-object v1, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 89
    .line 90
    iget-object v3, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/text/TextStyle;

    .line 91
    .line 92
    iget-object v4, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$3:Lkotlin/jvm/functions/Function1;

    .line 93
    .line 94
    iget v5, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$4:I

    .line 95
    .line 96
    iget-boolean v6, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$5:Z

    .line 97
    .line 98
    iget v7, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$6:I

    .line 99
    .line 100
    iget v8, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$7:I

    .line 101
    .line 102
    iget v0, v0, Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda1;->f$11:I

    .line 103
    .line 104
    move/from16 v29, v0

    .line 105
    .line 106
    move-object/from16 v19, v1

    .line 107
    .line 108
    move-object/from16 v20, v3

    .line 109
    .line 110
    move-object/from16 v21, v4

    .line 111
    .line 112
    move/from16 v22, v5

    .line 113
    .line 114
    move/from16 v23, v6

    .line 115
    .line 116
    move/from16 v24, v7

    .line 117
    .line 118
    move/from16 v25, v8

    .line 119
    .line 120
    invoke-static/range {v18 .. v29}, Landroidx/compose/foundation/text/BasicTextKt;->BasicText-RWo7tUw(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/foundation/text/AutoSizeStepBased;Landroidx/compose/runtime/GapComposer;II)V

    .line 121
    .line 122
    .line 123
    return-object v2

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Landroidx/compose/ui/Modifier;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/Object;

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lorg/wikipedia/activitytab/ActivityTabModules;ZZII)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Object;

    .line 12
    .line 13
    iput-boolean p4, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$0:Z

    .line 14
    .line 15
    iput-boolean p5, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$3:Z

    .line 16
    .line 17
    iput p6, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$6:I

    .line 18
    .line 19
    iput p7, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$7:I

    .line 20
    .line 21
    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;II)V
    .locals 1

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p2, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$3:Z

    iput-object p5, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Object;

    iput p6, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$6:I

    iput p7, p0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$7:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$6:I

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object v7, v4

    .line 15
    check-cast v7, Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 16
    .line 17
    move-object/from16 v10, p1

    .line 18
    .line 19
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    move-object/from16 v1, p2

    .line 22
    .line 23
    check-cast v1, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    or-int/lit8 v1, v3, 0x1

    .line 29
    .line 30
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    iget-object v5, v0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 35
    .line 36
    iget-object v6, v0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    .line 37
    .line 38
    iget-boolean v8, v0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$0:Z

    .line 39
    .line 40
    iget-boolean v9, v0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$3:Z

    .line 41
    .line 42
    iget v12, v0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$7:I

    .line 43
    .line 44
    invoke-static/range {v5 .. v12}, Lorg/wikipedia/activitytab/ImpactModuleKt;->CustomizationScreen(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lorg/wikipedia/activitytab/ActivityTabModules;ZZLandroidx/compose/runtime/GapComposer;II)V

    .line 45
    .line 46
    .line 47
    return-object v2

    .line 48
    :pswitch_0
    move-object/from16 v17, v4

    .line 49
    .line 50
    check-cast v17, Landroidx/compose/material3/RadioButtonColors;

    .line 51
    .line 52
    move-object/from16 v18, p1

    .line 53
    .line 54
    check-cast v18, Landroidx/compose/runtime/GapComposer;

    .line 55
    .line 56
    move-object/from16 v1, p2

    .line 57
    .line 58
    check-cast v1, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    or-int/lit8 v1, v3, 0x1

    .line 64
    .line 65
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 66
    .line 67
    .line 68
    move-result v19

    .line 69
    iget-boolean v13, v0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$0:Z

    .line 70
    .line 71
    iget-object v14, v0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    .line 72
    .line 73
    iget-object v15, v0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 74
    .line 75
    iget-boolean v1, v0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$3:Z

    .line 76
    .line 77
    iget v0, v0, Landroidx/compose/material3/RadioButtonKt$$ExternalSyntheticLambda1;->f$7:I

    .line 78
    .line 79
    move/from16 v20, v0

    .line 80
    .line 81
    move/from16 v16, v1

    .line 82
    .line 83
    invoke-static/range {v13 .. v20}, Landroidx/compose/material3/CardKt;->RadioButton(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/RadioButtonColors;Landroidx/compose/runtime/GapComposer;II)V

    .line 84
    .line 85
    .line 86
    return-object v2

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

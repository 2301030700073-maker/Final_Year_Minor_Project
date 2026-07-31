.class public final synthetic Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/compose/ui/Modifier;

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;IJLjava/lang/String;Lkotlin/jvm/functions/Function0;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    iput p2, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$4:I

    .line 10
    .line 11
    iput-wide p3, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$3:J

    .line 12
    .line 13
    iput-object p5, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p6, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 16
    .line 17
    iput p7, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$5:I

    .line 18
    .line 19
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JII)V
    .locals 1

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    iput-wide p4, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$3:J

    iput p6, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$4:I

    iput p7, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$5:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object v9, v3

    .line 13
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    move-object/from16 v10, p1

    .line 16
    .line 17
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    move-object/from16 v1, p2

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget v1, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$5:I

    .line 27
    .line 28
    or-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    iget-object v4, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 35
    .line 36
    iget v5, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$4:I

    .line 37
    .line 38
    iget-wide v6, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$3:J

    .line 39
    .line 40
    iget-object v8, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static/range {v4 .. v11}, Lokio/Options$Companion;->OnThisDayGameCardSimple-T042LqI(Landroidx/compose/ui/Modifier;IJLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/GapComposer;I)V

    .line 43
    .line 44
    .line 45
    return-object v2

    .line 46
    :pswitch_0
    move-object v12, v3

    .line 47
    check-cast v12, Landroidx/compose/ui/graphics/painter/Painter;

    .line 48
    .line 49
    move-object/from16 v17, p1

    .line 50
    .line 51
    check-cast v17, Landroidx/compose/runtime/GapComposer;

    .line 52
    .line 53
    move-object/from16 v1, p2

    .line 54
    .line 55
    check-cast v1, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget v1, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$4:I

    .line 61
    .line 62
    or-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 65
    .line 66
    .line 67
    move-result v18

    .line 68
    iget-object v13, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v14, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$2:Landroidx/compose/ui/Modifier;

    .line 71
    .line 72
    iget-wide v3, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$3:J

    .line 73
    .line 74
    iget v0, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda1;->f$5:I

    .line 75
    .line 76
    move/from16 v19, v0

    .line 77
    .line 78
    move-wide v15, v3

    .line 79
    invoke-static/range {v12 .. v19}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;II)V

    .line 80
    .line 81
    .line 82
    return-object v2

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

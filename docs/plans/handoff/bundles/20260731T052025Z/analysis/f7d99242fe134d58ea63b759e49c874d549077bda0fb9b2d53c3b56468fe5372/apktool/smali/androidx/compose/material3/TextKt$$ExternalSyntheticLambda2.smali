.class public final synthetic Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/text/AnnotatedString;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$10:Landroidx/compose/ui/text/style/TextAlign;

.field public final synthetic f$11:J

.field public final synthetic f$12:I

.field public final synthetic f$13:Z

.field public final synthetic f$14:I

.field public final synthetic f$15:I

.field public final synthetic f$16:Ljava/util/Map;

.field public final synthetic f$17:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$18:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f$19:I

.field public final synthetic f$2:J

.field public final synthetic f$20:I

.field public final synthetic f$21:I

.field public final synthetic f$4:J

.field public final synthetic f$8:J


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/ui/text/AnnotatedString;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$2:J

    .line 9
    .line 10
    iput-wide p5, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$4:J

    .line 11
    .line 12
    iput-wide p7, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$8:J

    .line 13
    .line 14
    iput-object p9, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$10:Landroidx/compose/ui/text/style/TextAlign;

    .line 15
    .line 16
    iput-wide p10, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$11:J

    .line 17
    .line 18
    iput p12, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$12:I

    .line 19
    .line 20
    iput-boolean p13, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$13:Z

    .line 21
    .line 22
    iput p14, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$14:I

    .line 23
    .line 24
    iput p15, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$15:I

    .line 25
    .line 26
    move-object/from16 p1, p16

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$16:Ljava/util/Map;

    .line 29
    .line 30
    move-object/from16 p1, p17

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$17:Lkotlin/jvm/functions/Function1;

    .line 33
    .line 34
    move-object/from16 p1, p18

    .line 35
    .line 36
    iput-object p1, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$18:Landroidx/compose/ui/text/TextStyle;

    .line 37
    .line 38
    move/from16 p1, p19

    .line 39
    .line 40
    iput p1, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$19:I

    .line 41
    .line 42
    move/from16 p1, p20

    .line 43
    .line 44
    iput p1, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$20:I

    .line 45
    .line 46
    move/from16 p1, p21

    .line 47
    .line 48
    iput p1, p0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$21:I

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v18, p1

    .line 4
    .line 5
    check-cast v18, Landroidx/compose/runtime/Composer;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v1, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$19:I

    .line 15
    .line 16
    or-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 19
    .line 20
    .line 21
    move-result v19

    .line 22
    iget v1, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$20:I

    .line 23
    .line 24
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 25
    .line 26
    .line 27
    move-result v20

    .line 28
    iget-object v1, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/ui/text/AnnotatedString;

    .line 29
    .line 30
    move-object v2, v1

    .line 31
    iget-object v1, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/ui/Modifier;

    .line 32
    .line 33
    move-object v4, v2

    .line 34
    iget-wide v2, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$2:J

    .line 35
    .line 36
    move-object v6, v4

    .line 37
    iget-wide v4, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$4:J

    .line 38
    .line 39
    move-object v8, v6

    .line 40
    iget-wide v6, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$8:J

    .line 41
    .line 42
    move-object v9, v8

    .line 43
    iget-object v8, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$10:Landroidx/compose/ui/text/style/TextAlign;

    .line 44
    .line 45
    move-object v11, v9

    .line 46
    iget-wide v9, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$11:J

    .line 47
    .line 48
    move-object v12, v11

    .line 49
    iget v11, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$12:I

    .line 50
    .line 51
    move-object v13, v12

    .line 52
    iget-boolean v12, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$13:Z

    .line 53
    .line 54
    move-object v14, v13

    .line 55
    iget v13, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$14:I

    .line 56
    .line 57
    move-object v15, v14

    .line 58
    iget v14, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$15:I

    .line 59
    .line 60
    move-object/from16 v16, v15

    .line 61
    .line 62
    iget-object v15, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$16:Ljava/util/Map;

    .line 63
    .line 64
    move-object/from16 v17, v1

    .line 65
    .line 66
    iget-object v1, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$17:Lkotlin/jvm/functions/Function1;

    .line 67
    .line 68
    move-object/from16 v21, v1

    .line 69
    .line 70
    iget-object v1, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$18:Landroidx/compose/ui/text/TextStyle;

    .line 71
    .line 72
    iget v0, v0, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda2;->f$21:I

    .line 73
    .line 74
    move-object/from16 v22, v21

    .line 75
    .line 76
    move/from16 v21, v0

    .line 77
    .line 78
    move-object/from16 v0, v16

    .line 79
    .line 80
    move-object/from16 v16, v22

    .line 81
    .line 82
    move-object/from16 v22, v17

    .line 83
    .line 84
    move-object/from16 v17, v1

    .line 85
    .line 86
    move-object/from16 v1, v22

    .line 87
    .line 88
    invoke-static/range {v0 .. v21}, Landroidx/compose/material3/TextKt;->Text-Z58ophY(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 89
    .line 90
    .line 91
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 92
    .line 93
    return-object v0
.end method

.class public final synthetic Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/compose/ui/Modifier;

.field public final synthetic f$3:J

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JI)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->f$2:Landroidx/compose/ui/Modifier;

    .line 12
    .line 13
    iput-wide p4, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->f$3:J

    .line 14
    .line 15
    iput p6, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->f$4:I

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLnet/thunderbird/feature/account/avatar/Avatar;Landroidx/compose/ui/Modifier;I)V
    .locals 1

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-wide p2, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->f$3:J

    iput-object p4, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->f$2:Landroidx/compose/ui/Modifier;

    iput p6, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->f$4:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->f$4:I

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object v8, v4

    .line 15
    check-cast v8, Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 16
    .line 17
    move-object/from16 v10, p1

    .line 18
    .line 19
    check-cast v10, Landroidx/compose/runtime/Composer;

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
    iget-object v5, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 35
    .line 36
    iget-wide v6, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->f$3:J

    .line 37
    .line 38
    iget-object v9, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->f$2:Landroidx/compose/ui/Modifier;

    .line 39
    .line 40
    invoke-static/range {v5 .. v11}, Lkotlin/ranges/RangesKt;->GeneralSettingsProfileView-T042LqI(Ljava/lang/String;JLnet/thunderbird/feature/account/avatar/Avatar;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 41
    .line 42
    .line 43
    return-object v2

    .line 44
    :pswitch_0
    move-object v12, v4

    .line 45
    check-cast v12, Landroidx/compose/ui/graphics/painter/Painter;

    .line 46
    .line 47
    move-object/from16 v17, p1

    .line 48
    .line 49
    check-cast v17, Landroidx/compose/runtime/Composer;

    .line 50
    .line 51
    move-object/from16 v1, p2

    .line 52
    .line 53
    check-cast v1, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    or-int/lit8 v1, v3, 0x1

    .line 59
    .line 60
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 61
    .line 62
    .line 63
    move-result v18

    .line 64
    iget-object v13, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v14, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->f$2:Landroidx/compose/ui/Modifier;

    .line 67
    .line 68
    iget-wide v0, v0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda2;->f$3:J

    .line 69
    .line 70
    move-wide v15, v0

    .line 71
    invoke-static/range {v12 .. v18}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;I)V

    .line 72
    .line 73
    .line 74
    return-object v2

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

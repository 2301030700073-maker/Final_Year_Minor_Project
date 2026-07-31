.class public final synthetic Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:J

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(JLcom/skydoves/landscapist/StableHolder;Lcom/skydoves/landscapist/ImageOptions;Lcom/skydoves/landscapist/StableHolder;II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$3:J

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p5, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 14
    .line 15
    iput p6, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$4:I

    .line 16
    .line 17
    iput p7, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$5:I

    .line 18
    .line 19
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JII)V
    .locals 1

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-wide p4, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$3:J

    iput p6, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$4:I

    iput p7, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$5:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object v6, v3

    .line 13
    check-cast v6, Lcom/skydoves/landscapist/StableHolder;

    .line 14
    .line 15
    move-object v7, v2

    .line 16
    check-cast v7, Lcom/skydoves/landscapist/ImageOptions;

    .line 17
    .line 18
    move-object v8, v1

    .line 19
    check-cast v8, Lcom/skydoves/landscapist/StableHolder;

    .line 20
    .line 21
    move-object v11, p1

    .line 22
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 23
    .line 24
    move-object/from16 v0, p2

    .line 25
    .line 26
    check-cast v0, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v12

    .line 32
    iget-wide v4, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$3:J

    .line 33
    .line 34
    iget v9, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$4:I

    .line 35
    .line 36
    iget v10, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$5:I

    .line 37
    .line 38
    invoke-static/range {v4 .. v12}, Lcom/skydoves/landscapist/coil3/CoilImageKt;->$r8$lambda$q0TJxhtapn-xwrRN7hJLvRmLt6s(JLcom/skydoves/landscapist/StableHolder;Lcom/skydoves/landscapist/ImageOptions;Lcom/skydoves/landscapist/StableHolder;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_0
    move-object v0, v3

    .line 44
    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 45
    .line 46
    check-cast v2, Ljava/lang/String;

    .line 47
    .line 48
    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 49
    .line 50
    move-object v5, p1

    .line 51
    check-cast v5, Landroidx/compose/runtime/Composer;

    .line 52
    .line 53
    move-object/from16 v3, p2

    .line 54
    .line 55
    check-cast v3, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget v3, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$4:I

    .line 61
    .line 62
    or-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    iget-wide v3, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$3:J

    .line 69
    .line 70
    iget v7, p0, Landroidx/compose/material3/IconKt$$ExternalSyntheticLambda0;->f$5:I

    .line 71
    .line 72
    move-object v13, v2

    .line 73
    move-object v2, v1

    .line 74
    move-object v1, v13

    .line 75
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    .line 76
    .line 77
    .line 78
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

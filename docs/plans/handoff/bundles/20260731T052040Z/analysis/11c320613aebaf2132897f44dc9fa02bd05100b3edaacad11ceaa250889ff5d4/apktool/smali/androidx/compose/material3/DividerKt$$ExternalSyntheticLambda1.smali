.class public final synthetic Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:F

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(FJLandroidx/compose/material3/tokens/TypographyKeyTokens;II)V
    .locals 0

    .line 14
    iput p6, p0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->$r8$classId:I

    iput p1, p0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$1:F

    iput-wide p2, p0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$2:J

    iput-object p4, p0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;FJI)V
    .locals 0

    .line 1
    const/4 p5, 0x0

    .line 2
    iput p5, p0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iput p2, p0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$1:F

    .line 10
    .line 11
    iput-wide p3, p0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$2:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x181

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object v8, v4

    .line 15
    check-cast v8, Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 16
    .line 17
    move-object/from16 v9, p1

    .line 18
    .line 19
    check-cast v9, Landroidx/compose/runtime/Composer;

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
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 29
    .line 30
    .line 31
    move-result v10

    .line 32
    iget v5, v0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$1:F

    .line 33
    .line 34
    iget-wide v6, v0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$2:J

    .line 35
    .line 36
    invoke-static/range {v5 .. v10}, Landroidx/compose/material3/ListItemKt;->TrailingDecorator-8s8adOk(FJLandroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;I)V

    .line 37
    .line 38
    .line 39
    return-object v3

    .line 40
    :pswitch_0
    move-object v14, v4

    .line 41
    check-cast v14, Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 42
    .line 43
    move-object/from16 v15, p1

    .line 44
    .line 45
    check-cast v15, Landroidx/compose/runtime/Composer;

    .line 46
    .line 47
    move-object/from16 v1, p2

    .line 48
    .line 49
    check-cast v1, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 55
    .line 56
    .line 57
    move-result v16

    .line 58
    iget v11, v0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$1:F

    .line 59
    .line 60
    iget-wide v12, v0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$2:J

    .line 61
    .line 62
    invoke-static/range {v11 .. v16}, Landroidx/compose/material3/ListItemKt;->LeadingDecorator-8s8adOk(FJLandroidx/compose/material3/tokens/TypographyKeyTokens;Landroidx/compose/runtime/Composer;I)V

    .line 63
    .line 64
    .line 65
    return-object v3

    .line 66
    :pswitch_1
    check-cast v4, Landroidx/compose/ui/Modifier;

    .line 67
    .line 68
    move-object/from16 v8, p1

    .line 69
    .line 70
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 71
    .line 72
    move-object/from16 v1, p2

    .line 73
    .line 74
    check-cast v1, Ljava/lang/Integer;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    iget v5, v0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$1:F

    .line 85
    .line 86
    iget-wide v6, v0, Landroidx/compose/material3/DividerKt$$ExternalSyntheticLambda1;->f$2:J

    .line 87
    .line 88
    invoke-static/range {v4 .. v9}, Landroidx/compose/material3/BadgeKt;->HorizontalDivider-9IZ8Weo(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;I)V

    .line 89
    .line 90
    .line 91
    return-object v3

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

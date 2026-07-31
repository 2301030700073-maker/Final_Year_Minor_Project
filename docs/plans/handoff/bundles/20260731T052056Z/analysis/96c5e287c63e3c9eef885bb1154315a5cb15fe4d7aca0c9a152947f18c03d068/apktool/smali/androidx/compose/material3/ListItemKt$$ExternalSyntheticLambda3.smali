.class public final synthetic Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Lkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 1
    const/4 p5, 0x0

    .line 2
    iput p5, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda3;->f$0:J

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Modifier;JI)V
    .locals 0

    .line 14
    const/4 p5, 0x1

    iput p5, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    iput-wide p3, p0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda3;->f$0:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object v5, v4

    .line 15
    check-cast v5, Landroidx/compose/foundation/text/selection/OffsetProvider;

    .line 16
    .line 17
    move-object v6, v3

    .line 18
    check-cast v6, Landroidx/compose/ui/Modifier;

    .line 19
    .line 20
    move-object/from16 v9, p1

    .line 21
    .line 22
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    move-object/from16 v1, p2

    .line 25
    .line 26
    check-cast v1, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 33
    .line 34
    .line 35
    move-result v10

    .line 36
    iget-wide v7, v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda3;->f$0:J

    .line 37
    .line 38
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->CursorHandle-USBMPiE(Landroidx/compose/foundation/text/selection/OffsetProvider;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/GapComposer;I)V

    .line 39
    .line 40
    .line 41
    return-object v2

    .line 42
    :pswitch_0
    move-object v13, v4

    .line 43
    check-cast v13, Landroidx/compose/material3/tokens/TypographyKeyTokens;

    .line 44
    .line 45
    move-object v14, v3

    .line 46
    check-cast v14, Lkotlin/jvm/functions/Function2;

    .line 47
    .line 48
    move-object/from16 v15, p1

    .line 49
    .line 50
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 51
    .line 52
    move-object/from16 v1, p2

    .line 53
    .line 54
    check-cast v1, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    const/16 v1, 0x31

    .line 60
    .line 61
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 62
    .line 63
    .line 64
    move-result v16

    .line 65
    iget-wide v11, v0, Landroidx/compose/material3/ListItemKt$$ExternalSyntheticLambda3;->f$0:J

    .line 66
    .line 67
    invoke-static/range {v11 .. v16}, Landroidx/compose/material3/CardKt;->ProvideTextStyleFromToken-3J-VO9M(JLandroidx/compose/material3/tokens/TypographyKeyTokens;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;I)V

    .line 68
    .line 69
    .line 70
    return-object v2

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

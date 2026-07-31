.class public final synthetic Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/CharSequence;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:J

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;JIIII)V
    .locals 0

    .line 1
    iput p8, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 6
    .line 7
    iput-wide p3, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->f$2:J

    .line 8
    .line 9
    iput p5, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->f$4:I

    .line 10
    .line 11
    iput p6, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->f$5:I

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
    iget v1, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/CharSequence;

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object v5, v4

    .line 14
    check-cast v5, Ljava/lang/String;

    .line 15
    .line 16
    move-object/from16 v11, p1

    .line 17
    .line 18
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 19
    .line 20
    move-object/from16 v1, p2

    .line 21
    .line 22
    check-cast v1, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 28
    .line 29
    .line 30
    move-result v12

    .line 31
    iget-object v6, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 32
    .line 33
    iget-wide v7, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->f$2:J

    .line 34
    .line 35
    iget v9, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->f$4:I

    .line 36
    .line 37
    iget v10, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->f$5:I

    .line 38
    .line 39
    invoke-static/range {v5 .. v12}, Landroidx/compose/ui/unit/IntOffsetKt;->TextHeadlineMedium-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;I)V

    .line 40
    .line 41
    .line 42
    return-object v2

    .line 43
    :pswitch_0
    move-object v13, v4

    .line 44
    check-cast v13, Landroidx/compose/ui/text/AnnotatedString;

    .line 45
    .line 46
    move-object/from16 v19, p1

    .line 47
    .line 48
    check-cast v19, Landroidx/compose/runtime/Composer;

    .line 49
    .line 50
    move-object/from16 v1, p2

    .line 51
    .line 52
    check-cast v1, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 58
    .line 59
    .line 60
    move-result v20

    .line 61
    iget-object v14, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 62
    .line 63
    iget-wide v3, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->f$2:J

    .line 64
    .line 65
    iget v1, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->f$4:I

    .line 66
    .line 67
    iget v0, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->f$5:I

    .line 68
    .line 69
    move/from16 v18, v0

    .line 70
    .line 71
    move/from16 v17, v1

    .line 72
    .line 73
    move-wide v15, v3

    .line 74
    invoke-static/range {v13 .. v20}, Landroidx/room/util/DBUtil;->TextTitleLarge-Xl4FiYE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;I)V

    .line 75
    .line 76
    .line 77
    return-object v2

    .line 78
    :pswitch_1
    move-object v5, v4

    .line 79
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString;

    .line 80
    .line 81
    move-object/from16 v11, p1

    .line 82
    .line 83
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 84
    .line 85
    move-object/from16 v1, p2

    .line 86
    .line 87
    check-cast v1, Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    iget-object v6, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 97
    .line 98
    iget-wide v7, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->f$2:J

    .line 99
    .line 100
    iget v9, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->f$4:I

    .line 101
    .line 102
    iget v10, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelSmallKt$$ExternalSyntheticLambda1;->f$5:I

    .line 103
    .line 104
    invoke-static/range {v5 .. v12}, Lorg/slf4j/helpers/Util;->TextLabelSmall-Xl4FiYE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;I)V

    .line 105
    .line 106
    .line 107
    return-object v2

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

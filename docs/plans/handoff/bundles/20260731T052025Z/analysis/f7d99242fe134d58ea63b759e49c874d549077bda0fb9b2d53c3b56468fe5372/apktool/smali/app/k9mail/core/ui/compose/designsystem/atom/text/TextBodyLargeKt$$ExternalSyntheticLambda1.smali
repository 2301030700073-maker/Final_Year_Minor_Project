.class public final synthetic Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/compose/ui/Modifier;

.field public final synthetic f$2:J

.field public final synthetic f$3:Landroidx/compose/ui/text/style/TextAlign;

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IIIII)V
    .locals 0

    .line 1
    iput p10, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 6
    .line 7
    iput-wide p3, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$2:J

    .line 8
    .line 9
    iput-object p5, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/text/style/TextAlign;

    .line 10
    .line 11
    iput p6, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$4:I

    .line 12
    .line 13
    iput p7, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$5:I

    .line 14
    .line 15
    iput p8, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$6:I

    .line 16
    .line 17
    iput p9, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$7:I

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$6:I

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object/from16 v11, p1

    .line 13
    .line 14
    check-cast v11, Landroidx/compose/runtime/Composer;

    .line 15
    .line 16
    move-object/from16 v1, p2

    .line 17
    .line 18
    check-cast v1, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    or-int/lit8 v1, v3, 0x1

    .line 24
    .line 25
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 26
    .line 27
    .line 28
    move-result v12

    .line 29
    iget-object v4, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v5, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 32
    .line 33
    iget-wide v6, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$2:J

    .line 34
    .line 35
    iget-object v8, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/text/style/TextAlign;

    .line 36
    .line 37
    iget v9, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$4:I

    .line 38
    .line 39
    iget v10, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$5:I

    .line 40
    .line 41
    iget v13, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$7:I

    .line 42
    .line 43
    invoke-static/range {v4 .. v13}, Landroidx/core/util/DebugUtils;->TextTitleMedium-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :pswitch_0
    move-object/from16 v21, p1

    .line 48
    .line 49
    check-cast v21, Landroidx/compose/runtime/Composer;

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
    move-result v22

    .line 64
    iget-object v14, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v15, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 67
    .line 68
    iget-wide v3, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$2:J

    .line 69
    .line 70
    iget-object v1, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/text/style/TextAlign;

    .line 71
    .line 72
    iget v5, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$4:I

    .line 73
    .line 74
    iget v6, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$5:I

    .line 75
    .line 76
    iget v0, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$7:I

    .line 77
    .line 78
    move/from16 v23, v0

    .line 79
    .line 80
    move-object/from16 v18, v1

    .line 81
    .line 82
    move-wide/from16 v16, v3

    .line 83
    .line 84
    move/from16 v19, v5

    .line 85
    .line 86
    move/from16 v20, v6

    .line 87
    .line 88
    invoke-static/range {v14 .. v23}, Landroidx/room/util/DBUtil;->TextTitleLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 89
    .line 90
    .line 91
    return-object v2

    .line 92
    :pswitch_1
    move-object/from16 v30, p1

    .line 93
    .line 94
    check-cast v30, Landroidx/compose/runtime/Composer;

    .line 95
    .line 96
    move-object/from16 v1, p2

    .line 97
    .line 98
    check-cast v1, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    or-int/lit8 v1, v3, 0x1

    .line 104
    .line 105
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 106
    .line 107
    .line 108
    move-result v31

    .line 109
    iget-object v1, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 110
    .line 111
    iget-object v3, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 112
    .line 113
    iget-wide v4, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$2:J

    .line 114
    .line 115
    iget-object v6, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/text/style/TextAlign;

    .line 116
    .line 117
    iget v7, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$4:I

    .line 118
    .line 119
    iget v8, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$5:I

    .line 120
    .line 121
    iget v0, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$7:I

    .line 122
    .line 123
    move/from16 v32, v0

    .line 124
    .line 125
    move-object/from16 v23, v1

    .line 126
    .line 127
    move-object/from16 v24, v3

    .line 128
    .line 129
    move-wide/from16 v25, v4

    .line 130
    .line 131
    move-object/from16 v27, v6

    .line 132
    .line 133
    move/from16 v28, v7

    .line 134
    .line 135
    move/from16 v29, v8

    .line 136
    .line 137
    invoke-static/range {v23 .. v32}, Landroidx/compose/ui/unit/IntRectKt;->TextHeadlineSmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 138
    .line 139
    .line 140
    return-object v2

    .line 141
    :pswitch_2
    move-object/from16 v16, p1

    .line 142
    .line 143
    check-cast v16, Landroidx/compose/runtime/Composer;

    .line 144
    .line 145
    move-object/from16 v1, p2

    .line 146
    .line 147
    check-cast v1, Ljava/lang/Integer;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    or-int/lit8 v1, v3, 0x1

    .line 153
    .line 154
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 155
    .line 156
    .line 157
    move-result v17

    .line 158
    iget-object v9, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    .line 159
    .line 160
    iget-object v10, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 161
    .line 162
    iget-wide v11, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$2:J

    .line 163
    .line 164
    iget-object v13, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$3:Landroidx/compose/ui/text/style/TextAlign;

    .line 165
    .line 166
    iget v14, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$4:I

    .line 167
    .line 168
    iget v15, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$5:I

    .line 169
    .line 170
    iget v0, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextBodyLargeKt$$ExternalSyntheticLambda1;->f$7:I

    .line 171
    .line 172
    move/from16 v18, v0

    .line 173
    .line 174
    invoke-static/range {v9 .. v18}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->TextBodyLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILandroidx/compose/runtime/Composer;II)V

    .line 175
    .line 176
    .line 177
    return-object v2

    .line 178
    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

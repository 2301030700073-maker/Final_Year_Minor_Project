.class public final synthetic Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;
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

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;Landroidx/compose/ui/Modifier;JIIIII)V
    .locals 0

    .line 1
    iput p9, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 6
    .line 7
    iput-wide p3, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$2:J

    .line 8
    .line 9
    iput p5, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$4:I

    .line 10
    .line 11
    iput p6, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$5:I

    .line 12
    .line 13
    iput p7, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$6:I

    .line 14
    .line 15
    iput p8, p0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$7:I

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget v3, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$6:I

    .line 8
    .line 9
    iget-object v4, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/CharSequence;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object v5, v4

    .line 15
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString;

    .line 16
    .line 17
    move-object/from16 v11, p1

    .line 18
    .line 19
    check-cast v11, Landroidx/compose/runtime/Composer;

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
    move-result v12

    .line 34
    iget-object v6, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 35
    .line 36
    iget-wide v7, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$2:J

    .line 37
    .line 38
    iget v9, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$4:I

    .line 39
    .line 40
    iget v10, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$5:I

    .line 41
    .line 42
    iget v13, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$7:I

    .line 43
    .line 44
    invoke-static/range {v5 .. v13}, Landroidx/room/util/RelationUtil;->TextTitleSmall-Xl4FiYE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 45
    .line 46
    .line 47
    return-object v2

    .line 48
    :pswitch_0
    move-object v14, v4

    .line 49
    check-cast v14, Ljava/lang/String;

    .line 50
    .line 51
    move-object/from16 v20, p1

    .line 52
    .line 53
    check-cast v20, Landroidx/compose/runtime/Composer;

    .line 54
    .line 55
    move-object/from16 v1, p2

    .line 56
    .line 57
    check-cast v1, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    or-int/lit8 v1, v3, 0x1

    .line 63
    .line 64
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 65
    .line 66
    .line 67
    move-result v21

    .line 68
    iget-object v15, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 69
    .line 70
    iget-wide v3, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$2:J

    .line 71
    .line 72
    iget v1, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$4:I

    .line 73
    .line 74
    iget v5, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$5:I

    .line 75
    .line 76
    iget v0, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$7:I

    .line 77
    .line 78
    move/from16 v22, v0

    .line 79
    .line 80
    move/from16 v18, v1

    .line 81
    .line 82
    move-wide/from16 v16, v3

    .line 83
    .line 84
    move/from16 v19, v5

    .line 85
    .line 86
    invoke-static/range {v14 .. v22}, Landroidx/room/util/RelationUtil;->TextTitleSmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 87
    .line 88
    .line 89
    return-object v2

    .line 90
    :pswitch_1
    move-object/from16 v22, v4

    .line 91
    .line 92
    check-cast v22, Ljava/lang/String;

    .line 93
    .line 94
    move-object/from16 v28, p1

    .line 95
    .line 96
    check-cast v28, Landroidx/compose/runtime/Composer;

    .line 97
    .line 98
    move-object/from16 v1, p2

    .line 99
    .line 100
    check-cast v1, Ljava/lang/Integer;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    or-int/lit8 v1, v3, 0x1

    .line 106
    .line 107
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 108
    .line 109
    .line 110
    move-result v29

    .line 111
    iget-object v1, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 112
    .line 113
    iget-wide v3, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$2:J

    .line 114
    .line 115
    iget v5, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$4:I

    .line 116
    .line 117
    iget v6, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$5:I

    .line 118
    .line 119
    iget v0, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$7:I

    .line 120
    .line 121
    move/from16 v30, v0

    .line 122
    .line 123
    move-object/from16 v23, v1

    .line 124
    .line 125
    move-wide/from16 v24, v3

    .line 126
    .line 127
    move/from16 v26, v5

    .line 128
    .line 129
    move/from16 v27, v6

    .line 130
    .line 131
    invoke-static/range {v22 .. v30}, Lorg/slf4j/helpers/Util;->TextLabelSmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 132
    .line 133
    .line 134
    return-object v2

    .line 135
    :pswitch_2
    move-object v7, v4

    .line 136
    check-cast v7, Ljava/lang/String;

    .line 137
    .line 138
    move-object/from16 v13, p1

    .line 139
    .line 140
    check-cast v13, Landroidx/compose/runtime/Composer;

    .line 141
    .line 142
    move-object/from16 v1, p2

    .line 143
    .line 144
    check-cast v1, Ljava/lang/Integer;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    or-int/lit8 v1, v3, 0x1

    .line 150
    .line 151
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 152
    .line 153
    .line 154
    move-result v14

    .line 155
    iget-object v8, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 156
    .line 157
    iget-wide v9, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$2:J

    .line 158
    .line 159
    iget v11, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$4:I

    .line 160
    .line 161
    iget v12, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$5:I

    .line 162
    .line 163
    iget v15, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$7:I

    .line 164
    .line 165
    invoke-static/range {v7 .. v15}, Landroidx/sqlite/SQLite;->TextLabelMedium-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 166
    .line 167
    .line 168
    return-object v2

    .line 169
    :pswitch_3
    move-object/from16 v16, v4

    .line 170
    .line 171
    check-cast v16, Ljava/lang/String;

    .line 172
    .line 173
    move-object/from16 v22, p1

    .line 174
    .line 175
    check-cast v22, Landroidx/compose/runtime/Composer;

    .line 176
    .line 177
    move-object/from16 v1, p2

    .line 178
    .line 179
    check-cast v1, Ljava/lang/Integer;

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    or-int/lit8 v1, v3, 0x1

    .line 185
    .line 186
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 187
    .line 188
    .line 189
    move-result v23

    .line 190
    iget-object v1, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$1:Landroidx/compose/ui/Modifier;

    .line 191
    .line 192
    iget-wide v3, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$2:J

    .line 193
    .line 194
    iget v5, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$4:I

    .line 195
    .line 196
    iget v6, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$5:I

    .line 197
    .line 198
    iget v0, v0, Lapp/k9mail/core/ui/compose/designsystem/atom/text/TextLabelLargeKt$$ExternalSyntheticLambda1;->f$7:I

    .line 199
    .line 200
    move/from16 v24, v0

    .line 201
    .line 202
    move-object/from16 v17, v1

    .line 203
    .line 204
    move-wide/from16 v18, v3

    .line 205
    .line 206
    move/from16 v20, v5

    .line 207
    .line 208
    move/from16 v21, v6

    .line 209
    .line 210
    invoke-static/range {v16 .. v24}, Lorg/jsoup/helper/Validate;->TextLabelLarge-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 211
    .line 212
    .line 213
    return-object v2

    .line 214
    nop

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Landroidx/compose/material3/ExposedDropdownMenuDefaults;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/ExposedDropdownMenuDefaults;

.field public static final ItemContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenuDefaults;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material3/ExposedDropdownMenuDefaults;->INSTANCE:Landroidx/compose/material3/ExposedDropdownMenuDefaults;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 9
    .line 10
    const/high16 v1, 0x41800000    # 16.0f

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v0, v1, v2, v1, v2}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/compose/material3/ExposedDropdownMenuDefaults;->ItemContentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final TrailingIcon(ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    .line 1
    move/from16 v5, p1

    .line 2
    .line 3
    move-object/from16 v11, p3

    .line 4
    .line 5
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v0, -0x6748cc87

    .line 8
    .line 9
    .line 10
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    :goto_0
    or-int v0, p4, v0

    .line 23
    .line 24
    or-int/lit8 v0, v0, 0x30

    .line 25
    .line 26
    and-int/lit8 v1, v0, 0x13

    .line 27
    .line 28
    const/16 v2, 0x12

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-eq v1, v2, :cond_1

    .line 32
    .line 33
    move v1, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    :goto_1
    and-int/2addr v0, v3

    .line 37
    invoke-virtual {v11, v0, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    sget-object v0, Landroidx/compose/material3/internal/Icons$Filled;->_arrowDropDown:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    :goto_2
    move-object v6, v0

    .line 48
    goto :goto_3

    .line 49
    :cond_2
    new-instance v12, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 50
    .line 51
    const/16 v21, 0x0

    .line 52
    .line 53
    const/16 v22, 0xe0

    .line 54
    .line 55
    const-string v13, "Filled.ArrowDropDown"

    .line 56
    .line 57
    const/high16 v14, 0x41c00000    # 24.0f

    .line 58
    .line 59
    const/high16 v15, 0x41c00000    # 24.0f

    .line 60
    .line 61
    const/high16 v16, 0x41c00000    # 24.0f

    .line 62
    .line 63
    const/high16 v17, 0x41c00000    # 24.0f

    .line 64
    .line 65
    const-wide/16 v18, 0x0

    .line 66
    .line 67
    const/16 v20, 0x0

    .line 68
    .line 69
    invoke-direct/range {v12 .. v22}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 70
    .line 71
    .line 72
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->$r8$clinit:I

    .line 73
    .line 74
    new-instance v14, Landroidx/compose/ui/graphics/SolidColor;

    .line 75
    .line 76
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 77
    .line 78
    invoke-direct {v14, v0, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 79
    .line 80
    .line 81
    new-instance v13, Ljava/util/ArrayList;

    .line 82
    .line 83
    const/16 v0, 0x20

    .line 84
    .line 85
    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    .line 89
    .line 90
    const/high16 v1, 0x40e00000    # 7.0f

    .line 91
    .line 92
    const/high16 v2, 0x41200000    # 10.0f

    .line 93
    .line 94
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    .line 101
    .line 102
    const/high16 v1, 0x40a00000    # 5.0f

    .line 103
    .line 104
    invoke-direct {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    .line 111
    .line 112
    const/high16 v2, -0x3f600000    # -5.0f

    .line 113
    .line 114
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    sget-object v0, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    .line 121
    .line 122
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    const/high16 v15, 0x3f800000    # 1.0f

    .line 126
    .line 127
    const/high16 v16, 0x3f800000    # 1.0f

    .line 128
    .line 129
    const/high16 v17, 0x3f800000    # 1.0f

    .line 130
    .line 131
    const/16 v18, 0x2

    .line 132
    .line 133
    const/high16 v19, 0x3f800000    # 1.0f

    .line 134
    .line 135
    invoke-static/range {v12 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;FFFIF)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    sput-object v0, Landroidx/compose/material3/internal/Icons$Filled;->_arrowDropDown:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :goto_3
    if-eqz v5, :cond_3

    .line 146
    .line 147
    const/high16 v0, 0x43340000    # 180.0f

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_3
    const/4 v0, 0x0

    .line 151
    :goto_4
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 152
    .line 153
    invoke-static {v1, v0}, Landroidx/compose/ui/draw/ClipKt;->rotate(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    const/16 v12, 0x30

    .line 158
    .line 159
    const/16 v13, 0x8

    .line 160
    .line 161
    const/4 v7, 0x0

    .line 162
    const-wide/16 v9, 0x0

    .line 163
    .line 164
    invoke-static/range {v6 .. v13}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    .line 165
    .line 166
    .line 167
    move-object v4, v1

    .line 168
    goto :goto_5

    .line 169
    :cond_4
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 170
    .line 171
    .line 172
    move-object/from16 v4, p2

    .line 173
    .line 174
    :goto_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    if-eqz v6, :cond_5

    .line 179
    .line 180
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;

    .line 181
    .line 182
    const/4 v2, 0x1

    .line 183
    move-object/from16 v3, p0

    .line 184
    .line 185
    move/from16 v1, p4

    .line 186
    .line 187
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda3;-><init>(IILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 188
    .line 189
    .line 190
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 191
    .line 192
    :cond_5
    return-void
.end method

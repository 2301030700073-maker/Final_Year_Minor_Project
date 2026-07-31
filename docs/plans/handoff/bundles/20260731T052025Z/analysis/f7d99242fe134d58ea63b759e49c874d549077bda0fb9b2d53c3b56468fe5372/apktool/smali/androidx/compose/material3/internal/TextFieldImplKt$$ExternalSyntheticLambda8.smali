.class public final synthetic Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 1
    const/4 p4, 0x0

    .line 2
    iput p4, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;->f$0:J

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material3/internal/FloatProducer;JI)V
    .locals 0

    .line 12
    const/4 p4, 0x1

    iput p4, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    iput-wide p2, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;->f$0:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    .line 13
    iput p4, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    iput-wide p2, p0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;->f$0:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    iget-wide v4, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;->f$0:J

    .line 8
    .line 9
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    const/4 v7, 0x1

    .line 12
    iget-object v8, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object v9, v8

    .line 18
    check-cast v9, Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 23
    .line 24
    move-object/from16 v4, p2

    .line 25
    .line 26
    check-cast v4, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    and-int/lit8 v5, v4, 0x3

    .line 33
    .line 34
    if-eq v5, v3, :cond_0

    .line 35
    .line 36
    move v2, v7

    .line 37
    :cond_0
    and-int/lit8 v3, v4, 0x1

    .line 38
    .line 39
    move-object v15, v1

    .line 40
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 41
    .line 42
    invoke-virtual {v15, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    const/16 v16, 0x180

    .line 49
    .line 50
    const/16 v17, 0x38

    .line 51
    .line 52
    iget-wide v10, v0, Landroidx/compose/material3/internal/TextFieldImplKt$$ExternalSyntheticLambda8;->f$0:J

    .line 53
    .line 54
    sget-object v12, Lnet/thunderbird/feature/account/avatar/ui/AvatarSize;->MEDIUM:Lnet/thunderbird/feature/account/avatar/ui/AvatarSize;

    .line 55
    .line 56
    const/4 v13, 0x0

    .line 57
    const/4 v14, 0x0

    .line 58
    invoke-static/range {v9 .. v17}, Lorg/jsoup/nodes/NodeUtils;->Avatar-OadGlvw(Lnet/thunderbird/feature/account/avatar/Avatar;JLnet/thunderbird/feature/account/avatar/ui/AvatarSize;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-object v6

    .line 66
    :pswitch_0
    move-object v0, v8

    .line 67
    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 68
    .line 69
    move-object/from16 v1, p1

    .line 70
    .line 71
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 72
    .line 73
    move-object/from16 v8, p2

    .line 74
    .line 75
    check-cast v8, Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    and-int/lit8 v9, v8, 0x3

    .line 82
    .line 83
    if-eq v9, v3, :cond_2

    .line 84
    .line 85
    move v2, v7

    .line 86
    :cond_2
    and-int/lit8 v3, v8, 0x1

    .line 87
    .line 88
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 89
    .line 90
    invoke-virtual {v1, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    const/high16 v2, 0x41800000    # 16.0f

    .line 108
    .line 109
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 110
    .line 111
    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    move-object v3, v1

    .line 116
    move-object v1, v2

    .line 117
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 118
    .line 119
    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 120
    .line 121
    .line 122
    const/4 v4, 0x0

    .line 123
    const/4 v5, 0x4

    .line 124
    invoke-static/range {v0 .. v5}, Lkotlinx/atomicfu/AtomicFU;->Icon-xqIIw2o(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    move-object v3, v1

    .line 129
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 130
    .line 131
    .line 132
    :goto_1
    return-object v6

    .line 133
    :pswitch_1
    check-cast v8, Landroidx/compose/material3/internal/FloatProducer;

    .line 134
    .line 135
    move-object/from16 v0, p1

    .line 136
    .line 137
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 138
    .line 139
    move-object/from16 v1, p2

    .line 140
    .line 141
    check-cast v1, Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-static {v8, v4, v5, v0, v1}, Landroidx/work/Operation$State;->CircularArrowProgressIndicator-RPmYEkk(Landroidx/compose/material3/internal/FloatProducer;JLandroidx/compose/runtime/Composer;I)V

    .line 151
    .line 152
    .line 153
    return-object v6

    .line 154
    :pswitch_2
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 155
    .line 156
    move-object/from16 v0, p1

    .line 157
    .line 158
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 159
    .line 160
    move-object/from16 v1, p2

    .line 161
    .line 162
    check-cast v1, Ljava/lang/Integer;

    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-static {v4, v5, v8, v0, v1}, Landroidx/compose/material3/internal/Icons$Filled;->Decoration-Iv8Zu3U(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 172
    .line 173
    .line 174
    return-object v6

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

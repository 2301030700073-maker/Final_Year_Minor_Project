.class public final synthetic Lorg/wikipedia/compose/components/WikipediaAlertDialogKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JLkotlin/jvm/functions/Function0;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/wikipedia/compose/components/WikipediaAlertDialogKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Lorg/wikipedia/compose/components/WikipediaAlertDialogKt$$ExternalSyntheticLambda1;->f$0:J

    .line 8
    .line 9
    iput-object p3, p0, Lorg/wikipedia/compose/components/WikipediaAlertDialogKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    iput-object p4, p0, Lorg/wikipedia/compose/components/WikipediaAlertDialogKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lorg/wikipedia/compose/components/WikipediaAlertDialogKt$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/compose/components/WikipediaAlertDialogKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-wide p2, p0, Lorg/wikipedia/compose/components/WikipediaAlertDialogKt$$ExternalSyntheticLambda1;->f$0:J

    iput-object p4, p0, Lorg/wikipedia/compose/components/WikipediaAlertDialogKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/compose/components/WikipediaAlertDialogKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    iget-wide v5, v0, Lorg/wikipedia/compose/components/WikipediaAlertDialogKt$$ExternalSyntheticLambda1;->f$0:J

    .line 10
    .line 11
    iget-object v7, v0, Lorg/wikipedia/compose/components/WikipediaAlertDialogKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v8, 0x2

    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 20
    .line 21
    move-object/from16 v9, p2

    .line 22
    .line 23
    check-cast v9, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    and-int/lit8 v10, v9, 0x3

    .line 30
    .line 31
    if-eq v10, v8, :cond_0

    .line 32
    .line 33
    move v8, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v8, v4

    .line 36
    :goto_0
    and-int/2addr v3, v9

    .line 37
    invoke-virtual {v1, v3, v8}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    if-nez v7, :cond_1

    .line 44
    .line 45
    const v0, 0x4e29f37b    # 7.1282656E8f

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const v3, 0x4e29f37c    # 7.128266E8f

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 59
    .line 60
    .line 61
    invoke-static {v5, v6, v1}, Landroidx/compose/material3/ButtonDefaults;->textButtonColors-ro_MJ88(JLandroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/ButtonColors;

    .line 62
    .line 63
    .line 64
    move-result-object v13

    .line 65
    new-instance v3, Lorg/wikipedia/compose/components/OnboardingKt$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    const/4 v5, 0x3

    .line 68
    invoke-direct {v3, v5, v7}, Lorg/wikipedia/compose/components/OnboardingKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const v5, -0x112688ca

    .line 72
    .line 73
    .line 74
    invoke-static {v5, v3, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 75
    .line 76
    .line 77
    move-result-object v15

    .line 78
    const/high16 v17, 0x30000000

    .line 79
    .line 80
    const/16 v18, 0x1ee

    .line 81
    .line 82
    iget-object v9, v0, Lorg/wikipedia/compose/components/WikipediaAlertDialogKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    .line 83
    .line 84
    const/4 v10, 0x0

    .line 85
    const/4 v11, 0x0

    .line 86
    const/4 v12, 0x0

    .line 87
    const/4 v14, 0x0

    .line 88
    move-object/from16 v16, v1

    .line 89
    .line 90
    invoke-static/range {v9 .. v18}, Landroidx/compose/material3/CardKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 91
    .line 92
    .line 93
    move-object/from16 v0, v16

    .line 94
    .line 95
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move-object v0, v1

    .line 100
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 101
    .line 102
    .line 103
    :goto_1
    return-object v2

    .line 104
    :pswitch_0
    move-object/from16 v12, p1

    .line 105
    .line 106
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 107
    .line 108
    move-object/from16 v1, p2

    .line 109
    .line 110
    check-cast v1, Ljava/lang/Integer;

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    and-int/lit8 v9, v1, 0x3

    .line 117
    .line 118
    if-eq v9, v8, :cond_3

    .line 119
    .line 120
    move v4, v3

    .line 121
    :cond_3
    and-int/2addr v1, v3

    .line 122
    invoke-virtual {v12, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_4

    .line 127
    .line 128
    invoke-static {v5, v6, v12}, Landroidx/compose/material3/ButtonDefaults;->textButtonColors-ro_MJ88(JLandroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/ButtonColors;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    new-instance v1, Lorg/wikipedia/compose/components/OnboardingKt$$ExternalSyntheticLambda0;

    .line 133
    .line 134
    invoke-direct {v1, v8, v7}, Lorg/wikipedia/compose/components/OnboardingKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const v3, -0x5b9253f4

    .line 138
    .line 139
    .line 140
    invoke-static {v3, v1, v12}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    const/high16 v13, 0x30000000

    .line 145
    .line 146
    const/16 v14, 0x1ee

    .line 147
    .line 148
    iget-object v5, v0, Lorg/wikipedia/compose/components/WikipediaAlertDialogKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    .line 149
    .line 150
    const/4 v6, 0x0

    .line 151
    const/4 v7, 0x0

    .line 152
    const/4 v8, 0x0

    .line 153
    const/4 v10, 0x0

    .line 154
    invoke-static/range {v5 .. v14}, Landroidx/compose/material3/CardKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_4
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 159
    .line 160
    .line 161
    :goto_2
    return-object v2

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/ArrayList;Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda0;->f$2:Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    iget-object v4, v0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda0;->f$2:Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v14, p1

    .line 16
    .line 17
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    move-object/from16 v1, p2

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sget v7, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;->$r8$clinit:I

    .line 28
    .line 29
    and-int/lit8 v7, v1, 0x3

    .line 30
    .line 31
    if-eq v7, v3, :cond_0

    .line 32
    .line 33
    move v3, v6

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v3, v5

    .line 36
    :goto_0
    and-int/2addr v1, v6

    .line 37
    invoke-virtual {v14, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_9

    .line 42
    .line 43
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 52
    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    if-ne v3, v7, :cond_2

    .line 56
    .line 57
    :cond_1
    new-instance v3, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda2;

    .line 58
    .line 59
    invoke-direct {v3, v4, v5}, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    move-object v9, v3

    .line 66
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 67
    .line 68
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    if-ne v3, v7, :cond_4

    .line 79
    .line 80
    :cond_3
    new-instance v3, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda3;

    .line 81
    .line 82
    invoke-direct {v3, v4, v5}, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda3;-><init>(Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    move-object v10, v3

    .line 89
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 90
    .line 91
    iget-object v1, v4, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;->pageOverflowMenuViewModel$delegate:Lokhttp3/Request$Builder;

    .line 92
    .line 93
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel;

    .line 98
    .line 99
    iget-object v1, v1, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel;->pageOverflowMenuState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    move-object v11, v1

    .line 106
    check-cast v11, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;

    .line 107
    .line 108
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    if-nez v1, :cond_5

    .line 117
    .line 118
    if-ne v3, v7, :cond_6

    .line 119
    .line 120
    :cond_5
    new-instance v3, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda2;

    .line 121
    .line 122
    invoke-direct {v3, v4, v6}, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_6
    move-object v12, v3

    .line 129
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 130
    .line 131
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    iget-object v3, v0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 136
    .line 137
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    or-int/2addr v1, v5

    .line 142
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    if-nez v1, :cond_7

    .line 147
    .line 148
    if-ne v5, v7, :cond_8

    .line 149
    .line 150
    :cond_7
    new-instance v5, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;

    .line 151
    .line 152
    const/16 v1, 0xd

    .line 153
    .line 154
    invoke-direct {v5, v1, v4, v3}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_8
    move-object v13, v5

    .line 161
    check-cast v13, Lkotlin/jvm/functions/Function3;

    .line 162
    .line 163
    const/4 v15, 0x0

    .line 164
    iget-object v8, v0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 165
    .line 166
    move-object v7, v3

    .line 167
    invoke-static/range {v7 .. v15}, Lokhttp3/Cache$Companion;->DidYouKnowScreen(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/GapComposer;I)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_9
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 172
    .line 173
    .line 174
    :goto_1
    return-object v2

    .line 175
    :pswitch_0
    move-object/from16 v1, p1

    .line 176
    .line 177
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 178
    .line 179
    move-object/from16 v7, p2

    .line 180
    .line 181
    check-cast v7, Ljava/lang/Integer;

    .line 182
    .line 183
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    sget v8, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;->$r8$clinit:I

    .line 188
    .line 189
    and-int/lit8 v8, v7, 0x3

    .line 190
    .line 191
    if-eq v8, v3, :cond_a

    .line 192
    .line 193
    move v5, v6

    .line 194
    :cond_a
    and-int/lit8 v3, v7, 0x1

    .line 195
    .line 196
    invoke-virtual {v1, v3, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-eqz v3, :cond_b

    .line 201
    .line 202
    new-instance v3, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda0;

    .line 203
    .line 204
    iget-object v5, v0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 205
    .line 206
    iget-object v0, v0, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-direct {v3, v5, v0, v4, v6}, Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/ArrayList;Lorg/wikipedia/feed/didyouknow/DidYouKnowActivity;I)V

    .line 209
    .line 210
    .line 211
    const v0, 0x69ccdbae

    .line 212
    .line 213
    .line 214
    invoke-static {v0, v3, v1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    const/16 v3, 0x30

    .line 219
    .line 220
    const/4 v4, 0x0

    .line 221
    invoke-static {v4, v0, v1, v3, v6}, Lokhttp3/Cache$Companion;->BaseTheme(Lorg/wikipedia/theme/Theme;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_b
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 226
    .line 227
    .line 228
    :goto_2
    return-object v2

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

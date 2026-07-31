.class public abstract Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final lambda$1587790113:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public static final lambda$868848991:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 9
    .line 10
    const v2, 0x33c9955f

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->lambda$868848991:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 18
    .line 19
    new-instance v0, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;

    .line 20
    .line 21
    const/16 v1, 0x1b

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lapp/k9mail/feature/onboarding/welcome/ui/WelcomeContentKt$$ExternalSyntheticLambda9;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 27
    .line 28
    const v2, 0x5ea3c121

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 32
    .line 33
    .line 34
    sput-object v1, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->lambda$1587790113:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 35
    .line 36
    return-void
.end method

.method public static final AccountIndicatorIcon-3J-VO9M(IJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V
    .locals 8

    .line 1
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x663a7e77

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, p1, p2}, Landroidx/compose/runtime/GapComposer;->changed(J)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    :goto_0
    or-int/2addr v0, p0

    .line 19
    or-int/lit8 v0, v0, 0x30

    .line 20
    .line 21
    and-int/lit8 v1, v0, 0x13

    .line 22
    .line 23
    const/16 v2, 0x12

    .line 24
    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_1
    and-int/lit8 v2, v0, 0x1

    .line 31
    .line 32
    invoke-virtual {p3, v2, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    const/16 v7, 0xb

    .line 40
    .line 41
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/high16 v5, 0x40800000    # 4.0f

    .line 46
    .line 47
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    shl-int/lit8 v0, v0, 0x9

    .line 52
    .line 53
    and-int/lit16 v0, v0, 0x1c00

    .line 54
    .line 55
    or-int/lit16 v0, v0, 0x1b0

    .line 56
    .line 57
    invoke-static {v0, p1, p2, p3, p4}, Lkotlin/uuid/UuidKt;->ColorChip-Zi-j2fk(IJLandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 58
    .line 59
    .line 60
    move-object p4, v2

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 63
    .line 64
    .line 65
    :goto_2
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    if-eqz p3, :cond_3

    .line 70
    .line 71
    new-instance v0, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt$$ExternalSyntheticLambda1;

    .line 72
    .line 73
    invoke-direct {v0, p1, p2, p4, p0}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt$$ExternalSyntheticLambda1;-><init>(JLandroidx/compose/ui/Modifier;I)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method public static final AdaptiveMessageItemHeaderRow(ILandroidx/compose/runtime/Composer;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;)V
    .locals 8

    .line 1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    const v0, 0x2f32e15e

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p5}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x2

    .line 21
    :goto_0
    or-int/2addr v0, p0

    .line 22
    invoke-virtual {p1, p4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const/16 v1, 0x20

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/16 v1, 0x10

    .line 32
    .line 33
    :goto_1
    or-int/2addr v0, v1

    .line 34
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/16 v3, 0x100

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    move v1, v3

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/16 v1, 0x80

    .line 45
    .line 46
    :goto_2
    or-int/2addr v0, v1

    .line 47
    or-int/lit16 v0, v0, 0xc00

    .line 48
    .line 49
    and-int/lit16 v1, v0, 0x493

    .line 50
    .line 51
    const/16 v4, 0x492

    .line 52
    .line 53
    const/4 v6, 0x1

    .line 54
    const/4 v7, 0x0

    .line 55
    if-eq v1, v4, :cond_3

    .line 56
    .line 57
    move v1, v6

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    move v1, v7

    .line 60
    :goto_3
    and-int/lit8 v4, v0, 0x1

    .line 61
    .line 62
    invoke-virtual {p1, v4, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_e

    .line 67
    .line 68
    invoke-static {p1}, Lorg/jsoup/Jsoup;->calculateWindowSizeInfo(Landroidx/compose/runtime/Composer;)Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    iget-object p3, p3, Lnet/thunderbird/core/ui/common/window/WindowSizeInfo;->sizeClass:Lnet/thunderbird/core/ui/common/window/WindowSizeClass;

    .line 73
    .line 74
    iget-object p3, p3, Lnet/thunderbird/core/ui/common/window/WindowSizeClass;->widthSizeClass:Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 75
    .line 76
    sget-object v1, Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;->Small:Lnet/thunderbird/core/ui/common/window/WindowWidthSizeClass;

    .line 77
    .line 78
    if-ne p3, v1, :cond_4

    .line 79
    .line 80
    move v1, v6

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    move v1, v7

    .line 83
    :goto_4
    iget-object p3, p5, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->accountIndicator:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemAccountIndicator;

    .line 84
    .line 85
    shl-int/lit8 v0, v0, 0x3

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-virtual {p1, p3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    or-int/2addr v4, v5

    .line 96
    and-int/lit16 v5, v0, 0x380

    .line 97
    .line 98
    xor-int/lit16 v5, v5, 0x180

    .line 99
    .line 100
    if-le v5, v3, :cond_5

    .line 101
    .line 102
    invoke-virtual {p1, p4}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-nez v5, :cond_6

    .line 107
    .line 108
    :cond_5
    and-int/lit16 v5, v0, 0x180

    .line 109
    .line 110
    if-ne v5, v3, :cond_7

    .line 111
    .line 112
    :cond_6
    move v3, v6

    .line 113
    goto :goto_5

    .line 114
    :cond_7
    move v3, v7

    .line 115
    :goto_5
    or-int/2addr v3, v4

    .line 116
    and-int/lit16 v4, v0, 0x1c00

    .line 117
    .line 118
    xor-int/lit16 v4, v4, 0xc00

    .line 119
    .line 120
    const/16 v5, 0x800

    .line 121
    .line 122
    if-le v4, v5, :cond_8

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_9

    .line 129
    .line 130
    :cond_8
    and-int/lit16 v0, v0, 0xc00

    .line 131
    .line 132
    if-ne v0, v5, :cond_a

    .line 133
    .line 134
    :cond_9
    move v0, v6

    .line 135
    goto :goto_6

    .line 136
    :cond_a
    move v0, v7

    .line 137
    :goto_6
    or-int/2addr v0, v3

    .line 138
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    if-nez v0, :cond_b

    .line 143
    .line 144
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 145
    .line 146
    if-ne v3, v0, :cond_c

    .line 147
    .line 148
    :cond_b
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda1;

    .line 149
    .line 150
    const/4 v5, 0x2

    .line 151
    move-object v4, p2

    .line 152
    move-object v3, p3

    .line 153
    move-object v2, p4

    .line 154
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda1;-><init>(ZLjava/lang/Object;Ljava/lang/Object;Lkotlin/Function;I)V

    .line 155
    .line 156
    .line 157
    new-instance p3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 158
    .line 159
    const v2, -0x1d652f4d

    .line 160
    .line 161
    .line 162
    invoke-direct {p3, v2, v0, v6}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 163
    .line 164
    .line 165
    new-instance v0, Landroidx/compose/runtime/MovableContent;

    .line 166
    .line 167
    invoke-direct {v0, p3}, Landroidx/compose/runtime/MovableContent;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 168
    .line 169
    .line 170
    new-instance p3, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;

    .line 171
    .line 172
    invoke-direct {p3, v7, v0}, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 176
    .line 177
    const v0, 0x3d8e5091

    .line 178
    .line 179
    .line 180
    invoke-direct {v3, v0, p3, v6}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_c
    check-cast v3, Lkotlin/jvm/functions/Function3;

    .line 187
    .line 188
    const/4 p3, 0x6

    .line 189
    if-eqz v1, :cond_d

    .line 190
    .line 191
    const v0, -0x6df66da9

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 195
    .line 196
    .line 197
    invoke-static {v3, p1, p3}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->HeaderRowSmall(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 201
    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_d
    const v0, -0x6df52ca4

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 208
    .line 209
    .line 210
    invoke-static {v3, p1, p3}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->HeaderRow(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 214
    .line 215
    .line 216
    :goto_7
    sget-object p3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 217
    .line 218
    :goto_8
    move-object v4, p3

    .line 219
    goto :goto_9

    .line 220
    :cond_e
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 221
    .line 222
    .line 223
    goto :goto_8

    .line 224
    :goto_9
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    if-eqz p1, :cond_f

    .line 229
    .line 230
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;

    .line 231
    .line 232
    move v5, p0

    .line 233
    move-object v3, p2

    .line 234
    move-object v2, p4

    .line 235
    move-object v1, p5

    .line 236
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;I)V

    .line 237
    .line 238
    .line 239
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 240
    .line 241
    :cond_f
    return-void
.end method

.method public static final HeaderRow(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    .line 1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, -0x34e90ad6    # -9893162.0f

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p2, 0x6

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    :goto_0
    or-int/2addr v0, p2

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v0, p2

    .line 27
    :goto_1
    and-int/lit8 v2, p2, 0x30

    .line 28
    .line 29
    const/16 v3, 0x20

    .line 30
    .line 31
    if-nez v2, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    move v2, v3

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/16 v2, 0x10

    .line 42
    .line 43
    :goto_2
    or-int/2addr v0, v2

    .line 44
    :cond_3
    and-int/lit8 v2, v0, 0x13

    .line 45
    .line 46
    const/16 v4, 0x12

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v6, 0x1

    .line 50
    if-eq v2, v4, :cond_4

    .line 51
    .line 52
    move v2, v6

    .line 53
    goto :goto_3

    .line 54
    :cond_4
    move v2, v5

    .line 55
    :goto_3
    and-int/lit8 v4, v0, 0x1

    .line 56
    .line 57
    invoke-virtual {p1, v4, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_6

    .line 62
    .line 63
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    new-instance v2, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 75
    .line 76
    new-instance v4, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    const/4 v7, 0x7

    .line 79
    invoke-direct {v4, v7}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 80
    .line 81
    .line 82
    const/high16 v7, 0x41000000    # 8.0f

    .line 83
    .line 84
    invoke-direct {v2, v7, v6, v4}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 85
    .line 86
    .line 87
    const/high16 v4, 0x41a00000    # 20.0f

    .line 88
    .line 89
    const/4 v7, 0x0

    .line 90
    invoke-static {v1, v7, v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 95
    .line 96
    invoke-interface {v1, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    sget-object v4, Landroidx/compose/foundation/layout/IntrinsicSize;->Max:Landroidx/compose/foundation/layout/IntrinsicSize;

    .line 101
    .line 102
    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/OffsetKt;->width(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/IntrinsicSize;)Landroidx/compose/ui/Modifier;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 107
    .line 108
    invoke-static {v2, v4, p1, v5}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    iget-wide v4, p1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 113
    .line 114
    ushr-long v7, v4, v3

    .line 115
    .line 116
    xor-long/2addr v4, v7

    .line 117
    long-to-int v3, v4

    .line 118
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {p1, v1}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 127
    .line 128
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 132
    .line 133
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 134
    .line 135
    .line 136
    iget-boolean v7, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 137
    .line 138
    if-eqz v7, :cond_5

    .line 139
    .line 140
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 145
    .line 146
    .line 147
    :goto_4
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 148
    .line 149
    invoke-static {p1, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 150
    .line 151
    .line 152
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 153
    .line 154
    invoke-static {p1, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 162
    .line 163
    invoke-static {p1, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 164
    .line 165
    .line 166
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 167
    .line 168
    invoke-static {p1, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 169
    .line 170
    .line 171
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 172
    .line 173
    invoke-static {p1, v1, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 174
    .line 175
    .line 176
    and-int/lit8 v0, v0, 0x70

    .line 177
    .line 178
    const/4 v1, 0x6

    .line 179
    or-int/2addr v0, v1

    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 185
    .line 186
    invoke-interface {p0, v1, p1, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 190
    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_6
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 194
    .line 195
    .line 196
    :goto_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    if-eqz p1, :cond_7

    .line 201
    .line 202
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/AdaptiveMessageItemHeaderRowKt$$ExternalSyntheticLambda2;

    .line 203
    .line 204
    invoke-direct {v0, p0, p2, v6}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/AdaptiveMessageItemHeaderRowKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function3;II)V

    .line 205
    .line 206
    .line 207
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 208
    .line 209
    :cond_7
    return-void
.end method

.method public static final HeaderRowSmall(Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p1, -0x4988007f

    .line 5
    .line 6
    .line 7
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    and-int/lit8 p1, p2, 0x6

    .line 11
    .line 12
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x2

    .line 25
    :goto_0
    or-int/2addr p1, p2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move p1, p2

    .line 28
    :goto_1
    and-int/lit8 v1, p2, 0x30

    .line 29
    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const/16 v1, 0x20

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/16 v1, 0x10

    .line 42
    .line 43
    :goto_2
    or-int/2addr p1, v1

    .line 44
    :cond_3
    and-int/lit8 v1, p1, 0x13

    .line 45
    .line 46
    const/16 v2, 0x12

    .line 47
    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v3, 0x1

    .line 50
    if-eq v1, v2, :cond_4

    .line 51
    .line 52
    move v1, v3

    .line 53
    goto :goto_3

    .line 54
    :cond_4
    move v1, v10

    .line 55
    :goto_3
    and-int/2addr p1, v3

    .line 56
    invoke-virtual {v7, p1, v1}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_5

    .line 61
    .line 62
    sget-object p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 63
    .line 64
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance v2, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 74
    .line 75
    new-instance p1, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 76
    .line 77
    const/4 v1, 0x7

    .line 78
    invoke-direct {p1, v1}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 79
    .line 80
    .line 81
    const/high16 v1, 0x40000000    # 2.0f

    .line 82
    .line 83
    invoke-direct {v2, v1, v3, p1}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 84
    .line 85
    .line 86
    sget-object v1, Landroidx/compose/foundation/layout/OffsetKt;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 87
    .line 88
    const/4 p1, 0x0

    .line 89
    const/high16 v4, 0x41a00000    # 20.0f

    .line 90
    .line 91
    invoke-static {v0, p1, v4, v3}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-instance p1, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    const/16 v3, 0xf

    .line 98
    .line 99
    invoke-direct {p1, v3, p0}, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    const v3, -0x7c4be11a

    .line 103
    .line 104
    .line 105
    invoke-static {v3, p1, v7}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    const v8, 0x1b0030

    .line 110
    .line 111
    .line 112
    const/16 v9, 0x18

    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    const/4 v4, 0x0

    .line 116
    const/4 v5, 0x2

    .line 117
    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/layout/OffsetKt;->FlowRow(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Vertical;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 118
    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_5
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 122
    .line 123
    .line 124
    :goto_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-eqz p1, :cond_6

    .line 129
    .line 130
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/AdaptiveMessageItemHeaderRowKt$$ExternalSyntheticLambda2;

    .line 131
    .line 132
    invoke-direct {v0, p0, p2, v10}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/AdaptiveMessageItemHeaderRowKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function3;II)V

    .line 133
    .line 134
    .line 135
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 136
    .line 137
    :cond_6
    return-void
.end method

.method public static final MessageBodyContent(ILandroidx/compose/runtime/Composer;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;)V
    .locals 17

    .line 1
    move-object/from16 v4, p2

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->excerptLineConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;

    .line 11
    .line 12
    iget v3, v2, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->maxExcerptLines:I

    .line 13
    .line 14
    move-object/from16 v13, p1

    .line 15
    .line 16
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    const v5, -0x72500846

    .line 19
    .line 20
    .line 21
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    const/4 v5, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v5, 0x2

    .line 33
    :goto_0
    or-int v5, p0, v5

    .line 34
    .line 35
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const/16 v7, 0x20

    .line 40
    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    move v6, v7

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v6, 0x10

    .line 46
    .line 47
    :goto_1
    or-int/2addr v5, v6

    .line 48
    or-int/lit16 v5, v5, 0x180

    .line 49
    .line 50
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    const/16 v6, 0x800

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/16 v6, 0x400

    .line 60
    .line 61
    :goto_2
    or-int/2addr v5, v6

    .line 62
    and-int/lit16 v6, v5, 0x493

    .line 63
    .line 64
    const/16 v8, 0x492

    .line 65
    .line 66
    const/4 v9, 0x1

    .line 67
    const/4 v10, 0x0

    .line 68
    if-eq v6, v8, :cond_3

    .line 69
    .line 70
    move v6, v9

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    move v6, v10

    .line 73
    :goto_3
    and-int/lit8 v8, v5, 0x1

    .line 74
    .line 75
    invoke-virtual {v13, v8, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_7

    .line 80
    .line 81
    sget-object v6, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 82
    .line 83
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 84
    .line 85
    invoke-static {v6, v8, v13, v10}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    iget-wide v11, v13, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 90
    .line 91
    ushr-long v7, v11, v7

    .line 92
    .line 93
    xor-long/2addr v7, v11

    .line 94
    long-to-int v7, v7

    .line 95
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 100
    .line 101
    invoke-static {v13, v11}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 106
    .line 107
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 111
    .line 112
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 113
    .line 114
    .line 115
    iget-boolean v15, v13, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 116
    .line 117
    if-eqz v15, :cond_4

    .line 118
    .line 119
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_4
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 124
    .line 125
    .line 126
    :goto_4
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 127
    .line 128
    invoke-static {v13, v6, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 129
    .line 130
    .line 131
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 132
    .line 133
    invoke-static {v13, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 141
    .line 142
    invoke-static {v13, v6, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 143
    .line 144
    .line 145
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 146
    .line 147
    invoke-static {v13, v6}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 148
    .line 149
    .line 150
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 151
    .line 152
    invoke-static {v13, v12, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 153
    .line 154
    .line 155
    shr-int/lit8 v5, v5, 0x3

    .line 156
    .line 157
    if-nez v3, :cond_5

    .line 158
    .line 159
    const v6, 0x39a3816c

    .line 160
    .line 161
    .line 162
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 163
    .line 164
    .line 165
    iget-object v6, v2, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->secondaryLineConfiguration:Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;

    .line 166
    .line 167
    invoke-static {v6, v13}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->rememberPrefixAnnotatedString(Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/AnnotatedString;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    invoke-static {v6, v13}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->rememberInlineContent(Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;Landroidx/compose/runtime/Composer;)Lkotlinx/collections/immutable/PersistentMap;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    new-instance v8, Lkotlin/Pair;

    .line 176
    .line 177
    invoke-direct {v8, v7, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 181
    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_5
    const v6, 0x39a67c6f

    .line 185
    .line 186
    .line 187
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 191
    .line 192
    .line 193
    sget-object v6, Lkotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMap;->EMPTY:Lkotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMap;

    .line 194
    .line 195
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    new-instance v8, Lkotlin/Pair;

    .line 199
    .line 200
    const/4 v7, 0x0

    .line 201
    invoke-direct {v8, v7, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    :goto_5
    iget-object v6, v8, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString;

    .line 207
    .line 208
    iget-object v7, v8, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v7, Lkotlinx/collections/immutable/PersistentMap;

    .line 211
    .line 212
    and-int/lit16 v5, v5, 0x380

    .line 213
    .line 214
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-virtual {v4, v6, v7, v13, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    sget-object v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 222
    .line 223
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 228
    .line 229
    const/high16 v6, 0x40800000    # 4.0f

    .line 230
    .line 231
    invoke-static {v5, v11, v6, v13}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;Landroidx/compose/ui/Modifier$Companion;FLandroidx/compose/runtime/GapComposer;)V

    .line 232
    .line 233
    .line 234
    if-lez v3, :cond_6

    .line 235
    .line 236
    const v3, 0x62ce16e0

    .line 237
    .line 238
    .line 239
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 240
    .line 241
    .line 242
    invoke-static {v0, v13}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->rememberInlineContent(Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;Landroidx/compose/runtime/Composer;)Lkotlinx/collections/immutable/PersistentMap;

    .line 243
    .line 244
    .line 245
    move-result-object v12

    .line 246
    invoke-static {v0, v13}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->rememberPrefixAnnotatedString(Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/AnnotatedString;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 251
    .line 252
    invoke-direct {v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3, v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    move-object v0, v11

    .line 266
    iget v11, v2, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;->maxExcerptLines:I

    .line 267
    .line 268
    const/16 v14, 0x6000

    .line 269
    .line 270
    const/16 v15, 0xe

    .line 271
    .line 272
    const/4 v6, 0x0

    .line 273
    const-wide/16 v7, 0x0

    .line 274
    .line 275
    move v3, v9

    .line 276
    const/4 v9, 0x0

    .line 277
    move/from16 v16, v10

    .line 278
    .line 279
    const/4 v10, 0x2

    .line 280
    move/from16 v3, v16

    .line 281
    .line 282
    invoke-static/range {v5 .. v15}, Lkotlin/math/MathKt;->TextBodySmall-ZHfKjFs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILkotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/Composer;II)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 286
    .line 287
    .line 288
    :goto_6
    const/4 v3, 0x1

    .line 289
    goto :goto_7

    .line 290
    :cond_6
    move v3, v10

    .line 291
    move-object v0, v11

    .line 292
    const v5, 0x62d65492

    .line 293
    .line 294
    .line 295
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 299
    .line 300
    .line 301
    goto :goto_6

    .line 302
    :goto_7
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 303
    .line 304
    .line 305
    move-object v3, v0

    .line 306
    goto :goto_8

    .line 307
    :cond_7
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 308
    .line 309
    .line 310
    move-object/from16 v3, p3

    .line 311
    .line 312
    :goto_8
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    if-eqz v6, :cond_8

    .line 317
    .line 318
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;

    .line 319
    .line 320
    move/from16 v5, p0

    .line 321
    .line 322
    invoke-direct/range {v0 .. v5}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageItemConfiguration;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    .line 323
    .line 324
    .line 325
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 326
    .line 327
    :cond_8
    return-void
.end method

.method public static final MessageConversationCounterBadge(ILnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageConversationCounterBadgeColor;Landroidx/compose/ui/Modifier;ILandroidx/compose/runtime/Composer;I)V
    .locals 35

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-wide v3, v2, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageConversationCounterBadgeColor;->containerColor:J

    .line 6
    .line 7
    move-object/from16 v11, p4

    .line 8
    .line 9
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, -0xcccf128

    .line 12
    .line 13
    .line 14
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x2

    .line 26
    :goto_0
    or-int v0, p5, v0

    .line 27
    .line 28
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/16 v6, 0x20

    .line 33
    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    move v5, v6

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v5, 0x10

    .line 39
    .line 40
    :goto_1
    or-int/2addr v0, v5

    .line 41
    or-int/lit16 v0, v0, 0xd80

    .line 42
    .line 43
    and-int/lit16 v5, v0, 0x493

    .line 44
    .line 45
    const/16 v7, 0x492

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v13, 0x1

    .line 49
    if-eq v5, v7, :cond_2

    .line 50
    .line 51
    move v5, v13

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move v5, v8

    .line 54
    :goto_2
    and-int/2addr v0, v13

    .line 55
    invoke-virtual {v11, v0, v5}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_7

    .line 60
    .line 61
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapesKt;->LocalThemeShapes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 62
    .line 63
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;

    .line 68
    .line 69
    iget-object v5, v5, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;->large:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 70
    .line 71
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 72
    .line 73
    invoke-static {v14, v3, v4, v5}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    iget-object v7, v2, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageConversationCounterBadgeColor;->borderColor:Landroidx/compose/ui/graphics/Color;

    .line 78
    .line 79
    if-eqz v7, :cond_3

    .line 80
    .line 81
    iget-wide v3, v7, Landroidx/compose/ui/graphics/Color;->value:J

    .line 82
    .line 83
    :cond_3
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;

    .line 88
    .line 89
    iget-object v0, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeShapes;->large:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 90
    .line 91
    const/high16 v7, 0x3f800000    # 1.0f

    .line 92
    .line 93
    invoke-static {v5, v7, v3, v4, v0}, Landroidx/compose/foundation/ImageKt;->border-xT4_qwU(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sget-object v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 98
    .line 99
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    const/high16 v3, 0x40800000    # 4.0f

    .line 109
    .line 110
    const/high16 v4, 0x40400000    # 3.0f

    .line 111
    .line 112
    invoke-static {v0, v3, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 117
    .line 118
    invoke-static {v3, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iget-wide v4, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 123
    .line 124
    ushr-long v6, v4, v6

    .line 125
    .line 126
    xor-long/2addr v4, v6

    .line 127
    long-to-int v4, v4

    .line 128
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-static {v11, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 137
    .line 138
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 142
    .line 143
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 144
    .line 145
    .line 146
    iget-boolean v7, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 147
    .line 148
    if-eqz v7, :cond_4

    .line 149
    .line 150
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_4
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 155
    .line 156
    .line 157
    :goto_3
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 158
    .line 159
    invoke-static {v11, v3, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 160
    .line 161
    .line 162
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 163
    .line 164
    invoke-static {v11, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 165
    .line 166
    .line 167
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 172
    .line 173
    invoke-static {v11, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 174
    .line 175
    .line 176
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 177
    .line 178
    invoke-static {v11, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 179
    .line 180
    .line 181
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 182
    .line 183
    invoke-static {v11, v0, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 184
    .line 185
    .line 186
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 187
    .line 188
    invoke-direct {v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 189
    .line 190
    .line 191
    new-instance v15, Landroidx/compose/ui/text/SpanStyle;

    .line 192
    .line 193
    sget-object v20, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    .line 194
    .line 195
    const/16 v33, 0x0

    .line 196
    .line 197
    const v34, 0xfffb

    .line 198
    .line 199
    .line 200
    const-wide/16 v16, 0x0

    .line 201
    .line 202
    const-wide/16 v18, 0x0

    .line 203
    .line 204
    const/16 v21, 0x0

    .line 205
    .line 206
    const/16 v22, 0x0

    .line 207
    .line 208
    const/16 v23, 0x0

    .line 209
    .line 210
    const/16 v24, 0x0

    .line 211
    .line 212
    const-wide/16 v25, 0x0

    .line 213
    .line 214
    const/16 v27, 0x0

    .line 215
    .line 216
    const/16 v28, 0x0

    .line 217
    .line 218
    const/16 v29, 0x0

    .line 219
    .line 220
    const-wide/16 v30, 0x0

    .line 221
    .line 222
    const/16 v32, 0x0

    .line 223
    .line 224
    invoke-direct/range {v15 .. v34}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, v15}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pushStyle(Landroidx/compose/ui/text/SpanStyle;)I

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    const/16 v0, 0x63

    .line 232
    .line 233
    if-le v1, v0, :cond_5

    .line 234
    .line 235
    move v5, v0

    .line 236
    goto :goto_4

    .line 237
    :cond_5
    move v5, v1

    .line 238
    :goto_4
    :try_start_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-virtual {v3, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    if-le v1, v0, :cond_6

    .line 246
    .line 247
    const-string v5, "+"

    .line 248
    .line 249
    invoke-virtual {v3, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .line 251
    .line 252
    goto :goto_5

    .line 253
    :catchall_0
    move-exception v0

    .line 254
    goto :goto_6

    .line 255
    :cond_6
    :goto_5
    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    iget-wide v7, v2, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageConversationCounterBadgeColor;->contentColor:J

    .line 263
    .line 264
    const/4 v10, 0x0

    .line 265
    const/4 v12, 0x0

    .line 266
    const/4 v6, 0x0

    .line 267
    const/4 v9, 0x0

    .line 268
    invoke-static/range {v5 .. v12}, Lorg/slf4j/helpers/Util;->TextLabelSmall-Xl4FiYE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 272
    .line 273
    .line 274
    move v4, v0

    .line 275
    move-object v3, v14

    .line 276
    goto :goto_7

    .line 277
    :goto_6
    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->pop(I)V

    .line 278
    .line 279
    .line 280
    throw v0

    .line 281
    :cond_7
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 282
    .line 283
    .line 284
    move-object/from16 v3, p2

    .line 285
    .line 286
    move/from16 v4, p3

    .line 287
    .line 288
    :goto_7
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    if-eqz v6, :cond_8

    .line 293
    .line 294
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/template/ResponsiveContentKt$$ExternalSyntheticLambda0;

    .line 295
    .line 296
    move/from16 v5, p5

    .line 297
    .line 298
    invoke-direct/range {v0 .. v5}, Lapp/k9mail/core/ui/compose/designsystem/template/ResponsiveContentKt$$ExternalSyntheticLambda0;-><init>(ILnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageConversationCounterBadgeColor;Landroidx/compose/ui/Modifier;II)V

    .line 299
    .line 300
    .line 301
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 302
    .line 303
    :cond_8
    return-void
.end method

.method public static final MessageItemAvatarCircle(Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar;Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageItemAvatarCircleColors;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-object/from16 v10, p5

    .line 14
    .line 15
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    const v0, 0xa1cb4d8

    .line 18
    .line 19
    .line 20
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x2

    .line 32
    :goto_0
    or-int v0, p6, v0

    .line 33
    .line 34
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/16 v5, 0x20

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    move v4, v5

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v4, 0x10

    .line 45
    .line 46
    :goto_1
    or-int/2addr v0, v4

    .line 47
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    const/16 v4, 0x100

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/16 v4, 0x80

    .line 57
    .line 58
    :goto_2
    or-int/2addr v0, v4

    .line 59
    or-int/lit16 v0, v0, 0x6c00

    .line 60
    .line 61
    and-int/lit16 v4, v0, 0x2493

    .line 62
    .line 63
    const/16 v6, 0x2492

    .line 64
    .line 65
    const/4 v13, 0x1

    .line 66
    const/4 v14, 0x0

    .line 67
    if-eq v4, v6, :cond_3

    .line 68
    .line 69
    move v4, v13

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    move v4, v14

    .line 72
    :goto_3
    and-int/2addr v0, v13

    .line 73
    invoke-virtual {v10, v0, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_7

    .line 78
    .line 79
    sget-object v0, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 80
    .line 81
    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 82
    .line 83
    invoke-static {v15, v0}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    const/4 v6, 0x0

    .line 88
    const/16 v7, 0xfe

    .line 89
    .line 90
    invoke-static {v4, v6, v3, v7}, Landroidx/compose/foundation/ImageKt;->combinedClickable-hoGz1lA$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    sget-object v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt;->LocalThemeSizes:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 95
    .line 96
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizes;

    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    const/high16 v6, 0x42400000    # 48.0f

    .line 106
    .line 107
    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    sget-object v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 112
    .line 113
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    check-cast v6, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    const/high16 v6, 0x40800000    # 4.0f

    .line 123
    .line 124
    invoke-static {v4, v6}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    iget-wide v6, v2, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageItemAvatarCircleColors;->containerColor:J

    .line 129
    .line 130
    invoke-static {v4, v6, v7, v0}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    const/high16 v6, 0x3f800000    # 1.0f

    .line 135
    .line 136
    iget-wide v7, v2, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageItemAvatarCircleColors;->borderColor:J

    .line 137
    .line 138
    invoke-static {v4, v6, v7, v8, v0}, Landroidx/compose/foundation/ImageKt;->border-xT4_qwU(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    .line 143
    .line 144
    invoke-static {v6, v14}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    iget-wide v7, v10, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 149
    .line 150
    ushr-long v11, v7, v5

    .line 151
    .line 152
    xor-long/2addr v7, v11

    .line 153
    long-to-int v5, v7

    .line 154
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    invoke-static {v10, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 163
    .line 164
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 168
    .line 169
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 170
    .line 171
    .line 172
    iget-boolean v9, v10, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 173
    .line 174
    if-eqz v9, :cond_4

    .line 175
    .line 176
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_4
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 181
    .line 182
    .line 183
    :goto_4
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 184
    .line 185
    invoke-static {v10, v6, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 186
    .line 187
    .line 188
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 189
    .line 190
    invoke-static {v10, v7, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 198
    .line 199
    invoke-static {v10, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 200
    .line 201
    .line 202
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 203
    .line 204
    invoke-static {v10, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 205
    .line 206
    .line 207
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 208
    .line 209
    invoke-static {v10, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 210
    .line 211
    .line 212
    instance-of v4, v1, Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar$Monogram;

    .line 213
    .line 214
    if-eqz v4, :cond_5

    .line 215
    .line 216
    const v0, -0xf69df8b

    .line 217
    .line 218
    .line 219
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 220
    .line 221
    .line 222
    move-object v0, v1

    .line 223
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar$Monogram;

    .line 224
    .line 225
    iget-object v4, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar$Monogram;->value:Ljava/lang/String;

    .line 226
    .line 227
    const/4 v11, 0x0

    .line 228
    const/16 v12, 0x3e

    .line 229
    .line 230
    const/4 v5, 0x0

    .line 231
    const-wide/16 v6, 0x0

    .line 232
    .line 233
    const/4 v8, 0x0

    .line 234
    const/4 v9, 0x0

    .line 235
    invoke-static/range {v4 .. v12}, Landroidx/room/util/RelationUtil;->TextTitleSmall-Xl4FiYE(Ljava/lang/String;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 239
    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_5
    instance-of v4, v1, Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar$Image;

    .line 243
    .line 244
    if-eqz v4, :cond_6

    .line 245
    .line 246
    const v4, 0x222f1640

    .line 247
    .line 248
    .line 249
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 250
    .line 251
    .line 252
    move-object v4, v1

    .line 253
    check-cast v4, Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar$Image;

    .line 254
    .line 255
    iget-object v4, v4, Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar$Image;->url:Ljava/lang/String;

    .line 256
    .line 257
    sget-object v5, Lnet/thunderbird/core/ui/compose/designsystem/atom/icon/Icons$Outlined;->AccountCircle:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 258
    .line 259
    invoke-static {v5, v10}, Landroidx/compose/ui/graphics/vector/PathParserKt;->rememberVectorPainter(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 260
    .line 261
    .line 262
    move-result-object v9

    .line 263
    invoke-static {v15, v0}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    const v11, 0x200180

    .line 268
    .line 269
    .line 270
    const/16 v12, 0x38

    .line 271
    .line 272
    sget-object v6, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->lambda$1587790113:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 273
    .line 274
    const/4 v7, 0x0

    .line 275
    const/4 v8, 0x0

    .line 276
    invoke-static/range {v4 .. v12}, Lapp/k9mail/core/ui/compose/designsystem/atom/image/RemoteImageKt;->RemoteImage(Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/runtime/Composer;II)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 280
    .line 281
    .line 282
    :goto_5
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 283
    .line 284
    .line 285
    move v5, v13

    .line 286
    move-object v4, v15

    .line 287
    goto :goto_6

    .line 288
    :cond_6
    const v0, -0xf69f8d4

    .line 289
    .line 290
    .line 291
    invoke-static {v10, v0, v14}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroidx/compose/runtime/GapComposer;IZ)Lorg/jsoup/SerializationException;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    throw v0

    .line 296
    :cond_7
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 297
    .line 298
    .line 299
    move-object/from16 v4, p3

    .line 300
    .line 301
    move/from16 v5, p4

    .line 302
    .line 303
    :goto_6
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    if-eqz v7, :cond_8

    .line 308
    .line 309
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda8;

    .line 310
    .line 311
    move/from16 v6, p6

    .line 312
    .line 313
    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/ui/messagelist/MessageListFragmentKt$$ExternalSyntheticLambda8;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/Avatar;Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageItemAvatarCircleColors;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZI)V

    .line 314
    .line 315
    .line 316
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 317
    .line 318
    :cond_8
    return-void
.end method

.method public static final MessageItemSenderSubjectFirstLine(Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;Landroidx/compose/ui/text/AnnotatedString;ZLandroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V
    .locals 16

    .line 1
    move/from16 v6, p6

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v13, p5

    .line 7
    .line 8
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v0, -0x1b4282b8

    .line 11
    .line 12
    .line 13
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    move-object/from16 v8, p0

    .line 17
    .line 18
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x2

    .line 27
    :goto_0
    or-int/2addr v0, v6

    .line 28
    move-object/from16 v9, p1

    .line 29
    .line 30
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/16 v1, 0x20

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/16 v1, 0x10

    .line 40
    .line 41
    :goto_1
    or-int/2addr v0, v1

    .line 42
    move/from16 v3, p2

    .line 43
    .line 44
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    const/16 v1, 0x100

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v1, 0x80

    .line 54
    .line 55
    :goto_2
    or-int/2addr v0, v1

    .line 56
    or-int/lit16 v1, v0, 0xc00

    .line 57
    .line 58
    and-int/lit8 v2, p7, 0x10

    .line 59
    .line 60
    if-eqz v2, :cond_4

    .line 61
    .line 62
    or-int/lit16 v1, v0, 0x6c00

    .line 63
    .line 64
    :cond_3
    move/from16 v0, p4

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_4
    and-int/lit16 v0, v6, 0x6000

    .line 68
    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    move/from16 v0, p4

    .line 72
    .line 73
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_5

    .line 78
    .line 79
    const/16 v4, 0x4000

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_5
    const/16 v4, 0x2000

    .line 83
    .line 84
    :goto_3
    or-int/2addr v1, v4

    .line 85
    :goto_4
    and-int/lit16 v4, v1, 0x2493

    .line 86
    .line 87
    const/16 v5, 0x2492

    .line 88
    .line 89
    const/4 v7, 0x0

    .line 90
    const/4 v10, 0x1

    .line 91
    if-eq v4, v5, :cond_6

    .line 92
    .line 93
    move v4, v10

    .line 94
    goto :goto_5

    .line 95
    :cond_6
    move v4, v7

    .line 96
    :goto_5
    and-int/2addr v1, v10

    .line 97
    invoke-virtual {v13, v1, v4}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_8

    .line 102
    .line 103
    if-eqz v2, :cond_7

    .line 104
    .line 105
    move v11, v7

    .line 106
    goto :goto_6

    .line 107
    :cond_7
    move v11, v0

    .line 108
    :goto_6
    const/4 v10, 0x0

    .line 109
    const/4 v12, 0x0

    .line 110
    move v7, v3

    .line 111
    invoke-static/range {v7 .. v12}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->styledSenderOrSubject(ZLnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/AnnotatedString;ZI)Landroidx/compose/ui/text/AnnotatedString;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    move v1, v11

    .line 116
    const v14, 0x36030

    .line 117
    .line 118
    .line 119
    const/16 v15, 0xc

    .line 120
    .line 121
    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 122
    .line 123
    const-wide/16 v9, 0x0

    .line 124
    .line 125
    const/4 v11, 0x2

    .line 126
    const/4 v12, 0x1

    .line 127
    move-object v7, v0

    .line 128
    invoke-static/range {v7 .. v15}, Landroidx/room/util/RelationUtil;->TextTitleSmall-Xl4FiYE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JIILandroidx/compose/runtime/Composer;II)V

    .line 129
    .line 130
    .line 131
    move v5, v1

    .line 132
    move-object v4, v8

    .line 133
    goto :goto_7

    .line 134
    :cond_8
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 135
    .line 136
    .line 137
    move-object/from16 v4, p3

    .line 138
    .line 139
    move v5, v0

    .line 140
    :goto_7
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    if-eqz v8, :cond_9

    .line 145
    .line 146
    new-instance v0, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda2;

    .line 147
    .line 148
    move-object/from16 v1, p0

    .line 149
    .line 150
    move-object/from16 v2, p1

    .line 151
    .line 152
    move/from16 v3, p2

    .line 153
    .line 154
    move/from16 v7, p7

    .line 155
    .line 156
    invoke-direct/range {v0 .. v7}, Lapp/k9mail/core/ui/compose/designsystem/atom/button/RadioButtonKt$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;Landroidx/compose/ui/text/AnnotatedString;ZLandroidx/compose/ui/Modifier;ZII)V

    .line 157
    .line 158
    .line 159
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 160
    .line 161
    :cond_9
    return-void
.end method

.method public static final MessageItemSenderSubjectSecondLine(Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;Landroidx/compose/ui/text/AnnotatedString;ZLandroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    .line 1
    move/from16 v7, p7

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v0, p6

    .line 7
    .line 8
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v1, 0x349516a9

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    and-int/lit8 v1, v7, 0x6

    .line 17
    .line 18
    move-object/from16 v9, p0

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x2

    .line 31
    :goto_0
    or-int/2addr v1, v7

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, v7

    .line 34
    :goto_1
    and-int/lit8 v2, v7, 0x30

    .line 35
    .line 36
    move-object/from16 v10, p1

    .line 37
    .line 38
    if-nez v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    const/16 v2, 0x20

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v2, 0x10

    .line 50
    .line 51
    :goto_2
    or-int/2addr v1, v2

    .line 52
    :cond_3
    and-int/lit16 v2, v7, 0x180

    .line 53
    .line 54
    move/from16 v8, p2

    .line 55
    .line 56
    if-nez v2, :cond_5

    .line 57
    .line 58
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    const/16 v2, 0x100

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    const/16 v2, 0x80

    .line 68
    .line 69
    :goto_3
    or-int/2addr v1, v2

    .line 70
    :cond_5
    or-int/lit16 v1, v1, 0xc00

    .line 71
    .line 72
    and-int/lit16 v2, v7, 0x6000

    .line 73
    .line 74
    move-object/from16 v11, p4

    .line 75
    .line 76
    if-nez v2, :cond_7

    .line 77
    .line 78
    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_6

    .line 83
    .line 84
    const/16 v2, 0x4000

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_6
    const/16 v2, 0x2000

    .line 88
    .line 89
    :goto_4
    or-int/2addr v1, v2

    .line 90
    :cond_7
    const/high16 v2, 0x30000

    .line 91
    .line 92
    and-int/2addr v2, v7

    .line 93
    move-object/from16 v15, p5

    .line 94
    .line 95
    if-nez v2, :cond_9

    .line 96
    .line 97
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_8

    .line 102
    .line 103
    const/high16 v2, 0x20000

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_8
    const/high16 v2, 0x10000

    .line 107
    .line 108
    :goto_5
    or-int/2addr v1, v2

    .line 109
    :cond_9
    const v2, 0x12493

    .line 110
    .line 111
    .line 112
    and-int/2addr v2, v1

    .line 113
    const v3, 0x12492

    .line 114
    .line 115
    .line 116
    if-eq v2, v3, :cond_a

    .line 117
    .line 118
    const/4 v2, 0x1

    .line 119
    goto :goto_6

    .line 120
    :cond_a
    const/4 v2, 0x0

    .line 121
    :goto_6
    and-int/lit8 v3, v1, 0x1

    .line 122
    .line 123
    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_b

    .line 128
    .line 129
    shr-int/lit8 v2, v1, 0x6

    .line 130
    .line 131
    shl-int/lit8 v1, v1, 0x3

    .line 132
    .line 133
    const/16 v13, 0x10

    .line 134
    .line 135
    const/4 v12, 0x0

    .line 136
    invoke-static/range {v8 .. v13}, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->styledSenderOrSubject(ZLnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/AnnotatedString;ZI)Landroidx/compose/ui/text/AnnotatedString;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    const v4, 0x36000

    .line 141
    .line 142
    .line 143
    and-int/lit8 v2, v2, 0x70

    .line 144
    .line 145
    or-int/2addr v2, v4

    .line 146
    const/high16 v4, 0x380000

    .line 147
    .line 148
    and-int/2addr v1, v4

    .line 149
    or-int v17, v2, v1

    .line 150
    .line 151
    const/16 v18, 0xc

    .line 152
    .line 153
    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 154
    .line 155
    const-wide/16 v10, 0x0

    .line 156
    .line 157
    const/4 v12, 0x0

    .line 158
    const/4 v13, 0x2

    .line 159
    const/4 v14, 0x1

    .line 160
    move-object/from16 v16, v0

    .line 161
    .line 162
    move-object v8, v3

    .line 163
    invoke-static/range {v8 .. v18}, Lkotlin/math/MathKt;->TextBodySmall-ZHfKjFs(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/text/style/TextAlign;IILkotlinx/collections/immutable/PersistentMap;Landroidx/compose/runtime/Composer;II)V

    .line 164
    .line 165
    .line 166
    move-object v4, v9

    .line 167
    goto :goto_7

    .line 168
    :cond_b
    move-object/from16 v16, v0

    .line 169
    .line 170
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 171
    .line 172
    .line 173
    move-object/from16 v4, p3

    .line 174
    .line 175
    :goto_7
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    if-eqz v8, :cond_c

    .line 180
    .line 181
    new-instance v0, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda2;

    .line 182
    .line 183
    move-object/from16 v1, p0

    .line 184
    .line 185
    move-object/from16 v2, p1

    .line 186
    .line 187
    move/from16 v3, p2

    .line 188
    .line 189
    move-object/from16 v5, p4

    .line 190
    .line 191
    move-object/from16 v6, p5

    .line 192
    .line 193
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/MenuKt$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;Landroidx/compose/ui/text/AnnotatedString;ZLandroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlinx/collections/immutable/PersistentMap;I)V

    .line 194
    .line 195
    .line 196
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 197
    .line 198
    :cond_c
    return-void
.end method

.method public static final rememberInlineContent(Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;Landroidx/compose/runtime/Composer;)Lkotlinx/collections/immutable/PersistentMap;
    .locals 12

    .line 1
    sget-object v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypographyKt;->LocalThemeTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;

    .line 10
    .line 11
    iget-object v0, v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeTypography;->bodySmall:Landroidx/compose/ui/text/TextStyle;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 14
    .line 15
    iget-wide v0, v0, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    .line 16
    .line 17
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 24
    .line 25
    invoke-interface {v2, v0, v1}, Landroidx/compose/ui/unit/Density;->toDp-GaN1DYA(J)F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/high16 v1, 0x40c00000    # 6.0f

    .line 30
    .line 31
    add-float/2addr v0, v1

    .line 32
    invoke-interface {v2, v0}, Landroidx/compose/ui/unit/Density;->toSp-0xMU5do(F)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 47
    .line 48
    if-ne v3, v2, :cond_7

    .line 49
    .line 50
    :cond_0
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;->leadingItems:Lkotlinx/collections/immutable/ImmutableList;

    .line 51
    .line 52
    const/16 v2, 0xa

    .line 53
    .line 54
    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/16 v4, 0x10

    .line 63
    .line 64
    if-ge v3, v4, :cond_1

    .line 65
    .line 66
    move v3, v4

    .line 67
    :cond_1
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    invoke-direct {v5, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_6

    .line 81
    .line 82
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineLeadingIndicator;

    .line 87
    .line 88
    instance-of v6, v3, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineLeadingIndicator$AttachmentIcon;

    .line 89
    .line 90
    if-eqz v6, :cond_2

    .line 91
    .line 92
    new-instance v3, Landroidx/compose/foundation/text/InlineTextContent;

    .line 93
    .line 94
    new-instance v6, Landroidx/compose/ui/text/Placeholder;

    .line 95
    .line 96
    invoke-static {v4}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 97
    .line 98
    .line 99
    move-result-wide v7

    .line 100
    invoke-static {v4}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 101
    .line 102
    .line 103
    move-result-wide v9

    .line 104
    invoke-direct {v6, v7, v8, v9, v10}, Landroidx/compose/ui/text/Placeholder;-><init>(JJ)V

    .line 105
    .line 106
    .line 107
    sget-object v7, Lnet/thunderbird/feature/mail/message/list/ui/component/molecule/MessageBodyContentKt;->lambda$868848991:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 108
    .line 109
    invoke-direct {v3, v6, v7}, Landroidx/compose/foundation/text/InlineTextContent;-><init>(Landroidx/compose/ui/text/Placeholder;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 110
    .line 111
    .line 112
    new-instance v6, Lkotlin/Pair;

    .line 113
    .line 114
    const-string v7, "attachment_icon_inline_composable_id"

    .line 115
    .line 116
    invoke-direct {v6, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_2
    instance-of v6, v3, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineLeadingIndicator$ConversationCounterBadge;

    .line 121
    .line 122
    if-eqz v6, :cond_5

    .line 123
    .line 124
    new-instance v6, Landroidx/compose/foundation/text/InlineTextContent;

    .line 125
    .line 126
    new-instance v7, Landroidx/compose/ui/text/Placeholder;

    .line 127
    .line 128
    check-cast v3, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineLeadingIndicator$ConversationCounterBadge;

    .line 129
    .line 130
    iget v8, v3, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineLeadingIndicator$ConversationCounterBadge;->count:I

    .line 131
    .line 132
    const/4 v9, 0x1

    .line 133
    if-gt v9, v8, :cond_3

    .line 134
    .line 135
    if-ge v8, v2, :cond_3

    .line 136
    .line 137
    const/16 v8, 0xe

    .line 138
    .line 139
    invoke-static {v8}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 140
    .line 141
    .line 142
    move-result-wide v10

    .line 143
    goto :goto_1

    .line 144
    :cond_3
    if-gt v2, v8, :cond_4

    .line 145
    .line 146
    const/16 v10, 0x64

    .line 147
    .line 148
    if-ge v8, v10, :cond_4

    .line 149
    .line 150
    const/16 v8, 0x16

    .line 151
    .line 152
    invoke-static {v8}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 153
    .line 154
    .line 155
    move-result-wide v10

    .line 156
    goto :goto_1

    .line 157
    :cond_4
    const/16 v8, 0x1c

    .line 158
    .line 159
    invoke-static {v8}, Landroidx/sqlite/SQLite;->getSp(I)J

    .line 160
    .line 161
    .line 162
    move-result-wide v10

    .line 163
    :goto_1
    invoke-direct {v7, v10, v11, v0, v1}, Landroidx/compose/ui/text/Placeholder;-><init>(JJ)V

    .line 164
    .line 165
    .line 166
    new-instance v8, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;

    .line 167
    .line 168
    invoke-direct {v8, v4, v3}, Landroidx/compose/runtime/MovableContentKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 172
    .line 173
    const v10, 0xeca1588

    .line 174
    .line 175
    .line 176
    invoke-direct {v3, v10, v8, v9}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 177
    .line 178
    .line 179
    invoke-direct {v6, v7, v3}, Landroidx/compose/foundation/text/InlineTextContent;-><init>(Landroidx/compose/ui/text/Placeholder;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 180
    .line 181
    .line 182
    new-instance v3, Lkotlin/Pair;

    .line 183
    .line 184
    const-string v7, "conversation_counter_inline_composable_id"

    .line 185
    .line 186
    invoke-direct {v3, v7, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    move-object v6, v3

    .line 190
    :goto_2
    iget-object v3, v6, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 191
    .line 192
    iget-object v6, v6, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 193
    .line 194
    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_5
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 199
    .line 200
    .line 201
    const/4 p0, 0x0

    .line 202
    return-object p0

    .line 203
    :cond_6
    invoke-static {v5}, Lokio/Okio;->toImmutableMap(Ljava/util/Map;)Lkotlinx/collections/immutable/PersistentMap;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_7
    check-cast v3, Lkotlinx/collections/immutable/PersistentMap;

    .line 211
    .line 212
    return-object v3
.end method

.method public static final rememberPrefixAnnotatedString(Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 4

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 17
    .line 18
    if-ne v1, v0, :cond_4

    .line 19
    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 21
    .line 22
    invoke-direct {v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineConfiguration;->leadingItems:Lkotlinx/collections/immutable/ImmutableList;

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineLeadingIndicator;

    .line 42
    .line 43
    instance-of v2, v1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineLeadingIndicator$AttachmentIcon;

    .line 44
    .line 45
    const-string v3, " "

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    const-string v1, "attachment_icon_inline_composable_id"

    .line 50
    .line 51
    const-string v2, "[attachment_icon]"

    .line 52
    .line 53
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/BasicTextKt;->appendInlineContent(Landroidx/compose/ui/text/AnnotatedString$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    instance-of v1, v1, Lnet/thunderbird/feature/mail/message/list/ui/component/config/MessageSublineLeadingIndicator$ConversationCounterBadge;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    const-string v1, "conversation_counter_inline_composable_id"

    .line 65
    .line 66
    const-string v2, "[conversation_counter]"

    .line 67
    .line 68
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/BasicTextKt;->appendInlineContent(Landroidx/compose/ui/text/AnnotatedString$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x0

    .line 79
    return-object p0

    .line 80
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 88
    .line 89
    return-object v1
.end method

.method public static final styledSenderOrSubject(ZLnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/AnnotatedString;ZI)Landroidx/compose/ui/text/AnnotatedString;
    .locals 26

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    and-int/lit8 v2, p5, 0x10

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    move v2, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move/from16 v2, p4

    .line 13
    .line 14
    :goto_0
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 15
    .line 16
    invoke-direct {v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 17
    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    if-eqz p0, :cond_2

    .line 25
    .line 26
    iget-object v1, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->displayName:Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    move-object/from16 v1, p2

    .line 30
    .line 31
    :goto_1
    instance-of v5, v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 32
    .line 33
    if-eqz v5, :cond_3

    .line 34
    .line 35
    move-object v5, v1

    .line 36
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString;

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    iget-object v5, v4, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :goto_2
    if-eqz v2, :cond_4

    .line 48
    .line 49
    new-instance v6, Landroidx/compose/ui/text/SpanStyle;

    .line 50
    .line 51
    sget-object v11, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    .line 52
    .line 53
    const/16 v24, 0x0

    .line 54
    .line 55
    const v25, 0xfffb

    .line 56
    .line 57
    .line 58
    const-wide/16 v7, 0x0

    .line 59
    .line 60
    const-wide/16 v9, 0x0

    .line 61
    .line 62
    const/4 v12, 0x0

    .line 63
    const/4 v13, 0x0

    .line 64
    const/4 v14, 0x0

    .line 65
    const/4 v15, 0x0

    .line 66
    const-wide/16 v16, 0x0

    .line 67
    .line 68
    const/16 v18, 0x0

    .line 69
    .line 70
    const/16 v19, 0x0

    .line 71
    .line 72
    const/16 v20, 0x0

    .line 73
    .line 74
    const-wide/16 v21, 0x0

    .line 75
    .line 76
    const/16 v23, 0x0

    .line 77
    .line 78
    invoke-direct/range {v6 .. v25}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-virtual {v4, v6, v3, v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_5

    .line 89
    .line 90
    :cond_4
    if-eqz p0, :cond_9

    .line 91
    .line 92
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->displayNameStyles:Lkotlinx/collections/immutable/ImmutableList;

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_9

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle;

    .line 109
    .line 110
    sget-object v5, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle;->Companion:Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Companion;

    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    sget-object v5, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Companion;->AllBold:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 116
    .line 117
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_5

    .line 122
    .line 123
    new-instance v6, Landroidx/compose/ui/text/SpanStyle;

    .line 124
    .line 125
    sget-object v11, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 126
    .line 127
    const/16 v24, 0x0

    .line 128
    .line 129
    const v25, 0xfffb

    .line 130
    .line 131
    .line 132
    const-wide/16 v7, 0x0

    .line 133
    .line 134
    const-wide/16 v9, 0x0

    .line 135
    .line 136
    const/4 v12, 0x0

    .line 137
    const/4 v13, 0x0

    .line 138
    const/4 v14, 0x0

    .line 139
    const/4 v15, 0x0

    .line 140
    const-wide/16 v16, 0x0

    .line 141
    .line 142
    const/16 v18, 0x0

    .line 143
    .line 144
    const/16 v19, 0x0

    .line 145
    .line 146
    const/16 v20, 0x0

    .line 147
    .line 148
    const-wide/16 v21, 0x0

    .line 149
    .line 150
    const/16 v23, 0x0

    .line 151
    .line 152
    invoke-direct/range {v6 .. v25}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-virtual {v4, v6, v3, v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_5
    instance-of v5, v2, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Bold;

    .line 164
    .line 165
    if-eqz v5, :cond_7

    .line 166
    .line 167
    new-instance v6, Landroidx/compose/ui/text/SpanStyle;

    .line 168
    .line 169
    sget-object v11, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    .line 170
    .line 171
    const/16 v24, 0x0

    .line 172
    .line 173
    const v25, 0xfffb

    .line 174
    .line 175
    .line 176
    const-wide/16 v7, 0x0

    .line 177
    .line 178
    const-wide/16 v9, 0x0

    .line 179
    .line 180
    const/4 v12, 0x0

    .line 181
    const/4 v13, 0x0

    .line 182
    const/4 v14, 0x0

    .line 183
    const/4 v15, 0x0

    .line 184
    const-wide/16 v16, 0x0

    .line 185
    .line 186
    const/16 v18, 0x0

    .line 187
    .line 188
    const/16 v19, 0x0

    .line 189
    .line 190
    const/16 v20, 0x0

    .line 191
    .line 192
    const-wide/16 v21, 0x0

    .line 193
    .line 194
    const/16 v23, 0x0

    .line 195
    .line 196
    invoke-direct/range {v6 .. v25}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 197
    .line 198
    .line 199
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Bold;

    .line 200
    .line 201
    iget-object v2, v2, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Bold;->end:Ljava/lang/Integer;

    .line 202
    .line 203
    if-eqz v2, :cond_6

    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    goto :goto_4

    .line 210
    :cond_6
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    :goto_4
    invoke-virtual {v4, v6, v3, v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_7
    instance-of v5, v2, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Regular;

    .line 219
    .line 220
    if-eqz v5, :cond_8

    .line 221
    .line 222
    new-instance v6, Landroidx/compose/ui/text/SpanStyle;

    .line 223
    .line 224
    sget-object v11, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    .line 225
    .line 226
    const/16 v24, 0x0

    .line 227
    .line 228
    const v25, 0xfffb

    .line 229
    .line 230
    .line 231
    const-wide/16 v7, 0x0

    .line 232
    .line 233
    const-wide/16 v9, 0x0

    .line 234
    .line 235
    const/4 v12, 0x0

    .line 236
    const/4 v13, 0x0

    .line 237
    const/4 v14, 0x0

    .line 238
    const/4 v15, 0x0

    .line 239
    const-wide/16 v16, 0x0

    .line 240
    .line 241
    const/16 v18, 0x0

    .line 242
    .line 243
    const/16 v19, 0x0

    .line 244
    .line 245
    const/16 v20, 0x0

    .line 246
    .line 247
    const-wide/16 v21, 0x0

    .line 248
    .line 249
    const/16 v23, 0x0

    .line 250
    .line 251
    invoke-direct/range {v6 .. v25}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 252
    .line 253
    .line 254
    check-cast v2, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Regular;

    .line 255
    .line 256
    iget v2, v2, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressStyle$Regular;->start:I

    .line 257
    .line 258
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    invoke-virtual {v4, v6, v2, v5}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_3

    .line 266
    .line 267
    :cond_8
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 268
    .line 269
    .line 270
    const/4 v0, 0x0

    .line 271
    return-object v0

    .line 272
    :cond_9
    :goto_5
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    return-object v0
.end method

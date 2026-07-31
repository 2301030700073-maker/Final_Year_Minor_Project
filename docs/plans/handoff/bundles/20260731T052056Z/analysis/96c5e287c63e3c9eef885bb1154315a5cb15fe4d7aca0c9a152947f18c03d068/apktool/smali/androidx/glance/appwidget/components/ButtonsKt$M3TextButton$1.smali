.class public final Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $Text:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $contentColor:Ljava/lang/Object;

.field public final synthetic $icon:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/unit/ColorProvider;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1;->$icon:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1;->$Text:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1;->$contentColor:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/Owner;Landroidx/compose/ui/platform/AndroidUriHandler;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    const/4 p4, 0x1

    iput p4, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1;->$r8$classId:I

    .line 15
    iput-object p1, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1;->$icon:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1;->$contentColor:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1;->$Text:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/WrappedComposition;Landroidx/compose/ui/platform/ComposeViewContext;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1;->$r8$classId:I

    .line 16
    iput-object p1, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1;->$icon:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1;->$contentColor:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1;->$Text:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1;->$Text:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 7
    .line 8
    iget-object v4, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1;->$contentColor:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1;->$icon:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x1

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    check-cast p2, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    check-cast p0, Landroidx/compose/ui/platform/WrappedComposition;

    .line 26
    .line 27
    and-int/lit8 v0, p2, 0x3

    .line 28
    .line 29
    if-eq v0, v1, :cond_0

    .line 30
    .line 31
    move v0, v6

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v0, v5

    .line 34
    :goto_0
    and-int/2addr p2, v6

    .line 35
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_5

    .line 40
    .line 41
    iget-object p2, p0, Landroidx/compose/ui/platform/WrappedComposition;->owner:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v7, 0x0

    .line 52
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    if-ne v1, v8, :cond_2

    .line 57
    .line 58
    :cond_1
    new-instance v1, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$2$1$1;

    .line 59
    .line 60
    invoke-direct {v1, p0, v7, v5}, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$2$1$1;-><init>(Landroidx/compose/ui/platform/WrappedComposition;Lkotlin/coroutines/Continuation;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 67
    .line 68
    invoke-static {p1, p2, v1}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    if-ne v1, v8, :cond_4

    .line 82
    .line 83
    :cond_3
    new-instance v1, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$2$1$1;

    .line 84
    .line 85
    invoke-direct {v1, p0, v7, v6}, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$2$1$1;-><init>(Landroidx/compose/ui/platform/WrappedComposition;Lkotlin/coroutines/Continuation;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 92
    .line 93
    invoke-static {p1, p2, v1}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 94
    .line 95
    .line 96
    check-cast v4, Landroidx/compose/ui/platform/ComposeViewContext;

    .line 97
    .line 98
    invoke-virtual {v4, p2, v3, p1, v5}, Landroidx/compose/ui/platform/ComposeViewContext;->ProvideCompositionLocals$ui(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 103
    .line 104
    .line 105
    :goto_1
    return-object v2

    .line 106
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 107
    .line 108
    check-cast p2, Ljava/lang/Number;

    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 111
    .line 112
    .line 113
    check-cast p0, Landroidx/compose/ui/node/Owner;

    .line 114
    .line 115
    check-cast v4, Landroidx/compose/ui/platform/AndroidUriHandler;

    .line 116
    .line 117
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    invoke-static {p0, v4, v3, p1, p2}, Landroidx/compose/ui/platform/CompositionLocalsKt;->ProvideCommonCompositionLocals(Landroidx/compose/ui/node/Owner;Landroidx/compose/ui/platform/AndroidUriHandler;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;I)V

    .line 122
    .line 123
    .line 124
    return-object v2

    .line 125
    :pswitch_1
    move-object v9, p1

    .line 126
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 127
    .line 128
    check-cast p2, Ljava/lang/Number;

    .line 129
    .line 130
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    check-cast p0, Landroidx/glance/AndroidResourceImageProvider;

    .line 135
    .line 136
    and-int/lit8 p1, p1, 0x3

    .line 137
    .line 138
    if-ne p1, v1, :cond_7

    .line 139
    .line 140
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_6

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_7
    :goto_2
    if-eqz p0, :cond_8

    .line 152
    .line 153
    const p1, -0x3d23a483

    .line 154
    .line 155
    .line 156
    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 157
    .line 158
    .line 159
    new-instance p1, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1$1;

    .line 160
    .line 161
    check-cast v4, Landroidx/glance/unit/ColorProvider;

    .line 162
    .line 163
    invoke-direct {p1, v3, p0, v4}, Landroidx/glance/appwidget/components/ButtonsKt$M3TextButton$1$1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/glance/AndroidResourceImageProvider;Landroidx/glance/unit/ColorProvider;)V

    .line 164
    .line 165
    .line 166
    const p0, 0x10a1b3db

    .line 167
    .line 168
    .line 169
    invoke-static {v9, p0, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->composableLambda(Landroidx/compose/runtime/GapComposer;ILkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    const/16 v11, 0xc00

    .line 174
    .line 175
    const/4 v12, 0x3

    .line 176
    const/4 v6, 0x0

    .line 177
    const/4 v7, 0x0

    .line 178
    const/4 v8, 0x1

    .line 179
    move-object v10, v9

    .line 180
    move-object v9, p0

    .line 181
    invoke-static/range {v6 .. v12}, Lkotlin/uuid/UuidKt;->Row-lMAjyxE(Landroidx/glance/GlanceModifier;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 182
    .line 183
    .line 184
    move-object v9, v10

    .line 185
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_8
    const p0, -0x3d1c484b

    .line 190
    .line 191
    .line 192
    invoke-virtual {v9, p0}, Landroidx/compose/runtime/GapComposer;->startReplaceableGroup(I)V

    .line 193
    .line 194
    .line 195
    const/high16 p0, 0x41900000    # 18.0f

    .line 196
    .line 197
    invoke-static {p0}, Landroidx/compose/ui/unit/DpKt;->size-3ABfNKs(F)Landroidx/glance/GlanceModifier;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    sget-object v8, Landroidx/glance/appwidget/components/ComposableSingletons$ButtonsKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 202
    .line 203
    const/16 v10, 0x180

    .line 204
    .line 205
    const/4 v11, 0x2

    .line 206
    const/4 v7, 0x0

    .line 207
    invoke-static/range {v6 .. v11}, Lkotlin/text/RegexKt;->Box(Landroidx/glance/GlanceModifier;Landroidx/glance/layout/Alignment;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 208
    .line 209
    .line 210
    const/4 p0, 0x6

    .line 211
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-virtual {v3, v9, p0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 219
    .line 220
    .line 221
    :goto_3
    return-object v2

    .line 222
    nop

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

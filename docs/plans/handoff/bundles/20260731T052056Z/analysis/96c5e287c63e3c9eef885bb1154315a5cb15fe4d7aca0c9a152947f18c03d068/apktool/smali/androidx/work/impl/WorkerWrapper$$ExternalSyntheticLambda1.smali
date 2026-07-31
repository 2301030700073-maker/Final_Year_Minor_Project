.class public final synthetic Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p2, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$1:Z

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iget-boolean v4, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$1:Z

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    move-object v6, v3

    .line 19
    check-cast v6, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 20
    .line 21
    move-object v10, v2

    .line 22
    check-cast v10, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 23
    .line 24
    move-object v5, p1

    .line 25
    check-cast v5, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 26
    .line 27
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 28
    .line 29
    .line 30
    iget-object p1, v5, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 31
    .line 32
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    if-eqz v4, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getCenter-F1C5BW0()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    iget-object p0, p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Lcom/caverock/androidsvg/SVG;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG;->getSize-NH-jbRc()J

    .line 54
    .line 55
    .line 56
    move-result-wide v12

    .line 57
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 62
    .line 63
    .line 64
    :try_start_0
    iget-object p1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Landroidx/appcompat/widget/PopupMenu$1;

    .line 67
    .line 68
    const/high16 v0, -0x40800000    # -1.0f

    .line 69
    .line 70
    const/high16 v4, 0x3f800000    # 1.0f

    .line 71
    .line 72
    invoke-virtual {p1, v0, v4, v2, v3}, Landroidx/appcompat/widget/PopupMenu$1;->scale-0AR0LA0(FFJ)V

    .line 73
    .line 74
    .line 75
    const/4 v9, 0x0

    .line 76
    const/16 v11, 0x2e

    .line 77
    .line 78
    const-wide/16 v7, 0x0

    .line 79
    .line 80
    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/Modifier$-CC;->drawImage-gbVJVH8$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidImageBitmap;JFLandroidx/compose/ui/graphics/BlendModeColorFilter;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    invoke-static {p0, v12, v13}, Landroidx/compose/animation/core/Animation$-CC;->m(Lcom/caverock/androidsvg/SVG;J)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    move-object p1, v0

    .line 89
    invoke-static {p0, v12, v13}, Landroidx/compose/animation/core/Animation$-CC;->m(Lcom/caverock/androidsvg/SVG;J)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_1
    const/4 v9, 0x0

    .line 94
    const/16 v11, 0x2e

    .line 95
    .line 96
    const-wide/16 v7, 0x0

    .line 97
    .line 98
    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/Modifier$-CC;->drawImage-gbVJVH8$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidImageBitmap;JFLandroidx/compose/ui/graphics/BlendModeColorFilter;I)V

    .line 99
    .line 100
    .line 101
    :goto_0
    return-object v1

    .line 102
    :pswitch_0
    check-cast p0, Landroidx/work/ListenableWorker;

    .line 103
    .line 104
    check-cast v3, Ljava/lang/String;

    .line 105
    .line 106
    check-cast v2, Landroidx/work/impl/WorkerWrapper;

    .line 107
    .line 108
    check-cast p1, Ljava/lang/Throwable;

    .line 109
    .line 110
    instance-of v0, p1, Landroidx/work/impl/WorkerStoppedException;

    .line 111
    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    check-cast p1, Landroidx/work/impl/WorkerStoppedException;

    .line 115
    .line 116
    iget p1, p1, Landroidx/work/impl/WorkerStoppedException;->reason:I

    .line 117
    .line 118
    iget-object p0, p0, Landroidx/work/ListenableWorker;->mStopReason:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    .line 120
    const/16 v0, -0x100

    .line 121
    .line 122
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 123
    .line 124
    .line 125
    :cond_2
    if-eqz v4, :cond_5

    .line 126
    .line 127
    if-eqz v3, :cond_5

    .line 128
    .line 129
    iget-object p0, v2, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 130
    .line 131
    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpec;->hashCode()I

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 136
    .line 137
    const/16 v0, 0x1d

    .line 138
    .line 139
    if-lt p1, v0, :cond_3

    .line 140
    .line 141
    invoke-static {v3}, Lkotlin/TuplesKt;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-static {p1, p0}, Landroidx/tracing/TraceApi29Impl;->endAsyncSection(Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_3
    invoke-static {v3}, Lkotlin/TuplesKt;->truncatedTraceSectionLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    const-string v2, "asyncTraceEnd"

    .line 154
    .line 155
    :try_start_1
    sget-object v0, Lkotlin/TuplesKt;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    .line 156
    .line 157
    const/4 v3, 0x2

    .line 158
    const/4 v4, 0x1

    .line 159
    const/4 v5, 0x0

    .line 160
    const/4 v6, 0x3

    .line 161
    if-nez v0, :cond_4

    .line 162
    .line 163
    const-class v0, Landroid/os/Trace;

    .line 164
    .line 165
    new-array v7, v6, [Ljava/lang/Class;

    .line 166
    .line 167
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 168
    .line 169
    aput-object v8, v7, v5

    .line 170
    .line 171
    const-class v8, Ljava/lang/String;

    .line 172
    .line 173
    aput-object v8, v7, v4

    .line 174
    .line 175
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 176
    .line 177
    aput-object v8, v7, v3

    .line 178
    .line 179
    invoke-virtual {v0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    sput-object v0, Lkotlin/TuplesKt;->sAsyncTraceEndMethod:Ljava/lang/reflect/Method;

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    move-object p0, v0

    .line 188
    goto :goto_2

    .line 189
    :cond_4
    :goto_1
    sget-wide v7, Lkotlin/TuplesKt;->sTraceTagApp:J

    .line 190
    .line 191
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    new-array v6, v6, [Ljava/lang/Object;

    .line 200
    .line 201
    aput-object v7, v6, v5

    .line 202
    .line 203
    aput-object p1, v6, v4

    .line 204
    .line 205
    aput-object p0, v6, v3

    .line 206
    .line 207
    const/4 p0, 0x0

    .line 208
    invoke-virtual {v0, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :goto_2
    invoke-static {v2, p0}, Lkotlin/TuplesKt;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 213
    .line 214
    .line 215
    :cond_5
    :goto_3
    return-object v1

    .line 216
    nop

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

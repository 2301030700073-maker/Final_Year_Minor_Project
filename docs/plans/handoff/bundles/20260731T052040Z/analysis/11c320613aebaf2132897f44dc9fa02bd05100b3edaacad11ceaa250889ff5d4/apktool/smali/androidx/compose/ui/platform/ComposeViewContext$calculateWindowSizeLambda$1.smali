.class public final Landroidx/compose/ui/platform/ComposeViewContext$calculateWindowSizeLambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/platform/ComposeViewContext;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/ComposeViewContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/ComposeViewContext$calculateWindowSizeLambda$1;->this$0:Landroidx/compose/ui/platform/ComposeViewContext;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/ComposeViewContext$calculateWindowSizeLambda$1;->this$0:Landroidx/compose/ui/platform/ComposeViewContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    invoke-static {v0, v1, v0, v1}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget-object v3, p0, Landroidx/compose/ui/platform/ComposeViewContext$calculateWindowSizeLambda$1;->this$0:Landroidx/compose/ui/platform/ComposeViewContext;

    .line 13
    .line 14
    if-eqz v2, :cond_8

    .line 15
    .line 16
    iget-object p0, v3, Landroidx/compose/ui/platform/ComposeViewContext;->view:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    move-object v0, p0

    .line 23
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    instance-of v1, v0, Landroid/app/Activity;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    instance-of v1, v0, Landroid/inputmethodservice/InputMethodService;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    instance-of v1, v0, Landroid/app/Application;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    check-cast v0, Landroid/content/ContextWrapper;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-nez v1, :cond_4

    .line 50
    .line 51
    :cond_3
    move-object v0, v2

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_0

    .line 58
    :goto_1
    const-wide v1, 0xffffffffL

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    const/16 v3, 0x20

    .line 64
    .line 65
    if-eqz v0, :cond_7

    .line 66
    .line 67
    sget-object p0, Landroidx/window/layout/WindowMetricsCalculator;->Companion:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    sget-object p0, Landroidx/window/layout/WindowMetricsCalculator$Companion;->$$INSTANCE:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    .line 73
    .line 74
    sget-object p0, Landroidx/window/layout/WindowMetricsCalculator$Companion;->windowMetricsCalculatorCompat:Landroidx/window/layout/WindowMetricsCalculatorCompat;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move-object v4, v0

    .line 80
    check-cast v4, Landroid/content/ContextWrapper;

    .line 81
    .line 82
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 83
    .line 84
    const/16 v6, 0x22

    .line 85
    .line 86
    if-lt v5, v6, :cond_5

    .line 87
    .line 88
    sget-object v5, Landroidx/window/layout/util/DensityCompatHelperApi34Impl;->INSTANCE$1:Landroidx/window/layout/util/DensityCompatHelperApi34Impl;

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    const/16 v6, 0x1e

    .line 92
    .line 93
    if-lt v5, v6, :cond_6

    .line 94
    .line 95
    sget-object v5, Landroidx/window/layout/util/BoundsHelperApi30Impl;->INSTANCE$1:Landroidx/window/layout/util/BoundsHelperApi30Impl;

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_6
    sget-object v5, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE$5:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 99
    .line 100
    :goto_2
    iget-object p0, p0, Landroidx/window/layout/WindowMetricsCalculatorCompat;->densityCompatHelper:Landroidx/window/layout/util/DensityCompatHelper;

    .line 101
    .line 102
    invoke-interface {v5, v4, p0}, Landroidx/window/layout/util/WindowMetricsCompatHelper;->currentWindowMetrics(Landroid/content/Context;Landroidx/window/layout/util/DensityCompatHelper;)Landroidx/window/layout/WindowMetrics;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p0}, Landroidx/window/layout/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    invoke-virtual {p0}, Landroidx/window/layout/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    int-to-long v4, v4

    .line 123
    shl-long v3, v4, v3

    .line 124
    .line 125
    int-to-long v5, p0

    .line 126
    and-long/2addr v1, v5

    .line 127
    or-long/2addr v1, v3

    .line 128
    invoke-static {v0}, Landroidx/room/Room;->Density(Landroid/content/Context;)Landroidx/compose/ui/unit/DensityWithConverter;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-static {v1, v2}, Lokhttp3/Cookie$Companion;->toSize-ozmzZPI(J)J

    .line 133
    .line 134
    .line 135
    move-result-wide v3

    .line 136
    invoke-static {v3, v4, p0}, Landroidx/compose/ui/node/Owner$-CC;->$default$toDpSize-k-rfVVM(JLandroidx/compose/ui/unit/Density;)J

    .line 137
    .line 138
    .line 139
    move-result-wide v3

    .line 140
    new-instance p0, Landroidx/compose/ui/platform/DerivedSize;

    .line 141
    .line 142
    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/compose/ui/platform/DerivedSize;-><init>(JJ)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {p0}, Landroidx/room/Room;->Density(Landroid/content/Context;)Landroidx/compose/ui/unit/DensityWithConverter;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    iget v4, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 159
    .line 160
    int-to-float v4, v4

    .line 161
    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 162
    .line 163
    int-to-float v0, v0

    .line 164
    invoke-static {v4, v0}, Lokio/Okio;->DpSize-YgX7TsA(FF)J

    .line 165
    .line 166
    .line 167
    move-result-wide v4

    .line 168
    invoke-static {v4, v5, p0}, Landroidx/compose/ui/node/Owner$-CC;->$default$toSize-XkaWNTQ(JLandroidx/compose/ui/unit/Density;)J

    .line 169
    .line 170
    .line 171
    move-result-wide v6

    .line 172
    shr-long v8, v6, v3

    .line 173
    .line 174
    long-to-int p0, v8

    .line 175
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    float-to-int p0, p0

    .line 180
    and-long/2addr v6, v1

    .line 181
    long-to-int v0, v6

    .line 182
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    float-to-int v0, v0

    .line 187
    int-to-long v6, p0

    .line 188
    shl-long/2addr v6, v3

    .line 189
    int-to-long v8, v0

    .line 190
    and-long/2addr v1, v8

    .line 191
    or-long/2addr v1, v6

    .line 192
    new-instance p0, Landroidx/compose/ui/platform/DerivedSize;

    .line 193
    .line 194
    invoke-direct {p0, v1, v2, v4, v5}, Landroidx/compose/ui/platform/DerivedSize;-><init>(JJ)V

    .line 195
    .line 196
    .line 197
    :goto_3
    return-object p0

    .line 198
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext$calculateWindowSizeLambda$1;->this$0:Landroidx/compose/ui/platform/ComposeViewContext;

    .line 202
    .line 203
    iget-object p0, p0, Landroidx/compose/ui/platform/ComposeViewContext;->view:Landroid/view/View;

    .line 204
    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-static {p0}, Landroidx/room/Room;->Density(Landroid/content/Context;)Landroidx/compose/ui/unit/DensityWithConverter;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-static {v0, v1}, Lokhttp3/Cookie$Companion;->toSize-ozmzZPI(J)J

    .line 214
    .line 215
    .line 216
    move-result-wide v2

    .line 217
    invoke-static {v2, v3, p0}, Landroidx/compose/ui/node/Owner$-CC;->$default$toDpSize-k-rfVVM(JLandroidx/compose/ui/unit/Density;)J

    .line 218
    .line 219
    .line 220
    move-result-wide v2

    .line 221
    new-instance p0, Landroidx/compose/ui/platform/DerivedSize;

    .line 222
    .line 223
    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/compose/ui/platform/DerivedSize;-><init>(JJ)V

    .line 224
    .line 225
    .line 226
    return-object p0
.end method

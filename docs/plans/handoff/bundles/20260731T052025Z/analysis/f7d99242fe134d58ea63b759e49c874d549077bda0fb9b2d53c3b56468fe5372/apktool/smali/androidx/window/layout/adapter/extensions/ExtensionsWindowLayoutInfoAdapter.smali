.class public abstract Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static translate$window_release(Landroidx/window/layout/WindowMetrics;Landroidx/window/extensions/layout/FoldingFeature;)Landroidx/window/layout/HardwareFoldingFeature;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 154
    :cond_0
    sget-object v0, Landroidx/window/layout/FoldingFeature$State;->HINGE:Landroidx/window/layout/FoldingFeature$State;

    goto :goto_0

    .line 155
    :cond_1
    sget-object v0, Landroidx/window/layout/FoldingFeature$State;->FOLD:Landroidx/window/layout/FoldingFeature$State;

    .line 156
    :goto_0
    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getState()I

    move-result v3

    if-eq v3, v2, :cond_3

    if-eq v3, v1, :cond_2

    goto :goto_2

    .line 157
    :cond_2
    sget-object v1, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    goto :goto_1

    .line 158
    :cond_3
    sget-object v1, Landroidx/window/layout/FoldingFeature$State;->FLAT:Landroidx/window/layout/FoldingFeature$State;

    .line 159
    :goto_1
    new-instance v2, Landroidx/window/core/Bounds;

    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    .line 160
    invoke-virtual {p0}, Landroidx/window/layout/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 161
    invoke-virtual {v2}, Landroidx/window/core/Bounds;->getHeight()I

    move-result v3

    if-nez v3, :cond_4

    .line 162
    invoke-virtual {v2}, Landroidx/window/core/Bounds;->getWidth()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 163
    :cond_4
    invoke-virtual {v2}, Landroidx/window/core/Bounds;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-eq v3, v4, :cond_5

    invoke-virtual {v2}, Landroidx/window/core/Bounds;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v3, v4, :cond_5

    goto :goto_2

    .line 164
    :cond_5
    invoke-virtual {v2}, Landroidx/window/core/Bounds;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {v2}, Landroidx/window/core/Bounds;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v3, v4, :cond_6

    goto :goto_2

    .line 165
    :cond_6
    invoke-virtual {v2}, Landroidx/window/core/Bounds;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_7

    invoke-virtual {v2}, Landroidx/window/core/Bounds;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-ne v2, p0, :cond_7

    :goto_2
    const/4 p0, 0x0

    return-object p0

    .line 166
    :cond_7
    new-instance p0, Landroidx/window/layout/HardwareFoldingFeature;

    new-instance v2, Landroidx/window/core/Bounds;

    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, p1}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p0, v2, v0, v1}, Landroidx/window/layout/HardwareFoldingFeature;-><init>(Landroidx/window/core/Bounds;Landroidx/window/layout/FoldingFeature$State;Landroidx/window/layout/FoldingFeature$State;)V

    return-object p0
.end method

.method public static translate$window_release(Landroid/content/Context;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE$5:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 6
    .line 7
    sget-object v3, Landroidx/window/layout/util/BoundsHelperApi30Impl;->INSTANCE$1:Landroidx/window/layout/util/BoundsHelperApi30Impl;

    .line 8
    .line 9
    sget-object v4, Landroidx/window/layout/util/DensityCompatHelperApi34Impl;->INSTANCE$1:Landroidx/window/layout/util/DensityCompatHelperApi34Impl;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v6, 0x22

    .line 20
    .line 21
    if-lt v5, v6, :cond_0

    .line 22
    .line 23
    sget-object v7, Landroidx/window/layout/util/DensityCompatHelperApi34Impl;->INSTANCE:Landroidx/window/layout/util/DensityCompatHelperApi34Impl;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v7, Landroidx/window/layout/util/BoundsHelperApi16Impl;->INSTANCE$4:Landroidx/window/layout/util/BoundsHelperApi16Impl;

    .line 27
    .line 28
    :goto_0
    const/4 v8, 0x1

    .line 29
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    const/4 v10, 0x2

    .line 34
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v11

    .line 38
    const/4 v12, 0x4

    .line 39
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v13

    .line 43
    const/16 v14, 0x8

    .line 44
    .line 45
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v15

    .line 49
    const/16 v16, 0x10

    .line 50
    .line 51
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v16

    .line 55
    const/16 v17, 0x20

    .line 56
    .line 57
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v17

    .line 61
    const/16 v18, 0x40

    .line 62
    .line 63
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v18

    .line 67
    const/16 v19, 0x80

    .line 68
    .line 69
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v19

    .line 73
    new-array v14, v14, [Ljava/lang/Integer;

    .line 74
    .line 75
    const/16 v20, 0x0

    .line 76
    .line 77
    aput-object v9, v14, v20

    .line 78
    .line 79
    aput-object v11, v14, v8

    .line 80
    .line 81
    aput-object v13, v14, v10

    .line 82
    .line 83
    const/4 v8, 0x3

    .line 84
    aput-object v15, v14, v8

    .line 85
    .line 86
    aput-object v16, v14, v12

    .line 87
    .line 88
    const/4 v8, 0x5

    .line 89
    aput-object v17, v14, v8

    .line 90
    .line 91
    const/4 v8, 0x6

    .line 92
    aput-object v18, v14, v8

    .line 93
    .line 94
    const/4 v8, 0x7

    .line 95
    aput-object v19, v14, v8

    .line 96
    .line 97
    invoke-static {v14}, Landroidx/compose/ui/unit/IntOffsetKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 98
    .line 99
    .line 100
    const/16 v8, 0x1e

    .line 101
    .line 102
    if-lt v5, v8, :cond_3

    .line 103
    .line 104
    if-lt v5, v6, :cond_1

    .line 105
    .line 106
    move-object v2, v4

    .line 107
    goto :goto_1

    .line 108
    :cond_1
    if-lt v5, v8, :cond_2

    .line 109
    .line 110
    move-object v2, v3

    .line 111
    :cond_2
    :goto_1
    invoke-interface {v2, v0, v7}, Landroidx/window/layout/util/WindowMetricsCompatHelper;->currentWindowMetrics(Landroid/content/Context;Landroidx/window/layout/util/DensityCompatHelper;)Landroidx/window/layout/WindowMetrics;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0, v1}, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->translate$window_release(Landroidx/window/layout/WindowMetrics;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    return-object v0

    .line 120
    :cond_3
    const/16 v9, 0x1d

    .line 121
    .line 122
    if-lt v5, v9, :cond_6

    .line 123
    .line 124
    instance-of v9, v0, Landroid/app/Activity;

    .line 125
    .line 126
    if-eqz v9, :cond_6

    .line 127
    .line 128
    check-cast v0, Landroid/app/Activity;

    .line 129
    .line 130
    if-lt v5, v6, :cond_4

    .line 131
    .line 132
    move-object v2, v4

    .line 133
    goto :goto_2

    .line 134
    :cond_4
    if-lt v5, v8, :cond_5

    .line 135
    .line 136
    move-object v2, v3

    .line 137
    :cond_5
    :goto_2
    invoke-interface {v2, v0, v7}, Landroidx/window/layout/util/WindowMetricsCompatHelper;->currentWindowMetrics(Landroid/app/Activity;Landroidx/window/layout/util/DensityCompatHelper;)Landroidx/window/layout/WindowMetrics;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v0, v1}, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->translate$window_release(Landroidx/window/layout/WindowMetrics;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    return-object v0

    .line 146
    :cond_6
    const-string v0, "Display Features are only supported after Q. Display features for non-Activity contexts are not expected to be reported on devices running Q."

    .line 147
    .line 148
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const/4 v0, 0x0

    .line 152
    return-object v0
.end method

.method public static translate$window_release(Landroidx/window/layout/WindowMetrics;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    invoke-virtual {p1}, Landroidx/window/extensions/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 170
    check-cast v1, Landroidx/window/extensions/layout/DisplayFeature;

    .line 171
    instance-of v2, v1, Landroidx/window/extensions/layout/FoldingFeature;

    if-eqz v2, :cond_1

    check-cast v1, Landroidx/window/extensions/layout/FoldingFeature;

    invoke-static {p0, v1}, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->translate$window_release(Landroidx/window/layout/WindowMetrics;Landroidx/window/extensions/layout/FoldingFeature;)Landroidx/window/layout/HardwareFoldingFeature;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_2
    new-instance p0, Landroidx/window/layout/WindowLayoutInfo;

    invoke-direct {p0, v0}, Landroidx/window/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    return-object p0
.end method

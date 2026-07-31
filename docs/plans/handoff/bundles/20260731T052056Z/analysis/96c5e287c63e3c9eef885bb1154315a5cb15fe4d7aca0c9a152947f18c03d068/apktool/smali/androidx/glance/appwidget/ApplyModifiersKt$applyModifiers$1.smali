.class public final Landroidx/glance/appwidget/ApplyModifiersKt$applyModifiers$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $actionModifier:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $cornerRadius:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $enabled:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $heightModifier:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $paddingModifiers:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $rv:Landroid/widget/RemoteViews;

.field public final synthetic $semanticsModifier:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $viewDef:Landroidx/glance/appwidget/InsertedViewInfo;

.field public final synthetic $widthModifier:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Landroid/widget/RemoteViews;Landroidx/glance/appwidget/InsertedViewInfo;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/glance/appwidget/TranslationContext;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/glance/appwidget/ApplyModifiersKt$applyModifiers$1;->$actionModifier:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/glance/appwidget/ApplyModifiersKt$applyModifiers$1;->$widthModifier:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/glance/appwidget/ApplyModifiersKt$applyModifiers$1;->$heightModifier:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput-object p5, p0, Landroidx/glance/appwidget/ApplyModifiersKt$applyModifiers$1;->$rv:Landroid/widget/RemoteViews;

    .line 8
    .line 9
    iput-object p6, p0, Landroidx/glance/appwidget/ApplyModifiersKt$applyModifiers$1;->$viewDef:Landroidx/glance/appwidget/InsertedViewInfo;

    .line 10
    .line 11
    iput-object p7, p0, Landroidx/glance/appwidget/ApplyModifiersKt$applyModifiers$1;->$paddingModifiers:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    .line 13
    iput-object p9, p0, Landroidx/glance/appwidget/ApplyModifiersKt$applyModifiers$1;->$cornerRadius:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 14
    .line 15
    iput-object p12, p0, Landroidx/glance/appwidget/ApplyModifiersKt$applyModifiers$1;->$enabled:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    .line 17
    iput-object p13, p0, Landroidx/glance/appwidget/ApplyModifiersKt$applyModifiers$1;->$semanticsModifier:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lkotlin/Unit;

    .line 2
    .line 3
    check-cast p2, Landroidx/glance/GlanceModifier$Element;

    .line 4
    .line 5
    instance-of p1, p2, Landroidx/glance/action/ActionModifier;

    .line 6
    .line 7
    const-string v0, "GlanceAppWidget"

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/glance/appwidget/ApplyModifiersKt$applyModifiers$1;->$actionModifier:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    .line 13
    iget-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-string p1, "More than one clickable defined on the same GlanceModifier, only the last one will be used."

    .line 18
    .line 19
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    iput-object p2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_1
    instance-of p1, p2, Landroidx/glance/layout/WidthModifier;

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/glance/appwidget/ApplyModifiersKt$applyModifiers$1;->$widthModifier:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 31
    .line 32
    iput-object p2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_2
    instance-of p1, p2, Landroidx/glance/layout/HeightModifier;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    iget-object p0, p0, Landroidx/glance/appwidget/ApplyModifiersKt$applyModifiers$1;->$heightModifier:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 41
    .line 42
    iput-object p2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :cond_3
    instance-of p1, p2, Landroidx/glance/BackgroundModifier;

    .line 47
    .line 48
    if-eqz p1, :cond_5

    .line 49
    .line 50
    check-cast p2, Landroidx/glance/BackgroundModifier;

    .line 51
    .line 52
    iget-object p1, p0, Landroidx/glance/appwidget/ApplyModifiersKt$applyModifiers$1;->$viewDef:Landroidx/glance/appwidget/InsertedViewInfo;

    .line 53
    .line 54
    iget p1, p1, Landroidx/glance/appwidget/InsertedViewInfo;->mainViewId:I

    .line 55
    .line 56
    instance-of v0, p2, Landroidx/glance/BackgroundModifier$Image;

    .line 57
    .line 58
    iget-object p0, p0, Landroidx/glance/appwidget/ApplyModifiersKt$applyModifiers$1;->$rv:Landroid/widget/RemoteViews;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    check-cast p2, Landroidx/glance/BackgroundModifier$Image;

    .line 63
    .line 64
    iget-object p2, p2, Landroidx/glance/BackgroundModifier$Image;->imageProvider:Landroidx/glance/AndroidResourceImageProvider;

    .line 65
    .line 66
    iget p2, p2, Landroidx/glance/AndroidResourceImageProvider;->resId:I

    .line 67
    .line 68
    const-string v0, "setBackgroundResource"

    .line 69
    .line 70
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :cond_4
    instance-of v0, p2, Landroidx/glance/BackgroundModifier$Color;

    .line 76
    .line 77
    if-eqz v0, :cond_b

    .line 78
    .line 79
    check-cast p2, Landroidx/glance/BackgroundModifier$Color;

    .line 80
    .line 81
    iget-object p2, p2, Landroidx/glance/BackgroundModifier$Color;->colorProvider:Landroidx/glance/unit/FixedColorProvider;

    .line 82
    .line 83
    iget-wide v0, p2, Landroidx/glance/unit/FixedColorProvider;->color:J

    .line 84
    .line 85
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    const-string v0, "setBackgroundColor"

    .line 90
    .line 91
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :cond_5
    instance-of p1, p2, Landroidx/glance/layout/PaddingModifier;

    .line 97
    .line 98
    if-eqz p1, :cond_7

    .line 99
    .line 100
    iget-object p0, p0, Landroidx/glance/appwidget/ApplyModifiersKt$applyModifiers$1;->$paddingModifiers:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 101
    .line 102
    iget-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p1, Landroidx/glance/layout/PaddingModifier;

    .line 105
    .line 106
    if-eqz p1, :cond_6

    .line 107
    .line 108
    check-cast p2, Landroidx/glance/layout/PaddingModifier;

    .line 109
    .line 110
    new-instance v0, Landroidx/glance/layout/PaddingModifier;

    .line 111
    .line 112
    iget-object v1, p1, Landroidx/glance/layout/PaddingModifier;->left:Landroidx/glance/layout/PaddingDimension;

    .line 113
    .line 114
    iget-object v2, p2, Landroidx/glance/layout/PaddingModifier;->left:Landroidx/glance/layout/PaddingDimension;

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroidx/glance/layout/PaddingDimension;->plus(Landroidx/glance/layout/PaddingDimension;)Landroidx/glance/layout/PaddingDimension;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget-object v2, p1, Landroidx/glance/layout/PaddingModifier;->start:Landroidx/glance/layout/PaddingDimension;

    .line 121
    .line 122
    iget-object v3, p2, Landroidx/glance/layout/PaddingModifier;->start:Landroidx/glance/layout/PaddingDimension;

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Landroidx/glance/layout/PaddingDimension;->plus(Landroidx/glance/layout/PaddingDimension;)Landroidx/glance/layout/PaddingDimension;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iget-object v3, p1, Landroidx/glance/layout/PaddingModifier;->top:Landroidx/glance/layout/PaddingDimension;

    .line 129
    .line 130
    iget-object v4, p2, Landroidx/glance/layout/PaddingModifier;->top:Landroidx/glance/layout/PaddingDimension;

    .line 131
    .line 132
    invoke-virtual {v3, v4}, Landroidx/glance/layout/PaddingDimension;->plus(Landroidx/glance/layout/PaddingDimension;)Landroidx/glance/layout/PaddingDimension;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    iget-object v4, p1, Landroidx/glance/layout/PaddingModifier;->right:Landroidx/glance/layout/PaddingDimension;

    .line 137
    .line 138
    iget-object v5, p2, Landroidx/glance/layout/PaddingModifier;->right:Landroidx/glance/layout/PaddingDimension;

    .line 139
    .line 140
    invoke-virtual {v4, v5}, Landroidx/glance/layout/PaddingDimension;->plus(Landroidx/glance/layout/PaddingDimension;)Landroidx/glance/layout/PaddingDimension;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    iget-object v5, p1, Landroidx/glance/layout/PaddingModifier;->end:Landroidx/glance/layout/PaddingDimension;

    .line 145
    .line 146
    iget-object v6, p2, Landroidx/glance/layout/PaddingModifier;->end:Landroidx/glance/layout/PaddingDimension;

    .line 147
    .line 148
    invoke-virtual {v5, v6}, Landroidx/glance/layout/PaddingDimension;->plus(Landroidx/glance/layout/PaddingDimension;)Landroidx/glance/layout/PaddingDimension;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    iget-object p1, p1, Landroidx/glance/layout/PaddingModifier;->bottom:Landroidx/glance/layout/PaddingDimension;

    .line 153
    .line 154
    iget-object p2, p2, Landroidx/glance/layout/PaddingModifier;->bottom:Landroidx/glance/layout/PaddingDimension;

    .line 155
    .line 156
    invoke-virtual {p1, p2}, Landroidx/glance/layout/PaddingDimension;->plus(Landroidx/glance/layout/PaddingDimension;)Landroidx/glance/layout/PaddingDimension;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-direct/range {v0 .. v6}, Landroidx/glance/layout/PaddingModifier;-><init>(Landroidx/glance/layout/PaddingDimension;Landroidx/glance/layout/PaddingDimension;Landroidx/glance/layout/PaddingDimension;Landroidx/glance/layout/PaddingDimension;Landroidx/glance/layout/PaddingDimension;Landroidx/glance/layout/PaddingDimension;)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_6
    move-object v0, p2

    .line 165
    check-cast v0, Landroidx/glance/layout/PaddingModifier;

    .line 166
    .line 167
    :goto_0
    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_7
    instance-of p1, p2, Landroidx/glance/appwidget/CornerRadiusModifier;

    .line 171
    .line 172
    if-eqz p1, :cond_8

    .line 173
    .line 174
    check-cast p2, Landroidx/glance/appwidget/CornerRadiusModifier;

    .line 175
    .line 176
    iget-object p1, p2, Landroidx/glance/appwidget/CornerRadiusModifier;->radius:Landroidx/glance/unit/Dimension;

    .line 177
    .line 178
    iget-object p0, p0, Landroidx/glance/appwidget/ApplyModifiersKt$applyModifiers$1;->$cornerRadius:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 179
    .line 180
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_8
    instance-of p1, p2, Landroidx/glance/appwidget/AlignmentModifier;

    .line 184
    .line 185
    if-nez p1, :cond_b

    .line 186
    .line 187
    instance-of p1, p2, Landroidx/glance/appwidget/EnabledModifier;

    .line 188
    .line 189
    if-eqz p1, :cond_9

    .line 190
    .line 191
    iget-object p0, p0, Landroidx/glance/appwidget/ApplyModifiersKt$applyModifiers$1;->$enabled:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 192
    .line 193
    iput-object p2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_9
    instance-of p1, p2, Landroidx/glance/semantics/SemanticsModifier;

    .line 197
    .line 198
    if-eqz p1, :cond_a

    .line 199
    .line 200
    iget-object p0, p0, Landroidx/glance/appwidget/ApplyModifiersKt$applyModifiers$1;->$semanticsModifier:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 201
    .line 202
    iput-object p2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string p1, "Unknown modifier \'"

    .line 208
    .line 209
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string p1, "\', nothing done."

    .line 216
    .line 217
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    :cond_b
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 228
    .line 229
    return-object p0
.end method

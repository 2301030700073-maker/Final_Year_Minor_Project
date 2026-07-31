.class public final synthetic Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/ui/layout/Placeable;I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->f$1:I

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    iput p3, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->f$2:I

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    .line 14
    iput p4, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput p2, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    iget p0, p0, Landroidx/compose/ui/text/MultiParagraph$$ExternalSyntheticLambda1;->f$1:I

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 15
    .line 16
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 17
    .line 18
    iget v0, v3, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 19
    .line 20
    sub-int/2addr p0, v0

    .line 21
    int-to-float p0, p0

    .line 22
    const/high16 v0, 0x40000000    # 2.0f

    .line 23
    .line 24
    div-float/2addr p0, v0

    .line 25
    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    iget v4, v3, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 30
    .line 31
    sub-int/2addr v2, v4

    .line 32
    int-to-float v2, v2

    .line 33
    div-float/2addr v2, v0

    .line 34
    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {p1, v3, p0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :pswitch_0
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 43
    .line 44
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 45
    .line 46
    invoke-static {p1, v3, p0, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :pswitch_1
    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    .line 51
    .line 52
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 53
    .line 54
    invoke-static {p1, v3, p0, v2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :pswitch_2
    check-cast v3, Landroidx/compose/ui/graphics/AndroidPath;

    .line 59
    .line 60
    check-cast p1, Landroidx/compose/ui/text/ParagraphInfo;

    .line 61
    .line 62
    iget-object v0, p1, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    .line 63
    .line 64
    invoke-virtual {p1, p0}, Landroidx/compose/ui/text/ParagraphInfo;->toLocalIndex(I)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    invoke-virtual {p1, v2}, Landroidx/compose/ui/text/ParagraphInfo;->toLocalIndex(I)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iget-object v4, v0, Landroidx/compose/ui/text/AndroidParagraph;->charSequence:Ljava/lang/CharSequence;

    .line 73
    .line 74
    if-ltz p0, :cond_0

    .line 75
    .line 76
    if-gt p0, v2, :cond_0

    .line 77
    .line 78
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-gt v2, v5, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const-string v5, ") or end("

    .line 86
    .line 87
    const-string v6, ") is out of range [0.."

    .line 88
    .line 89
    const-string v7, "start("

    .line 90
    .line 91
    invoke-static {v7, p0, v5, v2, v6}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v4, "], or start > end!"

    .line 103
    .line 104
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-static {v4}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :goto_0
    new-instance v4, Landroid/graphics/Path;

    .line 115
    .line 116
    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 117
    .line 118
    .line 119
    iget-object v0, v0, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    .line 120
    .line 121
    iget-object v5, v0, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    .line 122
    .line 123
    invoke-virtual {v5, p0, v2, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 124
    .line 125
    .line 126
    iget p0, v0, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    .line 127
    .line 128
    const/4 v0, 0x0

    .line 129
    if-eqz p0, :cond_1

    .line 130
    .line 131
    invoke-virtual {v4}, Landroid/graphics/Path;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-nez v2, :cond_1

    .line 136
    .line 137
    int-to-float p0, p0

    .line 138
    invoke-virtual {v4, v0, p0}, Landroid/graphics/Path;->offset(FF)V

    .line 139
    .line 140
    .line 141
    :cond_1
    new-instance p0, Landroidx/compose/ui/graphics/AndroidPath;

    .line 142
    .line 143
    invoke-direct {p0, v4}, Landroidx/compose/ui/graphics/AndroidPath;-><init>(Landroid/graphics/Path;)V

    .line 144
    .line 145
    .line 146
    iget p1, p1, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    .line 147
    .line 148
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    int-to-long v4, v0

    .line 153
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    int-to-long v6, p1

    .line 158
    const/16 p1, 0x20

    .line 159
    .line 160
    shl-long/2addr v4, p1

    .line 161
    const-wide v8, 0xffffffffL

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    and-long/2addr v6, v8

    .line 167
    or-long/2addr v4, v6

    .line 168
    invoke-virtual {p0, v4, v5}, Landroidx/compose/ui/graphics/AndroidPath;->translate-k-4lQ0M(J)V

    .line 169
    .line 170
    .line 171
    invoke-static {v3, p0}, Landroidx/compose/ui/Modifier$-CC;->addPath-Uv8p0NA$default(Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/AndroidPath;)V

    .line 172
    .line 173
    .line 174
    return-object v1

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

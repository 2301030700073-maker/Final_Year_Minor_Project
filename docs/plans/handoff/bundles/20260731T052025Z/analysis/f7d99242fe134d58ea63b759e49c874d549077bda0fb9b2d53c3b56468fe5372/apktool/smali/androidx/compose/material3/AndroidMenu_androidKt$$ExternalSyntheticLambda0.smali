.class public final synthetic Landroidx/compose/material3/AndroidMenu_androidKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/material3/AndroidMenu_androidKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/material3/AndroidMenu_androidKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Landroidx/compose/material3/AndroidMenu_androidKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object p0, p0, Landroidx/compose/material3/AndroidMenu_androidKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 12
    .line 13
    check-cast p2, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    and-int/lit8 v0, p2, 0x3

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-eq v0, v2, :cond_0

    .line 23
    .line 24
    move v0, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    and-int/2addr p2, v3

    .line 28
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 29
    .line 30
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    sget-object p2, Landroidx/compose/material3/ExposedDropdownMenuDefaults;->INSTANCE:Landroidx/compose/material3/ExposedDropdownMenuDefaults;

    .line 37
    .line 38
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    const/4 v0, 0x0

    .line 49
    const/16 v2, 0x180

    .line 50
    .line 51
    invoke-virtual {p2, p0, v0, p1, v2}, Landroidx/compose/material3/ExposedDropdownMenuDefaults;->TrailingIcon(ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 56
    .line 57
    .line 58
    :goto_1
    return-object v1

    .line 59
    :pswitch_0
    check-cast p1, Landroidx/compose/ui/unit/IntRect;

    .line 60
    .line 61
    check-cast p2, Landroidx/compose/ui/unit/IntRect;

    .line 62
    .line 63
    iget v0, p2, Landroidx/compose/ui/unit/IntRect;->left:I

    .line 64
    .line 65
    iget v3, p2, Landroidx/compose/ui/unit/IntRect;->bottom:I

    .line 66
    .line 67
    iget v4, p2, Landroidx/compose/ui/unit/IntRect;->right:I

    .line 68
    .line 69
    iget v5, p2, Landroidx/compose/ui/unit/IntRect;->top:I

    .line 70
    .line 71
    iget v6, p1, Landroidx/compose/ui/unit/IntRect;->right:I

    .line 72
    .line 73
    iget v7, p1, Landroidx/compose/ui/unit/IntRect;->top:I

    .line 74
    .line 75
    iget v8, p1, Landroidx/compose/ui/unit/IntRect;->bottom:I

    .line 76
    .line 77
    iget v9, p1, Landroidx/compose/ui/unit/IntRect;->left:I

    .line 78
    .line 79
    const/high16 v10, 0x3f800000    # 1.0f

    .line 80
    .line 81
    const/4 v11, 0x0

    .line 82
    if-lt v0, v6, :cond_2

    .line 83
    .line 84
    :goto_2
    move p1, v11

    .line 85
    goto :goto_3

    .line 86
    :cond_2
    if-gt v4, v9, :cond_3

    .line 87
    .line 88
    move p1, v10

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    invoke-virtual {p2}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_4

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    iget p1, p1, Landroidx/compose/ui/unit/IntRect;->right:I

    .line 102
    .line 103
    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    add-int/2addr p1, v6

    .line 108
    div-int/2addr p1, v2

    .line 109
    sub-int/2addr p1, v0

    .line 110
    int-to-float p1, p1

    .line 111
    invoke-virtual {p2}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    int-to-float v0, v0

    .line 116
    div-float/2addr p1, v0

    .line 117
    :goto_3
    if-lt v5, v8, :cond_5

    .line 118
    .line 119
    :goto_4
    move v10, v11

    .line 120
    goto :goto_5

    .line 121
    :cond_5
    if-gt v3, v7, :cond_6

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_6
    invoke-virtual {p2}, Landroidx/compose/ui/unit/IntRect;->getHeight()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_7

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_7
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    add-int/2addr v3, v0

    .line 140
    div-int/2addr v3, v2

    .line 141
    sub-int/2addr v3, v5

    .line 142
    int-to-float v0, v3

    .line 143
    invoke-virtual {p2}, Landroidx/compose/ui/unit/IntRect;->getHeight()I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    int-to-float p2, p2

    .line 148
    div-float v10, v0, p2

    .line 149
    .line 150
    :goto_5
    invoke-static {p1, v10}, Landroidx/compose/ui/graphics/ColorKt;->TransformOrigin(FF)J

    .line 151
    .line 152
    .line 153
    move-result-wide p1

    .line 154
    new-instance v0, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 155
    .line 156
    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 157
    .line 158
    .line 159
    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    return-object v1

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

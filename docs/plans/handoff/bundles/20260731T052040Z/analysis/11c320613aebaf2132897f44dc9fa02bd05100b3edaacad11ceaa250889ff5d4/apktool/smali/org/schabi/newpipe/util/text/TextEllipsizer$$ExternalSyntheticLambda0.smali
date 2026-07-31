.class public final synthetic Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/util/text/TextEllipsizer;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/util/text/TextEllipsizer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/util/text/TextEllipsizer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/util/text/TextEllipsizer;

    .line 6
    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iput-boolean v2, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->isEllipsized:Z

    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    iget-object p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->view:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const v3, 0x7fffffff

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget v4, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->maxLines:I

    .line 32
    .line 33
    if-le v3, v4, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v1, v2

    .line 37
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->canBeEllipsized:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->onContentChanged:Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object p0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->canBeEllipsized:Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void

    .line 56
    :pswitch_1
    iget p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->maxLines:I

    .line 57
    .line 58
    iget-object v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->view:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-le v4, p1, :cond_4

    .line 71
    .line 72
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    add-int/lit8 v5, p1, -0x1

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineWidth(I)F

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    int-to-float v7, v7

    .line 91
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineStart(I)I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineEnd(I)I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    const/4 v5, 0x0

    .line 100
    move v9, v4

    .line 101
    :goto_1
    sub-float v5, v6, v5

    .line 102
    .line 103
    iget v10, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->ellipsisWidthPx:F

    .line 104
    .line 105
    add-float/2addr v5, v10

    .line 106
    const/high16 v10, 0x40000000    # 2.0f

    .line 107
    .line 108
    add-float/2addr v5, v10

    .line 109
    cmpl-float v5, v5, v7

    .line 110
    .line 111
    if-lez v5, :cond_2

    .line 112
    .line 113
    if-lt v9, v8, :cond_2

    .line 114
    .line 115
    add-int/lit8 v9, v9, -0x1

    .line 116
    .line 117
    iget-object v5, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->paintAtContentSize:Landroid/graphics/Paint;

    .line 118
    .line 119
    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    goto :goto_1

    .line 128
    :cond_2
    :goto_2
    if-lez v9, :cond_3

    .line 129
    .line 130
    add-int/lit8 v4, v9, -0x1

    .line 131
    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eqz v4, :cond_3

    .line 141
    .line 142
    add-int/lit8 v9, v9, -0x1

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_3
    invoke-virtual {v3, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    const-string/jumbo v3, "\u2026"

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    iput-boolean v1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->isEllipsized:Z

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_4
    iput-boolean v2, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer;->isEllipsized:Z

    .line 163
    .line 164
    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

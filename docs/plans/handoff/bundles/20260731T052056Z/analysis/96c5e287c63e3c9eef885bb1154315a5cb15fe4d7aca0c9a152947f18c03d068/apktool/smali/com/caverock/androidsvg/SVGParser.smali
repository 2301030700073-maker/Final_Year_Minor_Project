.class public final Lcom/caverock/androidsvg/SVGParser;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

.field public ignoreDepth:I

.field public ignoring:Z

.field public inMetadataElement:Z

.field public inStyleElement:Z

.field public metadataElementContents:Ljava/lang/StringBuilder;

.field public metadataTag:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public styleElementContents:Ljava/lang/StringBuilder;

.field public svgDocument:Lcom/caverock/androidsvg/SVG;


# direct methods
.method public static clamp255(F)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p0, v0

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    .line 9
    .line 10
    cmpl-float v0, p0, v0

    .line 11
    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    const/16 p0, 0xff

    .line 15
    .line 16
    return p0

    .line 17
    :cond_1
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static hslToRgb(FFF)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p0, v0

    .line 3
    .line 4
    const/high16 v2, 0x43b40000    # 360.0f

    .line 5
    .line 6
    rem-float/2addr p0, v2

    .line 7
    if-ltz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    add-float/2addr p0, v2

    .line 11
    :goto_0
    const/high16 v1, 0x42700000    # 60.0f

    .line 12
    .line 13
    div-float/2addr p0, v1

    .line 14
    const/high16 v1, 0x42c80000    # 100.0f

    .line 15
    .line 16
    div-float/2addr p1, v1

    .line 17
    div-float/2addr p2, v1

    .line 18
    cmpg-float v1, p1, v0

    .line 19
    .line 20
    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    .line 22
    if-gez v1, :cond_1

    .line 23
    .line 24
    move p1, v0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    cmpl-float v1, p1, v2

    .line 27
    .line 28
    if-lez v1, :cond_2

    .line 29
    .line 30
    move p1, v2

    .line 31
    :cond_2
    :goto_1
    cmpg-float v1, p2, v0

    .line 32
    .line 33
    if-gez v1, :cond_3

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    cmpl-float v0, p2, v2

    .line 37
    .line 38
    if-lez v0, :cond_4

    .line 39
    .line 40
    move v0, v2

    .line 41
    goto :goto_2

    .line 42
    :cond_4
    move v0, p2

    .line 43
    :goto_2
    const/high16 p2, 0x3f000000    # 0.5f

    .line 44
    .line 45
    cmpg-float p2, v0, p2

    .line 46
    .line 47
    if-gtz p2, :cond_5

    .line 48
    .line 49
    add-float/2addr p1, v2

    .line 50
    mul-float/2addr p1, v0

    .line 51
    goto :goto_3

    .line 52
    :cond_5
    add-float p2, v0, p1

    .line 53
    .line 54
    mul-float/2addr p1, v0

    .line 55
    sub-float p1, p2, p1

    .line 56
    .line 57
    :goto_3
    const/high16 p2, 0x40000000    # 2.0f

    .line 58
    .line 59
    mul-float/2addr v0, p2

    .line 60
    sub-float/2addr v0, p1

    .line 61
    add-float v1, p0, p2

    .line 62
    .line 63
    invoke-static {v0, p1, v1}, Lcom/caverock/androidsvg/SVGParser;->hueToRgb(FFF)F

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {v0, p1, p0}, Lcom/caverock/androidsvg/SVGParser;->hueToRgb(FFF)F

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    sub-float/2addr p0, p2

    .line 72
    invoke-static {v0, p1, p0}, Lcom/caverock/androidsvg/SVGParser;->hueToRgb(FFF)F

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    const/high16 p1, 0x43800000    # 256.0f

    .line 77
    .line 78
    mul-float/2addr v1, p1

    .line 79
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    shl-int/lit8 p2, p2, 0x10

    .line 84
    .line 85
    mul-float/2addr v2, p1

    .line 86
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    shl-int/lit8 v0, v0, 0x8

    .line 91
    .line 92
    or-int/2addr p2, v0

    .line 93
    mul-float/2addr p0, p1

    .line 94
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    or-int/2addr p0, p2

    .line 99
    return p0
.end method

.method public static hueToRgb(FFF)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p2, v0

    .line 3
    .line 4
    const/high16 v1, 0x40c00000    # 6.0f

    .line 5
    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    add-float/2addr p2, v1

    .line 9
    :cond_0
    cmpl-float v0, p2, v1

    .line 10
    .line 11
    if-ltz v0, :cond_1

    .line 12
    .line 13
    sub-float/2addr p2, v1

    .line 14
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    cmpg-float v0, p2, v0

    .line 17
    .line 18
    if-gez v0, :cond_2

    .line 19
    .line 20
    invoke-static {p1, p0, p2, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(FFFF)F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_2
    const/high16 v0, 0x40400000    # 3.0f

    .line 26
    .line 27
    cmpg-float v0, p2, v0

    .line 28
    .line 29
    if-gez v0, :cond_3

    .line 30
    .line 31
    return p1

    .line 32
    :cond_3
    const/high16 v0, 0x40800000    # 4.0f

    .line 33
    .line 34
    cmpg-float v1, p2, v0

    .line 35
    .line 36
    if-gez v1, :cond_4

    .line 37
    .line 38
    sub-float/2addr p1, p0

    .line 39
    invoke-static {v0, p2, p1, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(FFFF)F

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    :cond_4
    return p0
.end method

.method public static parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_6

    .line 8
    .line 9
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 18
    .line 19
    invoke-static {p1, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    aget v3, v3, v4

    .line 24
    .line 25
    packed-switch v3, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    goto/16 :goto_6

    .line 29
    .line 30
    :pswitch_0
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v3, Ljava/util/HashSet;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-interface {p0, v3}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFonts(Ljava/util/HashSet;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_6

    .line 49
    .line 50
    :pswitch_1
    new-instance v3, Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 51
    .line 52
    invoke-direct {v3, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Ljava/util/HashSet;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 58
    .line 59
    .line 60
    :goto_2
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_1

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextToken()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_1
    invoke-interface {p0, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFormats(Ljava/util/HashSet;)V

    .line 78
    .line 79
    .line 80
    goto :goto_6

    .line 81
    :pswitch_2
    new-instance v3, Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 82
    .line 83
    invoke-direct {v3, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v2, Ljava/util/HashSet;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 89
    .line 90
    .line 91
    :goto_3
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-nez v4, :cond_3

    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextToken()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const/16 v5, 0x2d

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    const/4 v6, -0x1

    .line 108
    if-eq v5, v6, :cond_2

    .line 109
    .line 110
    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    :cond_2
    new-instance v5, Ljava/util/Locale;

    .line 115
    .line 116
    const-string v6, ""

    .line 117
    .line 118
    invoke-direct {v5, v4, v6, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_3
    invoke-interface {p0, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setSystemLanguage(Ljava/util/HashSet;)V

    .line 133
    .line 134
    .line 135
    goto :goto_6

    .line 136
    :pswitch_3
    invoke-interface {p0, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredExtensions(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_6

    .line 140
    :pswitch_4
    new-instance v3, Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 141
    .line 142
    invoke-direct {v3, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    new-instance v2, Ljava/util/HashSet;

    .line 146
    .line 147
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 148
    .line 149
    .line 150
    :goto_4
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-nez v4, :cond_5

    .line 155
    .line 156
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextToken()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    const-string v5, "http://www.w3.org/TR/SVG11/feature#"

    .line 161
    .line 162
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-eqz v5, :cond_4

    .line 167
    .line 168
    const/16 v5, 0x23

    .line 169
    .line 170
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_4
    const-string v4, "UNSUPPORTED"

    .line 179
    .line 180
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    :goto_5
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_5
    invoke-interface {p0, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFeatures(Ljava/util/HashSet;)V

    .line 188
    .line 189
    .line 190
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_6
    return-void

    .line 195
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_5

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "id"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_4

    .line 19
    .line 20
    const-string/jumbo v2, "xml:id"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const-string/jumbo v2, "xml:space"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "default"

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    const-string v0, "preserve"

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 74
    .line 75
    const-string v0, "Invalid value for \"xml:space\" attribute: "

    .line 76
    .line 77
    invoke-static {v0, p1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    :goto_1
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    .line 97
    .line 98
    :cond_5
    return-void
.end method

.method public static parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_5

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    aget v2, v2, v3

    .line 23
    .line 24
    const/4 v3, 0x6

    .line 25
    if-eq v2, v3, :cond_2

    .line 26
    .line 27
    packed-switch v2, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :pswitch_0
    :try_start_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVG$GradientSpread;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$GradientSpread;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catch_0
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 39
    .line 40
    const-string p1, "Invalid spreadMethod attribute. \""

    .line 41
    .line 42
    const-string v0, "\" is not a valid value."

    .line 43
    .line 44
    invoke-static {p1, v1, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :pswitch_2
    const-string v2, "objectBoundingBox"

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 68
    .line 69
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    const-string/jumbo v2, "userSpaceOnUse"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 82
    .line 83
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const-string p0, "Invalid value for attribute gradientUnits"

    .line 87
    .line 88
    invoke-static {p0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    const-string v2, ""

    .line 93
    .line 94
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_3

    .line 103
    .line 104
    const-string v2, "http://www.w3.org/1999/xlink"

    .line 105
    .line 106
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_4

    .line 115
    .line 116
    :cond_3
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    .line 117
    .line 118
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_5
    return-void

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_4

    .line 8
    .line 9
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->points:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 18
    .line 19
    if-ne v2, v3, :cond_3

    .line 20
    .line 21
    new-instance v2, Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 22
    .line 23
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_2

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    const-string v6, "Invalid <"

    .line 53
    .line 54
    if-nez v5, :cond_1

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-nez v7, :cond_0

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 70
    .line 71
    .line 72
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_0
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 88
    .line 89
    const-string p1, "> points attribute. There should be an even number of coordinates."

    .line 90
    .line 91
    invoke-static {v6, p2, p1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0

    .line 99
    :cond_1
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 100
    .line 101
    const-string p1, "> points attribute. Non-coordinate content found in list."

    .line 102
    .line 103
    invoke-static {v6, p2, p1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    new-array v2, v2, [F

    .line 116
    .line 117
    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    move v3, v0

    .line 124
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_3

    .line 129
    .line 130
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Ljava/lang/Float;

    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    iget-object v5, p0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    .line 141
    .line 142
    add-int/lit8 v6, v3, 0x1

    .line 143
    .line 144
    aput v4, v5, v3

    .line 145
    .line 146
    move v3, v6

    .line 147
    goto :goto_2

    .line 148
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_4
    return-void
.end method

.method public static parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_c

    .line 8
    .line 9
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_0
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 26
    .line 27
    invoke-static {p1, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    aget v3, v3, v4

    .line 32
    .line 33
    const/16 v4, 0x2d

    .line 34
    .line 35
    if-eq v3, v4, :cond_6

    .line 36
    .line 37
    const/16 v4, 0x2e

    .line 38
    .line 39
    if-eq v3, v4, :cond_2

    .line 40
    .line 41
    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    .line 42
    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    new-instance v2, Lcom/caverock/androidsvg/SVG$Style;

    .line 46
    .line 47
    invoke-direct {v2}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    .line 51
    .line 52
    :cond_1
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v2, v3, v4}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_2
    new-instance v3, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    .line 69
    .line 70
    invoke-direct {v3, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    :goto_1
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_5

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextToken()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    if-nez v4, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    if-nez v2, :cond_4

    .line 88
    .line 89
    new-instance v2, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    :cond_4
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/ArrayList;

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_6
    new-instance v3, Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 105
    .line 106
    const-string v4, "/\\*.*?\\*/"

    .line 107
    .line 108
    const-string v5, ""

    .line 109
    .line 110
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-direct {v3, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_7
    :goto_2
    const/16 v2, 0x3a

    .line 118
    .line 119
    invoke-virtual {v3, v2, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextToken(CZ)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_8

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_8
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 134
    .line 135
    .line 136
    const/16 v2, 0x3b

    .line 137
    .line 138
    const/4 v5, 0x1

    .line 139
    invoke-virtual {v3, v2, v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextToken(CZ)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    if-nez v5, :cond_9

    .line 144
    .line 145
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_9
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-nez v6, :cond_a

    .line 157
    .line 158
    invoke-virtual {v3, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_7

    .line 163
    .line 164
    :cond_a
    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 165
    .line 166
    if-nez v2, :cond_b

    .line 167
    .line 168
    new-instance v2, Lcom/caverock/androidsvg/SVG$Style;

    .line 169
    .line 170
    invoke-direct {v2}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    .line 171
    .line 172
    .line 173
    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 174
    .line 175
    :cond_b
    invoke-static {v2, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_c
    return-void
.end method

.method public static parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_4

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    aget v2, v2, v3

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-eq v2, v3, :cond_3

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    if-eq v2, v3, :cond_2

    .line 29
    .line 30
    const/16 v3, 0x13

    .line 31
    .line 32
    if-eq v2, v3, :cond_1

    .line 33
    .line 34
    const/16 v3, 0x14

    .line 35
    .line 36
    if-eq v2, v3, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/ArrayList;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/ArrayList;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/ArrayList;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/ArrayList;

    .line 65
    .line 66
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    return-void
.end method

.method public static parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->transform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 17
    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {p0, v1}, Lcom/caverock/androidsvg/SVG$HasTransform;->setTransform(Landroid/graphics/Matrix;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public static parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_5

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    aget v2, v2, v3

    .line 23
    .line 24
    const/4 v3, 0x7

    .line 25
    if-eq v2, v3, :cond_4

    .line 26
    .line 27
    const/16 v3, 0x57

    .line 28
    .line 29
    if-eq v2, v3, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    new-instance v2, Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 33
    .line 34
    invoke-direct {v2, v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_3

    .line 70
    .line 71
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_3

    .line 76
    .line 77
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-nez v5, :cond_3

    .line 82
    .line 83
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-nez v5, :cond_3

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    cmpg-float v6, v4, v5

    .line 91
    .line 92
    if-ltz v6, :cond_2

    .line 93
    .line 94
    cmpg-float v5, v2, v5

    .line 95
    .line 96
    if-ltz v5, :cond_1

    .line 97
    .line 98
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    .line 99
    .line 100
    invoke-direct {v5, v1, v3, v4, v2}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 101
    .line 102
    .line 103
    iput-object v5, p0, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    const-string p0, "Invalid viewBox. height cannot be negative"

    .line 107
    .line 108
    invoke-static {p0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_2
    const-string p0, "Invalid viewBox. width cannot be negative"

    .line 113
    .line 114
    invoke-static {p0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_3
    const-string p0, "Invalid viewBox definition - should have four numbers"

    .line 119
    .line 120
    invoke-static {p0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_4
    invoke-static {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_5
    return-void
.end method

.method public static parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/16 v1, 0x23

    .line 7
    .line 8
    const/4 v2, 0x5

    .line 9
    const/high16 v3, -0x1000000

    .line 10
    .line 11
    const/4 v4, 0x4

    .line 12
    if-ne v0, v1, :cond_b

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    if-lt v1, v0, :cond_0

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_0
    const-wide/16 v6, 0x0

    .line 24
    .line 25
    move v8, v1

    .line 26
    :goto_0
    if-ge v8, v0, :cond_4

    .line 27
    .line 28
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    const/16 v10, 0x30

    .line 33
    .line 34
    const-wide/16 v11, 0x10

    .line 35
    .line 36
    if-lt v9, v10, :cond_1

    .line 37
    .line 38
    const/16 v10, 0x39

    .line 39
    .line 40
    if-gt v9, v10, :cond_1

    .line 41
    .line 42
    mul-long/2addr v6, v11

    .line 43
    add-int/lit8 v9, v9, -0x30

    .line 44
    .line 45
    int-to-long v9, v9

    .line 46
    add-long/2addr v6, v9

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    const-wide/16 v13, 0xa

    .line 49
    .line 50
    const/16 v10, 0x41

    .line 51
    .line 52
    if-lt v9, v10, :cond_2

    .line 53
    .line 54
    const/16 v10, 0x46

    .line 55
    .line 56
    if-gt v9, v10, :cond_2

    .line 57
    .line 58
    mul-long/2addr v6, v11

    .line 59
    add-int/lit8 v9, v9, -0x41

    .line 60
    .line 61
    :goto_1
    int-to-long v9, v9

    .line 62
    add-long/2addr v6, v9

    .line 63
    add-long/2addr v6, v13

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const/16 v10, 0x61

    .line 66
    .line 67
    if-lt v9, v10, :cond_4

    .line 68
    .line 69
    const/16 v10, 0x66

    .line 70
    .line 71
    if-gt v9, v10, :cond_4

    .line 72
    .line 73
    mul-long/2addr v6, v11

    .line 74
    add-int/lit8 v9, v9, -0x61

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :goto_2
    const-wide v9, 0xffffffffL

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    cmp-long v9, v6, v9

    .line 83
    .line 84
    if-lez v9, :cond_3

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    if-ne v8, v1, :cond_5

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_5
    new-instance v5, Lcom/caverock/androidsvg/IntegerParser;

    .line 94
    .line 95
    invoke-direct {v5, v6, v7, v8}, Lcom/caverock/androidsvg/IntegerParser;-><init>(JI)V

    .line 96
    .line 97
    .line 98
    :goto_3
    const-string v0, "Bad hex colour value: "

    .line 99
    .line 100
    if-eqz v5, :cond_a

    .line 101
    .line 102
    iget-wide v6, v5, Lcom/caverock/androidsvg/IntegerParser;->value:J

    .line 103
    .line 104
    iget v1, v5, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    .line 105
    .line 106
    if-eq v1, v4, :cond_9

    .line 107
    .line 108
    if-eq v1, v2, :cond_8

    .line 109
    .line 110
    const/4 v2, 0x7

    .line 111
    if-eq v1, v2, :cond_7

    .line 112
    .line 113
    const/16 v2, 0x9

    .line 114
    .line 115
    if-ne v1, v2, :cond_6

    .line 116
    .line 117
    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    .line 118
    .line 119
    long-to-int v0, v6

    .line 120
    shl-int/lit8 v1, v0, 0x18

    .line 121
    .line 122
    ushr-int/lit8 v0, v0, 0x8

    .line 123
    .line 124
    or-int/2addr v0, v1

    .line 125
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    .line 126
    .line 127
    .line 128
    return-object p0

    .line 129
    :cond_6
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 130
    .line 131
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-direct {v1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v1

    .line 139
    :cond_7
    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    .line 140
    .line 141
    long-to-int v0, v6

    .line 142
    or-int/2addr v0, v3

    .line 143
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    .line 144
    .line 145
    .line 146
    return-object p0

    .line 147
    :cond_8
    long-to-int p0, v6

    .line 148
    const v0, 0xf000

    .line 149
    .line 150
    .line 151
    and-int/2addr v0, p0

    .line 152
    and-int/lit16 v1, p0, 0xf00

    .line 153
    .line 154
    and-int/lit16 v2, p0, 0xf0

    .line 155
    .line 156
    and-int/lit8 p0, p0, 0xf

    .line 157
    .line 158
    new-instance v3, Lcom/caverock/androidsvg/SVG$Colour;

    .line 159
    .line 160
    shl-int/lit8 v5, p0, 0x1c

    .line 161
    .line 162
    shl-int/lit8 p0, p0, 0x18

    .line 163
    .line 164
    or-int/2addr p0, v5

    .line 165
    shl-int/lit8 v5, v0, 0x8

    .line 166
    .line 167
    or-int/2addr p0, v5

    .line 168
    shl-int/2addr v0, v4

    .line 169
    or-int/2addr p0, v0

    .line 170
    shl-int/lit8 v0, v1, 0x4

    .line 171
    .line 172
    or-int/2addr p0, v0

    .line 173
    or-int/2addr p0, v1

    .line 174
    or-int/2addr p0, v2

    .line 175
    shr-int/lit8 v0, v2, 0x4

    .line 176
    .line 177
    or-int/2addr p0, v0

    .line 178
    invoke-direct {v3, p0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    .line 179
    .line 180
    .line 181
    return-object v3

    .line 182
    :cond_9
    long-to-int p0, v6

    .line 183
    and-int/lit16 v0, p0, 0xf00

    .line 184
    .line 185
    and-int/lit16 v1, p0, 0xf0

    .line 186
    .line 187
    and-int/lit8 p0, p0, 0xf

    .line 188
    .line 189
    new-instance v2, Lcom/caverock/androidsvg/SVG$Colour;

    .line 190
    .line 191
    shl-int/lit8 v5, v0, 0xc

    .line 192
    .line 193
    or-int/2addr v3, v5

    .line 194
    shl-int/lit8 v0, v0, 0x8

    .line 195
    .line 196
    or-int/2addr v0, v3

    .line 197
    shl-int/lit8 v3, v1, 0x8

    .line 198
    .line 199
    or-int/2addr v0, v3

    .line 200
    shl-int/2addr v1, v4

    .line 201
    or-int/2addr v0, v1

    .line 202
    shl-int/lit8 v1, p0, 0x4

    .line 203
    .line 204
    or-int/2addr v0, v1

    .line 205
    or-int/2addr p0, v0

    .line 206
    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    .line 207
    .line 208
    .line 209
    return-object v2

    .line 210
    :cond_a
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 211
    .line 212
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-direct {v1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v1

    .line 220
    :cond_b
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 221
    .line 222
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    const-string v1, "rgba("

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    const/16 v5, 0x29

    .line 233
    .line 234
    const/high16 v6, 0x43800000    # 256.0f

    .line 235
    .line 236
    const/16 v7, 0x25

    .line 237
    .line 238
    if-nez v1, :cond_16

    .line 239
    .line 240
    const-string v8, "rgb("

    .line 241
    .line 242
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    move-result v8

    .line 246
    if-eqz v8, :cond_c

    .line 247
    .line 248
    goto/16 :goto_6

    .line 249
    .line 250
    :cond_c
    const-string v1, "hsla("

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-nez v1, :cond_f

    .line 257
    .line 258
    const-string v8, "hsl("

    .line 259
    .line 260
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    if-eqz v8, :cond_d

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_d
    sget-object p0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->colourKeywords:Ljava/util/HashMap;

    .line 268
    .line 269
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    check-cast p0, Ljava/lang/Integer;

    .line 274
    .line 275
    if-eqz p0, :cond_e

    .line 276
    .line 277
    new-instance v0, Lcom/caverock/androidsvg/SVG$Colour;

    .line 278
    .line 279
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    .line 284
    .line 285
    .line 286
    return-object v0

    .line 287
    :cond_e
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 288
    .line 289
    const-string v1, "Invalid colour keyword: "

    .line 290
    .line 291
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw p0

    .line 299
    :cond_f
    :goto_4
    new-instance v0, Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 300
    .line 301
    if-eqz v1, :cond_10

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_10
    move v2, v4

    .line 305
    :goto_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-direct {v0, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 324
    .line 325
    .line 326
    move-result v8

    .line 327
    if-nez v8, :cond_11

    .line 328
    .line 329
    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 330
    .line 331
    .line 332
    :cond_11
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    .line 333
    .line 334
    .line 335
    move-result v8

    .line 336
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    .line 337
    .line 338
    .line 339
    move-result v9

    .line 340
    if-nez v9, :cond_12

    .line 341
    .line 342
    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 343
    .line 344
    .line 345
    :cond_12
    if-eqz v1, :cond_14

    .line 346
    .line 347
    invoke-virtual {v0, v8}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 352
    .line 353
    .line 354
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-nez v3, :cond_13

    .line 359
    .line 360
    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_13

    .line 365
    .line 366
    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    .line 367
    .line 368
    mul-float/2addr v1, v6

    .line 369
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    shl-int/lit8 v0, v0, 0x18

    .line 374
    .line 375
    invoke-static {v2, v4, v8}, Lcom/caverock/androidsvg/SVGParser;->hslToRgb(FFF)I

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    or-int/2addr v0, v1

    .line 380
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    .line 381
    .line 382
    .line 383
    return-object p0

    .line 384
    :cond_13
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 385
    .line 386
    const-string v1, "Bad hsla() colour value: "

    .line 387
    .line 388
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p0

    .line 392
    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    throw v0

    .line 396
    :cond_14
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 397
    .line 398
    .line 399
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    if-nez v1, :cond_15

    .line 404
    .line 405
    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    if-eqz v0, :cond_15

    .line 410
    .line 411
    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    .line 412
    .line 413
    invoke-static {v2, v4, v8}, Lcom/caverock/androidsvg/SVGParser;->hslToRgb(FFF)I

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    or-int/2addr v0, v3

    .line 418
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    .line 419
    .line 420
    .line 421
    return-object p0

    .line 422
    :cond_15
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 423
    .line 424
    const-string v1, "Bad hsl() colour value: "

    .line 425
    .line 426
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object p0

    .line 430
    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    throw v0

    .line 434
    :cond_16
    :goto_6
    new-instance v0, Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 435
    .line 436
    if-eqz v1, :cond_17

    .line 437
    .line 438
    goto :goto_7

    .line 439
    :cond_17
    move v2, v4

    .line 440
    :goto_7
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    invoke-direct {v0, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 455
    .line 456
    .line 457
    move-result v4

    .line 458
    const/high16 v8, 0x42c80000    # 100.0f

    .line 459
    .line 460
    if-nez v4, :cond_18

    .line 461
    .line 462
    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    if-eqz v4, :cond_18

    .line 467
    .line 468
    mul-float/2addr v2, v6

    .line 469
    div-float/2addr v2, v8

    .line 470
    :cond_18
    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    .line 471
    .line 472
    .line 473
    move-result v4

    .line 474
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 475
    .line 476
    .line 477
    move-result v9

    .line 478
    if-nez v9, :cond_19

    .line 479
    .line 480
    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 481
    .line 482
    .line 483
    move-result v9

    .line 484
    if-eqz v9, :cond_19

    .line 485
    .line 486
    mul-float/2addr v4, v6

    .line 487
    div-float/2addr v4, v8

    .line 488
    :cond_19
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    .line 489
    .line 490
    .line 491
    move-result v9

    .line 492
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    .line 493
    .line 494
    .line 495
    move-result v10

    .line 496
    if-nez v10, :cond_1a

    .line 497
    .line 498
    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 499
    .line 500
    .line 501
    move-result v7

    .line 502
    if-eqz v7, :cond_1a

    .line 503
    .line 504
    mul-float/2addr v9, v6

    .line 505
    div-float/2addr v9, v8

    .line 506
    :cond_1a
    if-eqz v1, :cond_1c

    .line 507
    .line 508
    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 513
    .line 514
    .line 515
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 516
    .line 517
    .line 518
    move-result v3

    .line 519
    if-nez v3, :cond_1b

    .line 520
    .line 521
    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    if-eqz v0, :cond_1b

    .line 526
    .line 527
    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    .line 528
    .line 529
    mul-float/2addr v1, v6

    .line 530
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    .line 531
    .line 532
    .line 533
    move-result v0

    .line 534
    shl-int/lit8 v0, v0, 0x18

    .line 535
    .line 536
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    .line 537
    .line 538
    .line 539
    move-result v1

    .line 540
    shl-int/lit8 v1, v1, 0x10

    .line 541
    .line 542
    or-int/2addr v0, v1

    .line 543
    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    shl-int/lit8 v1, v1, 0x8

    .line 548
    .line 549
    or-int/2addr v0, v1

    .line 550
    invoke-static {v9}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    or-int/2addr v0, v1

    .line 555
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    .line 556
    .line 557
    .line 558
    return-object p0

    .line 559
    :cond_1b
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 560
    .line 561
    const-string v1, "Bad rgba() colour value: "

    .line 562
    .line 563
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object p0

    .line 567
    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    throw v0

    .line 571
    :cond_1c
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 572
    .line 573
    .line 574
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    .line 575
    .line 576
    .line 577
    move-result v1

    .line 578
    if-nez v1, :cond_1d

    .line 579
    .line 580
    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 581
    .line 582
    .line 583
    move-result v0

    .line 584
    if-eqz v0, :cond_1d

    .line 585
    .line 586
    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    .line 587
    .line 588
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    .line 589
    .line 590
    .line 591
    move-result v0

    .line 592
    shl-int/lit8 v0, v0, 0x10

    .line 593
    .line 594
    or-int/2addr v0, v3

    .line 595
    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    .line 596
    .line 597
    .line 598
    move-result v1

    .line 599
    shl-int/lit8 v1, v1, 0x8

    .line 600
    .line 601
    or-int/2addr v0, v1

    .line 602
    invoke-static {v9}, Lcom/caverock/androidsvg/SVGParser;->clamp255(F)I

    .line 603
    .line 604
    .line 605
    move-result v1

    .line 606
    or-int/2addr v0, v1

    .line 607
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    .line 608
    .line 609
    .line 610
    return-object p0

    .line 611
    :cond_1d
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 612
    .line 613
    const-string v1, "Bad rgb() colour value: "

    .line 614
    .line 615
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object p0

    .line 619
    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    throw v0
.end method

.method public static parseFloat(ILjava/lang/String;)F
    .locals 2

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/NumberParser;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, p0, p1}, Lcom/caverock/androidsvg/NumberParser;->parseNumber(IILjava/lang/String;)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 19
    .line 20
    const-string v0, "Invalid float value: "

    .line 21
    .line 22
    invoke-static {v0, p1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 1

    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {v0, p0}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(ILjava/lang/String;)F

    move-result p0

    return p0

    .line 32
    :cond_0
    const-string p0, "Invalid float value (empty string)"

    invoke-static {p0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static parseFontFamily(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextQuotedString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x2c

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextToken(CZ)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_1
    if-nez v1, :cond_2

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    if-nez p0, :cond_3

    .line 24
    .line 25
    new-instance p0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    return-object p0
.end method

.method public static parseFunctionalIRI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "none"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string/jumbo v0, "url("

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :goto_0
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    const-string v0, ")"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x4

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public static parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    .line 12
    .line 13
    add-int/lit8 v2, v0, -0x1

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x25

    .line 20
    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v3, 0x2

    .line 29
    if-le v0, v3, :cond_1

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    add-int/lit8 v2, v0, -0x2

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    add-int/lit8 v0, v0, -0x2

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Lcom/caverock/androidsvg/SVG$Unit;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;

    .line 62
    .line 63
    .line 64
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 67
    .line 68
    const-string v1, "Invalid length unit specifier: "

    .line 69
    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v0, p0}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(ILjava/lang/String;)F

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    .line 83
    .line 84
    invoke-direct {v2, v0, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .line 86
    .line 87
    return-object v2

    .line 88
    :catch_1
    move-exception v0

    .line 89
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 90
    .line 91
    const-string v2, "Invalid length value: "

    .line 92
    .line 93
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-direct {v1, p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 98
    .line 99
    .line 100
    throw v1

    .line 101
    :cond_2
    const-string p0, "Invalid length value (empty string)"

    .line 102
    .line 103
    invoke-static {p0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const/4 p0, 0x0

    .line 107
    return-object p0
.end method

.method public static parseLengthList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_3

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "Invalid length list value: "

    .line 42
    .line 43
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v3, Ljava/lang/String;

    .line 49
    .line 50
    iget v4, v2, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 51
    .line 52
    :goto_1
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-nez v5, :cond_0

    .line 57
    .line 58
    iget v5, v2, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 59
    .line 60
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    invoke-static {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->isWhitespace(I)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_0

    .line 69
    .line 70
    iget v5, v2, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 71
    .line 72
    add-int/2addr v5, v1

    .line 73
    iput v5, v2, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    iget v1, v2, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 77
    .line 78
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput v4, v2, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_1
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextUnit()Lcom/caverock/androidsvg/SVG$Unit;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-nez v3, :cond_2

    .line 100
    .line 101
    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    .line 102
    .line 103
    :cond_2
    new-instance v4, Lcom/caverock/androidsvg/SVG$Length;

    .line 104
    .line 105
    invoke-direct {v4, p0, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    return-object v0

    .line 116
    :cond_4
    const-string p0, "Invalid length list (empty string)"

    .line 117
    .line 118
    invoke-static {p0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const/4 p0, 0x0

    .line 122
    return-object p0
.end method

.method public static parseLengthOrAuto(Lcom/caverock/androidsvg/SVG$PathDefinition;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 1

    .line 1
    const-string v0, "auto"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Lcom/caverock/androidsvg/SVG$Length;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static parseOpacity(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    cmpg-float v1, p0, v0

    .line 7
    .line 8
    if-gez v1, :cond_0

    .line 9
    .line 10
    :goto_0
    move p0, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    cmpl-float v1, p0, v0

    .line 15
    .line 16
    if-lez v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public static parsePaintSpecifier(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;
    .locals 8

    .line 1
    const-string/jumbo v0, "url("

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "currentColor"

    .line 9
    .line 10
    const-string v2, "none"

    .line 11
    .line 12
    sget-object v3, Lcom/caverock/androidsvg/SVG$Colour;->TRANSPARENT:Lcom/caverock/androidsvg/SVG$Colour;

    .line 13
    .line 14
    sget-object v4, Lcom/caverock/androidsvg/SVG$CurrentColor;->instance:Lcom/caverock/androidsvg/SVG$CurrentColor;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    const-string v0, ")"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v6, -0x1

    .line 26
    const/4 v7, 0x4

    .line 27
    if-eq v0, v6, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-lez v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    .line 65
    :try_start_0
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    .line 66
    .line 67
    .line 68
    move-result-object v3
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-object v3, v5

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move-object v3, v4

    .line 73
    :cond_1
    :goto_0
    move-object v5, v3

    .line 74
    :cond_2
    new-instance p0, Lcom/caverock/androidsvg/SVG$PaintReference;

    .line 75
    .line 76
    invoke-direct {p0, v6, v5}, Lcom/caverock/androidsvg/SVG$PaintReference;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_3
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    new-instance v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    .line 89
    .line 90
    invoke-direct {v0, p0, v5}, Lcom/caverock/androidsvg/SVG$PaintReference;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 91
    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_6

    .line 99
    .line 100
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_5

    .line 105
    .line 106
    :try_start_1
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    .line 107
    .line 108
    .line 109
    move-result-object p0
    :try_end_1
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    return-object p0

    .line 111
    :catch_1
    return-object v5

    .line 112
    :cond_5
    return-object v4

    .line 113
    :cond_6
    return-object v3
.end method

.method public static parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextToken()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "defer"

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextToken()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_0
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$AspectRatioKeywords;->aspectRatioKeywords:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextToken()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const-string v2, "meet"

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    const-string v2, "slice"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    sget-object p1, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 72
    .line 73
    const-string v0, "Invalid preserveAspectRatio definition: "

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_2
    sget-object p1, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const/4 p1, 0x0

    .line 87
    :goto_0
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 88
    .line 89
    invoke-direct {v0, v1, p1}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 93
    .line 94
    return-void
.end method

.method public static parseProcessingInstructionAttributes(Lcom/caverock/androidsvg/SVG$PathDefinition;)Ljava/util/HashMap;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 7
    .line 8
    .line 9
    const/16 v1, 0x3d

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v1, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextToken(CZ)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    :goto_0
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextQuotedString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextToken(CZ)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-object v0
.end method

.method public static parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/Matrix;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_18

    .line 21
    .line 22
    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v3, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/4 v5, 0x1

    .line 31
    const/4 v6, 0x0

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_0
    iget v4, v2, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    :goto_1
    const/16 v8, 0x61

    .line 42
    .line 43
    if-lt v7, v8, :cond_1

    .line 44
    .line 45
    const/16 v8, 0x7a

    .line 46
    .line 47
    if-le v7, v8, :cond_2

    .line 48
    .line 49
    :cond_1
    const/16 v8, 0x41

    .line 50
    .line 51
    if-lt v7, v8, :cond_3

    .line 52
    .line 53
    const/16 v8, 0x5a

    .line 54
    .line 55
    if-gt v7, v8, :cond_3

    .line 56
    .line 57
    :cond_2
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->advanceChar()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    iget v8, v2, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 63
    .line 64
    :goto_2
    invoke-static {v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->isWhitespace(I)Z

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    if-eqz v9, :cond_4

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->advanceChar()I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    const/16 v9, 0x28

    .line 76
    .line 77
    if-ne v7, v9, :cond_5

    .line 78
    .line 79
    iget v6, v2, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 80
    .line 81
    add-int/2addr v6, v5

    .line 82
    iput v6, v2, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 83
    .line 84
    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    goto :goto_3

    .line 89
    :cond_5
    iput v4, v2, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 90
    .line 91
    :goto_3
    if-eqz v6, :cond_17

    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    const/4 v4, 0x5

    .line 98
    const/4 v7, 0x4

    .line 99
    const/4 v8, 0x3

    .line 100
    const/4 v9, 0x2

    .line 101
    const/4 v10, 0x0

    .line 102
    const/4 v11, -0x1

    .line 103
    sparse-switch v3, :sswitch_data_0

    .line 104
    .line 105
    .line 106
    goto :goto_4

    .line 107
    :sswitch_0
    const-string/jumbo v3, "translate"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-nez v3, :cond_6

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_6
    move v11, v4

    .line 118
    goto :goto_4

    .line 119
    :sswitch_1
    const-string v3, "skewY"

    .line 120
    .line 121
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-nez v3, :cond_7

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_7
    move v11, v7

    .line 129
    goto :goto_4

    .line 130
    :sswitch_2
    const-string v3, "skewX"

    .line 131
    .line 132
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-nez v3, :cond_8

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_8
    move v11, v8

    .line 140
    goto :goto_4

    .line 141
    :sswitch_3
    const-string v3, "scale"

    .line 142
    .line 143
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-nez v3, :cond_9

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_9
    move v11, v9

    .line 151
    goto :goto_4

    .line 152
    :sswitch_4
    const-string v3, "rotate"

    .line 153
    .line 154
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-nez v3, :cond_a

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_a
    move v11, v5

    .line 162
    goto :goto_4

    .line 163
    :sswitch_5
    const-string v3, "matrix"

    .line 164
    .line 165
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-nez v3, :cond_b

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_b
    move v11, v10

    .line 173
    :goto_4
    const/4 v3, 0x0

    .line 174
    const/16 v12, 0x29

    .line 175
    .line 176
    const-string v13, "Invalid transform list: "

    .line 177
    .line 178
    packed-switch v11, :pswitch_data_0

    .line 179
    .line 180
    .line 181
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 182
    .line 183
    const-string v1, "Invalid transform list fn: "

    .line 184
    .line 185
    const-string v2, ")"

    .line 186
    .line 187
    invoke-static {v1, v6, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v0

    .line 195
    :pswitch_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->possibleNextFloat()F

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 207
    .line 208
    .line 209
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    if-nez v6, :cond_d

    .line 214
    .line 215
    invoke-virtual {v2, v12}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-eqz v6, :cond_d

    .line 220
    .line 221
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-eqz v6, :cond_c

    .line 226
    .line 227
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 228
    .line 229
    .line 230
    goto/16 :goto_5

    .line 231
    .line 232
    :cond_c
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 233
    .line 234
    .line 235
    goto/16 :goto_5

    .line 236
    .line 237
    :cond_d
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 238
    .line 239
    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw v1

    .line 247
    :pswitch_1
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 255
    .line 256
    .line 257
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    if-nez v5, :cond_e

    .line 262
    .line 263
    invoke-virtual {v2, v12}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    if-eqz v5, :cond_e

    .line 268
    .line 269
    float-to-double v4, v4

    .line 270
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 271
    .line 272
    .line 273
    move-result-wide v4

    .line 274
    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    .line 275
    .line 276
    .line 277
    move-result-wide v4

    .line 278
    double-to-float v4, v4

    .line 279
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preSkew(FF)Z

    .line 280
    .line 281
    .line 282
    goto/16 :goto_5

    .line 283
    .line 284
    :cond_e
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 285
    .line 286
    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw v1

    .line 294
    :pswitch_2
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 302
    .line 303
    .line 304
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    if-nez v5, :cond_f

    .line 309
    .line 310
    invoke-virtual {v2, v12}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    if-eqz v5, :cond_f

    .line 315
    .line 316
    float-to-double v4, v4

    .line 317
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 318
    .line 319
    .line 320
    move-result-wide v4

    .line 321
    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    .line 322
    .line 323
    .line 324
    move-result-wide v4

    .line 325
    double-to-float v4, v4

    .line 326
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Matrix;->preSkew(FF)Z

    .line 327
    .line 328
    .line 329
    goto/16 :goto_5

    .line 330
    .line 331
    :cond_f
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 332
    .line 333
    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    throw v1

    .line 341
    :pswitch_3
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->possibleNextFloat()F

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 353
    .line 354
    .line 355
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    if-nez v5, :cond_11

    .line 360
    .line 361
    invoke-virtual {v2, v12}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 362
    .line 363
    .line 364
    move-result v5

    .line 365
    if-eqz v5, :cond_11

    .line 366
    .line 367
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 368
    .line 369
    .line 370
    move-result v5

    .line 371
    if-eqz v5, :cond_10

    .line 372
    .line 373
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 374
    .line 375
    .line 376
    goto/16 :goto_5

    .line 377
    .line 378
    :cond_10
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 379
    .line 380
    .line 381
    goto/16 :goto_5

    .line 382
    .line 383
    :cond_11
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 384
    .line 385
    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    throw v1

    .line 393
    :pswitch_4
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->possibleNextFloat()F

    .line 401
    .line 402
    .line 403
    move-result v4

    .line 404
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->possibleNextFloat()F

    .line 405
    .line 406
    .line 407
    move-result v5

    .line 408
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 409
    .line 410
    .line 411
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 412
    .line 413
    .line 414
    move-result v6

    .line 415
    if-nez v6, :cond_14

    .line 416
    .line 417
    invoke-virtual {v2, v12}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 418
    .line 419
    .line 420
    move-result v6

    .line 421
    if-eqz v6, :cond_14

    .line 422
    .line 423
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 424
    .line 425
    .line 426
    move-result v6

    .line 427
    if-eqz v6, :cond_12

    .line 428
    .line 429
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 430
    .line 431
    .line 432
    goto/16 :goto_5

    .line 433
    .line 434
    :cond_12
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 435
    .line 436
    .line 437
    move-result v6

    .line 438
    if-nez v6, :cond_13

    .line 439
    .line 440
    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 441
    .line 442
    .line 443
    goto :goto_5

    .line 444
    :cond_13
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 445
    .line 446
    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    throw v1

    .line 454
    :cond_14
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 455
    .line 456
    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    throw v1

    .line 464
    :pswitch_5
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 468
    .line 469
    .line 470
    move-result v6

    .line 471
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 472
    .line 473
    .line 474
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 475
    .line 476
    .line 477
    move-result v11

    .line 478
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 479
    .line 480
    .line 481
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 482
    .line 483
    .line 484
    move-result v14

    .line 485
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 489
    .line 490
    .line 491
    move-result v15

    .line 492
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 493
    .line 494
    .line 495
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 496
    .line 497
    .line 498
    move-result v16

    .line 499
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 500
    .line 501
    .line 502
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    .line 503
    .line 504
    .line 505
    move-result v17

    .line 506
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 507
    .line 508
    .line 509
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    .line 510
    .line 511
    .line 512
    move-result v18

    .line 513
    if-nez v18, :cond_16

    .line 514
    .line 515
    invoke-virtual {v2, v12}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 516
    .line 517
    .line 518
    move-result v12

    .line 519
    if-eqz v12, :cond_16

    .line 520
    .line 521
    new-instance v12, Landroid/graphics/Matrix;

    .line 522
    .line 523
    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 524
    .line 525
    .line 526
    const/16 v13, 0x9

    .line 527
    .line 528
    new-array v13, v13, [F

    .line 529
    .line 530
    aput v6, v13, v10

    .line 531
    .line 532
    aput v14, v13, v5

    .line 533
    .line 534
    aput v16, v13, v9

    .line 535
    .line 536
    aput v11, v13, v8

    .line 537
    .line 538
    aput v15, v13, v7

    .line 539
    .line 540
    aput v17, v13, v4

    .line 541
    .line 542
    const/4 v4, 0x6

    .line 543
    aput v3, v13, v4

    .line 544
    .line 545
    const/4 v4, 0x7

    .line 546
    aput v3, v13, v4

    .line 547
    .line 548
    const/high16 v3, 0x3f800000    # 1.0f

    .line 549
    .line 550
    const/16 v4, 0x8

    .line 551
    .line 552
    aput v3, v13, v4

    .line 553
    .line 554
    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->setValues([F)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v1, v12}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 558
    .line 559
    .line 560
    :goto_5
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 561
    .line 562
    .line 563
    move-result v3

    .line 564
    if-eqz v3, :cond_15

    .line 565
    .line 566
    goto :goto_6

    .line 567
    :cond_15
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 568
    .line 569
    .line 570
    goto/16 :goto_0

    .line 571
    .line 572
    :cond_16
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 573
    .line 574
    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    throw v1

    .line 582
    :cond_17
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 583
    .line 584
    const-string v2, "Bad transform function encountered in transform list: "

    .line 585
    .line 586
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    throw v1

    .line 594
    :cond_18
    :goto_6
    return-object v1

    .line 595
    :sswitch_data_0
    .sparse-switch
        -0x4072683f -> :sswitch_5
        -0x372522a5 -> :sswitch_4
        0x683094a -> :sswitch_3
        0x686bc8e -> :sswitch_2
        0x686bc8f -> :sswitch_1
        0x3ec0f14e -> :sswitch_0
    .end sparse-switch

    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_24

    .line 12
    .line 13
    :cond_0
    const-string v2, "inherit"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_24

    .line 22
    .line 23
    :cond_1
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 24
    .line 25
    invoke-static/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    aget v2, v2, v3

    .line 34
    .line 35
    const-string v3, "italic"

    .line 36
    .line 37
    const-string v4, "oblique"

    .line 38
    .line 39
    const-string/jumbo v6, "visible"

    .line 40
    .line 41
    .line 42
    const-string v7, "normal"

    .line 43
    .line 44
    const-string v8, "auto"

    .line 45
    .line 46
    const-string v13, "evenodd"

    .line 47
    .line 48
    const-string v14, "nonzero"

    .line 49
    .line 50
    const-string v15, "round"

    .line 51
    .line 52
    const-string v5, "none"

    .line 53
    .line 54
    const-string/jumbo v9, "|"

    .line 55
    .line 56
    .line 57
    const-string v10, "SVGParser"

    .line 58
    .line 59
    const/16 v16, 0x1

    .line 60
    .line 61
    sget-object v11, Lcom/caverock/androidsvg/SVG$CurrentColor;->instance:Lcom/caverock/androidsvg/SVG$CurrentColor;

    .line 62
    .line 63
    const-string v12, "currentColor"

    .line 64
    .line 65
    move/from16 v17, v2

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    packed-switch v17, :pswitch_data_0

    .line 69
    .line 70
    .line 71
    goto/16 :goto_24

    .line 72
    .line 73
    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    sparse-switch v3, :sswitch_data_0

    .line 78
    .line 79
    .line 80
    :goto_0
    const/4 v9, -0x1

    .line 81
    goto :goto_1

    .line 82
    :sswitch_0
    const-string v3, "optimizeSpeed"

    .line 83
    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_2

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    const/4 v9, 0x2

    .line 92
    goto :goto_1

    .line 93
    :sswitch_1
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_3

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    move/from16 v9, v16

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :sswitch_2
    const-string v3, "optimizeQuality"

    .line 104
    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_4

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    const/4 v9, 0x0

    .line 113
    :goto_1
    packed-switch v9, :pswitch_data_1

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :pswitch_1
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->optimizeSpeed:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :pswitch_2
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->auto:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :pswitch_3
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->optimizeQuality:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    .line 124
    .line 125
    :goto_2
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    .line 126
    .line 127
    if-eqz v2, :cond_43

    .line 128
    .line 129
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 130
    .line 131
    const-wide v3, 0x2000000000L

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    or-long/2addr v1, v3

    .line 137
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 138
    .line 139
    return-void

    .line 140
    :pswitch_4
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-nez v3, :cond_6

    .line 145
    .line 146
    const-string v3, "non-scaling-stroke"

    .line 147
    .line 148
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_5

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_5
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_6
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 159
    .line 160
    :goto_3
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 161
    .line 162
    if-eqz v2, :cond_43

    .line 163
    .line 164
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 165
    .line 166
    const-wide v3, 0x800000000L

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    or-long/2addr v1, v3

    .line 172
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_5
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    .line 180
    .line 181
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 182
    .line 183
    const-wide v3, 0x400000000L

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    or-long/2addr v1, v3

    .line 189
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 190
    .line 191
    return-void

    .line 192
    :pswitch_6
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_7

    .line 197
    .line 198
    iput-object v11, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_7
    :try_start_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .line 207
    :goto_4
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 208
    .line 209
    const-wide v3, 0x200000000L

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    or-long/2addr v1, v3

    .line 215
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 216
    .line 217
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    goto/16 :goto_24

    .line 227
    .line 228
    :pswitch_7
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    .line 233
    .line 234
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 235
    .line 236
    const-wide v3, 0x100000000L

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    or-long/2addr v1, v3

    .line 242
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 243
    .line 244
    return-void

    .line 245
    :pswitch_8
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-eqz v2, :cond_8

    .line 250
    .line 251
    iput-object v11, v0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_8
    :try_start_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;
    :try_end_1
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 259
    .line 260
    :goto_5
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 261
    .line 262
    const-wide v3, 0x80000000L

    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    or-long/2addr v1, v3

    .line 268
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 269
    .line 270
    return-void

    .line 271
    :catch_1
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    goto/16 :goto_24

    .line 280
    .line 281
    :pswitch_9
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 286
    .line 287
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 288
    .line 289
    const-wide/32 v3, 0x40000000

    .line 290
    .line 291
    .line 292
    or-long/2addr v1, v3

    .line 293
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 294
    .line 295
    return-void

    .line 296
    :pswitch_a
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    if-eqz v3, :cond_9

    .line 301
    .line 302
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_9
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_a

    .line 310
    .line 311
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 312
    .line 313
    :cond_a
    :goto_6
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 314
    .line 315
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 316
    .line 317
    const-wide/32 v3, 0x20000000

    .line 318
    .line 319
    .line 320
    or-long/2addr v1, v3

    .line 321
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 322
    .line 323
    return-void

    .line 324
    :pswitch_b
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 329
    .line 330
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 331
    .line 332
    const-wide/32 v3, 0x10000000

    .line 333
    .line 334
    .line 335
    or-long/2addr v1, v3

    .line 336
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 337
    .line 338
    return-void

    .line 339
    :pswitch_c
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    if-eqz v3, :cond_b

    .line 344
    .line 345
    goto :goto_7

    .line 346
    :cond_b
    const-string v3, "rect("

    .line 347
    .line 348
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    if-nez v3, :cond_c

    .line 353
    .line 354
    goto :goto_7

    .line 355
    :cond_c
    new-instance v3, Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 356
    .line 357
    const/4 v4, 0x5

    .line 358
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-direct {v3, v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 366
    .line 367
    .line 368
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVG$PathDefinition;)Lcom/caverock/androidsvg/SVG$Length;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 373
    .line 374
    .line 375
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVG$PathDefinition;)Lcom/caverock/androidsvg/SVG$Length;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 380
    .line 381
    .line 382
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVG$PathDefinition;)Lcom/caverock/androidsvg/SVG$Length;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 387
    .line 388
    .line 389
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVG$PathDefinition;)Lcom/caverock/androidsvg/SVG$Length;

    .line 390
    .line 391
    .line 392
    move-result-object v6

    .line 393
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 394
    .line 395
    .line 396
    const/16 v7, 0x29

    .line 397
    .line 398
    invoke-virtual {v3, v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 399
    .line 400
    .line 401
    move-result v7

    .line 402
    if-nez v7, :cond_d

    .line 403
    .line 404
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    if-nez v3, :cond_d

    .line 409
    .line 410
    goto :goto_7

    .line 411
    :cond_d
    new-instance v2, Lcoil3/ImageLoader$Builder;

    .line 412
    .line 413
    const/16 v3, 0x14

    .line 414
    .line 415
    invoke-direct {v2, v3}, Lcoil3/ImageLoader$Builder;-><init>(I)V

    .line 416
    .line 417
    .line 418
    iput-object v1, v2, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 419
    .line 420
    iput-object v4, v2, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 421
    .line 422
    iput-object v5, v2, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 423
    .line 424
    iput-object v6, v2, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 425
    .line 426
    :goto_7
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcoil3/ImageLoader$Builder;

    .line 427
    .line 428
    if-eqz v2, :cond_43

    .line 429
    .line 430
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 431
    .line 432
    const-wide/32 v3, 0x100000

    .line 433
    .line 434
    .line 435
    or-long/2addr v1, v3

    .line 436
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 437
    .line 438
    return-void

    .line 439
    :pswitch_d
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 444
    .line 445
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 446
    .line 447
    const-wide/32 v3, 0x8000000

    .line 448
    .line 449
    .line 450
    or-long/2addr v1, v3

    .line 451
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 452
    .line 453
    return-void

    .line 454
    :pswitch_e
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    if-eqz v2, :cond_e

    .line 459
    .line 460
    iput-object v11, v0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 461
    .line 462
    goto :goto_8

    .line 463
    :cond_e
    :try_start_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;
    :try_end_2
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 468
    .line 469
    :goto_8
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 470
    .line 471
    const-wide/32 v3, 0x4000000

    .line 472
    .line 473
    .line 474
    or-long/2addr v1, v3

    .line 475
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 476
    .line 477
    return-void

    .line 478
    :catch_2
    move-exception v0

    .line 479
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    goto/16 :goto_24

    .line 487
    .line 488
    :pswitch_f
    const/16 v2, 0x7c

    .line 489
    .line 490
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    if-gez v3, :cond_43

    .line 495
    .line 496
    new-instance v3, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    const-string/jumbo v3, "|visible|hidden|collapse|"

    .line 512
    .line 513
    .line 514
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 515
    .line 516
    .line 517
    move-result v2

    .line 518
    if-nez v2, :cond_f

    .line 519
    .line 520
    goto/16 :goto_24

    .line 521
    .line 522
    :cond_f
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    .line 531
    .line 532
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 533
    .line 534
    const-wide/32 v3, 0x2000000

    .line 535
    .line 536
    .line 537
    or-long/2addr v1, v3

    .line 538
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 539
    .line 540
    return-void

    .line 541
    :pswitch_10
    const/16 v2, 0x7c

    .line 542
    .line 543
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 544
    .line 545
    .line 546
    move-result v3

    .line 547
    if-gez v3, :cond_43

    .line 548
    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    .line 550
    .line 551
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    const-string/jumbo v3, "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|"

    .line 565
    .line 566
    .line 567
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 568
    .line 569
    .line 570
    move-result v2

    .line 571
    if-nez v2, :cond_10

    .line 572
    .line 573
    goto/16 :goto_24

    .line 574
    .line 575
    :cond_10
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    xor-int/lit8 v1, v1, 0x1

    .line 580
    .line 581
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    .line 586
    .line 587
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 588
    .line 589
    const-wide/32 v3, 0x1000000

    .line 590
    .line 591
    .line 592
    or-long/2addr v1, v3

    .line 593
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 594
    .line 595
    return-void

    .line 596
    :pswitch_11
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 601
    .line 602
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 603
    .line 604
    const-wide/32 v3, 0x800000

    .line 605
    .line 606
    .line 607
    or-long/2addr v1, v3

    .line 608
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 609
    .line 610
    return-void

    .line 611
    :pswitch_12
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 616
    .line 617
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 618
    .line 619
    const-wide/32 v3, 0x400000

    .line 620
    .line 621
    .line 622
    or-long/2addr v1, v3

    .line 623
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 624
    .line 625
    return-void

    .line 626
    :pswitch_13
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 631
    .line 632
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 633
    .line 634
    const-wide/32 v3, 0x200000

    .line 635
    .line 636
    .line 637
    or-long/2addr v1, v3

    .line 638
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 639
    .line 640
    return-void

    .line 641
    :pswitch_14
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 646
    .line 647
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 648
    .line 649
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 650
    .line 651
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 652
    .line 653
    const-wide/32 v3, 0xe00000

    .line 654
    .line 655
    .line 656
    or-long/2addr v1, v3

    .line 657
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 658
    .line 659
    return-void

    .line 660
    :pswitch_15
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 661
    .line 662
    .line 663
    move-result v3

    .line 664
    sparse-switch v3, :sswitch_data_1

    .line 665
    .line 666
    .line 667
    :goto_9
    const/4 v5, -0x1

    .line 668
    goto :goto_a

    .line 669
    :sswitch_3
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    if-nez v1, :cond_11

    .line 674
    .line 675
    goto :goto_9

    .line 676
    :cond_11
    const/4 v5, 0x3

    .line 677
    goto :goto_a

    .line 678
    :sswitch_4
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result v1

    .line 682
    if-nez v1, :cond_12

    .line 683
    .line 684
    goto :goto_9

    .line 685
    :cond_12
    const/4 v5, 0x2

    .line 686
    goto :goto_a

    .line 687
    :sswitch_5
    const-string v3, "scroll"

    .line 688
    .line 689
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result v1

    .line 693
    if-nez v1, :cond_13

    .line 694
    .line 695
    goto :goto_9

    .line 696
    :cond_13
    move/from16 v5, v16

    .line 697
    .line 698
    goto :goto_a

    .line 699
    :sswitch_6
    const-string v3, "hidden"

    .line 700
    .line 701
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 702
    .line 703
    .line 704
    move-result v1

    .line 705
    if-nez v1, :cond_14

    .line 706
    .line 707
    goto :goto_9

    .line 708
    :cond_14
    const/4 v5, 0x0

    .line 709
    :goto_a
    packed-switch v5, :pswitch_data_2

    .line 710
    .line 711
    .line 712
    goto :goto_b

    .line 713
    :pswitch_16
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 714
    .line 715
    goto :goto_b

    .line 716
    :pswitch_17
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 717
    .line 718
    :goto_b
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 719
    .line 720
    if-eqz v2, :cond_43

    .line 721
    .line 722
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 723
    .line 724
    const-wide/32 v3, 0x80000

    .line 725
    .line 726
    .line 727
    or-long/2addr v1, v3

    .line 728
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 729
    .line 730
    return-void

    .line 731
    :pswitch_18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 732
    .line 733
    .line 734
    move-result v3

    .line 735
    sparse-switch v3, :sswitch_data_2

    .line 736
    .line 737
    .line 738
    :goto_c
    const/4 v9, -0x1

    .line 739
    goto :goto_d

    .line 740
    :sswitch_7
    const-string v3, "start"

    .line 741
    .line 742
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 743
    .line 744
    .line 745
    move-result v1

    .line 746
    if-nez v1, :cond_15

    .line 747
    .line 748
    goto :goto_c

    .line 749
    :cond_15
    const/4 v9, 0x2

    .line 750
    goto :goto_d

    .line 751
    :sswitch_8
    const-string v3, "end"

    .line 752
    .line 753
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 754
    .line 755
    .line 756
    move-result v1

    .line 757
    if-nez v1, :cond_16

    .line 758
    .line 759
    goto :goto_c

    .line 760
    :cond_16
    move/from16 v9, v16

    .line 761
    .line 762
    goto :goto_d

    .line 763
    :sswitch_9
    const-string v3, "middle"

    .line 764
    .line 765
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 766
    .line 767
    .line 768
    move-result v1

    .line 769
    if-nez v1, :cond_17

    .line 770
    .line 771
    goto :goto_c

    .line 772
    :cond_17
    const/4 v9, 0x0

    .line 773
    :goto_d
    packed-switch v9, :pswitch_data_3

    .line 774
    .line 775
    .line 776
    goto :goto_e

    .line 777
    :pswitch_19
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 778
    .line 779
    goto :goto_e

    .line 780
    :pswitch_1a
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->End:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 781
    .line 782
    goto :goto_e

    .line 783
    :pswitch_1b
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 784
    .line 785
    :goto_e
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 786
    .line 787
    if-eqz v2, :cond_43

    .line 788
    .line 789
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 790
    .line 791
    const-wide/32 v3, 0x40000

    .line 792
    .line 793
    .line 794
    or-long/2addr v1, v3

    .line 795
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 796
    .line 797
    return-void

    .line 798
    :pswitch_1c
    const-string v3, "ltr"

    .line 799
    .line 800
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 801
    .line 802
    .line 803
    move-result v3

    .line 804
    if-nez v3, :cond_19

    .line 805
    .line 806
    const-string v3, "rtl"

    .line 807
    .line 808
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    move-result v1

    .line 812
    if-nez v1, :cond_18

    .line 813
    .line 814
    goto :goto_f

    .line 815
    :cond_18
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->RTL:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 816
    .line 817
    goto :goto_f

    .line 818
    :cond_19
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 819
    .line 820
    :goto_f
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 821
    .line 822
    if-eqz v2, :cond_43

    .line 823
    .line 824
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 825
    .line 826
    const-wide v3, 0x1000000000L

    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    or-long/2addr v1, v3

    .line 832
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 833
    .line 834
    return-void

    .line 835
    :pswitch_1d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 836
    .line 837
    .line 838
    move-result v3

    .line 839
    sparse-switch v3, :sswitch_data_3

    .line 840
    .line 841
    .line 842
    :goto_10
    const/4 v5, -0x1

    .line 843
    goto :goto_11

    .line 844
    :sswitch_a
    const-string v3, "overline"

    .line 845
    .line 846
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 847
    .line 848
    .line 849
    move-result v1

    .line 850
    if-nez v1, :cond_1a

    .line 851
    .line 852
    goto :goto_10

    .line 853
    :cond_1a
    const/4 v5, 0x4

    .line 854
    goto :goto_11

    .line 855
    :sswitch_b
    const-string v3, "blink"

    .line 856
    .line 857
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 858
    .line 859
    .line 860
    move-result v1

    .line 861
    if-nez v1, :cond_1b

    .line 862
    .line 863
    goto :goto_10

    .line 864
    :cond_1b
    const/4 v5, 0x3

    .line 865
    goto :goto_11

    .line 866
    :sswitch_c
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 867
    .line 868
    .line 869
    move-result v1

    .line 870
    if-nez v1, :cond_1c

    .line 871
    .line 872
    goto :goto_10

    .line 873
    :cond_1c
    const/4 v5, 0x2

    .line 874
    goto :goto_11

    .line 875
    :sswitch_d
    const-string/jumbo v3, "underline"

    .line 876
    .line 877
    .line 878
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 879
    .line 880
    .line 881
    move-result v1

    .line 882
    if-nez v1, :cond_1d

    .line 883
    .line 884
    goto :goto_10

    .line 885
    :cond_1d
    move/from16 v5, v16

    .line 886
    .line 887
    goto :goto_11

    .line 888
    :sswitch_e
    const-string v3, "line-through"

    .line 889
    .line 890
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 891
    .line 892
    .line 893
    move-result v1

    .line 894
    if-nez v1, :cond_1e

    .line 895
    .line 896
    goto :goto_10

    .line 897
    :cond_1e
    const/4 v5, 0x0

    .line 898
    :goto_11
    packed-switch v5, :pswitch_data_4

    .line 899
    .line 900
    .line 901
    goto :goto_12

    .line 902
    :pswitch_1e
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Overline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 903
    .line 904
    goto :goto_12

    .line 905
    :pswitch_1f
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Blink:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 906
    .line 907
    goto :goto_12

    .line 908
    :pswitch_20
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 909
    .line 910
    goto :goto_12

    .line 911
    :pswitch_21
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 912
    .line 913
    goto :goto_12

    .line 914
    :pswitch_22
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 915
    .line 916
    :goto_12
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 917
    .line 918
    if-eqz v2, :cond_43

    .line 919
    .line 920
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 921
    .line 922
    const-wide/32 v3, 0x20000

    .line 923
    .line 924
    .line 925
    or-long/2addr v1, v3

    .line 926
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 927
    .line 928
    return-void

    .line 929
    :pswitch_23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 930
    .line 931
    .line 932
    move-result v5

    .line 933
    sparse-switch v5, :sswitch_data_4

    .line 934
    .line 935
    .line 936
    :goto_13
    const/4 v9, -0x1

    .line 937
    goto :goto_14

    .line 938
    :sswitch_f
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 939
    .line 940
    .line 941
    move-result v1

    .line 942
    if-nez v1, :cond_1f

    .line 943
    .line 944
    goto :goto_13

    .line 945
    :cond_1f
    const/4 v9, 0x2

    .line 946
    goto :goto_14

    .line 947
    :sswitch_10
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 948
    .line 949
    .line 950
    move-result v1

    .line 951
    if-nez v1, :cond_20

    .line 952
    .line 953
    goto :goto_13

    .line 954
    :cond_20
    move/from16 v9, v16

    .line 955
    .line 956
    goto :goto_14

    .line 957
    :sswitch_11
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 958
    .line 959
    .line 960
    move-result v1

    .line 961
    if-nez v1, :cond_21

    .line 962
    .line 963
    goto :goto_13

    .line 964
    :cond_21
    const/4 v9, 0x0

    .line 965
    :goto_14
    packed-switch v9, :pswitch_data_5

    .line 966
    .line 967
    .line 968
    goto :goto_15

    .line 969
    :pswitch_24
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 970
    .line 971
    goto :goto_15

    .line 972
    :pswitch_25
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 973
    .line 974
    goto :goto_15

    .line 975
    :pswitch_26
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Oblique:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 976
    .line 977
    :goto_15
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 978
    .line 979
    if-eqz v2, :cond_43

    .line 980
    .line 981
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 982
    .line 983
    const-wide/32 v3, 0x10000

    .line 984
    .line 985
    .line 986
    or-long/2addr v1, v3

    .line 987
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 988
    .line 989
    return-void

    .line 990
    :pswitch_27
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->fontWeightKeywords:Ljava/util/HashMap;

    .line 991
    .line 992
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-result-object v1

    .line 996
    check-cast v1, Ljava/lang/Integer;

    .line 997
    .line 998
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 999
    .line 1000
    if-eqz v1, :cond_43

    .line 1001
    .line 1002
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1003
    .line 1004
    const-wide/32 v3, 0x8000

    .line 1005
    .line 1006
    .line 1007
    or-long/2addr v1, v3

    .line 1008
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1009
    .line 1010
    return-void

    .line 1011
    :pswitch_28
    :try_start_3
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;->fontSizeKeywords:Ljava/util/HashMap;

    .line 1012
    .line 1013
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v3

    .line 1017
    check-cast v3, Lcom/caverock/androidsvg/SVG$Length;

    .line 1018
    .line 1019
    if-nez v3, :cond_22

    .line 1020
    .line 1021
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v2
    :try_end_3
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1025
    goto :goto_16

    .line 1026
    :cond_22
    move-object v2, v3

    .line 1027
    :catch_3
    :goto_16
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 1028
    .line 1029
    if-eqz v2, :cond_43

    .line 1030
    .line 1031
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1032
    .line 1033
    const-wide/16 v3, 0x4000

    .line 1034
    .line 1035
    or-long/2addr v1, v3

    .line 1036
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1037
    .line 1038
    return-void

    .line 1039
    :pswitch_29
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v1

    .line 1043
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/ArrayList;

    .line 1044
    .line 1045
    if-eqz v1, :cond_43

    .line 1046
    .line 1047
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1048
    .line 1049
    const-wide/16 v3, 0x2000

    .line 1050
    .line 1051
    or-long/2addr v1, v3

    .line 1052
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1053
    .line 1054
    return-void

    .line 1055
    :pswitch_2a
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1056
    .line 1057
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    .line 1063
    const/16 v6, 0x7c

    .line 1064
    .line 1065
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v5

    .line 1072
    const-string/jumbo v6, "|caption|icon|menu|message-box|small-caption|status-bar|"

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1076
    .line 1077
    .line 1078
    move-result v5

    .line 1079
    if-nez v5, :cond_23

    .line 1080
    .line 1081
    goto/16 :goto_24

    .line 1082
    .line 1083
    :cond_23
    new-instance v5, Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 1084
    .line 1085
    invoke-direct {v5, v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(Ljava/lang/String;)V

    .line 1086
    .line 1087
    .line 1088
    move-object v1, v2

    .line 1089
    move-object v6, v1

    .line 1090
    move-object v8, v6

    .line 1091
    :goto_17
    const/16 v9, 0x2f

    .line 1092
    .line 1093
    const/4 v10, 0x0

    .line 1094
    invoke-virtual {v5, v9, v10}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextToken(CZ)Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v11

    .line 1098
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 1099
    .line 1100
    .line 1101
    if-nez v11, :cond_24

    .line 1102
    .line 1103
    goto/16 :goto_24

    .line 1104
    .line 1105
    :cond_24
    if-eqz v1, :cond_25

    .line 1106
    .line 1107
    if-eqz v6, :cond_25

    .line 1108
    .line 1109
    goto/16 :goto_1b

    .line 1110
    .line 1111
    :cond_25
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1112
    .line 1113
    .line 1114
    move-result v12

    .line 1115
    if-eqz v12, :cond_26

    .line 1116
    .line 1117
    goto :goto_17

    .line 1118
    :cond_26
    if-nez v1, :cond_27

    .line 1119
    .line 1120
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->fontWeightKeywords:Ljava/util/HashMap;

    .line 1121
    .line 1122
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v1

    .line 1126
    check-cast v1, Ljava/lang/Integer;

    .line 1127
    .line 1128
    if-eqz v1, :cond_27

    .line 1129
    .line 1130
    goto :goto_17

    .line 1131
    :cond_27
    if-nez v6, :cond_2b

    .line 1132
    .line 1133
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 1134
    .line 1135
    .line 1136
    move-result v6

    .line 1137
    sparse-switch v6, :sswitch_data_5

    .line 1138
    .line 1139
    .line 1140
    :goto_18
    const/4 v6, -0x1

    .line 1141
    goto :goto_19

    .line 1142
    :sswitch_12
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1143
    .line 1144
    .line 1145
    move-result v6

    .line 1146
    if-nez v6, :cond_28

    .line 1147
    .line 1148
    goto :goto_18

    .line 1149
    :cond_28
    const/4 v6, 0x2

    .line 1150
    goto :goto_19

    .line 1151
    :sswitch_13
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1152
    .line 1153
    .line 1154
    move-result v6

    .line 1155
    if-nez v6, :cond_29

    .line 1156
    .line 1157
    goto :goto_18

    .line 1158
    :cond_29
    move/from16 v6, v16

    .line 1159
    .line 1160
    goto :goto_19

    .line 1161
    :sswitch_14
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1162
    .line 1163
    .line 1164
    move-result v6

    .line 1165
    if-nez v6, :cond_2a

    .line 1166
    .line 1167
    goto :goto_18

    .line 1168
    :cond_2a
    move v6, v10

    .line 1169
    :goto_19
    packed-switch v6, :pswitch_data_6

    .line 1170
    .line 1171
    .line 1172
    move-object v6, v2

    .line 1173
    goto :goto_1a

    .line 1174
    :pswitch_2b
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 1175
    .line 1176
    goto :goto_1a

    .line 1177
    :pswitch_2c
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 1178
    .line 1179
    goto :goto_1a

    .line 1180
    :pswitch_2d
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Oblique:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 1181
    .line 1182
    :goto_1a
    if-eqz v6, :cond_2b

    .line 1183
    .line 1184
    goto :goto_17

    .line 1185
    :cond_2b
    if-nez v8, :cond_2c

    .line 1186
    .line 1187
    const-string v8, "small-caps"

    .line 1188
    .line 1189
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1190
    .line 1191
    .line 1192
    move-result v8

    .line 1193
    if-eqz v8, :cond_2c

    .line 1194
    .line 1195
    move-object v8, v11

    .line 1196
    goto :goto_17

    .line 1197
    :cond_2c
    :goto_1b
    :try_start_4
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;->fontSizeKeywords:Ljava/util/HashMap;

    .line 1198
    .line 1199
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v3

    .line 1203
    check-cast v3, Lcom/caverock/androidsvg/SVG$Length;

    .line 1204
    .line 1205
    if-nez v3, :cond_2d

    .line 1206
    .line 1207
    invoke-static {v11}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v3
    :try_end_4
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1211
    goto :goto_1c

    .line 1212
    :catch_4
    move-object v3, v2

    .line 1213
    :cond_2d
    :goto_1c
    invoke-virtual {v5, v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 1214
    .line 1215
    .line 1216
    move-result v4

    .line 1217
    if-eqz v4, :cond_2f

    .line 1218
    .line 1219
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextToken()Ljava/lang/String;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v4

    .line 1226
    if-eqz v4, :cond_2e

    .line 1227
    .line 1228
    :try_start_5
    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    :try_end_5
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1229
    .line 1230
    .line 1231
    :cond_2e
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 1232
    .line 1233
    .line 1234
    :cond_2f
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 1235
    .line 1236
    .line 1237
    move-result v4

    .line 1238
    if-eqz v4, :cond_30

    .line 1239
    .line 1240
    goto :goto_1d

    .line 1241
    :cond_30
    iget v2, v5, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 1242
    .line 1243
    iget v4, v5, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    .line 1244
    .line 1245
    iput v4, v5, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 1246
    .line 1247
    iget-object v4, v5, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:Ljava/lang/Object;

    .line 1248
    .line 1249
    check-cast v4, Ljava/lang/String;

    .line 1250
    .line 1251
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v2

    .line 1255
    :goto_1d
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v2

    .line 1259
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/ArrayList;

    .line 1260
    .line 1261
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 1262
    .line 1263
    if-nez v1, :cond_31

    .line 1264
    .line 1265
    const/16 v1, 0x190

    .line 1266
    .line 1267
    goto :goto_1e

    .line 1268
    :cond_31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1269
    .line 1270
    .line 1271
    move-result v1

    .line 1272
    :goto_1e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v1

    .line 1276
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 1277
    .line 1278
    if-nez v6, :cond_32

    .line 1279
    .line 1280
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 1281
    .line 1282
    :cond_32
    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 1283
    .line 1284
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1285
    .line 1286
    const-wide/32 v3, 0x1e000

    .line 1287
    .line 1288
    .line 1289
    or-long/2addr v1, v3

    .line 1290
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1291
    .line 1292
    goto/16 :goto_24

    .line 1293
    .line 1294
    :pswitch_2e
    :try_start_6
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v1

    .line 1298
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    .line 1299
    .line 1300
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1301
    .line 1302
    const-wide/16 v3, 0x1000

    .line 1303
    .line 1304
    or-long/2addr v1, v3

    .line 1305
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_6
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1306
    .line 1307
    return-void

    .line 1308
    :pswitch_2f
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v1

    .line 1312
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 1313
    .line 1314
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1315
    .line 1316
    const-wide/16 v3, 0x800

    .line 1317
    .line 1318
    or-long/2addr v1, v3

    .line 1319
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1320
    .line 1321
    return-void

    .line 1322
    :pswitch_30
    :try_start_7
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v1

    .line 1326
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    .line 1327
    .line 1328
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1329
    .line 1330
    const-wide/16 v3, 0x400

    .line 1331
    .line 1332
    or-long/2addr v1, v3

    .line 1333
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_7
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1334
    .line 1335
    return-void

    .line 1336
    :pswitch_31
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1337
    .line 1338
    .line 1339
    move-result v3

    .line 1340
    const-wide/16 v4, 0x200

    .line 1341
    .line 1342
    if-eqz v3, :cond_33

    .line 1343
    .line 1344
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    .line 1345
    .line 1346
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1347
    .line 1348
    or-long/2addr v1, v4

    .line 1349
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1350
    .line 1351
    return-void

    .line 1352
    :cond_33
    new-instance v3, Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 1353
    .line 1354
    invoke-direct {v3, v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(Ljava/lang/String;)V

    .line 1355
    .line 1356
    .line 1357
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 1361
    .line 1362
    .line 1363
    move-result v1

    .line 1364
    if-eqz v1, :cond_34

    .line 1365
    .line 1366
    goto :goto_20

    .line 1367
    :cond_34
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v1

    .line 1371
    if-nez v1, :cond_35

    .line 1372
    .line 1373
    goto :goto_20

    .line 1374
    :cond_35
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    .line 1375
    .line 1376
    .line 1377
    move-result v6

    .line 1378
    if-eqz v6, :cond_36

    .line 1379
    .line 1380
    goto :goto_20

    .line 1381
    :cond_36
    iget v6, v1, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 1382
    .line 1383
    new-instance v7, Ljava/util/ArrayList;

    .line 1384
    .line 1385
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1389
    .line 1390
    .line 1391
    :goto_1f
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 1392
    .line 1393
    .line 1394
    move-result v1

    .line 1395
    if-nez v1, :cond_39

    .line 1396
    .line 1397
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 1398
    .line 1399
    .line 1400
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v1

    .line 1404
    if-nez v1, :cond_37

    .line 1405
    .line 1406
    goto :goto_20

    .line 1407
    :cond_37
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    .line 1408
    .line 1409
    .line 1410
    move-result v8

    .line 1411
    if-eqz v8, :cond_38

    .line 1412
    .line 1413
    goto :goto_20

    .line 1414
    :cond_38
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1415
    .line 1416
    .line 1417
    iget v1, v1, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 1418
    .line 1419
    add-float/2addr v6, v1

    .line 1420
    goto :goto_1f

    .line 1421
    :cond_39
    const/4 v1, 0x0

    .line 1422
    cmpl-float v1, v6, v1

    .line 1423
    .line 1424
    if-nez v1, :cond_3a

    .line 1425
    .line 1426
    goto :goto_20

    .line 1427
    :cond_3a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1428
    .line 1429
    .line 1430
    move-result v1

    .line 1431
    new-array v1, v1, [Lcom/caverock/androidsvg/SVG$Length;

    .line 1432
    .line 1433
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v1

    .line 1437
    move-object v2, v1

    .line 1438
    check-cast v2, [Lcom/caverock/androidsvg/SVG$Length;

    .line 1439
    .line 1440
    :goto_20
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    .line 1441
    .line 1442
    if-eqz v2, :cond_43

    .line 1443
    .line 1444
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1445
    .line 1446
    or-long/2addr v1, v4

    .line 1447
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1448
    .line 1449
    return-void

    .line 1450
    :pswitch_32
    :try_start_8
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    .line 1451
    .line 1452
    .line 1453
    move-result v1

    .line 1454
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v1

    .line 1458
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    .line 1459
    .line 1460
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1461
    .line 1462
    const-wide/16 v3, 0x100

    .line 1463
    .line 1464
    or-long/2addr v1, v3

    .line 1465
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_8
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1466
    .line 1467
    return-void

    .line 1468
    :pswitch_33
    const-string v3, "miter"

    .line 1469
    .line 1470
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1471
    .line 1472
    .line 1473
    move-result v3

    .line 1474
    if-eqz v3, :cond_3b

    .line 1475
    .line 1476
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 1477
    .line 1478
    goto :goto_21

    .line 1479
    :cond_3b
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1480
    .line 1481
    .line 1482
    move-result v3

    .line 1483
    if-eqz v3, :cond_3c

    .line 1484
    .line 1485
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Round:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 1486
    .line 1487
    goto :goto_21

    .line 1488
    :cond_3c
    const-string v3, "bevel"

    .line 1489
    .line 1490
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1491
    .line 1492
    .line 1493
    move-result v1

    .line 1494
    if-eqz v1, :cond_3d

    .line 1495
    .line 1496
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Bevel:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 1497
    .line 1498
    :cond_3d
    :goto_21
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 1499
    .line 1500
    if-eqz v2, :cond_43

    .line 1501
    .line 1502
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1503
    .line 1504
    const-wide/16 v3, 0x80

    .line 1505
    .line 1506
    or-long/2addr v1, v3

    .line 1507
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1508
    .line 1509
    return-void

    .line 1510
    :pswitch_34
    const-string v3, "butt"

    .line 1511
    .line 1512
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1513
    .line 1514
    .line 1515
    move-result v3

    .line 1516
    if-eqz v3, :cond_3e

    .line 1517
    .line 1518
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Butt:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    .line 1519
    .line 1520
    goto :goto_22

    .line 1521
    :cond_3e
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1522
    .line 1523
    .line 1524
    move-result v3

    .line 1525
    if-eqz v3, :cond_3f

    .line 1526
    .line 1527
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Round:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    .line 1528
    .line 1529
    goto :goto_22

    .line 1530
    :cond_3f
    const-string v3, "square"

    .line 1531
    .line 1532
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1533
    .line 1534
    .line 1535
    move-result v1

    .line 1536
    if-eqz v1, :cond_40

    .line 1537
    .line 1538
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Square:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    .line 1539
    .line 1540
    :cond_40
    :goto_22
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    .line 1541
    .line 1542
    if-eqz v2, :cond_43

    .line 1543
    .line 1544
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1545
    .line 1546
    const-wide/16 v3, 0x40

    .line 1547
    .line 1548
    or-long/2addr v1, v3

    .line 1549
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1550
    .line 1551
    return-void

    .line 1552
    :pswitch_35
    :try_start_9
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v1

    .line 1556
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 1557
    .line 1558
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1559
    .line 1560
    const-wide/16 v3, 0x20

    .line 1561
    .line 1562
    or-long/2addr v1, v3

    .line 1563
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J
    :try_end_9
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1564
    .line 1565
    return-void

    .line 1566
    :pswitch_36
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v1

    .line 1570
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 1571
    .line 1572
    if-eqz v1, :cond_43

    .line 1573
    .line 1574
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1575
    .line 1576
    const-wide/16 v3, 0x10

    .line 1577
    .line 1578
    or-long/2addr v1, v3

    .line 1579
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1580
    .line 1581
    return-void

    .line 1582
    :pswitch_37
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v1

    .line 1586
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1587
    .line 1588
    if-eqz v1, :cond_43

    .line 1589
    .line 1590
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1591
    .line 1592
    const-wide/16 v3, 0x8

    .line 1593
    .line 1594
    or-long/2addr v1, v3

    .line 1595
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1596
    .line 1597
    return-void

    .line 1598
    :pswitch_38
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)Ljava/lang/Float;

    .line 1599
    .line 1600
    .line 1601
    move-result-object v1

    .line 1602
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 1603
    .line 1604
    if-eqz v1, :cond_43

    .line 1605
    .line 1606
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1607
    .line 1608
    const-wide/16 v3, 0x4

    .line 1609
    .line 1610
    or-long/2addr v1, v3

    .line 1611
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1612
    .line 1613
    return-void

    .line 1614
    :pswitch_39
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1615
    .line 1616
    .line 1617
    move-result v3

    .line 1618
    if-eqz v3, :cond_41

    .line 1619
    .line 1620
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 1621
    .line 1622
    goto :goto_23

    .line 1623
    :cond_41
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1624
    .line 1625
    .line 1626
    move-result v1

    .line 1627
    if-eqz v1, :cond_42

    .line 1628
    .line 1629
    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 1630
    .line 1631
    :cond_42
    :goto_23
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 1632
    .line 1633
    if-eqz v2, :cond_43

    .line 1634
    .line 1635
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1636
    .line 1637
    const-wide/16 v3, 0x2

    .line 1638
    .line 1639
    or-long/2addr v1, v3

    .line 1640
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1641
    .line 1642
    return-void

    .line 1643
    :pswitch_3a
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v1

    .line 1647
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1648
    .line 1649
    if-eqz v1, :cond_43

    .line 1650
    .line 1651
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1652
    .line 1653
    const-wide/16 v3, 0x1

    .line 1654
    .line 1655
    or-long/2addr v1, v3

    .line 1656
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1657
    .line 1658
    :catch_5
    :cond_43
    :goto_24
    return-void

    .line 1659
    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_23
        :pswitch_1d
        :pswitch_1c
        :pswitch_18
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    :sswitch_data_0
    .sparse-switch
        -0x379c7c9e -> :sswitch_2
        0x2dddaf -> :sswitch_1
        0x159eff6a -> :sswitch_0
    .end sparse-switch

    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    :sswitch_data_1
    .sparse-switch
        -0x48916256 -> :sswitch_6
        -0x361a1933 -> :sswitch_5
        0x2dddaf -> :sswitch_4
        0x1bd1f072 -> :sswitch_3
    .end sparse-switch

    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
    .end packed-switch

    .line 1786
    :sswitch_data_2
    .sparse-switch
        -0x4009266b -> :sswitch_9
        0x188db -> :sswitch_8
        0x68ac462 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x45d81614 -> :sswitch_e
        -0x3d363934 -> :sswitch_d
        0x33af38 -> :sswitch_c
        0x597af5c -> :sswitch_b
        0x1f9462c8 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x62ce05cf -> :sswitch_11
        -0x4642c5d0 -> :sswitch_10
        -0x3df94319 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x62ce05cf -> :sswitch_14
        -0x4642c5d0 -> :sswitch_13
        -0x3df94319 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method public final appendToTextContainer(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2
    .line 3
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/ArrayList;

    .line 16
    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 24
    .line 25
    :goto_0
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    .line 35
    .line 36
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p0, v1, p1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iput-object p0, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 46
    .line 47
    new-instance v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {p0, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string v0, "http://www.w3.org/2000/svg"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-lez p1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move-object p2, p3

    .line 43
    :goto_0
    sget-object p1, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    .line 44
    .line 45
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    aget p1, p1, p2

    .line 54
    .line 55
    if-eq p1, v1, :cond_6

    .line 56
    .line 57
    const/4 p2, 0x2

    .line 58
    if-eq p1, p2, :cond_6

    .line 59
    .line 60
    const/4 p2, 0x4

    .line 61
    if-eq p1, p2, :cond_6

    .line 62
    .line 63
    const/4 p2, 0x5

    .line 64
    if-eq p1, p2, :cond_6

    .line 65
    .line 66
    const/16 p2, 0xd

    .line 67
    .line 68
    if-eq p1, p2, :cond_6

    .line 69
    .line 70
    const/16 p2, 0xe

    .line 71
    .line 72
    if-eq p1, p2, :cond_6

    .line 73
    .line 74
    packed-switch p1, :pswitch_data_0

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :pswitch_0
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    .line 79
    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance p2, Lcom/caverock/androidsvg/CSSParser;

    .line 89
    .line 90
    sget-object p3, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 91
    .line 92
    sget-object v0, Lcom/caverock/androidsvg/CSSParser$Source;->Document:Lcom/caverock/androidsvg/CSSParser$Source;

    .line 93
    .line 94
    invoke-direct {p2, p3, v0}, Lcom/caverock/androidsvg/CSSParser;-><init>(Lcom/caverock/androidsvg/CSSParser$MediaType;Lcom/caverock/androidsvg/CSSParser$Source;)V

    .line 95
    .line 96
    .line 97
    iget-object p3, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    .line 98
    .line 99
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    .line 100
    .line 101
    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v0}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lokhttp3/Headers$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object p2, p3, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p2, Lokhttp3/Headers$Builder;

    .line 114
    .line 115
    invoke-virtual {p2, p1}, Lokhttp3/Headers$Builder;->addAll(Lokhttp3/Headers$Builder;)V

    .line 116
    .line 117
    .line 118
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :pswitch_1
    iput-boolean v2, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    .line 125
    .line 126
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    .line 127
    .line 128
    if-eqz p1, :cond_5

    .line 129
    .line 130
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 131
    .line 132
    sget-object p2, Lcom/caverock/androidsvg/SVGParser$SVGElem;->title:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 133
    .line 134
    if-ne p1, p2, :cond_3

    .line 135
    .line 136
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_3
    sget-object p2, Lcom/caverock/androidsvg/SVGParser$SVGElem;->desc:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 143
    .line 144
    if-ne p1, p2, :cond_4

    .line 145
    .line 146
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 154
    .line 155
    .line 156
    :cond_5
    :goto_2
    return-void

    .line 157
    :cond_6
    :pswitch_2
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 158
    .line 159
    check-cast p1, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 160
    .line 161
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 162
    .line 163
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 164
    .line 165
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final parseUsingSAX(Ljava/io/InputStream;)V
    .locals 3

    .line 1
    const-string v0, "SVGParser"

    .line 2
    .line 3
    const-string v1, "Falling back to SAX parser"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "http://xml.org/sax/features/external-general-entities"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    const-string v1, "http://xml.org/sax/features/external-parameter-entities"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SAXHandler;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/caverock/androidsvg/SVGParser$SAXHandler;-><init>(Lcom/caverock/androidsvg/SVGParser;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 37
    .line 38
    .line 39
    const-string p0, "http://xml.org/sax/properties/lexical-handler"

    .line 40
    .line 41
    invoke-interface {v0, p0, v1}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance p0, Lorg/xml/sax/InputSource;

    .line 45
    .line 46
    invoke-direct {p0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catch_0
    move-exception p0

    .line 54
    new-instance p1, Lcom/caverock/androidsvg/SVGParseException;

    .line 55
    .line 56
    const-string v0, "Stream error"

    .line 57
    .line 58
    invoke-direct {p1, v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :catch_1
    move-exception p0

    .line 63
    new-instance p1, Lcom/caverock/androidsvg/SVGParseException;

    .line 64
    .line 65
    const-string v0, "SVG parse error"

    .line 66
    .line 67
    invoke-direct {p1, v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :catch_2
    move-exception p0

    .line 72
    new-instance p1, Lcom/caverock/androidsvg/SVGParseException;

    .line 73
    .line 74
    const-string v0, "XML parser problem"

    .line 75
    .line 76
    invoke-direct {p1, v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method public final parseUsingXmlPullParser(Ljava/io/InputStream;)V
    .locals 8

    .line 1
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 11
    .line 12
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-interface {v0, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 29
    .line 30
    .line 31
    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    :goto_0
    if-eq v2, v4, :cond_a

    .line 33
    .line 34
    if-eqz v2, :cond_8

    .line 35
    .line 36
    const/16 v5, 0x8

    .line 37
    .line 38
    const-string v6, "SVGParser"

    .line 39
    .line 40
    if-eq v2, v5, :cond_7

    .line 41
    .line 42
    const/16 v5, 0xa

    .line 43
    .line 44
    if-eq v2, v5, :cond_6

    .line 45
    .line 46
    const/16 v5, 0x3a

    .line 47
    .line 48
    const/4 v6, 0x2

    .line 49
    if-eq v2, v6, :cond_4

    .line 50
    .line 51
    const/4 v7, 0x3

    .line 52
    if-eq v2, v7, :cond_2

    .line 53
    .line 54
    const/4 v5, 0x4

    .line 55
    if-eq v2, v5, :cond_1

    .line 56
    .line 57
    const/4 v5, 0x5

    .line 58
    if-eq v2, v5, :cond_0

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/SVGParser;->text(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :cond_1
    new-array v2, v6, [I

    .line 72
    .line 73
    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getTextCharacters([I)[C

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    aget v6, v2, v3

    .line 78
    .line 79
    aget v2, v2, v4

    .line 80
    .line 81
    invoke-virtual {p0, v5, v6, v2}, Lcom/caverock/androidsvg/SVGParser;->text([CII)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    if-eqz v6, :cond_3

    .line 95
    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    :cond_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {p0, v5, v6, v2}, Lcom/caverock/androidsvg/SVGParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_1

    .line 130
    .line 131
    :cond_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    if-eqz v6, :cond_5

    .line 140
    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    :cond_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-virtual {p0, v5, v6, v2, v1}, Lcom/caverock/androidsvg/SVGParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_6
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    .line 176
    .line 177
    iget-object v2, v2, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v2, Lcom/caverock/androidsvg/SVG$Svg;

    .line 180
    .line 181
    if-nez v2, :cond_9

    .line 182
    .line 183
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    const-string v5, "<!ENTITY "

    .line 188
    .line 189
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    if-eqz v2, :cond_9

    .line 194
    .line 195
    :try_start_2
    const-string v0, "Switching to SAX parser to process entities"

    .line 196
    .line 197
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseUsingSAX(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :catch_0
    :try_start_3
    const-string p0, "Detected internal entity definitions, but could not parse them."

    .line 208
    .line 209
    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    const-string v5, "PROC INSTR: "

    .line 219
    .line 220
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    new-instance v2, Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 238
    .line 239
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    invoke-direct {v2, v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextToken()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseProcessingInstructionAttributes(Lcom/caverock/androidsvg/SVG$PathDefinition;)Ljava/util/HashMap;

    .line 251
    .line 252
    .line 253
    const-string/jumbo v2, "xml-stylesheet"

    .line 254
    .line 255
    .line 256
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_8
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser;->startDocument()V

    .line 261
    .line 262
    .line 263
    :cond_9
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 264
    .line 265
    .line 266
    move-result v2
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_a
    :goto_2
    return-void

    .line 270
    :catch_1
    move-exception p0

    .line 271
    new-instance p1, Lcom/caverock/androidsvg/SVGParseException;

    .line 272
    .line 273
    const-string v0, "Stream error"

    .line 274
    .line 275
    invoke-direct {p1, v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 276
    .line 277
    .line 278
    throw p1

    .line 279
    :catch_2
    move-exception p0

    .line 280
    new-instance p1, Lcom/caverock/androidsvg/SVGParseException;

    .line 281
    .line 282
    const-string v0, "XML parser problem"

    .line 283
    .line 284
    invoke-direct {p1, v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 285
    .line 286
    .line 287
    throw p1
.end method

.method public final startDocument()V
    .locals 4

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/SVG;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVG;-><init>(IZ)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v1, Lokhttp3/Headers$Builder;

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v1, v2, v3}, Lokhttp3/Headers$Builder;-><init>(IB)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG;->cssRules:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v1, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG;->idToElementMap:Ljava/lang/Object;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    .line 28
    .line 29
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 1
    iget-boolean v3, v0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 2
    iget v1, v0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    return-void

    .line 3
    :cond_0
    const-string v3, "http://www.w3.org/2000/svg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, ""

    if-nez v3, :cond_1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    move-object/from16 v1, p2

    goto :goto_0

    :cond_2
    move-object/from16 v1, p3

    .line 5
    :goto_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser$SVGElem;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGElem;

    move-result-object v1

    .line 6
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGElem:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v3, v3, v6

    const-string v8, "Invalid <use> element. width cannot be negative"

    const-string v9, "Invalid <use> element. height cannot be negative"

    const-string v10, "objectBoundingBox"

    const-string/jumbo v11, "userSpaceOnUse"

    const-string v12, "http://www.w3.org/1999/xlink"

    const/4 v13, 0x6

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/high16 p1, 0x7fc00000    # Float.NaN

    const/4 v6, 0x2

    const/16 p2, 0x0

    const/4 v7, 0x0

    const-string v16, "Invalid document. Root element must be <svg>"

    packed-switch v3, :pswitch_data_0

    .line 7
    iput-boolean v4, v0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 8
    iput v4, v0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    return-void

    .line 9
    :pswitch_0
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_3

    .line 10
    new-instance v3, Lcom/caverock/androidsvg/SVG$SolidColor;

    .line 11
    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$SvgElementBase;-><init>()V

    .line 12
    iget-object v4, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 13
    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 14
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 15
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 16
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 17
    iput-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 18
    :cond_3
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 19
    :pswitch_1
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_a

    .line 20
    const-string v1, "all"

    move v3, v4

    :goto_1
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    if-ge v7, v5, :cond_6

    .line 21
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 22
    sget-object v6, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 23
    invoke-static {v2, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    move-result v8

    .line 24
    aget v6, v6, v8

    const/16 v8, 0x58

    if-eq v6, v8, :cond_5

    const/16 v8, 0x59

    if-eq v6, v8, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v5

    goto :goto_2

    .line 25
    :cond_5
    const-string v3, "text/css"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_9

    .line 26
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 27
    new-instance v3, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v3, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 29
    invoke-static {v3}, Lcom/caverock/androidsvg/CSSParser;->parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/ArrayList;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 31
    sget-object v5, Lcom/caverock/androidsvg/CSSParser$MediaType;->all:Lcom/caverock/androidsvg/CSSParser$MediaType;

    if-eq v3, v5, :cond_8

    if-ne v3, v2, :cond_7

    .line 32
    :cond_8
    iput-boolean v4, v0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    return-void

    .line 33
    :cond_9
    iput-boolean v4, v0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 34
    iput v4, v0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    return-void

    .line 35
    :cond_a
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 36
    :pswitch_2
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_18

    .line 37
    new-instance v1, Lcom/caverock/androidsvg/SVG$Mask;

    .line 38
    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 39
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 40
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 41
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 42
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 43
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 44
    :goto_3
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v7, v3, :cond_17

    .line 45
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 46
    sget-object v5, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 47
    invoke-static {v2, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    move-result v8

    .line 48
    aget v5, v5, v8

    if-eq v5, v4, :cond_16

    if-eq v5, v6, :cond_15

    if-eq v5, v15, :cond_13

    if-eq v5, v14, :cond_11

    const/16 v8, 0x2b

    if-eq v5, v8, :cond_e

    const/16 v8, 0x2c

    if-eq v5, v8, :cond_b

    goto :goto_4

    .line 49
    :cond_b
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 50
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_4

    .line 51
    :cond_c
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 52
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_4

    .line 53
    :cond_d
    const-string v0, "Invalid value for attribute maskContentUnits"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 54
    :cond_e
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 55
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_4

    .line 56
    :cond_f
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 57
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_4

    .line 58
    :cond_10
    const-string v0, "Invalid value for attribute maskUnits"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 59
    :cond_11
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 60
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_4

    .line 61
    :cond_12
    const-string v0, "Invalid <mask> element. height cannot be negative"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 62
    :cond_13
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 63
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_4

    .line 64
    :cond_14
    const-string v0, "Invalid <mask> element. width cannot be negative"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 65
    :cond_15
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_4

    .line 66
    :cond_16
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 67
    :cond_17
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 68
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 69
    :cond_18
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 70
    :pswitch_3
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_19

    .line 71
    new-instance v1, Lcom/caverock/androidsvg/SVG$View;

    .line 72
    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    .line 73
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 74
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 75
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 76
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 77
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 78
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 79
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 80
    :cond_19
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 81
    :pswitch_4
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_25

    .line 82
    new-instance v1, Lcom/caverock/androidsvg/SVG$Image;

    .line 83
    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    .line 84
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 85
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 86
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 87
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 88
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 89
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 90
    :goto_5
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v7, v3, :cond_24

    .line 91
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 92
    sget-object v10, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 93
    invoke-static {v2, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    move-result v11

    .line 94
    aget v10, v10, v11

    if-eq v10, v4, :cond_22

    if-eq v10, v6, :cond_21

    if-eq v10, v15, :cond_1f

    if-eq v10, v14, :cond_1d

    if-eq v10, v13, :cond_1b

    const/4 v11, 0x7

    if-eq v10, v11, :cond_1a

    goto :goto_6

    .line 95
    :cond_1a
    invoke-static {v1, v3}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    goto :goto_6

    .line 96
    :cond_1b
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1c

    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 97
    :cond_1c
    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    goto :goto_6

    .line 98
    :cond_1d
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 99
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_6

    .line 100
    :cond_1e
    invoke-static {v9}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 101
    :cond_1f
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 102
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_6

    .line 103
    :cond_20
    invoke-static {v8}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 104
    :cond_21
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_6

    .line 105
    :cond_22
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    :cond_23
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 106
    :cond_24
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 107
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 108
    :cond_25
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 109
    :pswitch_5
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_34

    .line 110
    new-instance v1, Lcom/caverock/androidsvg/SVG$Pattern;

    .line 111
    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    .line 112
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 113
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 114
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 115
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 116
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 117
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 118
    :goto_7
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v7, v3, :cond_33

    .line 119
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 120
    sget-object v8, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 121
    invoke-static {v2, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    move-result v9

    .line 122
    aget v8, v8, v9

    if-eq v8, v4, :cond_31

    if-eq v8, v6, :cond_30

    if-eq v8, v15, :cond_2e

    if-eq v8, v14, :cond_2c

    if-eq v8, v13, :cond_2a

    packed-switch v8, :pswitch_data_1

    goto/16 :goto_8

    .line 123
    :pswitch_6
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    goto/16 :goto_8

    .line 124
    :pswitch_7
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 125
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    goto/16 :goto_8

    .line 126
    :cond_26
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 127
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    goto/16 :goto_8

    .line 128
    :cond_27
    const-string v0, "Invalid value for attribute patternContentUnits"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 129
    :pswitch_8
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 130
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_8

    .line 131
    :cond_28
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 132
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_8

    .line 133
    :cond_29
    const-string v0, "Invalid value for attribute patternUnits"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 134
    :cond_2a
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2b

    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 135
    :cond_2b
    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    goto :goto_8

    .line 136
    :cond_2c
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 137
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_8

    .line 138
    :cond_2d
    const-string v0, "Invalid <pattern> element. height cannot be negative"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 139
    :cond_2e
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 140
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_8

    .line 141
    :cond_2f
    const-string v0, "Invalid <pattern> element. width cannot be negative"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 142
    :cond_30
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_8

    .line 143
    :cond_31
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    :cond_32
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 144
    :cond_33
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 145
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 146
    :cond_34
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 147
    :pswitch_9
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_3b

    .line 148
    new-instance v1, Lcom/caverock/androidsvg/SVG$TextPath;

    .line 149
    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 150
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 151
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 152
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 153
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 154
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 155
    :goto_9
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v7, v3, :cond_39

    .line 156
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 157
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 158
    invoke-static {v2, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    move-result v6

    .line 159
    aget v4, v4, v6

    if-eq v4, v13, :cond_36

    const/16 v6, 0x27

    if-eq v4, v6, :cond_35

    goto :goto_a

    .line 160
    :cond_35
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_a

    .line 161
    :cond_36
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 162
    :cond_37
    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    :cond_38
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 163
    :cond_39
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 164
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 165
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v2, v0, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v2, :cond_3a

    .line 166
    check-cast v0, Lcom/caverock/androidsvg/SVG$Text;

    .line 167
    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$TextPath;->textRoot:Lcom/caverock/androidsvg/SVG$Text;

    return-void

    .line 168
    :cond_3a
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v0}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$Text;

    move-result-object v0

    .line 169
    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$TextPath;->textRoot:Lcom/caverock/androidsvg/SVG$Text;

    return-void

    .line 170
    :cond_3b
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 171
    :pswitch_a
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_40

    .line 172
    new-instance v1, Lcom/caverock/androidsvg/SVG$ClipPath;

    .line 173
    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 174
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 175
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 176
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 177
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 178
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 179
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 180
    :goto_b
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v7, v3, :cond_3f

    .line 181
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 182
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 183
    invoke-static {v2, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    move-result v5

    .line 184
    aget v4, v4, v5

    const/16 v5, 0x26

    if-eq v4, v5, :cond_3c

    goto :goto_c

    .line 185
    :cond_3c
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 186
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_c

    .line 187
    :cond_3d
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 188
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 189
    :cond_3e
    const-string v0, "Invalid value for attribute clipPathUnits"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 190
    :cond_3f
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 191
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 192
    :cond_40
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 193
    :pswitch_b
    iput-boolean v4, v0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    .line 194
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    return-void

    .line 195
    :pswitch_c
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_49

    .line 196
    instance-of v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;

    if-eqz v3, :cond_48

    .line 197
    new-instance v3, Lcom/caverock/androidsvg/SVG$Stop;

    .line 198
    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$SvgElementBase;-><init>()V

    .line 199
    iget-object v5, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v5, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 200
    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 201
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 202
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    move v1, v7

    .line 203
    :goto_d
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_47

    .line 204
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 205
    sget-object v6, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 206
    invoke-static {v2, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    move-result v8

    .line 207
    aget v6, v6, v8

    const/16 v8, 0x25

    if-eq v6, v8, :cond_41

    goto :goto_10

    .line 208
    :cond_41
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_46

    .line 209
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 210
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_42

    add-int/lit8 v6, v6, -0x1

    move v8, v4

    goto :goto_e

    :cond_42
    move v8, v7

    .line 211
    :goto_e
    :try_start_0
    invoke-static {v6, v5}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(ILjava/lang/String;)F

    move-result v6

    const/high16 v9, 0x42c80000    # 100.0f

    if-eqz v8, :cond_43

    div-float/2addr v6, v9

    :cond_43
    cmpg-float v8, v6, p2

    if-gez v8, :cond_44

    move/from16 v9, p2

    goto :goto_f

    :cond_44
    cmpl-float v8, v6, v9

    if-lez v8, :cond_45

    goto :goto_f

    :cond_45
    move v9, v6

    .line 212
    :goto_f
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    iput-object v5, v3, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :catch_0
    move-exception v0

    .line 214
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid offset value in <stop>: "

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 216
    throw v1

    .line 217
    :cond_46
    const-string v0, "Invalid offset value in <stop> (empty string)"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 218
    :cond_47
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 219
    iput-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 220
    :cond_48
    const-string v0, "Invalid document. <stop> elements are only valid inside <linearGradient> or <radialGradient> elements."

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 221
    :cond_49
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 222
    :pswitch_d
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_4e

    .line 223
    new-instance v1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    .line 224
    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$GradientElement;-><init>()V

    .line 225
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 226
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 227
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 228
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 229
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    .line 230
    :goto_11
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v7, v3, :cond_4d

    .line 231
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 232
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 233
    invoke-static {v2, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    move-result v5

    .line 234
    aget v4, v4, v5

    const/16 v5, 0x23

    if-eq v4, v5, :cond_4c

    const/16 v5, 0x24

    if-eq v4, v5, :cond_4b

    packed-switch v4, :pswitch_data_2

    goto :goto_12

    .line 235
    :pswitch_e
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 236
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_4a

    goto :goto_12

    .line 237
    :cond_4a
    const-string v0, "Invalid <radialGradient> element. r cannot be negative"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 238
    :pswitch_f
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_12

    .line 239
    :pswitch_10
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_12

    .line 240
    :cond_4b
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_12

    .line 241
    :cond_4c
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    :goto_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 242
    :cond_4d
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 243
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 244
    :cond_4e
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 245
    :pswitch_11
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_50

    .line 246
    new-instance v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    .line 247
    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$GradientElement;-><init>()V

    .line 248
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 249
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 250
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 251
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 252
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    .line 253
    :goto_13
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v7, v3, :cond_4f

    .line 254
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 255
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 256
    invoke-static {v2, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    move-result v5

    .line 257
    aget v4, v4, v5

    packed-switch v4, :pswitch_data_3

    goto :goto_14

    .line 258
    :pswitch_12
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_14

    .line 259
    :pswitch_13
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_14

    .line 260
    :pswitch_14
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_14

    .line 261
    :pswitch_15
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    :goto_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 262
    :cond_4f
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 263
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 264
    :cond_50
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 265
    :pswitch_16
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_57

    .line 266
    new-instance v1, Lcom/caverock/androidsvg/SVG$Marker;

    .line 267
    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    .line 268
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 269
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 270
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 271
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 272
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 273
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    move v3, v7

    .line 274
    :goto_15
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_56

    .line 275
    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 276
    sget-object v6, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 277
    invoke-static {v2, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    move-result v8

    .line 278
    aget v6, v6, v8

    packed-switch v6, :pswitch_data_4

    goto :goto_16

    .line 279
    :pswitch_17
    const-string v6, "auto"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 280
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    goto :goto_16

    .line 281
    :cond_51
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    goto :goto_16

    .line 282
    :pswitch_18
    const-string v6, "strokeWidth"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 283
    iput-boolean v7, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    goto :goto_16

    .line 284
    :cond_52
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 285
    iput-boolean v4, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    goto :goto_16

    .line 286
    :cond_53
    const-string v0, "Invalid value for attribute markerUnits"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 287
    :pswitch_19
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    .line 288
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-nez v5, :cond_54

    goto :goto_16

    .line 289
    :cond_54
    const-string v0, "Invalid <marker> element. markerHeight cannot be negative"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 290
    :pswitch_1a
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 291
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v5

    if-nez v5, :cond_55

    goto :goto_16

    .line 292
    :cond_55
    const-string v0, "Invalid <marker> element. markerWidth cannot be negative"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 293
    :pswitch_1b
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_16

    .line 294
    :pswitch_1c
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v5

    iput-object v5, v1, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_15

    .line 295
    :cond_56
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 296
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 297
    :cond_57
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 298
    :pswitch_1d
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_58

    .line 299
    new-instance v1, Lcom/caverock/androidsvg/SVG$Symbol;

    .line 300
    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    .line 301
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 302
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 303
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 304
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 305
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 306
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 307
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 308
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 309
    :cond_58
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 310
    :pswitch_1e
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_59

    .line 311
    new-instance v1, Lcom/caverock/androidsvg/SVG$Switch;

    .line 312
    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 313
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 314
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 315
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 316
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 317
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 318
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 319
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 320
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 321
    :cond_59
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 322
    :pswitch_1f
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_60

    .line 323
    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v1, :cond_5f

    .line 324
    new-instance v1, Lcom/caverock/androidsvg/SVG$TRef;

    .line 325
    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 326
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 327
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 328
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 329
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 330
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 331
    :goto_17
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v7, v3, :cond_5d

    .line 332
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 333
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 334
    invoke-static {v2, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    move-result v6

    .line 335
    aget v4, v4, v6

    if-eq v4, v13, :cond_5a

    goto :goto_18

    .line 336
    :cond_5a
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 337
    :cond_5b
    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    :cond_5c
    :goto_18
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 338
    :cond_5d
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 339
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v2, v0, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v2, :cond_5e

    .line 340
    check-cast v0, Lcom/caverock/androidsvg/SVG$Text;

    .line 341
    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$TRef;->textRoot:Lcom/caverock/androidsvg/SVG$Text;

    return-void

    .line 342
    :cond_5e
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v0}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$Text;

    move-result-object v0

    .line 343
    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$TRef;->textRoot:Lcom/caverock/androidsvg/SVG$Text;

    return-void

    .line 344
    :cond_5f
    const-string v0, "Invalid document. <tref> elements are only valid inside <text> or <tspan> elements."

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 345
    :cond_60
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 346
    :pswitch_20
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_63

    .line 347
    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v1, :cond_62

    .line 348
    new-instance v1, Lcom/caverock/androidsvg/SVG$TSpan;

    .line 349
    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 350
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 351
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 352
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 353
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 354
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 355
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    .line 356
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 357
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 358
    iget-object v0, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v2, v0, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v2, :cond_61

    .line 359
    check-cast v0, Lcom/caverock/androidsvg/SVG$Text;

    .line 360
    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$TSpan;->textRoot:Lcom/caverock/androidsvg/SVG$Text;

    return-void

    .line 361
    :cond_61
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v0}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$Text;

    move-result-object v0

    .line 362
    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$TSpan;->textRoot:Lcom/caverock/androidsvg/SVG$Text;

    return-void

    .line 363
    :cond_62
    const-string v0, "Invalid document. <tspan> elements are only valid inside <text> or other <tspan> elements."

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 364
    :cond_63
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 365
    :pswitch_21
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_64

    .line 366
    new-instance v1, Lcom/caverock/androidsvg/SVG$Text;

    .line 367
    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 368
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 369
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 370
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 371
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 372
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 373
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 374
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    .line 375
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 376
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 377
    :cond_64
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 378
    :pswitch_22
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_65

    .line 379
    new-instance v3, Lcom/caverock/androidsvg/SVG$Polygon;

    .line 380
    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    .line 381
    iget-object v4, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 382
    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 383
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 384
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 385
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 386
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 387
    const-string v1, "polygon"

    invoke-static {v3, v2, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 388
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    .line 389
    :cond_65
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 390
    :pswitch_23
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_66

    .line 391
    new-instance v3, Lcom/caverock/androidsvg/SVG$PolyLine;

    .line 392
    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    .line 393
    iget-object v4, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 394
    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 395
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 396
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 397
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 398
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 399
    const-string v1, "polyline"

    invoke-static {v3, v2, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 400
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    .line 401
    :cond_66
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 402
    :pswitch_24
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_68

    .line 403
    new-instance v3, Lcom/caverock/androidsvg/SVG$Line;

    .line 404
    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    .line 405
    iget-object v4, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 406
    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 407
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 408
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 409
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 410
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 411
    :goto_19
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v7, v1, :cond_67

    .line 412
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 413
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 414
    invoke-static {v2, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    move-result v5

    .line 415
    aget v4, v4, v5

    packed-switch v4, :pswitch_data_5

    goto :goto_1a

    .line 416
    :pswitch_25
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1a

    .line 417
    :pswitch_26
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1a

    .line 418
    :pswitch_27
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1a

    .line 419
    :pswitch_28
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    :goto_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 420
    :cond_67
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    .line 421
    :cond_68
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 422
    :pswitch_29
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_6c

    .line 423
    new-instance v3, Lcom/caverock/androidsvg/SVG$Ellipse;

    .line 424
    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    .line 425
    iget-object v4, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 426
    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 427
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 428
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 429
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 430
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 431
    :goto_1b
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v7, v1, :cond_6b

    .line 432
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 433
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 434
    invoke-static {v2, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    move-result v5

    .line 435
    aget v4, v4, v5

    packed-switch v4, :pswitch_data_6

    goto :goto_1c

    .line 436
    :pswitch_2a
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1c

    .line 437
    :pswitch_2b
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1c

    .line 438
    :pswitch_2c
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    .line 439
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_69

    goto :goto_1c

    .line 440
    :cond_69
    const-string v0, "Invalid <ellipse> element. ry cannot be negative"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 441
    :pswitch_2d
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    .line 442
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_6a

    :goto_1c
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 443
    :cond_6a
    const-string v0, "Invalid <ellipse> element. rx cannot be negative"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 444
    :cond_6b
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    .line 445
    :cond_6c
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 446
    :pswitch_2e
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_6f

    .line 447
    new-instance v3, Lcom/caverock/androidsvg/SVG$Circle;

    .line 448
    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    .line 449
    iget-object v4, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 450
    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 451
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 452
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 453
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 454
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 455
    :goto_1d
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v7, v1, :cond_6e

    .line 456
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 457
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 458
    invoke-static {v2, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    move-result v5

    .line 459
    aget v4, v4, v5

    packed-switch v4, :pswitch_data_7

    goto :goto_1e

    .line 460
    :pswitch_2f
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 461
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_1e

    .line 462
    :cond_6d
    const-string v0, "Invalid <circle> element. r cannot be negative"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 463
    :pswitch_30
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1e

    .line 464
    :pswitch_31
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    :goto_1e
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 465
    :cond_6e
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    .line 466
    :cond_6f
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 467
    :pswitch_32
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_7b

    .line 468
    new-instance v3, Lcom/caverock/androidsvg/SVG$Rect;

    .line 469
    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    .line 470
    iget-object v5, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v5, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 471
    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 472
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 473
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 474
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 475
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 476
    :goto_1f
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v7, v1, :cond_7a

    .line 477
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 478
    sget-object v5, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 479
    invoke-static {v2, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    move-result v8

    .line 480
    aget v5, v5, v8

    if-eq v5, v4, :cond_79

    if-eq v5, v6, :cond_78

    if-eq v5, v15, :cond_76

    if-eq v5, v14, :cond_74

    const/16 v8, 0xa

    if-eq v5, v8, :cond_72

    const/16 v8, 0xb

    if-eq v5, v8, :cond_70

    goto :goto_20

    .line 481
    :cond_70
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    .line 482
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_71

    goto :goto_20

    .line 483
    :cond_71
    const-string v0, "Invalid <rect> element. ry cannot be negative"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 484
    :cond_72
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    .line 485
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_73

    goto :goto_20

    .line 486
    :cond_73
    const-string v0, "Invalid <rect> element. rx cannot be negative"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 487
    :cond_74
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 488
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_75

    goto :goto_20

    .line 489
    :cond_75
    const-string v0, "Invalid <rect> element. height cannot be negative"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 490
    :cond_76
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 491
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_77

    goto :goto_20

    .line 492
    :cond_77
    const-string v0, "Invalid <rect> element. width cannot be negative"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 493
    :cond_78
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_20

    .line 494
    :cond_79
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    :goto_20
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1f

    .line 495
    :cond_7a
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    .line 496
    :cond_7b
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 497
    :pswitch_33
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_9d

    .line 498
    new-instance v3, Lcom/caverock/androidsvg/SVG$Path;

    .line 499
    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    .line 500
    iget-object v4, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 501
    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 502
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 503
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 504
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 505
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    move v1, v7

    .line 506
    :goto_21
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_9c

    .line 507
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 508
    sget-object v5, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 509
    invoke-static {v2, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    move-result v6

    .line 510
    aget v5, v5, v6

    const/16 v6, 0x8

    if-eq v5, v6, :cond_7e

    const/16 v6, 0x9

    if-eq v5, v6, :cond_7c

    :goto_22
    move/from16 v20, v1

    goto/16 :goto_33

    .line 511
    :cond_7c
    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v4

    cmpg-float v4, v4, p2

    if-ltz v4, :cond_7d

    goto :goto_22

    .line 512
    :cond_7d
    const-string v0, "Invalid <path> element. pathLength cannot be negative"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    goto/16 :goto_34

    .line 513
    :cond_7e
    new-instance v5, Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v5, v4}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(Ljava/lang/String;)V

    .line 514
    new-instance v8, Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 515
    invoke-direct {v8, v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(I)V

    .line 516
    iput v7, v8, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 517
    iput v7, v8, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    .line 518
    new-array v4, v6, [B

    iput-object v4, v8, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:Ljava/lang/Object;

    const/16 v4, 0x10

    .line 519
    new-array v4, v4, [F

    iput-object v4, v8, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:Ljava/lang/Object;

    .line 520
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    move-result v4

    if-eqz v4, :cond_7f

    :goto_23
    goto :goto_26

    .line 521
    :cond_7f
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextChar()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x4d

    const/16 v15, 0x6d

    if-eq v4, v6, :cond_80

    if-eq v4, v15, :cond_80

    goto :goto_23

    :cond_80
    move/from16 v6, p2

    move v9, v6

    move v10, v9

    move v11, v10

    move/from16 v16, v11

    move/from16 v17, v16

    .line 522
    :goto_24
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    const/16 v13, 0x6c

    .line 523
    const-string v7, " path segment"

    const-string v12, "Bad path coords for "

    const/high16 v19, 0x40000000    # 2.0f

    const-string v14, "SVGParser"

    sparse-switch v4, :sswitch_data_0

    goto :goto_23

    .line 524
    :sswitch_0
    invoke-virtual {v8}, Lcom/caverock/androidsvg/SVG$PathDefinition;->close()V

    move/from16 v20, v1

    move/from16 v19, v15

    move/from16 v6, v16

    move v9, v6

    move/from16 v10, v17

    :goto_25
    move v11, v10

    goto/16 :goto_2f

    .line 525
    :sswitch_1
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    move-result v11

    .line 526
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_81

    .line 527
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    move/from16 v20, v1

    goto/16 :goto_32

    :cond_81
    const/16 v7, 0x76

    if-ne v4, v7, :cond_82

    add-float/2addr v11, v10

    :cond_82
    move v10, v11

    .line 528
    invoke-virtual {v8, v6, v10}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    move/from16 v20, v1

    :goto_27
    move v11, v10

    :goto_28
    move/from16 v19, v15

    goto/16 :goto_2f

    :sswitch_2
    mul-float v13, v6, v19

    sub-float v9, v13, v9

    mul-float v13, v10, v19

    sub-float v11, v13, v11

    .line 529
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    move-result v13

    .line 530
    invoke-virtual {v5, v13}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    move-result v19

    .line 531
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-eqz v20, :cond_83

    .line 532
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_83
    const/16 v7, 0x74

    if-ne v4, v7, :cond_84

    add-float/2addr v13, v6

    add-float v19, v19, v10

    :cond_84
    move v6, v13

    move/from16 v10, v19

    .line 533
    invoke-virtual {v8, v9, v11, v6, v10}, Lcom/caverock/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    move/from16 v20, v1

    goto :goto_28

    :sswitch_3
    mul-float v13, v6, v19

    sub-float v9, v13, v9

    mul-float v13, v10, v19

    sub-float/2addr v13, v11

    .line 534
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    move-result v11

    .line 535
    invoke-virtual {v5, v11}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    move-result v15

    move/from16 v20, v1

    .line 536
    invoke-virtual {v5, v15}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    move-result v1

    .line 537
    invoke-virtual {v5, v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    move-result v21

    .line 538
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v22

    if-eqz v22, :cond_85

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    :cond_85
    const/16 v7, 0x73

    if-ne v4, v7, :cond_86

    add-float/2addr v1, v6

    add-float v21, v21, v10

    add-float/2addr v11, v6

    add-float/2addr v15, v10

    :cond_86
    move v10, v13

    move v12, v15

    move/from16 v14, v21

    move v13, v1

    const/16 v1, 0x61

    .line 540
    invoke-virtual/range {v8 .. v14}, Lcom/caverock/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    :goto_29
    move v9, v11

    move v11, v12

    move v6, v13

    move v10, v14

    :goto_2a
    const/16 v19, 0x6d

    goto/16 :goto_2f

    :sswitch_4
    move/from16 v20, v1

    const/16 v1, 0x61

    .line 541
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    move-result v9

    .line 542
    invoke-virtual {v5, v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    move-result v11

    .line 543
    invoke-virtual {v5, v11}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    move-result v13

    .line 544
    invoke-virtual {v5, v13}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    move-result v15

    .line 545
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-eqz v18, :cond_87

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    :cond_87
    const/16 v7, 0x71

    if-ne v4, v7, :cond_88

    add-float/2addr v13, v6

    add-float/2addr v15, v10

    add-float/2addr v9, v6

    add-float/2addr v11, v10

    :cond_88
    move v6, v13

    move v10, v15

    .line 547
    invoke-virtual {v8, v9, v11, v6, v10}, Lcom/caverock/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    goto :goto_2a

    :sswitch_5
    move/from16 v20, v1

    const/16 v1, 0x61

    .line 548
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    move-result v9

    .line 549
    invoke-virtual {v5, v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    move-result v11

    .line 550
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_89

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    :cond_89
    const/16 v15, 0x6d

    if-ne v4, v15, :cond_8b

    .line 552
    iget v7, v8, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    if-nez v7, :cond_8a

    goto :goto_2b

    :cond_8a
    add-float/2addr v9, v6

    add-float/2addr v11, v10

    :cond_8b
    :goto_2b
    move v6, v9

    move v10, v11

    .line 553
    invoke-virtual {v8, v6, v10}, Lcom/caverock/androidsvg/SVG$PathDefinition;->moveTo(FF)V

    if-ne v4, v15, :cond_8c

    goto :goto_2c

    :cond_8c
    const/16 v13, 0x4c

    :goto_2c
    move v9, v6

    move/from16 v16, v9

    move v11, v10

    move/from16 v17, v11

    move v4, v13

    goto/16 :goto_28

    :sswitch_6
    move/from16 v20, v1

    const/16 v1, 0x61

    .line 554
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    move-result v9

    .line 555
    invoke-virtual {v5, v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    move-result v11

    .line 556
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-eqz v18, :cond_8d

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    :cond_8d
    if-ne v4, v13, :cond_8e

    add-float/2addr v9, v6

    add-float/2addr v11, v10

    :cond_8e
    move v6, v9

    move v10, v11

    .line 558
    invoke-virtual {v8, v6, v10}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    move v9, v6

    goto/16 :goto_27

    :sswitch_7
    move/from16 v20, v1

    const/16 v1, 0x61

    .line 559
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    move-result v9

    .line 560
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_8f

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    :cond_8f
    const/16 v7, 0x68

    if-ne v4, v7, :cond_90

    add-float/2addr v9, v6

    :cond_90
    move v6, v9

    .line 562
    invoke-virtual {v8, v6, v10}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    move v9, v6

    goto/16 :goto_28

    :sswitch_8
    move/from16 v20, v1

    const/16 v1, 0x61

    .line 563
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    move-result v9

    .line 564
    invoke-virtual {v5, v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    move-result v11

    .line 565
    invoke-virtual {v5, v11}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    move-result v13

    .line 566
    invoke-virtual {v5, v13}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    move-result v15

    .line 567
    invoke-virtual {v5, v15}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    move-result v1

    .line 568
    invoke-virtual {v5, v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    move-result v21

    .line 569
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v22

    if-eqz v22, :cond_91

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    :cond_91
    const/16 v7, 0x63

    if-ne v4, v7, :cond_92

    add-float/2addr v1, v6

    add-float v21, v21, v10

    add-float/2addr v9, v6

    add-float/2addr v11, v10

    add-float/2addr v13, v6

    add-float/2addr v15, v10

    :cond_92
    move v10, v11

    move v11, v13

    move v12, v15

    move/from16 v14, v21

    move v13, v1

    .line 571
    invoke-virtual/range {v8 .. v14}, Lcom/caverock/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    goto/16 :goto_29

    :sswitch_9
    move/from16 v20, v1

    .line 572
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    move-result v9

    move v1, v10

    .line 573
    invoke-virtual {v5, v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    move-result v10

    .line 574
    invoke-virtual {v5, v10}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    move-result v11

    .line 575
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v13

    .line 576
    invoke-virtual {v5, v13}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v15

    if-nez v15, :cond_93

    move/from16 v22, v1

    move/from16 v1, p1

    goto :goto_2d

    .line 577
    :cond_93
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 578
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextFloat()F

    move-result v21

    move/from16 v22, v1

    move/from16 v1, v21

    .line 579
    :goto_2d
    invoke-virtual {v5, v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;->checkedNextFloat(F)F

    move-result v21

    .line 580
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v23

    if-nez v23, :cond_9b

    cmpg-float v23, v9, p2

    if-ltz v23, :cond_9b

    cmpg-float v23, v10, p2

    if-gez v23, :cond_94

    goto :goto_31

    :cond_94
    move/from16 v23, v1

    const/16 v1, 0x61

    if-ne v4, v1, :cond_95

    add-float v1, v23, v6

    add-float v21, v21, v22

    move v14, v1

    goto :goto_2e

    :cond_95
    move/from16 v14, v23

    .line 581
    :goto_2e
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move/from16 v15, v21

    const/16 v19, 0x6d

    invoke-virtual/range {v8 .. v15}, Lcom/caverock/androidsvg/SVG$PathDefinition;->arcTo(FFFZZFF)V

    move v6, v14

    move v9, v6

    move v10, v15

    goto/16 :goto_25

    .line 582
    :goto_2f
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 583
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    move-result v1

    if-eqz v1, :cond_96

    goto :goto_32

    .line 584
    :cond_96
    iget v1, v5, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    iget v7, v5, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    if-ne v1, v7, :cond_97

    goto :goto_30

    .line 585
    :cond_97
    iget-object v7, v5, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v7, 0x61

    if-lt v1, v7, :cond_98

    const/16 v7, 0x7a

    if-le v1, v7, :cond_99

    :cond_98
    const/16 v7, 0x41

    if-lt v1, v7, :cond_9a

    const/16 v7, 0x5a

    if-gt v1, v7, :cond_9a

    .line 586
    :cond_99
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextChar()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_9a
    :goto_30
    move/from16 v15, v19

    move/from16 v1, v20

    const/4 v7, 0x0

    goto/16 :goto_24

    .line 587
    :cond_9b
    :goto_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :goto_32
    iput-object v8, v3, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    :goto_33
    add-int/lit8 v1, v20, 0x1

    const/4 v7, 0x0

    goto/16 :goto_21

    .line 589
    :cond_9c
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_34

    .line 590
    :cond_9d
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    :goto_34
    return-void

    .line 591
    :pswitch_34
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_a8

    .line 592
    new-instance v1, Lcom/caverock/androidsvg/SVG$Use;

    .line 593
    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 594
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 595
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 596
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 597
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 598
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 599
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const/4 v7, 0x0

    .line 600
    :goto_35
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v7, v3, :cond_a7

    .line 601
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 602
    sget-object v10, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 603
    invoke-static {v2, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    move-result v11

    .line 604
    aget v10, v10, v11

    if-eq v10, v4, :cond_a5

    if-eq v10, v6, :cond_a4

    if-eq v10, v15, :cond_a2

    if-eq v10, v14, :cond_a0

    if-eq v10, v13, :cond_9e

    goto :goto_36

    .line 605
    :cond_9e
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9f

    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a6

    .line 606
    :cond_9f
    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    goto :goto_36

    .line 607
    :cond_a0
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 608
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_a1

    goto :goto_36

    .line 609
    :cond_a1
    invoke-static {v9}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 610
    :cond_a2
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 611
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_a3

    goto :goto_36

    .line 612
    :cond_a3
    invoke-static {v8}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 613
    :cond_a4
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_36

    .line 614
    :cond_a5
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    :cond_a6
    :goto_36
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    .line 615
    :cond_a7
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 616
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 617
    :cond_a8
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 618
    :pswitch_35
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_a9

    .line 619
    new-instance v1, Lcom/caverock/androidsvg/SVG$Defs;

    .line 620
    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 621
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 622
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 623
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 624
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 625
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 626
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 627
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 628
    :cond_a9
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 629
    :pswitch_36
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_aa

    .line 630
    new-instance v1, Lcom/caverock/androidsvg/SVG$Group;

    .line 631
    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 632
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 633
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 634
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 635
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 636
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 637
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 638
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 639
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 640
    :cond_aa
    invoke-static/range {v16 .. v16}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 641
    :pswitch_37
    new-instance v1, Lcom/caverock/androidsvg/SVG$Svg;

    .line 642
    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    .line 643
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 644
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 645
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 646
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 647
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 648
    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    const/4 v7, 0x0

    .line 649
    :goto_37
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v7, v3, :cond_b1

    .line 650
    invoke-interface {v2, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 651
    sget-object v5, Lcom/caverock/androidsvg/SVGParser$1;->$SwitchMap$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    .line 652
    invoke-static {v2, v7}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/xml/sax/Attributes;I)I

    move-result v8

    .line 653
    aget v5, v5, v8

    if-eq v5, v4, :cond_b0

    if-eq v5, v6, :cond_af

    if-eq v5, v15, :cond_ad

    if-eq v5, v14, :cond_ab

    goto :goto_38

    .line 654
    :cond_ab
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 655
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_ac

    goto :goto_38

    .line 656
    :cond_ac
    const-string v0, "Invalid <svg> element. height cannot be negative"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 657
    :cond_ad
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 658
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_ae

    goto :goto_38

    .line 659
    :cond_ae
    const-string v0, "Invalid <svg> element. width cannot be negative"

    invoke-static {v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    return-void

    .line 660
    :cond_af
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_38

    .line 661
    :cond_b0
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    :goto_38
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 662
    :cond_b1
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v2, :cond_b2

    .line 663
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    .line 664
    iput-object v1, v2, Lcom/caverock/androidsvg/SVG;->rootElement:Ljava/lang/Object;

    goto :goto_39

    .line 665
    :cond_b2
    invoke-interface {v2, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 666
    :goto_39
    iput-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_2e
        :pswitch_29
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_16
        :pswitch_11
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1a
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xf
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xa
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xc
        :pswitch_31
        :pswitch_30
        :pswitch_2f
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_9
        0x43 -> :sswitch_8
        0x48 -> :sswitch_7
        0x4c -> :sswitch_6
        0x4d -> :sswitch_5
        0x51 -> :sswitch_4
        0x53 -> :sswitch_3
        0x54 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
        0x61 -> :sswitch_9
        0x63 -> :sswitch_8
        0x68 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x71 -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0x76 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method public final text(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    .line 24
    .line 25
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    .line 47
    .line 48
    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 53
    .line 54
    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    .line 55
    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGParser;->appendToTextContainer(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_5
    :goto_0
    return-void
.end method

.method public final text([CII)V
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    .line 66
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void

    .line 67
    :cond_2
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    if-eqz v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    .line 70
    :cond_3
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_5

    .line 72
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser;->appendToTextContainer(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.class public final Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
.super Lcom/caverock/androidsvg/SVG$PathDefinition;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "(?s)/\\*.*?\\*/"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static hexChar(I)I
    .locals 2

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x39

    .line 6
    .line 7
    if-gt p0, v1, :cond_0

    .line 8
    .line 9
    sub-int/2addr p0, v0

    .line 10
    return p0

    .line 11
    :cond_0
    const/16 v0, 0x41

    .line 12
    .line 13
    if-lt p0, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x46

    .line 16
    .line 17
    if-gt p0, v0, :cond_1

    .line 18
    .line 19
    add-int/lit8 p0, p0, -0x37

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    const/16 v0, 0x61

    .line 23
    .line 24
    if-lt p0, v0, :cond_2

    .line 25
    .line 26
    const/16 v0, 0x66

    .line 27
    .line 28
    if-gt p0, v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 p0, p0, -0x57

    .line 31
    .line 32
    return p0

    .line 33
    :cond_2
    const/4 p0, -0x1

    .line 34
    return p0
.end method


# virtual methods
.method public final nextCSSString()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x27

    .line 19
    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x22

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    :goto_0
    const/4 p0, 0x0

    .line 27
    return-object p0

    .line 28
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iget v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    add-int/2addr v2, v3

    .line 37
    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextChar()Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    :goto_1
    const/4 v4, -0x1

    .line 48
    if-eq v2, v4, :cond_8

    .line 49
    .line 50
    if-eq v2, v0, :cond_8

    .line 51
    .line 52
    const/16 v5, 0x5c

    .line 53
    .line 54
    if-ne v2, v5, :cond_7

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextChar()Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-ne v2, v4, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/16 v5, 0xa

    .line 68
    .line 69
    if-eq v2, v5, :cond_6

    .line 70
    .line 71
    const/16 v5, 0xd

    .line 72
    .line 73
    if-eq v2, v5, :cond_6

    .line 74
    .line 75
    const/16 v5, 0xc

    .line 76
    .line 77
    if-ne v2, v5, :cond_3

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_3
    invoke-static {v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->hexChar(I)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eq v5, v4, :cond_7

    .line 85
    .line 86
    move v6, v3

    .line 87
    :goto_2
    const/4 v7, 0x5

    .line 88
    if-gt v6, v7, :cond_5

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextChar()Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-static {v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->hexChar(I)I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-ne v7, v4, :cond_4

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_4
    mul-int/lit8 v5, v5, 0x10

    .line 106
    .line 107
    add-int/2addr v5, v7

    .line 108
    add-int/lit8 v6, v6, 0x1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_5
    :goto_3
    int-to-char v4, v5

    .line 112
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextChar()Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    goto :goto_1

    .line 125
    :cond_7
    int-to-char v2, v2

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextChar()Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    goto :goto_1

    .line 138
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0
.end method

.method public final nextIdentifier()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    goto :goto_3

    .line 15
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v3, 0x2d

    .line 20
    .line 21
    if-ne v1, v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->advanceChar()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    :cond_1
    const/16 v4, 0x5f

    .line 28
    .line 29
    const/16 v5, 0x7a

    .line 30
    .line 31
    const/16 v6, 0x61

    .line 32
    .line 33
    const/16 v7, 0x5a

    .line 34
    .line 35
    const/16 v8, 0x41

    .line 36
    .line 37
    if-lt v1, v8, :cond_2

    .line 38
    .line 39
    if-le v1, v7, :cond_4

    .line 40
    .line 41
    :cond_2
    if-lt v1, v6, :cond_3

    .line 42
    .line 43
    if-le v1, v5, :cond_4

    .line 44
    .line 45
    :cond_3
    if-ne v1, v4, :cond_a

    .line 46
    .line 47
    :cond_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->advanceChar()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    :goto_0
    if-lt v1, v8, :cond_5

    .line 52
    .line 53
    if-le v1, v7, :cond_9

    .line 54
    .line 55
    :cond_5
    if-lt v1, v6, :cond_6

    .line 56
    .line 57
    if-le v1, v5, :cond_9

    .line 58
    .line 59
    :cond_6
    const/16 v9, 0x30

    .line 60
    .line 61
    if-lt v1, v9, :cond_7

    .line 62
    .line 63
    const/16 v9, 0x39

    .line 64
    .line 65
    if-le v1, v9, :cond_9

    .line 66
    .line 67
    :cond_7
    if-eq v1, v3, :cond_9

    .line 68
    .line 69
    if-ne v1, v4, :cond_8

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_8
    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->advanceChar()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    goto :goto_0

    .line 80
    :cond_a
    move v1, v2

    .line 81
    :goto_2
    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 82
    .line 83
    :goto_3
    if-ne v1, v2, :cond_b

    .line 84
    .line 85
    const/4 p0, 0x0

    .line 86
    return-object p0

    .line 87
    :cond_b
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 92
    .line 93
    return-object v0
.end method

.method public final nextSelectorGroup()Ljava/util/ArrayList;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$Selector;

    .line 18
    .line 19
    invoke-direct {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>()V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_48

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    goto/16 :goto_21

    .line 35
    .line 36
    :cond_1
    iget v5, v0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 37
    .line 38
    iget-object v6, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/ArrayList;

    .line 39
    .line 40
    const/16 v7, 0x2b

    .line 41
    .line 42
    if-eqz v6, :cond_4

    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/16 v6, 0x3e

    .line 52
    .line 53
    invoke-virtual {v0, v6}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    sget-object v6, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_4

    .line 70
    .line 71
    sget-object v6, Lcom/caverock/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/caverock/androidsvg/CSSParser$Combinator;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    :goto_1
    move-object v6, v2

    .line 78
    :goto_2
    const/16 v8, 0x2a

    .line 79
    .line 80
    invoke-virtual {v0, v8}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_5

    .line 85
    .line 86
    new-instance v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .line 87
    .line 88
    invoke-direct {v8, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    if-eqz v8, :cond_6

    .line 97
    .line 98
    new-instance v9, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .line 99
    .line 100
    invoke-direct {v9, v6, v8}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget v8, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    .line 104
    .line 105
    add-int/2addr v8, v3

    .line 106
    iput v8, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    .line 107
    .line 108
    move-object v8, v9

    .line 109
    goto :goto_3

    .line 110
    :cond_6
    move-object v8, v2

    .line 111
    :goto_3
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-nez v9, :cond_44

    .line 116
    .line 117
    const/16 v9, 0x2e

    .line 118
    .line 119
    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    if-eqz v9, :cond_9

    .line 124
    .line 125
    if-nez v8, :cond_7

    .line 126
    .line 127
    new-instance v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .line 128
    .line 129
    invoke-direct {v8, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_7
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    if-eqz v9, :cond_8

    .line 137
    .line 138
    const-string v10, "class"

    .line 139
    .line 140
    sget-object v11, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .line 141
    .line 142
    invoke-virtual {v8, v10, v11, v9}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_8
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    .line 150
    .line 151
    const-string v1, "Invalid \".class\" simpleSelectors"

    .line 152
    .line 153
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_9
    const/16 v9, 0x23

    .line 158
    .line 159
    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    if-eqz v9, :cond_c

    .line 164
    .line 165
    if-nez v8, :cond_a

    .line 166
    .line 167
    new-instance v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .line 168
    .line 169
    invoke-direct {v8, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_a
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    if-eqz v9, :cond_b

    .line 177
    .line 178
    const-string v10, "id"

    .line 179
    .line 180
    sget-object v11, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .line 181
    .line 182
    invoke-virtual {v8, v10, v11, v9}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget v9, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    .line 186
    .line 187
    const v10, 0xf4240

    .line 188
    .line 189
    .line 190
    add-int/2addr v9, v10

    .line 191
    iput v9, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_b
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    .line 195
    .line 196
    const-string v1, "Invalid \"#id\" simpleSelectors"

    .line 197
    .line 198
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw v0

    .line 202
    :cond_c
    const/16 v9, 0x5b

    .line 203
    .line 204
    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 205
    .line 206
    .line 207
    move-result v9

    .line 208
    if-eqz v9, :cond_18

    .line 209
    .line 210
    if-nez v8, :cond_d

    .line 211
    .line 212
    new-instance v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .line 213
    .line 214
    invoke-direct {v8, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    :cond_d
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    const-string v10, "Invalid attribute simpleSelectors"

    .line 225
    .line 226
    if-eqz v9, :cond_17

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 229
    .line 230
    .line 231
    const/16 v11, 0x3d

    .line 232
    .line 233
    invoke-virtual {v0, v11}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 234
    .line 235
    .line 236
    move-result v11

    .line 237
    if-eqz v11, :cond_e

    .line 238
    .line 239
    sget-object v11, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_e
    const-string/jumbo v11, "~="

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v11}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(Ljava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    move-result v11

    .line 249
    if-eqz v11, :cond_f

    .line 250
    .line 251
    sget-object v11, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_f
    const-string/jumbo v11, "|="

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v11}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    move-result v11

    .line 261
    if-eqz v11, :cond_10

    .line 262
    .line 263
    sget-object v11, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_10
    move-object v11, v2

    .line 267
    :goto_4
    if-eqz v11, :cond_14

    .line 268
    .line 269
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 273
    .line 274
    .line 275
    move-result v12

    .line 276
    if-eqz v12, :cond_11

    .line 277
    .line 278
    move-object v12, v2

    .line 279
    goto :goto_5

    .line 280
    :cond_11
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->nextQuotedString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v12

    .line 284
    if-eqz v12, :cond_12

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_12
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v12

    .line 291
    :goto_5
    if-eqz v12, :cond_13

    .line 292
    .line 293
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 294
    .line 295
    .line 296
    goto :goto_6

    .line 297
    :cond_13
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    .line 298
    .line 299
    invoke-direct {v0, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    throw v0

    .line 303
    :cond_14
    move-object v12, v2

    .line 304
    :goto_6
    const/16 v13, 0x5d

    .line 305
    .line 306
    invoke-virtual {v0, v13}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    if-eqz v13, :cond_16

    .line 311
    .line 312
    if-nez v11, :cond_15

    .line 313
    .line 314
    sget-object v11, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .line 315
    .line 316
    :cond_15
    invoke-virtual {v8, v9, v11, v12}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_3

    .line 323
    .line 324
    :cond_16
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    .line 325
    .line 326
    invoke-direct {v0, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw v0

    .line 330
    :cond_17
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    .line 331
    .line 332
    invoke-direct {v0, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    throw v0

    .line 336
    :cond_18
    const/16 v9, 0x3a

    .line 337
    .line 338
    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 339
    .line 340
    .line 341
    move-result v9

    .line 342
    if-eqz v9, :cond_44

    .line 343
    .line 344
    if-nez v8, :cond_19

    .line 345
    .line 346
    new-instance v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .line 347
    .line 348
    invoke-direct {v8, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    :cond_19
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v9

    .line 355
    if-eqz v9, :cond_43

    .line 356
    .line 357
    invoke-static {v9}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 358
    .line 359
    .line 360
    move-result-object v10

    .line 361
    sget-object v11, Lcom/caverock/androidsvg/CSSParser$1;->$SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents:[I

    .line 362
    .line 363
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 364
    .line 365
    .line 366
    move-result v12

    .line 367
    aget v11, v11, v12

    .line 368
    .line 369
    const/4 v12, 0x2

    .line 370
    const/4 v13, 0x0

    .line 371
    const-string v14, "Invalid or missing parameter section for pseudo class: "

    .line 372
    .line 373
    const/16 v15, 0x29

    .line 374
    .line 375
    const/16 v2, 0x28

    .line 376
    .line 377
    packed-switch v11, :pswitch_data_0

    .line 378
    .line 379
    .line 380
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    .line 381
    .line 382
    const-string v1, "Unsupported pseudo class: "

    .line 383
    .line 384
    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    throw v0

    .line 392
    :pswitch_0
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;

    .line 393
    .line 394
    invoke-direct {v2, v9}, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 398
    .line 399
    .line 400
    :goto_7
    move v10, v7

    .line 401
    move v7, v3

    .line 402
    move v3, v10

    .line 403
    :goto_8
    const/4 v10, 0x0

    .line 404
    goto/16 :goto_1f

    .line 405
    .line 406
    :pswitch_1
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 407
    .line 408
    .line 409
    move-result v10

    .line 410
    if-eqz v10, :cond_1a

    .line 411
    .line 412
    goto :goto_9

    .line 413
    :cond_1a
    iget v10, v0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 414
    .line 415
    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    if-nez v2, :cond_1b

    .line 420
    .line 421
    goto :goto_9

    .line 422
    :cond_1b
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 423
    .line 424
    .line 425
    const/4 v2, 0x0

    .line 426
    :cond_1c
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v11

    .line 430
    if-nez v11, :cond_1d

    .line 431
    .line 432
    iput v10, v0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 433
    .line 434
    goto :goto_9

    .line 435
    :cond_1d
    if-nez v2, :cond_1e

    .line 436
    .line 437
    new-instance v2, Ljava/util/ArrayList;

    .line 438
    .line 439
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .line 441
    .line 442
    :cond_1e
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 449
    .line 450
    .line 451
    move-result v11

    .line 452
    if-nez v11, :cond_1c

    .line 453
    .line 454
    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    if-eqz v2, :cond_1f

    .line 459
    .line 460
    goto :goto_9

    .line 461
    :cond_1f
    iput v10, v0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 462
    .line 463
    :goto_9
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;

    .line 464
    .line 465
    invoke-direct {v2, v9}, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 469
    .line 470
    .line 471
    goto :goto_7

    .line 472
    :pswitch_2
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;

    .line 473
    .line 474
    invoke-direct {v2, v12}, Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;-><init>(I)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 478
    .line 479
    .line 480
    goto :goto_7

    .line 481
    :pswitch_3
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 482
    .line 483
    .line 484
    move-result v10

    .line 485
    if-eqz v10, :cond_20

    .line 486
    .line 487
    :goto_a
    const/4 v2, 0x0

    .line 488
    goto :goto_c

    .line 489
    :cond_20
    iget v10, v0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 490
    .line 491
    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    if-nez v2, :cond_21

    .line 496
    .line 497
    goto :goto_a

    .line 498
    :cond_21
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextSelectorGroup()Ljava/util/ArrayList;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    if-nez v2, :cond_22

    .line 506
    .line 507
    iput v10, v0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 508
    .line 509
    goto :goto_a

    .line 510
    :cond_22
    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 511
    .line 512
    .line 513
    move-result v11

    .line 514
    if-nez v11, :cond_23

    .line 515
    .line 516
    iput v10, v0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 517
    .line 518
    goto :goto_a

    .line 519
    :cond_23
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 520
    .line 521
    .line 522
    move-result-object v10

    .line 523
    :cond_24
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 524
    .line 525
    .line 526
    move-result v11

    .line 527
    if-eqz v11, :cond_29

    .line 528
    .line 529
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v11

    .line 533
    check-cast v11, Lcom/caverock/androidsvg/CSSParser$Selector;

    .line 534
    .line 535
    iget-object v11, v11, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/ArrayList;

    .line 536
    .line 537
    if-nez v11, :cond_25

    .line 538
    .line 539
    goto :goto_c

    .line 540
    :cond_25
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 541
    .line 542
    .line 543
    move-result-object v11

    .line 544
    :cond_26
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 545
    .line 546
    .line 547
    move-result v12

    .line 548
    if-eqz v12, :cond_24

    .line 549
    .line 550
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v12

    .line 554
    check-cast v12, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .line 555
    .line 556
    iget-object v12, v12, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/ArrayList;

    .line 557
    .line 558
    if-nez v12, :cond_27

    .line 559
    .line 560
    goto :goto_b

    .line 561
    :cond_27
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 562
    .line 563
    .line 564
    move-result-object v12

    .line 565
    :cond_28
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 566
    .line 567
    .line 568
    move-result v13

    .line 569
    if-eqz v13, :cond_26

    .line 570
    .line 571
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v13

    .line 575
    check-cast v13, Lcom/caverock/androidsvg/CSSParser$PseudoClass;

    .line 576
    .line 577
    instance-of v13, v13, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;

    .line 578
    .line 579
    if-eqz v13, :cond_28

    .line 580
    .line 581
    goto :goto_a

    .line 582
    :cond_29
    :goto_c
    if-eqz v2, :cond_2c

    .line 583
    .line 584
    new-instance v9, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;

    .line 585
    .line 586
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 587
    .line 588
    .line 589
    iput-object v2, v9, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;->selectorGroup:Ljava/util/List;

    .line 590
    .line 591
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    const/high16 v10, -0x80000000

    .line 596
    .line 597
    :cond_2a
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 598
    .line 599
    .line 600
    move-result v11

    .line 601
    if-eqz v11, :cond_2b

    .line 602
    .line 603
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v11

    .line 607
    check-cast v11, Lcom/caverock/androidsvg/CSSParser$Selector;

    .line 608
    .line 609
    iget v11, v11, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    .line 610
    .line 611
    if-le v11, v10, :cond_2a

    .line 612
    .line 613
    move v10, v11

    .line 614
    goto :goto_d

    .line 615
    :cond_2b
    iput v10, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    .line 616
    .line 617
    move v2, v7

    .line 618
    move v7, v3

    .line 619
    move v3, v2

    .line 620
    move-object v2, v9

    .line 621
    goto/16 :goto_8

    .line 622
    .line 623
    :cond_2c
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    .line 624
    .line 625
    invoke-virtual {v14, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    throw v0

    .line 633
    :pswitch_4
    sget-object v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 634
    .line 635
    if-eq v10, v11, :cond_2e

    .line 636
    .line 637
    sget-object v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 638
    .line 639
    if-ne v10, v11, :cond_2d

    .line 640
    .line 641
    goto :goto_e

    .line 642
    :cond_2d
    move/from16 v20, v13

    .line 643
    .line 644
    goto :goto_f

    .line 645
    :cond_2e
    :goto_e
    move/from16 v20, v3

    .line 646
    .line 647
    :goto_f
    sget-object v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 648
    .line 649
    if-eq v10, v11, :cond_30

    .line 650
    .line 651
    sget-object v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_last_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 652
    .line 653
    if-ne v10, v11, :cond_2f

    .line 654
    .line 655
    goto :goto_10

    .line 656
    :cond_2f
    move/from16 v21, v13

    .line 657
    .line 658
    goto :goto_11

    .line 659
    :cond_30
    :goto_10
    move/from16 v21, v3

    .line 660
    .line 661
    :goto_11
    iget v10, v0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    .line 662
    .line 663
    iget-object v11, v0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:Ljava/lang/Object;

    .line 664
    .line 665
    check-cast v11, Ljava/lang/String;

    .line 666
    .line 667
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->empty()Z

    .line 668
    .line 669
    .line 670
    move-result v17

    .line 671
    if-eqz v17, :cond_31

    .line 672
    .line 673
    :goto_12
    move v3, v7

    .line 674
    move-object/from16 v23, v8

    .line 675
    .line 676
    :goto_13
    const/4 v2, 0x0

    .line 677
    goto/16 :goto_1e

    .line 678
    .line 679
    :cond_31
    iget v15, v0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 680
    .line 681
    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 682
    .line 683
    .line 684
    move-result v2

    .line 685
    if-nez v2, :cond_32

    .line 686
    .line 687
    goto :goto_12

    .line 688
    :cond_32
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 689
    .line 690
    .line 691
    const-string v2, "odd"

    .line 692
    .line 693
    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(Ljava/lang/String;)Z

    .line 694
    .line 695
    .line 696
    move-result v2

    .line 697
    if-eqz v2, :cond_33

    .line 698
    .line 699
    new-instance v2, Landroidx/navigation/NavOptions$Builder;

    .line 700
    .line 701
    invoke-direct {v2, v12, v3}, Landroidx/navigation/NavOptions$Builder;-><init>(II)V

    .line 702
    .line 703
    .line 704
    :goto_14
    move v3, v7

    .line 705
    move-object/from16 v23, v8

    .line 706
    .line 707
    goto/16 :goto_1d

    .line 708
    .line 709
    :cond_33
    const-string v2, "even"

    .line 710
    .line 711
    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(Ljava/lang/String;)Z

    .line 712
    .line 713
    .line 714
    move-result v2

    .line 715
    if-eqz v2, :cond_34

    .line 716
    .line 717
    new-instance v2, Landroidx/navigation/NavOptions$Builder;

    .line 718
    .line 719
    invoke-direct {v2, v12, v13}, Landroidx/navigation/NavOptions$Builder;-><init>(II)V

    .line 720
    .line 721
    .line 722
    goto :goto_14

    .line 723
    :cond_34
    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 724
    .line 725
    .line 726
    move-result v2

    .line 727
    const/16 v12, 0x2d

    .line 728
    .line 729
    if-eqz v2, :cond_35

    .line 730
    .line 731
    goto :goto_15

    .line 732
    :cond_35
    invoke-virtual {v0, v12}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 733
    .line 734
    .line 735
    move-result v2

    .line 736
    if-eqz v2, :cond_36

    .line 737
    .line 738
    const/4 v2, -0x1

    .line 739
    goto :goto_16

    .line 740
    :cond_36
    :goto_15
    move v2, v3

    .line 741
    :goto_16
    iget v13, v0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 742
    .line 743
    invoke-static {v13, v10, v11}, Lcom/caverock/androidsvg/IntegerParser;->parseInt(IILjava/lang/String;)Lcom/caverock/androidsvg/IntegerParser;

    .line 744
    .line 745
    .line 746
    move-result-object v13

    .line 747
    if-eqz v13, :cond_37

    .line 748
    .line 749
    iget v3, v13, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    .line 750
    .line 751
    iput v3, v0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 752
    .line 753
    :cond_37
    const/16 v3, 0x6e

    .line 754
    .line 755
    invoke-virtual {v0, v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 756
    .line 757
    .line 758
    move-result v3

    .line 759
    if-nez v3, :cond_39

    .line 760
    .line 761
    const/16 v3, 0x4e

    .line 762
    .line 763
    invoke-virtual {v0, v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 764
    .line 765
    .line 766
    move-result v3

    .line 767
    if-eqz v3, :cond_38

    .line 768
    .line 769
    goto :goto_17

    .line 770
    :cond_38
    move v12, v2

    .line 771
    move v3, v7

    .line 772
    move-object/from16 v23, v8

    .line 773
    .line 774
    move-object v7, v13

    .line 775
    const/4 v2, 0x1

    .line 776
    const/4 v13, 0x0

    .line 777
    goto :goto_1a

    .line 778
    :cond_39
    :goto_17
    if-eqz v13, :cond_3a

    .line 779
    .line 780
    move-object/from16 v23, v8

    .line 781
    .line 782
    goto :goto_18

    .line 783
    :cond_3a
    new-instance v13, Lcom/caverock/androidsvg/IntegerParser;

    .line 784
    .line 785
    move-object/from16 v23, v8

    .line 786
    .line 787
    const-wide/16 v7, 0x1

    .line 788
    .line 789
    iget v3, v0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 790
    .line 791
    invoke-direct {v13, v7, v8, v3}, Lcom/caverock/androidsvg/IntegerParser;-><init>(JI)V

    .line 792
    .line 793
    .line 794
    :goto_18
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 795
    .line 796
    .line 797
    const/16 v3, 0x2b

    .line 798
    .line 799
    invoke-virtual {v0, v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 800
    .line 801
    .line 802
    move-result v7

    .line 803
    if-nez v7, :cond_3b

    .line 804
    .line 805
    invoke-virtual {v0, v12}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 806
    .line 807
    .line 808
    move-result v7

    .line 809
    if-eqz v7, :cond_3b

    .line 810
    .line 811
    const/4 v12, -0x1

    .line 812
    goto :goto_19

    .line 813
    :cond_3b
    const/4 v12, 0x1

    .line 814
    :goto_19
    if-eqz v7, :cond_3d

    .line 815
    .line 816
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 817
    .line 818
    .line 819
    iget v7, v0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 820
    .line 821
    invoke-static {v7, v10, v11}, Lcom/caverock/androidsvg/IntegerParser;->parseInt(IILjava/lang/String;)Lcom/caverock/androidsvg/IntegerParser;

    .line 822
    .line 823
    .line 824
    move-result-object v7

    .line 825
    if-eqz v7, :cond_3c

    .line 826
    .line 827
    iget v8, v7, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    .line 828
    .line 829
    iput v8, v0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 830
    .line 831
    goto :goto_1a

    .line 832
    :cond_3c
    iput v15, v0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 833
    .line 834
    goto/16 :goto_13

    .line 835
    .line 836
    :cond_3d
    const/4 v7, 0x0

    .line 837
    :goto_1a
    new-instance v8, Landroidx/navigation/NavOptions$Builder;

    .line 838
    .line 839
    if-nez v13, :cond_3e

    .line 840
    .line 841
    const/4 v2, 0x0

    .line 842
    goto :goto_1b

    .line 843
    :cond_3e
    iget-wide v10, v13, Lcom/caverock/androidsvg/IntegerParser;->value:J

    .line 844
    .line 845
    long-to-int v10, v10

    .line 846
    mul-int/2addr v2, v10

    .line 847
    :goto_1b
    if-nez v7, :cond_3f

    .line 848
    .line 849
    const/4 v13, 0x0

    .line 850
    goto :goto_1c

    .line 851
    :cond_3f
    iget-wide v10, v7, Lcom/caverock/androidsvg/IntegerParser;->value:J

    .line 852
    .line 853
    long-to-int v7, v10

    .line 854
    mul-int v13, v12, v7

    .line 855
    .line 856
    :goto_1c
    invoke-direct {v8, v2, v13}, Landroidx/navigation/NavOptions$Builder;-><init>(II)V

    .line 857
    .line 858
    .line 859
    move-object v2, v8

    .line 860
    :goto_1d
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipWhitespace()V

    .line 861
    .line 862
    .line 863
    const/16 v7, 0x29

    .line 864
    .line 865
    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->consume(C)Z

    .line 866
    .line 867
    .line 868
    move-result v7

    .line 869
    if-eqz v7, :cond_40

    .line 870
    .line 871
    goto :goto_1e

    .line 872
    :cond_40
    iput v15, v0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 873
    .line 874
    goto/16 :goto_13

    .line 875
    .line 876
    :goto_1e
    if-eqz v2, :cond_41

    .line 877
    .line 878
    new-instance v17, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    .line 879
    .line 880
    iget v7, v2, Landroidx/navigation/NavOptions$Builder;->enterAnim:I

    .line 881
    .line 882
    iget v2, v2, Landroidx/navigation/NavOptions$Builder;->exitAnim:I

    .line 883
    .line 884
    move-object/from16 v8, v23

    .line 885
    .line 886
    iget-object v9, v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    .line 887
    .line 888
    move/from16 v19, v2

    .line 889
    .line 890
    move/from16 v18, v7

    .line 891
    .line 892
    move-object/from16 v22, v9

    .line 893
    .line 894
    invoke-direct/range {v17 .. v22}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 898
    .line 899
    .line 900
    move-object/from16 v2, v17

    .line 901
    .line 902
    const/4 v7, 0x1

    .line 903
    goto/16 :goto_8

    .line 904
    .line 905
    :cond_41
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    .line 906
    .line 907
    invoke-virtual {v14, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 908
    .line 909
    .line 910
    move-result-object v1

    .line 911
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 912
    .line 913
    .line 914
    throw v0

    .line 915
    :pswitch_5
    move v3, v7

    .line 916
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;

    .line 917
    .line 918
    const/4 v7, 0x1

    .line 919
    invoke-direct {v2, v7}, Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;-><init>(I)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 923
    .line 924
    .line 925
    goto/16 :goto_8

    .line 926
    .line 927
    :pswitch_6
    move/from16 v24, v7

    .line 928
    .line 929
    move v7, v3

    .line 930
    move/from16 v3, v24

    .line 931
    .line 932
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;

    .line 933
    .line 934
    const/4 v9, 0x0

    .line 935
    invoke-direct {v2, v9}, Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;-><init>(I)V

    .line 936
    .line 937
    .line 938
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 939
    .line 940
    .line 941
    goto/16 :goto_8

    .line 942
    .line 943
    :pswitch_7
    move/from16 v24, v7

    .line 944
    .line 945
    move v7, v3

    .line 946
    move/from16 v3, v24

    .line 947
    .line 948
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;

    .line 949
    .line 950
    iget-object v9, v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    .line 951
    .line 952
    invoke-direct {v2, v9, v7}, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;-><init>(Ljava/lang/String;Z)V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 956
    .line 957
    .line 958
    goto/16 :goto_8

    .line 959
    .line 960
    :pswitch_8
    move/from16 v24, v7

    .line 961
    .line 962
    move v7, v3

    .line 963
    move/from16 v3, v24

    .line 964
    .line 965
    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    .line 966
    .line 967
    const/4 v14, 0x1

    .line 968
    iget-object v15, v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    .line 969
    .line 970
    const/4 v11, 0x0

    .line 971
    const/4 v12, 0x1

    .line 972
    const/4 v13, 0x0

    .line 973
    invoke-direct/range {v10 .. v15}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    .line 974
    .line 975
    .line 976
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 977
    .line 978
    .line 979
    move-object v2, v10

    .line 980
    goto/16 :goto_8

    .line 981
    .line 982
    :pswitch_9
    move/from16 v24, v7

    .line 983
    .line 984
    move v7, v3

    .line 985
    move/from16 v3, v24

    .line 986
    .line 987
    new-instance v17, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    .line 988
    .line 989
    const/16 v21, 0x1

    .line 990
    .line 991
    iget-object v2, v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    .line 992
    .line 993
    const/16 v18, 0x0

    .line 994
    .line 995
    const/16 v19, 0x1

    .line 996
    .line 997
    const/16 v20, 0x1

    .line 998
    .line 999
    move-object/from16 v22, v2

    .line 1000
    .line 1001
    invoke-direct/range {v17 .. v22}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 1005
    .line 1006
    .line 1007
    move-object/from16 v2, v17

    .line 1008
    .line 1009
    goto/16 :goto_8

    .line 1010
    .line 1011
    :pswitch_a
    move/from16 v24, v7

    .line 1012
    .line 1013
    move v7, v3

    .line 1014
    move/from16 v3, v24

    .line 1015
    .line 1016
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;

    .line 1017
    .line 1018
    const/4 v9, 0x0

    .line 1019
    const/4 v10, 0x0

    .line 1020
    invoke-direct {v2, v10, v9}, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;-><init>(Ljava/lang/String;Z)V

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 1024
    .line 1025
    .line 1026
    goto :goto_1f

    .line 1027
    :pswitch_b
    move v10, v7

    .line 1028
    move v7, v3

    .line 1029
    move v3, v10

    .line 1030
    const/4 v10, 0x0

    .line 1031
    new-instance v11, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    .line 1032
    .line 1033
    const/4 v15, 0x0

    .line 1034
    const/16 v16, 0x0

    .line 1035
    .line 1036
    const/4 v12, 0x0

    .line 1037
    const/4 v13, 0x1

    .line 1038
    const/4 v14, 0x0

    .line 1039
    invoke-direct/range {v11 .. v16}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 1043
    .line 1044
    .line 1045
    move-object v2, v11

    .line 1046
    goto :goto_1f

    .line 1047
    :pswitch_c
    move v10, v7

    .line 1048
    move v7, v3

    .line 1049
    move v3, v10

    .line 1050
    const/4 v10, 0x0

    .line 1051
    new-instance v12, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    .line 1052
    .line 1053
    const/16 v16, 0x0

    .line 1054
    .line 1055
    const/16 v17, 0x0

    .line 1056
    .line 1057
    const/4 v13, 0x0

    .line 1058
    const/4 v14, 0x1

    .line 1059
    const/4 v15, 0x1

    .line 1060
    invoke-direct/range {v12 .. v17}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 1064
    .line 1065
    .line 1066
    move-object v2, v12

    .line 1067
    :goto_1f
    iget-object v9, v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/ArrayList;

    .line 1068
    .line 1069
    if-nez v9, :cond_42

    .line 1070
    .line 1071
    new-instance v9, Ljava/util/ArrayList;

    .line 1072
    .line 1073
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1074
    .line 1075
    .line 1076
    iput-object v9, v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/ArrayList;

    .line 1077
    .line 1078
    :cond_42
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1079
    .line 1080
    .line 1081
    move v2, v7

    .line 1082
    move v7, v3

    .line 1083
    move v3, v2

    .line 1084
    move-object v2, v10

    .line 1085
    goto/16 :goto_3

    .line 1086
    .line 1087
    :cond_43
    new-instance v0, Lcom/caverock/androidsvg/CSSParseException;

    .line 1088
    .line 1089
    const-string v1, "Invalid pseudo class"

    .line 1090
    .line 1091
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1092
    .line 1093
    .line 1094
    throw v0

    .line 1095
    :cond_44
    move-object v10, v2

    .line 1096
    move v7, v3

    .line 1097
    if-eqz v8, :cond_47

    .line 1098
    .line 1099
    iget-object v2, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/ArrayList;

    .line 1100
    .line 1101
    if-nez v2, :cond_45

    .line 1102
    .line 1103
    new-instance v2, Ljava/util/ArrayList;

    .line 1104
    .line 1105
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1106
    .line 1107
    .line 1108
    iput-object v2, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/ArrayList;

    .line 1109
    .line 1110
    :cond_45
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->skipCommaWhitespace()Z

    .line 1114
    .line 1115
    .line 1116
    move-result v2

    .line 1117
    if-nez v2, :cond_46

    .line 1118
    .line 1119
    :goto_20
    move v3, v7

    .line 1120
    move-object v2, v10

    .line 1121
    goto/16 :goto_0

    .line 1122
    .line 1123
    :cond_46
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    .line 1125
    .line 1126
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$Selector;

    .line 1127
    .line 1128
    invoke-direct {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>()V

    .line 1129
    .line 1130
    .line 1131
    goto :goto_20

    .line 1132
    :cond_47
    iput v5, v0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 1133
    .line 1134
    :cond_48
    :goto_21
    iget-object v0, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/ArrayList;

    .line 1135
    .line 1136
    if-eqz v0, :cond_4a

    .line 1137
    .line 1138
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1139
    .line 1140
    .line 1141
    move-result v0

    .line 1142
    if-eqz v0, :cond_49

    .line 1143
    .line 1144
    goto :goto_22

    .line 1145
    :cond_49
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    .line 1147
    .line 1148
    :cond_4a
    :goto_22
    return-object v1

    .line 1149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

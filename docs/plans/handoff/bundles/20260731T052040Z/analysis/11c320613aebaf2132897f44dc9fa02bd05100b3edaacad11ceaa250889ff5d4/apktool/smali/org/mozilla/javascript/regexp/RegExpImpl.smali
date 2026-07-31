.class public Lorg/mozilla/javascript/regexp/RegExpImpl;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/mozilla/javascript/RegExpProxy;


# instance fields
.field protected input:Ljava/lang/String;

.field protected lastMatch:Lorg/mozilla/javascript/regexp/SubString;

.field protected lastParen:Lorg/mozilla/javascript/regexp/SubString;

.field protected leftContext:Lorg/mozilla/javascript/regexp/SubString;

.field protected multiline:Z

.field protected parens:[Lorg/mozilla/javascript/regexp/SubString;

.field protected rightContext:Lorg/mozilla/javascript/regexp/SubString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static createRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;IZ)Lorg/mozilla/javascript/regexp/NativeRegExp;
    .locals 3

    .line 1
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    array-length v0, p2

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    aget-object v0, p2, v1

    .line 10
    .line 11
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 12
    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    instance-of v2, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    check-cast v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    array-length v2, p2

    .line 28
    if-ge p3, v2, :cond_2

    .line 29
    .line 30
    aput-object v0, p2, v1

    .line 31
    .line 32
    aget-object p2, p2, p3

    .line 33
    .line 34
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 p2, 0x0

    .line 40
    :goto_0
    invoke-static {p0, v0, p2, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExpInstantiator;->withLanguageVersionScopeCompiled(ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_3
    :goto_1
    const-string p2, ""

    .line 54
    .line 55
    invoke-static {p0, p2, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExpInstantiator;->withLanguageVersionScopeCompiled(ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method private static do_replace(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    .line 4
    .line 5
    iget p0, p0, Lorg/mozilla/javascript/regexp/GlobData;->dollar:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eq p0, v2, :cond_3

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [I

    .line 13
    .line 14
    move v4, v3

    .line 15
    :cond_0
    invoke-virtual {v0, v1, v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2, v1, p0, v2}, Lorg/mozilla/javascript/regexp/RegExpImpl;->interpretDollar(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;I[I)Lorg/mozilla/javascript/regexp/SubString;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    iget v5, v4, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 25
    .line 26
    if-lez v5, :cond_1

    .line 27
    .line 28
    iget-object v6, v4, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    .line 29
    .line 30
    iget v4, v4, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 31
    .line 32
    add-int/2addr v5, v4

    .line 33
    invoke-virtual {v0, v6, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :cond_1
    aget v4, v2, v3

    .line 37
    .line 38
    add-int v5, p0, v4

    .line 39
    .line 40
    add-int/2addr p0, v4

    .line 41
    move v4, v5

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    add-int/lit8 v4, p0, 0x1

    .line 44
    .line 45
    move v7, v4

    .line 46
    move v4, p0

    .line 47
    move p0, v7

    .line 48
    :goto_0
    const/16 v5, 0x24

    .line 49
    .line 50
    invoke-virtual {v1, v5, p0}, Ljava/lang/String;->indexOf(II)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-gez p0, :cond_0

    .line 55
    .line 56
    move v3, v4

    .line 57
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-le p0, v3, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0, v1, v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void
.end method

.method private static find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILorg/mozilla/javascript/RegExpProxy;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I
    .locals 17

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    move/from16 v10, p4

    .line 6
    .line 7
    const/4 v11, 0x0

    .line 8
    aget v12, p7, v11

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v13

    .line 14
    const/4 v14, -0x1

    .line 15
    const/4 v15, 0x1

    .line 16
    const/16 v0, 0x78

    .line 17
    .line 18
    if-ne v10, v0, :cond_5

    .line 19
    .line 20
    if-nez p6, :cond_5

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ne v1, v15, :cond_5

    .line 27
    .line 28
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/16 v2, 0x20

    .line 33
    .line 34
    if-ne v1, v2, :cond_5

    .line 35
    .line 36
    if-nez v12, :cond_1

    .line 37
    .line 38
    :goto_0
    if-ge v12, v13, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    add-int/lit8 v12, v12, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    aput v12, p7, v11

    .line 54
    .line 55
    :cond_1
    if-ne v12, v13, :cond_2

    .line 56
    .line 57
    return v14

    .line 58
    :cond_2
    :goto_1
    if-ge v12, v13, :cond_3

    .line 59
    .line 60
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    add-int/lit8 v12, v12, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move v0, v12

    .line 74
    :goto_2
    if-ge v0, v13, :cond_4

    .line 75
    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    add-int/lit8 v0, v0, 0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    sub-int/2addr v0, v12

    .line 90
    aput v0, p8, v11

    .line 91
    .line 92
    return v12

    .line 93
    :cond_5
    if-le v12, v13, :cond_6

    .line 94
    .line 95
    return v14

    .line 96
    :cond_6
    if-eqz p6, :cond_7

    .line 97
    .line 98
    move-object/from16 v1, p0

    .line 99
    .line 100
    move-object/from16 v2, p1

    .line 101
    .line 102
    move-object/from16 v0, p5

    .line 103
    .line 104
    move-object/from16 v5, p6

    .line 105
    .line 106
    move-object/from16 v6, p7

    .line 107
    .line 108
    move-object/from16 v7, p8

    .line 109
    .line 110
    move-object/from16 v8, p9

    .line 111
    .line 112
    move-object/from16 v9, p10

    .line 113
    .line 114
    invoke-interface/range {v0 .. v9}, Lorg/mozilla/javascript/RegExpProxy;->find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    return v0

    .line 119
    :cond_7
    move/from16 v16, v11

    .line 120
    .line 121
    move v11, v0

    .line 122
    if-eqz v10, :cond_8

    .line 123
    .line 124
    const/16 v0, 0x82

    .line 125
    .line 126
    if-ge v10, v0, :cond_8

    .line 127
    .line 128
    if-nez v13, :cond_8

    .line 129
    .line 130
    return v14

    .line 131
    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_c

    .line 136
    .line 137
    if-ne v10, v11, :cond_a

    .line 138
    .line 139
    if-ne v12, v13, :cond_9

    .line 140
    .line 141
    aput v15, p8, v16

    .line 142
    .line 143
    return v12

    .line 144
    :cond_9
    add-int/2addr v12, v15

    .line 145
    return v12

    .line 146
    :cond_a
    if-ne v12, v13, :cond_b

    .line 147
    .line 148
    return v14

    .line 149
    :cond_b
    add-int/2addr v12, v15

    .line 150
    return v12

    .line 151
    :cond_c
    aget v0, p7, v16

    .line 152
    .line 153
    if-lt v0, v13, :cond_d

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_d
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eq v0, v14, :cond_e

    .line 161
    .line 162
    return v0

    .line 163
    :cond_e
    :goto_3
    return v13
.end method

.method private static interpretDollar(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;I[I)Lorg/mozilla/javascript/regexp/SubString;
    .locals 7

    .line 1
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x24

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/16 v0, 0x8c

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    if-gt p0, v0, :cond_1

    .line 22
    .line 23
    if-lez p3, :cond_1

    .line 24
    .line 25
    add-int/lit8 v3, p3, -0x1

    .line 26
    .line 27
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/16 v4, 0x5c

    .line 32
    .line 33
    if-ne v3, v4, :cond_1

    .line 34
    .line 35
    return-object v2

    .line 36
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    add-int/lit8 v4, p3, 0x1

    .line 41
    .line 42
    if-lt v4, v3, :cond_2

    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_2
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    const/4 v6, 0x0

    .line 54
    if-eqz v5, :cond_a

    .line 55
    .line 56
    const/16 v1, 0x30

    .line 57
    .line 58
    if-eqz p0, :cond_5

    .line 59
    .line 60
    if-gt p0, v0, :cond_5

    .line 61
    .line 62
    if-ne v4, v1, :cond_3

    .line 63
    .line 64
    return-object v2

    .line 65
    :cond_3
    move p0, p3

    .line 66
    move v0, v6

    .line 67
    :goto_0
    add-int/lit8 p0, p0, 0x1

    .line 68
    .line 69
    if-ge p0, v3, :cond_9

    .line 70
    .line 71
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-static {v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_9

    .line 80
    .line 81
    mul-int/lit8 v2, v0, 0xa

    .line 82
    .line 83
    add-int/lit8 v1, v1, -0x30

    .line 84
    .line 85
    add-int/2addr v1, v2

    .line 86
    if-ge v1, v0, :cond_4

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    move v0, v1

    .line 90
    goto :goto_0

    .line 91
    :cond_5
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    .line 92
    .line 93
    if-nez p0, :cond_6

    .line 94
    .line 95
    move p0, v6

    .line 96
    goto :goto_1

    .line 97
    :cond_6
    array-length p0, p0

    .line 98
    :goto_1
    sub-int/2addr v4, v1

    .line 99
    if-le v4, p0, :cond_7

    .line 100
    .line 101
    return-object v2

    .line 102
    :cond_7
    add-int/lit8 v0, p3, 0x2

    .line 103
    .line 104
    if-ge v0, v3, :cond_8

    .line 105
    .line 106
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_8

    .line 115
    .line 116
    mul-int/lit8 v3, v4, 0xa

    .line 117
    .line 118
    sub-int/2addr p2, v1

    .line 119
    add-int/2addr p2, v3

    .line 120
    if-gt p2, p0, :cond_8

    .line 121
    .line 122
    add-int/lit8 p0, p3, 0x3

    .line 123
    .line 124
    move v0, p2

    .line 125
    goto :goto_2

    .line 126
    :cond_8
    move p0, v0

    .line 127
    move v0, v4

    .line 128
    :goto_2
    if-nez v0, :cond_9

    .line 129
    .line 130
    return-object v2

    .line 131
    :cond_9
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 132
    .line 133
    sub-int/2addr p0, p3

    .line 134
    aput p0, p4, v6

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/regexp/RegExpImpl;->getParenSubString(I)Lorg/mozilla/javascript/regexp/SubString;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0

    .line 141
    :cond_a
    const/4 p2, 0x2

    .line 142
    aput p2, p4, v6

    .line 143
    .line 144
    if-eq v4, v1, :cond_10

    .line 145
    .line 146
    const/16 p2, 0x2b

    .line 147
    .line 148
    if-eq v4, p2, :cond_f

    .line 149
    .line 150
    const/16 p2, 0x60

    .line 151
    .line 152
    if-eq v4, p2, :cond_d

    .line 153
    .line 154
    const/16 p0, 0x26

    .line 155
    .line 156
    if-eq v4, p0, :cond_c

    .line 157
    .line 158
    const/16 p0, 0x27

    .line 159
    .line 160
    if-eq v4, p0, :cond_b

    .line 161
    .line 162
    return-object v2

    .line 163
    :cond_b
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 164
    .line 165
    return-object p0

    .line 166
    :cond_c
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 167
    .line 168
    return-object p0

    .line 169
    :cond_d
    const/16 p2, 0x78

    .line 170
    .line 171
    if-ne p0, p2, :cond_e

    .line 172
    .line 173
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 174
    .line 175
    iput v6, p0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 176
    .line 177
    iget-object p2, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 178
    .line 179
    iget p2, p2, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 180
    .line 181
    iput p2, p0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 182
    .line 183
    :cond_e
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 184
    .line 185
    return-object p0

    .line 186
    :cond_f
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    .line 187
    .line 188
    return-object p0

    .line 189
    :cond_10
    new-instance p0, Lorg/mozilla/javascript/regexp/SubString;

    .line 190
    .line 191
    const-string p1, "$"

    .line 192
    .line 193
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    return-object p0
.end method

.method private static matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/regexp/NativeRegExp;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object/from16 v7, p5

    .line 2
    .line 3
    iget-object v4, v7, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual/range {p6 .. p6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getFlags()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v8, 0x1

    .line 10
    and-int/2addr v0, v8

    .line 11
    const/4 v9, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    move v0, v8

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v9

    .line 17
    :goto_0
    iput-boolean v0, v7, Lorg/mozilla/javascript/regexp/GlobData;->global:Z

    .line 18
    .line 19
    new-array v5, v8, [I

    .line 20
    .line 21
    aput v9, v5, v9

    .line 22
    .line 23
    iget v1, v7, Lorg/mozilla/javascript/regexp/GlobData;->mode:I

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    if-ne v1, v2, :cond_2

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    move-object v1, p0

    .line 30
    move-object/from16 v2, p1

    .line 31
    .line 32
    move-object/from16 v3, p4

    .line 33
    .line 34
    move-object/from16 v0, p6

    .line 35
    .line 36
    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    iget-object p0, v3, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 51
    .line 52
    iget p0, p0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 53
    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_1
    const/4 p0, -0x1

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_2
    move-object/from16 v3, p4

    .line 66
    .line 67
    const/4 v10, 0x2

    .line 68
    if-eqz v0, :cond_a

    .line 69
    .line 70
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Integer;

    .line 71
    .line 72
    move-object/from16 v1, p6

    .line 73
    .line 74
    iput-object v0, v1, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    move v11, v9

    .line 78
    :goto_1
    aget v2, v5, v9

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-gt v2, v6, :cond_9

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    move-object/from16 v2, p1

    .line 88
    .line 89
    move-object v0, v1

    .line 90
    move-object v1, p0

    .line 91
    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    move-object v12, v4

    .line 96
    move-object v13, v5

    .line 97
    if-eqz v6, :cond_8

    .line 98
    .line 99
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 100
    .line 101
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_3

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_3
    iget v0, v7, Lorg/mozilla/javascript/regexp/GlobData;->mode:I

    .line 109
    .line 110
    if-ne v0, v8, :cond_4

    .line 111
    .line 112
    move-object/from16 v2, p1

    .line 113
    .line 114
    invoke-static {v7, p0, v2, v11, v3}, Lorg/mozilla/javascript/regexp/RegExpImpl;->match_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/regexp/RegExpImpl;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    move-object/from16 v2, p1

    .line 119
    .line 120
    if-eq v0, v10, :cond_5

    .line 121
    .line 122
    const/4 v4, 0x3

    .line 123
    if-eq v0, v4, :cond_5

    .line 124
    .line 125
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 126
    .line 127
    .line 128
    :cond_5
    iget-object v0, v3, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 129
    .line 130
    iget v4, v7, Lorg/mozilla/javascript/regexp/GlobData;->leftIndex:I

    .line 131
    .line 132
    iget v5, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 133
    .line 134
    move v14, v5

    .line 135
    sub-int v5, v14, v4

    .line 136
    .line 137
    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 138
    .line 139
    add-int/2addr v0, v14

    .line 140
    iput v0, v7, Lorg/mozilla/javascript/regexp/GlobData;->leftIndex:I

    .line 141
    .line 142
    move-object v1, p0

    .line 143
    move-object v0, v7

    .line 144
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/regexp/RegExpImpl;->replace_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;II)V

    .line 145
    .line 146
    .line 147
    :goto_2
    iget-object v0, v3, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 148
    .line 149
    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 150
    .line 151
    if-nez v0, :cond_7

    .line 152
    .line 153
    aget v0, v13, v9

    .line 154
    .line 155
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-ne v0, v1, :cond_6

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_6
    aget v0, v13, v9

    .line 163
    .line 164
    add-int/2addr v0, v8

    .line 165
    aput v0, v13, v9

    .line 166
    .line 167
    :cond_7
    add-int/lit8 v11, v11, 0x1

    .line 168
    .line 169
    move-object/from16 v7, p5

    .line 170
    .line 171
    move-object/from16 v1, p6

    .line 172
    .line 173
    move-object v0, v6

    .line 174
    move-object v4, v12

    .line 175
    move-object v5, v13

    .line 176
    goto :goto_1

    .line 177
    :cond_8
    :goto_3
    return-object v6

    .line 178
    :cond_9
    return-object v0

    .line 179
    :cond_a
    move-object v12, v4

    .line 180
    move-object v13, v5

    .line 181
    if-ne v1, v10, :cond_b

    .line 182
    .line 183
    move v6, v9

    .line 184
    :goto_4
    move-object v1, p0

    .line 185
    move-object/from16 v2, p1

    .line 186
    .line 187
    move-object/from16 v0, p6

    .line 188
    .line 189
    move-object v4, v12

    .line 190
    move-object v5, v13

    .line 191
    goto :goto_5

    .line 192
    :cond_b
    move v6, v8

    .line 193
    goto :goto_4

    .line 194
    :goto_5
    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    return-object p0
.end method

.method private static match_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/regexp/RegExpImpl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    .line 11
    .line 12
    :cond_0
    iget-object p1, p4, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    .line 19
    .line 20
    invoke-interface {p0, p3, p0, p1}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static replace_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-object v0, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move v2, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    array-length v2, v0

    .line 13
    :goto_0
    add-int/lit8 v3, v2, 0x3

    .line 14
    .line 15
    new-array v3, v3, [Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v4, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 18
    .line 19
    invoke-virtual {v4}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    aput-object v4, v3, v1

    .line 24
    .line 25
    :goto_1
    if-ge v1, v2, :cond_2

    .line 26
    .line 27
    aget-object v4, v0, v1

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    add-int/lit8 v5, v1, 0x1

    .line 32
    .line 33
    invoke-virtual {v4}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    aput-object v4, v3, v5

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    add-int/lit8 v4, v1, 0x1

    .line 41
    .line 42
    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 43
    .line 44
    aput-object v5, v3, v4

    .line 45
    .line 46
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    add-int/lit8 v0, v2, 0x1

    .line 50
    .line 51
    iget-object v1, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 52
    .line 53
    iget v1, v1, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    aput-object v1, v3, v0

    .line 60
    .line 61
    add-int/lit8 v2, v2, 0x2

    .line 62
    .line 63
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    .line 64
    .line 65
    aput-object v0, v3, v2

    .line 66
    .line 67
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eq p3, v0, :cond_3

    .line 72
    .line 73
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 74
    .line 75
    .line 76
    :cond_3
    new-instance v0, Lorg/mozilla/javascript/regexp/RegExpImpl;

    .line 77
    .line 78
    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/RegExpImpl;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-boolean v1, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    .line 82
    .line 83
    iput-boolean v1, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    .line 84
    .line 85
    iget-object v1, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    .line 86
    .line 87
    iput-object v1, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->setRegExpProxy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/RegExpProxy;)V

    .line 90
    .line 91
    .line 92
    :try_start_0
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    .line 97
    .line 98
    invoke-interface {v0, p1, p2, p2, v3}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-static {p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setRegExpProxy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/RegExpProxy;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    goto :goto_4

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    invoke-static {p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setRegExpProxy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/RegExpProxy;)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :cond_4
    iget-object p2, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    iget p2, p0, Lorg/mozilla/javascript/regexp/GlobData;->dollar:I

    .line 126
    .line 127
    const/4 v2, 0x0

    .line 128
    if-ltz p2, :cond_7

    .line 129
    .line 130
    const/4 v3, 0x1

    .line 131
    new-array v3, v3, [I

    .line 132
    .line 133
    :cond_5
    iget-object v4, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {p1, p3, v4, p2, v3}, Lorg/mozilla/javascript/regexp/RegExpImpl;->interpretDollar(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;I[I)Lorg/mozilla/javascript/regexp/SubString;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    if-eqz v4, :cond_6

    .line 140
    .line 141
    iget v4, v4, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 142
    .line 143
    aget v5, v3, v1

    .line 144
    .line 145
    sub-int/2addr v4, v5

    .line 146
    add-int/2addr v4, v0

    .line 147
    add-int/2addr p2, v5

    .line 148
    move v0, v4

    .line 149
    goto :goto_3

    .line 150
    :cond_6
    add-int/lit8 p2, p2, 0x1

    .line 151
    .line 152
    :goto_3
    iget-object v4, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    .line 153
    .line 154
    const/16 v5, 0x24

    .line 155
    .line 156
    invoke-virtual {v4, v5, p2}, Ljava/lang/String;->indexOf(II)I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    if-gez p2, :cond_5

    .line 161
    .line 162
    :cond_7
    move-object p2, v2

    .line 163
    :goto_4
    add-int/2addr v0, p5

    .line 164
    iget-object v1, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 165
    .line 166
    iget v1, v1, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 167
    .line 168
    add-int/2addr v0, v1

    .line 169
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    .line 170
    .line 171
    if-nez v1, :cond_8

    .line 172
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 176
    .line 177
    .line 178
    iput-object v1, p0, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    add-int/2addr v2, v0

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 187
    .line 188
    .line 189
    :goto_5
    iget-object v0, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 190
    .line 191
    iget-object v0, v0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    .line 192
    .line 193
    add-int/2addr p5, p4

    .line 194
    invoke-virtual {v1, v0, p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget-object p4, p0, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    .line 198
    .line 199
    if-eqz p4, :cond_9

    .line 200
    .line 201
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_9
    invoke-static {p0, p1, p3}, Lorg/mozilla/javascript/regexp/RegExpImpl;->do_replace(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;)V

    .line 206
    .line 207
    .line 208
    return-void
.end method


# virtual methods
.method public action(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v3, p4

    .line 6
    .line 7
    move/from16 v7, p5

    .line 8
    .line 9
    new-instance v5, Lorg/mozilla/javascript/regexp/GlobData;

    .line 10
    .line 11
    invoke-direct {v5}, Lorg/mozilla/javascript/regexp/GlobData;-><init>()V

    .line 12
    .line 13
    .line 14
    iput v7, v5, Lorg/mozilla/javascript/regexp/GlobData;->mode:I

    .line 15
    .line 16
    invoke-static/range {p3 .. p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iput-object v2, v5, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    .line 21
    .line 22
    const v2, 0x7fffffff

    .line 23
    .line 24
    .line 25
    const/16 v4, 0xa0

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v6, 0x1

    .line 29
    if-eq v7, v6, :cond_17

    .line 30
    .line 31
    const/4 v9, 0x3

    .line 32
    const/4 v10, 0x2

    .line 33
    if-eq v7, v10, :cond_2

    .line 34
    .line 35
    if-eq v7, v9, :cond_2

    .line 36
    .line 37
    const/4 v9, 0x4

    .line 38
    if-ne v7, v9, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-ge v7, v4, :cond_0

    .line 45
    .line 46
    move v2, v6

    .line 47
    :cond_0
    invoke-static {v0, v1, v3, v2, v8}, Lorg/mozilla/javascript/regexp/RegExpImpl;->createRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;IZ)Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    move-object/from16 v4, p0

    .line 52
    .line 53
    move-object/from16 v2, p3

    .line 54
    .line 55
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/RegExpImpl;->matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/regexp/NativeRegExp;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    throw v0

    .line 65
    :cond_2
    array-length v2, v3

    .line 66
    if-lez v2, :cond_3

    .line 67
    .line 68
    aget-object v2, v3, v8

    .line 69
    .line 70
    instance-of v2, v2, Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    move v2, v6

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    move v2, v8

    .line 77
    :goto_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    if-ge v11, v4, :cond_5

    .line 82
    .line 83
    array-length v4, v3

    .line 84
    if-le v4, v10, :cond_4

    .line 85
    .line 86
    move v4, v6

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    move v4, v8

    .line 89
    :goto_1
    or-int/2addr v2, v4

    .line 90
    :cond_5
    const/4 v11, 0x0

    .line 91
    if-eqz v2, :cond_8

    .line 92
    .line 93
    invoke-static {v0, v1, v3, v10, v6}, Lorg/mozilla/javascript/regexp/RegExpImpl;->createRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;IZ)Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    if-ne v9, v7, :cond_7

    .line 98
    .line 99
    invoke-virtual {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getFlags()I

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    and-int/2addr v12, v6

    .line 104
    if-eqz v12, :cond_6

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    const-string v0, "replaceAll must be called with a global RegExp"

    .line 108
    .line 109
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    throw v0

    .line 114
    :cond_7
    :goto_2
    move-object v12, v11

    .line 115
    goto :goto_4

    .line 116
    :cond_8
    array-length v4, v3

    .line 117
    if-ge v4, v6, :cond_9

    .line 118
    .line 119
    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_9
    aget-object v4, v3, v8

    .line 123
    .line 124
    :goto_3
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    move-object v12, v4

    .line 129
    move-object v4, v11

    .line 130
    :goto_4
    array-length v13, v3

    .line 131
    if-ge v13, v10, :cond_a

    .line 132
    .line 133
    sget-object v6, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_a
    aget-object v6, v3, v6

    .line 137
    .line 138
    :goto_5
    instance-of v10, v6, Lorg/mozilla/javascript/Function;

    .line 139
    .line 140
    if-eqz v10, :cond_c

    .line 141
    .line 142
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    const/16 v13, 0xc8

    .line 147
    .line 148
    if-lt v10, v13, :cond_b

    .line 149
    .line 150
    instance-of v10, v6, Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 151
    .line 152
    if-nez v10, :cond_c

    .line 153
    .line 154
    :cond_b
    check-cast v6, Lorg/mozilla/javascript/Function;

    .line 155
    .line 156
    move-object v10, v11

    .line 157
    goto :goto_6

    .line 158
    :cond_c
    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    move-object v10, v6

    .line 163
    move-object v6, v11

    .line 164
    :goto_6
    iput-object v6, v5, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    .line 165
    .line 166
    iput-object v10, v5, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    .line 167
    .line 168
    const/4 v13, -0x1

    .line 169
    if-nez v10, :cond_d

    .line 170
    .line 171
    move v6, v13

    .line 172
    goto :goto_7

    .line 173
    :cond_d
    const/16 v6, 0x24

    .line 174
    .line 175
    invoke-virtual {v10, v6}, Ljava/lang/String;->indexOf(I)I

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    :goto_7
    iput v6, v5, Lorg/mozilla/javascript/regexp/GlobData;->dollar:I

    .line 180
    .line 181
    iput-object v11, v5, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    .line 182
    .line 183
    iput v8, v5, Lorg/mozilla/javascript/regexp/GlobData;->leftIndex:I

    .line 184
    .line 185
    if-eqz v2, :cond_11

    .line 186
    .line 187
    move-object/from16 v2, p3

    .line 188
    .line 189
    move-object v6, v4

    .line 190
    move-object/from16 v4, p0

    .line 191
    .line 192
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/RegExpImpl;->matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/regexp/NativeRegExp;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    iget-object v0, v5, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    .line 197
    .line 198
    if-nez v0, :cond_10

    .line 199
    .line 200
    iget-boolean v0, v5, Lorg/mozilla/javascript/regexp/GlobData;->global:Z

    .line 201
    .line 202
    if-nez v0, :cond_f

    .line 203
    .line 204
    if-eqz v2, :cond_f

    .line 205
    .line 206
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 207
    .line 208
    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-nez v0, :cond_e

    .line 213
    .line 214
    goto :goto_8

    .line 215
    :cond_e
    iget-object v0, v4, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 216
    .line 217
    iget v4, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 218
    .line 219
    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 220
    .line 221
    move-object v1, v5

    .line 222
    move v5, v0

    .line 223
    move-object v0, v1

    .line 224
    move-object/from16 v3, p0

    .line 225
    .line 226
    move-object/from16 v1, p1

    .line 227
    .line 228
    move-object/from16 v2, p2

    .line 229
    .line 230
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/regexp/RegExpImpl;->replace_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;II)V

    .line 231
    .line 232
    .line 233
    move-object v5, v0

    .line 234
    move-object v4, v3

    .line 235
    goto :goto_9

    .line 236
    :cond_f
    :goto_8
    iget-object v0, v5, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    .line 237
    .line 238
    return-object v0

    .line 239
    :cond_10
    :goto_9
    move-object v3, v4

    .line 240
    goto/16 :goto_d

    .line 241
    .line 242
    :cond_11
    move-object/from16 v4, p0

    .line 243
    .line 244
    iget-object v10, v5, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 247
    .line 248
    .line 249
    move-result v14

    .line 250
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 251
    .line 252
    .line 253
    move-result v15

    .line 254
    move v0, v8

    .line 255
    move v1, v13

    .line 256
    :goto_a
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_14

    .line 261
    .line 262
    if-ne v1, v13, :cond_12

    .line 263
    .line 264
    move v6, v8

    .line 265
    goto :goto_c

    .line 266
    :cond_12
    if-ge v0, v14, :cond_13

    .line 267
    .line 268
    add-int/lit8 v1, v0, 0x1

    .line 269
    .line 270
    goto :goto_b

    .line 271
    :cond_13
    move v1, v13

    .line 272
    :goto_b
    move v6, v1

    .line 273
    goto :goto_c

    .line 274
    :cond_14
    invoke-virtual {v10, v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    goto :goto_b

    .line 279
    :goto_c
    if-ne v6, v13, :cond_15

    .line 280
    .line 281
    iget-object v0, v5, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    .line 282
    .line 283
    if-nez v0, :cond_10

    .line 284
    .line 285
    return-object v10

    .line 286
    :cond_15
    iput-object v11, v4, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    .line 287
    .line 288
    iput-object v11, v4, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    .line 289
    .line 290
    new-instance v1, Lorg/mozilla/javascript/regexp/SubString;

    .line 291
    .line 292
    invoke-direct {v1, v10, v8, v6}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;II)V

    .line 293
    .line 294
    .line 295
    iput-object v1, v4, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 296
    .line 297
    new-instance v1, Lorg/mozilla/javascript/regexp/SubString;

    .line 298
    .line 299
    invoke-direct {v1, v10, v6, v15}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;II)V

    .line 300
    .line 301
    .line 302
    iput-object v1, v4, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 303
    .line 304
    new-instance v1, Lorg/mozilla/javascript/regexp/SubString;

    .line 305
    .line 306
    add-int v2, v6, v15

    .line 307
    .line 308
    sub-int v3, v14, v6

    .line 309
    .line 310
    sub-int/2addr v3, v15

    .line 311
    invoke-direct {v1, v10, v2, v3}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;II)V

    .line 312
    .line 313
    .line 314
    iput-object v1, v4, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 315
    .line 316
    move v4, v0

    .line 317
    move-object v0, v5

    .line 318
    sub-int v5, v6, v4

    .line 319
    .line 320
    move-object/from16 v3, p0

    .line 321
    .line 322
    move-object/from16 v1, p1

    .line 323
    .line 324
    move/from16 v16, v2

    .line 325
    .line 326
    move-object/from16 v2, p2

    .line 327
    .line 328
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/regexp/RegExpImpl;->replace_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;II)V

    .line 329
    .line 330
    .line 331
    move-object v5, v0

    .line 332
    move-object v0, v1

    .line 333
    move-object v1, v2

    .line 334
    if-eq v7, v9, :cond_16

    .line 335
    .line 336
    :goto_d
    iget-object v0, v3, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 337
    .line 338
    iget-object v1, v5, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    .line 339
    .line 340
    iget-object v2, v0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    .line 341
    .line 342
    iget v3, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 343
    .line 344
    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 345
    .line 346
    add-int/2addr v0, v3

    .line 347
    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    iget-object v0, v5, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    return-object v0

    .line 357
    :cond_16
    move-object v4, v3

    .line 358
    move v1, v6

    .line 359
    move/from16 v0, v16

    .line 360
    .line 361
    goto :goto_a

    .line 362
    :cond_17
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 363
    .line 364
    .line 365
    move-result v7

    .line 366
    if-ge v7, v4, :cond_18

    .line 367
    .line 368
    move v2, v6

    .line 369
    :cond_18
    invoke-static {v0, v1, v3, v2, v8}, Lorg/mozilla/javascript/regexp/RegExpImpl;->createRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;IZ)Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    move-object/from16 v4, p0

    .line 374
    .line 375
    move-object/from16 v2, p3

    .line 376
    .line 377
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/RegExpImpl;->matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/regexp/NativeRegExp;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    iget-object v1, v5, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    .line 382
    .line 383
    if-nez v1, :cond_19

    .line 384
    .line 385
    return-object v0

    .line 386
    :cond_19
    return-object v1
.end method

.method public compileRegExp(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-static {p1, p2, p3, p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I
    .locals 12

    const/4 v0, 0x0

    .line 164
    aget v1, p6, v0

    .line 165
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 166
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v3

    .line 167
    move-object/from16 v4, p5

    check-cast v4, Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 168
    :goto_0
    aget v11, p6, v0

    .line 169
    aput v1, p6, v0

    const/4 v10, 0x0

    move-object v7, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p3

    move-object/from16 v9, p6

    .line 170
    invoke-virtual/range {v4 .. v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object v1

    .line 171
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_0

    .line 172
    aput v11, p6, v0

    .line 173
    aput v5, p7, v0

    .line 174
    aput-boolean v0, p8, v0

    return v2

    .line 175
    :cond_0
    aget v1, p6, v0

    .line 176
    aput v11, p6, v0

    .line 177
    aput-boolean v5, p8, v0

    .line 178
    iget-object v6, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 179
    iget v6, v6, Lorg/mozilla/javascript/regexp/SubString;->length:I

    aput v6, p7, v0

    if-nez v6, :cond_3

    .line 180
    aget v8, p6, v0

    if-ne v1, v8, :cond_3

    if-ne v1, v2, :cond_2

    const/16 p1, 0x78

    if-ne v3, p1, :cond_1

    .line 181
    aput v5, p7, v0

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sub-int/2addr v1, v6

    .line 182
    :goto_1
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    if-nez p1, :cond_4

    move p1, v0

    goto :goto_2

    :cond_4
    array-length p1, p1

    .line 183
    :goto_2
    new-array p2, p1, [Ljava/lang/String;

    aput-object p2, p9, v0

    move p2, v0

    :goto_3
    if-ge p2, p1, :cond_5

    .line 184
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/regexp/RegExpImpl;->getParenSubString(I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object p3

    .line 185
    aget-object v2, p9, v0

    invoke-virtual {p3}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    return v1
.end method

.method public getParenSubString(I)Lorg/mozilla/javascript/regexp/SubString;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    array-length v0, p0

    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    .line 8
    aget-object p0, p0, p1

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance p0, Lorg/mozilla/javascript/regexp/SubString;

    .line 14
    .line 15
    invoke-direct {p0}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public isRegExp(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 2
    .line 3
    return p0
.end method

.method public js_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    const/4 v11, 0x0

    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    invoke-virtual {v1, v2, v11}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    .line 9
    .line 10
    .line 11
    move-result-object v12

    .line 12
    array-length v3, v0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-le v3, v4, :cond_0

    .line 15
    .line 16
    aget-object v3, v0, v4

    .line 17
    .line 18
    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 19
    .line 20
    if-eq v3, v5, :cond_0

    .line 21
    .line 22
    move v13, v4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v13, v11

    .line 25
    :goto_0
    const-wide/16 v5, 0x0

    .line 26
    .line 27
    if-eqz v13, :cond_2

    .line 28
    .line 29
    aget-object v3, v0, v4

    .line 30
    .line 31
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(Ljava/lang/Object;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    cmp-long v3, v7, v5

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    goto/16 :goto_8

    .line 40
    .line 41
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    int-to-long v5, v3

    .line 46
    cmp-long v3, v7, v5

    .line 47
    .line 48
    if-lez v3, :cond_3

    .line 49
    .line 50
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    int-to-long v5, v3

    .line 55
    const-wide/16 v7, 0x1

    .line 56
    .line 57
    add-long/2addr v5, v7

    .line 58
    :cond_2
    move-wide v14, v5

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    move-wide v14, v7

    .line 61
    :goto_1
    array-length v3, v0

    .line 62
    if-lt v3, v4, :cond_4

    .line 63
    .line 64
    aget-object v3, v0, v11

    .line 65
    .line 66
    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 67
    .line 68
    if-ne v3, v5, :cond_5

    .line 69
    .line 70
    :cond_4
    move-object/from16 v2, p3

    .line 71
    .line 72
    move v0, v11

    .line 73
    goto/16 :goto_9

    .line 74
    .line 75
    :cond_5
    new-array v8, v4, [I

    .line 76
    .line 77
    instance-of v3, v3, Lorg/mozilla/javascript/Scriptable;

    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    if-eqz v3, :cond_7

    .line 81
    .line 82
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-eqz v3, :cond_6

    .line 87
    .line 88
    aget-object v6, v0, v11

    .line 89
    .line 90
    check-cast v6, Lorg/mozilla/javascript/Scriptable;

    .line 91
    .line 92
    invoke-interface {v3, v6}, Lorg/mozilla/javascript/RegExpProxy;->isRegExp(Lorg/mozilla/javascript/Scriptable;)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_6

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_6
    move-object v6, v5

    .line 100
    goto :goto_2

    .line 101
    :cond_7
    move-object v3, v5

    .line 102
    move-object v6, v3

    .line 103
    :goto_2
    if-nez v6, :cond_8

    .line 104
    .line 105
    aget-object v0, v0, v11

    .line 106
    .line 107
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    aput v7, v8, v11

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_8
    move-object v0, v5

    .line 119
    :goto_3
    new-array v7, v4, [I

    .line 120
    .line 121
    aput v11, v7, v11

    .line 122
    .line 123
    new-array v9, v4, [Z

    .line 124
    .line 125
    aput-boolean v11, v9, v11

    .line 126
    .line 127
    new-array v10, v4, [[Ljava/lang/String;

    .line 128
    .line 129
    aput-object v5, v10, v11

    .line 130
    .line 131
    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    move-object v5, v3

    .line 136
    move/from16 p0, v11

    .line 137
    .line 138
    move/from16 v16, v13

    .line 139
    .line 140
    move-object v3, v0

    .line 141
    move-object v0, v1

    .line 142
    move-object v1, v2

    .line 143
    move-object/from16 v2, p3

    .line 144
    .line 145
    :goto_4
    invoke-static/range {v0 .. v10}, Lorg/mozilla/javascript/regexp/RegExpImpl;->find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILorg/mozilla/javascript/RegExpProxy;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v13

    .line 149
    if-ltz v13, :cond_10

    .line 150
    .line 151
    if-eqz v16, :cond_9

    .line 152
    .line 153
    int-to-long v0, v11

    .line 154
    cmp-long v0, v0, v14

    .line 155
    .line 156
    if-gez v0, :cond_10

    .line 157
    .line 158
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-le v13, v0, :cond_a

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-nez v0, :cond_b

    .line 170
    .line 171
    move-object v0, v2

    .line 172
    goto :goto_5

    .line 173
    :cond_b
    aget v0, v7, p0

    .line 174
    .line 175
    invoke-virtual {v2, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    :goto_5
    invoke-interface {v12, v11, v12, v0}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    add-int/lit8 v11, v11, 0x1

    .line 183
    .line 184
    if-eqz v6, :cond_e

    .line 185
    .line 186
    aget-boolean v0, v9, p0

    .line 187
    .line 188
    if-eqz v0, :cond_e

    .line 189
    .line 190
    aget-object v0, v10, p0

    .line 191
    .line 192
    array-length v0, v0

    .line 193
    move/from16 v1, p0

    .line 194
    .line 195
    :goto_6
    if-ge v1, v0, :cond_d

    .line 196
    .line 197
    move/from16 p4, v0

    .line 198
    .line 199
    move/from16 v17, v1

    .line 200
    .line 201
    if-eqz v16, :cond_c

    .line 202
    .line 203
    int-to-long v0, v11

    .line 204
    cmp-long v0, v0, v14

    .line 205
    .line 206
    if-ltz v0, :cond_c

    .line 207
    .line 208
    goto :goto_7

    .line 209
    :cond_c
    aget-object v0, v10, p0

    .line 210
    .line 211
    aget-object v0, v0, v17

    .line 212
    .line 213
    invoke-interface {v12, v11, v12, v0}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    add-int/lit8 v11, v11, 0x1

    .line 217
    .line 218
    add-int/lit8 v1, v17, 0x1

    .line 219
    .line 220
    move/from16 v0, p4

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_d
    :goto_7
    aput-boolean p0, v9, p0

    .line 224
    .line 225
    :cond_e
    aget v0, v8, p0

    .line 226
    .line 227
    add-int/2addr v13, v0

    .line 228
    aput v13, v7, p0

    .line 229
    .line 230
    const/16 v0, 0x82

    .line 231
    .line 232
    if-ge v4, v0, :cond_f

    .line 233
    .line 234
    if-eqz v4, :cond_f

    .line 235
    .line 236
    if-nez v16, :cond_f

    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-ne v13, v0, :cond_f

    .line 243
    .line 244
    goto :goto_8

    .line 245
    :cond_f
    move-object/from16 v0, p1

    .line 246
    .line 247
    move-object/from16 v1, p2

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_10
    :goto_8
    return-object v12

    .line 251
    :goto_9
    invoke-interface {v12, v0, v12, v2}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    return-object v12
.end method

.method public register(Lorg/mozilla/javascript/ScriptableObject;Z)V
    .locals 6

    .line 1
    invoke-static {p1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;->init(Lorg/mozilla/javascript/ScriptableObject;Z)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/mozilla/javascript/LazilyLoadedCtor;

    .line 5
    .line 6
    const-string v3, "org.mozilla.javascript.regexp.NativeRegExp"

    .line 7
    .line 8
    const/4 v5, 0x1

    .line 9
    const-string v2, "RegExp"

    .line 10
    .line 11
    move-object v1, p1

    .line 12
    move v4, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LazilyLoadedCtor;-><init>(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public wrapRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    check-cast p3, Lorg/mozilla/javascript/regexp/RECompiled;

    .line 6
    .line 7
    invoke-static {p0, p2, p3}, Lorg/mozilla/javascript/regexp/NativeRegExpInstantiator;->withLanguageVersionScopeCompiled(ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

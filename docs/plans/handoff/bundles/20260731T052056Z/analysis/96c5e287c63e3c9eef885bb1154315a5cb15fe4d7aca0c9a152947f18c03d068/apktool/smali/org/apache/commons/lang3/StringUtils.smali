.class public abstract Lorg/apache/commons/lang3/StringUtils;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final STRIP_ACCENTS_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/apache/commons/lang3/StringUtils;->STRIP_ACCENTS_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public static varargs equalsAny(Ljava/lang/String;[Ljava/lang/CharSequence;)Z
    .locals 9

    .line 1
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_4

    .line 9
    :cond_0
    array-length v0, p1

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_9

    .line 12
    .line 13
    aget-object v3, p1, v2

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    if-ne p0, v3, :cond_2

    .line 17
    .line 18
    :cond_1
    move v3, v4

    .line 19
    goto :goto_3

    .line 20
    :cond_2
    if-eqz p0, :cond_4

    .line 21
    .line 22
    if-nez v3, :cond_3

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eq v5, v6, :cond_5

    .line 34
    .line 35
    :cond_4
    :goto_1
    move v3, v1

    .line 36
    goto :goto_3

    .line 37
    :cond_5
    instance-of v5, v3, Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v5, :cond_6

    .line 40
    .line 41
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    goto :goto_3

    .line 46
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    move v6, v1

    .line 51
    :goto_2
    if-ge v6, v5, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    invoke-interface {v3, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eq v7, v8, :cond_7

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_3
    if-eqz v3, :cond_8

    .line 68
    .line 69
    return v4

    .line 70
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_9
    :goto_4
    return v1
.end method

.method public static stripAccents(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    if-eqz p0, :cond_11

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    sget-object v1, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    .line 14
    .line 15
    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ge p0, v1, :cond_10

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/16 v2, 0x110

    .line 34
    .line 35
    if-eq v1, v2, :cond_f

    .line 36
    .line 37
    const/16 v2, 0x111

    .line 38
    .line 39
    if-eq v1, v2, :cond_e

    .line 40
    .line 41
    const/16 v2, 0x141

    .line 42
    .line 43
    if-eq v1, v2, :cond_d

    .line 44
    .line 45
    const/16 v2, 0x142

    .line 46
    .line 47
    if-eq v1, v2, :cond_c

    .line 48
    .line 49
    const/16 v2, 0x166

    .line 50
    .line 51
    if-eq v1, v2, :cond_b

    .line 52
    .line 53
    const/16 v2, 0x167

    .line 54
    .line 55
    if-eq v1, v2, :cond_a

    .line 56
    .line 57
    const/16 v2, 0x197

    .line 58
    .line 59
    const/16 v3, 0x49

    .line 60
    .line 61
    if-eq v1, v2, :cond_9

    .line 62
    .line 63
    const/16 v2, 0x244

    .line 64
    .line 65
    const/16 v4, 0x55

    .line 66
    .line 67
    if-eq v1, v2, :cond_8

    .line 68
    .line 69
    const/16 v2, 0x268

    .line 70
    .line 71
    const/16 v5, 0x69

    .line 72
    .line 73
    if-eq v1, v2, :cond_7

    .line 74
    .line 75
    const/16 v2, 0x289

    .line 76
    .line 77
    const/16 v6, 0x75

    .line 78
    .line 79
    if-eq v1, v2, :cond_6

    .line 80
    .line 81
    const/16 v2, 0x1d7b

    .line 82
    .line 83
    if-eq v1, v2, :cond_5

    .line 84
    .line 85
    const/16 v2, 0x1d7e

    .line 86
    .line 87
    if-eq v1, v2, :cond_4

    .line 88
    .line 89
    const/16 v2, 0x1da4

    .line 90
    .line 91
    if-eq v1, v2, :cond_3

    .line 92
    .line 93
    const/16 v2, 0x1da7

    .line 94
    .line 95
    if-eq v1, v2, :cond_2

    .line 96
    .line 97
    const/16 v2, 0x1db6

    .line 98
    .line 99
    if-eq v1, v2, :cond_1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {v0, p0, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {v0, p0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    invoke-virtual {v0, p0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    invoke-virtual {v0, p0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    invoke-virtual {v0, p0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_6
    invoke-virtual {v0, p0, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_7
    invoke-virtual {v0, p0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_8
    invoke-virtual {v0, p0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_9
    invoke-virtual {v0, p0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_a
    const/16 v1, 0x74

    .line 139
    .line 140
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_b
    const/16 v1, 0x54

    .line 145
    .line 146
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_c
    const/16 v1, 0x6c

    .line 151
    .line 152
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_d
    const/16 v1, 0x4c

    .line 157
    .line 158
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_e
    const/16 v1, 0x64

    .line 163
    .line 164
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_f
    const/16 v1, 0x44

    .line 169
    .line 170
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 171
    .line 172
    .line 173
    :goto_1
    add-int/lit8 p0, p0, 0x1

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_10
    sget-object p0, Lorg/apache/commons/lang3/StringUtils;->STRIP_ACCENTS_PATTERN:Ljava/util/regex/Pattern;

    .line 178
    .line 179
    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    const-string v0, ""

    .line 184
    .line 185
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    :cond_11
    :goto_2
    return-object p0
.end method

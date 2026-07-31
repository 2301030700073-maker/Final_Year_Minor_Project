.class public abstract Lcom/fsck/k9/helper/Utility;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final IMG_PATTERN:Ljava/util/regex/Pattern;

.field public static final MESSAGE_ID:Ljava/util/regex/Pattern;

.field public static final RESPONSE_PATTERN:Ljava/util/regex/Pattern;

.field public static final TAG_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "((Re|Fw|Fwd|Aw|R\\u00E9f\\.)(\\[\\d+\\])?[\\u00A0 ]?: *)+"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/fsck/k9/helper/Utility;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    const-string v0, "\\[[-_a-z0-9]+\\] "

    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/fsck/k9/helper/Utility;->TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 17
    .line 18
    const-string v0, "(?is:<img[^>]+src\\s*=\\s*[\'\"]?([a-z]+)\\:)"

    .line 19
    .line 20
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/fsck/k9/helper/Utility;->IMG_PATTERN:Ljava/util/regex/Pattern;

    .line 25
    .line 26
    const-string v0, "<(?:[a-zA-Z0-9!#$%&\'*+\\-/=?^_`{|}~]+(?:\\.[a-zA-Z0-9!#$%&\'*+\\-/=?^_`{|}~]+)*|\"(?:[^\\\\\"]|\\\\.)*\")@(?:[a-zA-Z0-9!#$%&\'*+\\-/=?^_`{|}~]+(?:\\.[a-zA-Z0-9!#$%&\'*+\\-/=?^_`{|}~]+)*|\\[(?:[^\\\\\\]]|\\\\.)*\\])>"

    .line 27
    .line 28
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/fsck/k9/helper/Utility;->MESSAGE_ID:Ljava/util/regex/Pattern;

    .line 33
    .line 34
    return-void
.end method

.method public static closeQuietly(Landroid/database/Cursor;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static stripSubject(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v0, Lcom/fsck/k9/helper/Utility;->TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    move v5, v3

    .line 31
    :goto_0
    move v6, v5

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move v2, v1

    .line 34
    move v6, v2

    .line 35
    move v5, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v2, v1

    .line 38
    move v5, v2

    .line 39
    goto :goto_0

    .line 40
    :goto_1
    sget-object v7, Lcom/fsck/k9/helper/Utility;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 41
    .line 42
    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    sub-int/2addr v8, v3

    .line 51
    if-ge v2, v8, :cond_6

    .line 52
    .line 53
    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->find(I)Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-eqz v8, :cond_6

    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-ne v8, v2, :cond_6

    .line 64
    .line 65
    if-eqz v5, :cond_3

    .line 66
    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    invoke-virtual {p0, v8, v4, v1, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-eqz v8, :cond_6

    .line 82
    .line 83
    :cond_3
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v5, :cond_2

    .line 88
    .line 89
    if-nez v4, :cond_4

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-ne v6, v2, :cond_5

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    :goto_3
    add-int/2addr v2, v6

    .line 106
    move v6, v3

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    sub-int/2addr v6, v3

    .line 113
    if-ge v2, v6, :cond_5

    .line 114
    .line 115
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-eqz v6, :cond_5

    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    goto :goto_3

    .line 126
    :cond_5
    move v6, v1

    .line 127
    goto :goto_2

    .line 128
    :cond_6
    if-eqz v6, :cond_7

    .line 129
    .line 130
    if-eqz v4, :cond_7

    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    sub-int/2addr v2, v0

    .line 137
    :cond_7
    const/4 v0, -0x1

    .line 138
    if-le v2, v0, :cond_8

    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    sub-int/2addr v0, v3

    .line 145
    if-ge v2, v0, :cond_8

    .line 146
    .line 147
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    return-object p0

    .line 156
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    return-object p0
.end method

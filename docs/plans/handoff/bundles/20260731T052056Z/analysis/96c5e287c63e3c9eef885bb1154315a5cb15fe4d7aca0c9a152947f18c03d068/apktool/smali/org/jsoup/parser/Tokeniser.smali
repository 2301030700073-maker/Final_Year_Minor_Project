.class public final Lorg/jsoup/parser/Tokeniser;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final notCharRefCharsSorted:[C

.field public static final win1252Extensions:[I


# instance fields
.field public final charPending:Lorg/jsoup/parser/Token$Character;

.field public charStartPos:I

.field public final codepointHolder:[I

.field public final commentPending:Lorg/jsoup/parser/Token$Comment;

.field public final dataBuffer:Lokhttp3/FormBody$Builder;

.field public final doctypePending:Lorg/jsoup/parser/Token$Doctype;

.field public emitPending:Lorg/jsoup/parser/Token;

.field public final endPending:Lorg/jsoup/parser/Token$EndTag;

.field public final errors:Lorg/jsoup/parser/ParseErrorList;

.field public isEmitPending:Z

.field public lastStartCloseSeq:Ljava/lang/String;

.field public lastStartTag:Ljava/lang/String;

.field public markupStartPos:I

.field public final multipointHolder:[I

.field public final reader:Lorg/jsoup/parser/CharacterReader;

.field public final startPending:Lorg/jsoup/parser/Token$StartTag;

.field public state:Lorg/jsoup/parser/TokeniserState;

.field public final syntax:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

.field public tagPending:Lorg/jsoup/parser/Token$Tag;

.field public final xmlDeclPending:Lorg/jsoup/parser/Token$XmlDecl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/jsoup/parser/Tokeniser;->notCharRefCharsSorted:[C

    .line 8
    .line 9
    const/16 v1, 0x20

    .line 10
    .line 11
    new-array v1, v1, [I

    .line 12
    .line 13
    fill-array-data v1, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v1, Lorg/jsoup/parser/Tokeniser;->win1252Extensions:[I

    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    nop

    .line 35
    :array_1
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method public constructor <init>(Lorg/jsoup/parser/HtmlTreeBuilder;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->state:Lorg/jsoup/parser/TokeniserState;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->emitPending:Lorg/jsoup/parser/Token;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->isEmitPending:Z

    .line 13
    .line 14
    new-instance v1, Lokhttp3/FormBody$Builder;

    .line 15
    .line 16
    const/16 v2, 0x19

    .line 17
    .line 18
    invoke-direct {v1, v2, v0}, Lokhttp3/FormBody$Builder;-><init>(IZ)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Lokhttp3/FormBody$Builder;

    .line 22
    .line 23
    new-instance v1, Lorg/jsoup/parser/Token$Character;

    .line 24
    .line 25
    invoke-direct {v1}, Lorg/jsoup/parser/Token$Character;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->charPending:Lorg/jsoup/parser/Token$Character;

    .line 29
    .line 30
    new-instance v1, Lorg/jsoup/parser/Token$Doctype;

    .line 31
    .line 32
    invoke-direct {v1}, Lorg/jsoup/parser/Token$Doctype;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    .line 36
    .line 37
    new-instance v1, Lorg/jsoup/parser/Token$Comment;

    .line 38
    .line 39
    invoke-direct {v1}, Lorg/jsoup/parser/Token$Comment;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->commentPending:Lorg/jsoup/parser/Token$Comment;

    .line 43
    .line 44
    iput v0, p0, Lorg/jsoup/parser/Tokeniser;->charStartPos:I

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    new-array v1, v0, [I

    .line 48
    .line 49
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->codepointHolder:[I

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    new-array v1, v1, [I

    .line 53
    .line 54
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->multipointHolder:[I

    .line 55
    .line 56
    sget-object v1, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 57
    .line 58
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->syntax:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 59
    .line 60
    new-instance v1, Lorg/jsoup/parser/Token$StartTag;

    .line 61
    .line 62
    invoke-direct {v1, p1}, Lorg/jsoup/parser/Token$StartTag;-><init>(Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->startPending:Lorg/jsoup/parser/Token$StartTag;

    .line 66
    .line 67
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 68
    .line 69
    new-instance v1, Lorg/jsoup/parser/Token$EndTag;

    .line 70
    .line 71
    invoke-direct {v1, p1}, Lorg/jsoup/parser/Token$EndTag;-><init>(Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->endPending:Lorg/jsoup/parser/Token$EndTag;

    .line 75
    .line 76
    new-instance v1, Lorg/jsoup/parser/Token$XmlDecl;

    .line 77
    .line 78
    sget-object v2, Lorg/jsoup/parser/Token$TokenType;->XmlDecl:Lorg/jsoup/parser/Token$TokenType;

    .line 79
    .line 80
    invoke-direct {v1, v2, p1}, Lorg/jsoup/parser/Token$Tag;-><init>(Lorg/jsoup/parser/Token$TokenType;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 81
    .line 82
    .line 83
    iput-boolean v0, v1, Lorg/jsoup/parser/Token$XmlDecl;->isDeclaration:Z

    .line 84
    .line 85
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->xmlDeclPending:Lorg/jsoup/parser/Token$XmlDecl;

    .line 86
    .line 87
    iget-object v0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 88
    .line 89
    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 90
    .line 91
    iget-object p1, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->parser:Lorg/jsoup/parser/Parser;

    .line 92
    .line 93
    iget-object p1, p1, Lorg/jsoup/parser/Parser;->errors:Lorg/jsoup/parser/ParseErrorList;

    .line 94
    .line 95
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->errors:Lorg/jsoup/parser/ParseErrorList;

    .line 96
    .line 97
    return-void
.end method


# virtual methods
.method public final advanceTransition(Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final varargs characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Lorg/jsoup/parser/ParseErrorList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lorg/jsoup/parser/ParseError;

    .line 10
    .line 11
    const-string v2, "Invalid character reference: "

    .line 12
    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 22
    .line 23
    invoke-direct {v1, p0, p1}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final consumeCharacterReference(Ljava/lang/Character;Z)[I
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

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
    goto/16 :goto_a

    .line 11
    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->current()C

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ne p1, v1, :cond_1

    .line 23
    .line 24
    goto/16 :goto_a

    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    iget-object p1, v0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 36
    .line 37
    iget v1, v0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 38
    .line 39
    aget-char p1, p1, v1

    .line 40
    .line 41
    sget-object v1, Lorg/jsoup/parser/Tokeniser;->notCharRefCharsSorted:[C

    .line 42
    .line 43
    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-ltz p1, :cond_2

    .line 48
    .line 49
    goto/16 :goto_a

    .line 50
    .line 51
    :cond_2
    iget p1, v0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 52
    .line 53
    iget v1, v0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 54
    .line 55
    sub-int/2addr p1, v1

    .line 56
    const/16 v1, 0x400

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    if-ge p1, v1, :cond_3

    .line 60
    .line 61
    iput v3, v0, Lorg/jsoup/parser/CharacterReader;->fillPoint:I

    .line 62
    .line 63
    :cond_3
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 64
    .line 65
    .line 66
    iget p1, v0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 67
    .line 68
    iput p1, v0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 69
    .line 70
    const-string p1, "#"

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const-string v1, ";"

    .line 77
    .line 78
    const-string v4, ""

    .line 79
    .line 80
    const/4 v5, 0x1

    .line 81
    const/4 v6, -0x1

    .line 82
    iget-object v7, p0, Lorg/jsoup/parser/Tokeniser;->codepointHolder:[I

    .line 83
    .line 84
    if-eqz p1, :cond_e

    .line 85
    .line 86
    const-string p1, "X"

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/CharacterReader;->matchConsumeIgnoreCase(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 95
    .line 96
    .line 97
    iget p2, v0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 98
    .line 99
    iget v8, v0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 100
    .line 101
    iget-object v9, v0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 102
    .line 103
    move v10, p2

    .line 104
    :goto_0
    if-ge v10, v8, :cond_4

    .line 105
    .line 106
    aget-char v11, v9, v10

    .line 107
    .line 108
    invoke-static {v11}, Lorg/jsoup/internal/StringUtil;->isHexDigit(C)Z

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    if-eqz v11, :cond_4

    .line 113
    .line 114
    add-int/lit8 v10, v10, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    iput v10, v0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 118
    .line 119
    if-le v10, p2, :cond_7

    .line 120
    .line 121
    iget-object v4, v0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 122
    .line 123
    iget-object v8, v0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 124
    .line 125
    sub-int/2addr v10, p2

    .line 126
    invoke-static {v4, v8, p2, v10}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 132
    .line 133
    .line 134
    iget p2, v0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 135
    .line 136
    iget v8, v0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 137
    .line 138
    iget-object v9, v0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 139
    .line 140
    move v10, p2

    .line 141
    :goto_1
    if-ge v10, v8, :cond_6

    .line 142
    .line 143
    aget-char v11, v9, v10

    .line 144
    .line 145
    const/16 v12, 0x30

    .line 146
    .line 147
    if-lt v11, v12, :cond_6

    .line 148
    .line 149
    const/16 v12, 0x39

    .line 150
    .line 151
    if-gt v11, v12, :cond_6

    .line 152
    .line 153
    add-int/lit8 v10, v10, 0x1

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_6
    iput v10, v0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 157
    .line 158
    if-le v10, p2, :cond_7

    .line 159
    .line 160
    iget-object v4, v0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 161
    .line 162
    iget-object v8, v0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 163
    .line 164
    sub-int/2addr v10, p2

    .line 165
    invoke-static {v4, v8, p2, v10}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    :cond_7
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    if-eqz p2, :cond_8

    .line 174
    .line 175
    const-string p1, "numeric reference with no numerals"

    .line 176
    .line 177
    new-array p2, v3, [Ljava/lang/Object;

    .line 178
    .line 179
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->rewindToMark()V

    .line 183
    .line 184
    .line 185
    return-object v2

    .line 186
    :cond_8
    iput v6, v0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    if-nez p2, :cond_9

    .line 193
    .line 194
    new-array p2, v5, [Ljava/lang/Object;

    .line 195
    .line 196
    aput-object v4, p2, v3

    .line 197
    .line 198
    const-string v0, "missing semicolon on [&#%s]"

    .line 199
    .line 200
    invoke-virtual {p0, v0, p2}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :cond_9
    if-eqz p1, :cond_a

    .line 204
    .line 205
    const/16 p1, 0x10

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_a
    const/16 p1, 0xa

    .line 209
    .line 210
    :goto_3
    :try_start_0
    invoke-static {v4, p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_4

    .line 219
    :catch_0
    move p1, v6

    .line 220
    :goto_4
    if-eq p1, v6, :cond_d

    .line 221
    .line 222
    const p2, 0x10ffff

    .line 223
    .line 224
    .line 225
    if-le p1, p2, :cond_b

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_b
    const/16 p2, 0x80

    .line 229
    .line 230
    if-lt p1, p2, :cond_c

    .line 231
    .line 232
    const/16 p2, 0xa0

    .line 233
    .line 234
    if-ge p1, p2, :cond_c

    .line 235
    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    new-array v0, v5, [Ljava/lang/Object;

    .line 241
    .line 242
    aput-object p2, v0, v3

    .line 243
    .line 244
    const-string p2, "character [%s] is not a valid unicode code point"

    .line 245
    .line 246
    invoke-virtual {p0, p2, v0}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    add-int/lit8 p1, p1, -0x80

    .line 250
    .line 251
    sget-object p0, Lorg/jsoup/parser/Tokeniser;->win1252Extensions:[I

    .line 252
    .line 253
    aget p1, p0, p1

    .line 254
    .line 255
    :cond_c
    aput p1, v7, v3

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_d
    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    new-array p2, v5, [Ljava/lang/Object;

    .line 263
    .line 264
    aput-object p1, p2, v3

    .line 265
    .line 266
    const-string p1, "character [%s] outside of valid range"

    .line 267
    .line 268
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    const p0, 0xfffd

    .line 272
    .line 273
    .line 274
    aput p0, v7, v3

    .line 275
    .line 276
    :goto_6
    return-object v7

    .line 277
    :cond_e
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 278
    .line 279
    .line 280
    iget p1, v0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 281
    .line 282
    :goto_7
    iget v8, v0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 283
    .line 284
    iget v9, v0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 285
    .line 286
    if-ge v8, v9, :cond_f

    .line 287
    .line 288
    iget-object v9, v0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 289
    .line 290
    aget-char v8, v9, v8

    .line 291
    .line 292
    invoke-static {v8}, Lorg/jsoup/internal/StringUtil;->isAsciiLetter(C)Z

    .line 293
    .line 294
    .line 295
    move-result v8

    .line 296
    if-eqz v8, :cond_f

    .line 297
    .line 298
    iget v8, v0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 299
    .line 300
    add-int/2addr v8, v5

    .line 301
    iput v8, v0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_f
    :goto_8
    iget v8, v0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 305
    .line 306
    iget v9, v0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 307
    .line 308
    if-lt v8, v9, :cond_10

    .line 309
    .line 310
    goto :goto_9

    .line 311
    :cond_10
    iget-object v9, v0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 312
    .line 313
    aget-char v8, v9, v8

    .line 314
    .line 315
    invoke-static {v8}, Lorg/jsoup/internal/StringUtil;->isDigit(C)Z

    .line 316
    .line 317
    .line 318
    move-result v8

    .line 319
    if-eqz v8, :cond_11

    .line 320
    .line 321
    iget v8, v0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 322
    .line 323
    add-int/2addr v8, v5

    .line 324
    iput v8, v0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 325
    .line 326
    goto :goto_8

    .line 327
    :cond_11
    :goto_9
    iget-object v8, v0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 328
    .line 329
    iget-object v9, v0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 330
    .line 331
    iget v10, v0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 332
    .line 333
    sub-int/2addr v10, p1

    .line 334
    invoke-static {v8, v9, p1, v10}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    const/16 v8, 0x3b

    .line 339
    .line 340
    invoke-virtual {v0, v8}, Lorg/jsoup/parser/CharacterReader;->matches(C)Z

    .line 341
    .line 342
    .line 343
    move-result v8

    .line 344
    sget-object v9, Lorg/jsoup/nodes/Entities;->codeDelims:[C

    .line 345
    .line 346
    sget-object v9, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 347
    .line 348
    invoke-virtual {v9, p1}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    .line 349
    .line 350
    .line 351
    move-result v9

    .line 352
    if-eq v9, v6, :cond_12

    .line 353
    .line 354
    goto :goto_b

    .line 355
    :cond_12
    sget-object v9, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 356
    .line 357
    invoke-virtual {v9, p1}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    move-result v9

    .line 361
    if-eq v9, v6, :cond_13

    .line 362
    .line 363
    if-eqz v8, :cond_13

    .line 364
    .line 365
    goto :goto_b

    .line 366
    :cond_13
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->rewindToMark()V

    .line 367
    .line 368
    .line 369
    if-eqz v8, :cond_14

    .line 370
    .line 371
    new-array v8, v5, [Ljava/lang/Object;

    .line 372
    .line 373
    aput-object p1, v8, v3

    .line 374
    .line 375
    const-string v9, "invalid named reference [%s]"

    .line 376
    .line 377
    invoke-virtual {p0, v9, v8}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    :cond_14
    if-eqz p2, :cond_15

    .line 381
    .line 382
    goto :goto_a

    .line 383
    :cond_15
    sget-object v8, Lorg/jsoup/nodes/Entities;->baseSorted:Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 386
    .line 387
    .line 388
    move-result-object v8

    .line 389
    :cond_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 390
    .line 391
    .line 392
    move-result v9

    .line 393
    if-eqz v9, :cond_17

    .line 394
    .line 395
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v9

    .line 399
    check-cast v9, Ljava/lang/String;

    .line 400
    .line 401
    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 402
    .line 403
    .line 404
    move-result v10

    .line 405
    if-eqz v10, :cond_16

    .line 406
    .line 407
    move-object v4, v9

    .line 408
    :cond_17
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 409
    .line 410
    .line 411
    move-result p1

    .line 412
    if-eqz p1, :cond_18

    .line 413
    .line 414
    :goto_a
    return-object v2

    .line 415
    :cond_18
    invoke-virtual {v0, v4}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    .line 416
    .line 417
    .line 418
    move-object p1, v4

    .line 419
    :goto_b
    if-eqz p2, :cond_1b

    .line 420
    .line 421
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->matchesAsciiAlpha()Z

    .line 422
    .line 423
    .line 424
    move-result p2

    .line 425
    if-nez p2, :cond_1a

    .line 426
    .line 427
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 428
    .line 429
    .line 430
    move-result p2

    .line 431
    if-eqz p2, :cond_19

    .line 432
    .line 433
    move p2, v3

    .line 434
    goto :goto_c

    .line 435
    :cond_19
    iget-object p2, v0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 436
    .line 437
    iget v4, v0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 438
    .line 439
    aget-char p2, p2, v4

    .line 440
    .line 441
    invoke-static {p2}, Lorg/jsoup/internal/StringUtil;->isDigit(C)Z

    .line 442
    .line 443
    .line 444
    move-result p2

    .line 445
    :goto_c
    if-nez p2, :cond_1a

    .line 446
    .line 447
    const/4 p2, 0x3

    .line 448
    new-array p2, p2, [C

    .line 449
    .line 450
    fill-array-data p2, :array_0

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0, p2}, Lorg/jsoup/parser/CharacterReader;->matchesAny([C)Z

    .line 454
    .line 455
    .line 456
    move-result p2

    .line 457
    if-eqz p2, :cond_1b

    .line 458
    .line 459
    :cond_1a
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->rewindToMark()V

    .line 460
    .line 461
    .line 462
    return-object v2

    .line 463
    :cond_1b
    iput v6, v0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 464
    .line 465
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    .line 466
    .line 467
    .line 468
    move-result p2

    .line 469
    if-nez p2, :cond_1c

    .line 470
    .line 471
    new-array p2, v5, [Ljava/lang/Object;

    .line 472
    .line 473
    aput-object p1, p2, v3

    .line 474
    .line 475
    const-string v0, "missing semicolon on [&%s]"

    .line 476
    .line 477
    invoke-virtual {p0, v0, p2}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    :cond_1c
    sget-object p2, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    .line 481
    .line 482
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object p2

    .line 486
    check-cast p2, Ljava/lang/String;

    .line 487
    .line 488
    const/4 v0, 0x2

    .line 489
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->multipointHolder:[I

    .line 490
    .line 491
    if-eqz p2, :cond_1d

    .line 492
    .line 493
    invoke-virtual {p2, v3}, Ljava/lang/String;->codePointAt(I)I

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    aput v1, p0, v3

    .line 498
    .line 499
    invoke-virtual {p2, v5}, Ljava/lang/String;->codePointAt(I)I

    .line 500
    .line 501
    .line 502
    move-result p2

    .line 503
    aput p2, p0, v5

    .line 504
    .line 505
    move p2, v0

    .line 506
    goto :goto_d

    .line 507
    :cond_1d
    sget-object p2, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 508
    .line 509
    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    .line 510
    .line 511
    .line 512
    move-result p2

    .line 513
    if-eq p2, v6, :cond_1e

    .line 514
    .line 515
    aput p2, p0, v3

    .line 516
    .line 517
    move p2, v5

    .line 518
    goto :goto_d

    .line 519
    :cond_1e
    move p2, v3

    .line 520
    :goto_d
    if-ne p2, v5, :cond_1f

    .line 521
    .line 522
    aget p0, p0, v3

    .line 523
    .line 524
    aput p0, v7, v3

    .line 525
    .line 526
    return-object v7

    .line 527
    :cond_1f
    if-ne p2, v0, :cond_20

    .line 528
    .line 529
    return-object p0

    .line 530
    :cond_20
    const-string p0, "Unexpected characters returned for "

    .line 531
    .line 532
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object p0

    .line 536
    new-instance p1, Lorg/jsoup/helper/ValidationException;

    .line 537
    .line 538
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    throw p1

    .line 542
    nop

    .line 543
    :array_0
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method public final createTagPending(Z)Lorg/jsoup/parser/Token$Tag;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->startPending:Lorg/jsoup/parser/Token$StartTag;

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$StartTag;->reset()Lorg/jsoup/parser/Token$Tag;

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->endPending:Lorg/jsoup/parser/Token$EndTag;

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Tag;->reset()Lorg/jsoup/parser/Token$Tag;

    .line 12
    .line 13
    .line 14
    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 15
    .line 16
    return-object p1
.end method

.method public final createTempBuffer()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Lokhttp3/FormBody$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/FormBody$Builder;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final emit(C)V
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charPending:Lorg/jsoup/parser/Token$Character;

    iget-object v1, v0, Lorg/jsoup/parser/Token$Character;->data:Lokhttp3/FormBody$Builder;

    invoke-virtual {v1, p1}, Lokhttp3/FormBody$Builder;->append(C)V

    .line 97
    iget p1, p0, Lorg/jsoup/parser/Tokeniser;->charStartPos:I

    .line 98
    iput p1, v0, Lorg/jsoup/parser/Token;->startPos:I

    .line 99
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result p0

    .line 100
    iput p0, v0, Lorg/jsoup/parser/Token;->endPos:I

    return-void
.end method

.method public final emit(Ljava/lang/String;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charPending:Lorg/jsoup/parser/Token$Character;

    iget-object v1, v0, Lorg/jsoup/parser/Token$Character;->data:Lokhttp3/FormBody$Builder;

    .line 102
    invoke-virtual {v1, p1}, Lokhttp3/FormBody$Builder;->append(Ljava/lang/String;)V

    .line 103
    iget p1, p0, Lorg/jsoup/parser/Tokeniser;->charStartPos:I

    .line 104
    iput p1, v0, Lorg/jsoup/parser/Token;->startPos:I

    .line 105
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result p0

    .line 106
    iput p0, v0, Lorg/jsoup/parser/Token;->endPos:I

    return-void
.end method

.method public final emit(Lorg/jsoup/parser/Token;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->isEmitPending:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->emitPending:Lorg/jsoup/parser/Token;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->isEmitPending:Z

    .line 9
    .line 10
    iget v1, p0, Lorg/jsoup/parser/Tokeniser;->markupStartPos:I

    .line 11
    .line 12
    iput v1, p1, Lorg/jsoup/parser/Token;->startPos:I

    .line 13
    .line 14
    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 15
    .line 16
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iput v2, p1, Lorg/jsoup/parser/Token;->endPos:I

    .line 21
    .line 22
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iput v2, p0, Lorg/jsoup/parser/Tokeniser;->charStartPos:I

    .line 27
    .line 28
    iget-object v2, p1, Lorg/jsoup/parser/Token;->type:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Lorg/jsoup/parser/Token$TokenType;

    .line 31
    .line 32
    sget-object v3, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    .line 33
    .line 34
    if-ne v2, v3, :cond_0

    .line 35
    .line 36
    check-cast p1, Lorg/jsoup/parser/Token$StartTag;

    .line 37
    .line 38
    iget-object p1, p1, Lorg/jsoup/parser/Token$Tag;->tagName:Lokhttp3/FormBody$Builder;

    .line 39
    .line 40
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->value()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->lastStartCloseSeq:Ljava/lang/String;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    sget-object v3, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    .line 51
    .line 52
    if-ne v2, v3, :cond_1

    .line 53
    .line 54
    check-cast p1, Lorg/jsoup/parser/Token$EndTag;

    .line 55
    .line 56
    iget-object v2, p1, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 57
    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    aput-object p1, v0, v2

    .line 68
    .line 69
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Lorg/jsoup/parser/ParseErrorList;

    .line 70
    .line 71
    invoke-virtual {p0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    new-instance p1, Lorg/jsoup/parser/ParseError;

    .line 78
    .line 79
    const-string v2, "Attributes incorrectly present on end tag [/%s]"

    .line 80
    .line 81
    invoke-direct {p1, v1, v2, v0}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void

    .line 88
    :cond_2
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    .line 89
    .line 90
    const-string p1, "Must be false"

    .line 91
    .line 92
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method public final emitCommentPending()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->commentPending:Lorg/jsoup/parser/Token$Comment;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final emitDoctypePending()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final emitTagPending()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/jsoup/parser/Token$Tag;->attrName:Lokhttp3/FormBody$Builder;

    .line 4
    .line 5
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->hasData()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->newAttribute()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final eofError(Lorg/jsoup/parser/TokeniserState;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Lorg/jsoup/parser/ParseErrorList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lorg/jsoup/parser/ParseError;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object p1, v2, v3

    .line 16
    .line 17
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 18
    .line 19
    const-string p1, "Unexpectedly reached end of file (EOF) in input state [%s]"

    .line 20
    .line 21
    invoke-direct {v1, p0, p1, v2}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final error(Lorg/jsoup/parser/TokeniserState;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Lorg/jsoup/parser/ParseErrorList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lorg/jsoup/parser/ParseError;

    .line 10
    .line 11
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->current()C

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    aput-object v2, v3, v4

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    aput-object p1, v3, v2

    .line 29
    .line 30
    const-string p1, "Unexpected character \'%s\' in input state [%s]"

    .line 31
    .line 32
    invoke-direct {v1, p0, p1, v3}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final isAppropriateEndTagToken()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/jsoup/parser/Token$Tag;->tagName:Lokhttp3/FormBody$Builder;

    .line 8
    .line 9
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->value()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final transition(Lorg/jsoup/parser/TokeniserState;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->TagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lorg/jsoup/parser/Tokeniser;->markupStartPos:I

    .line 12
    .line 13
    :cond_0
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->state:Lorg/jsoup/parser/TokeniserState;

    .line 14
    .line 15
    return-void
.end method

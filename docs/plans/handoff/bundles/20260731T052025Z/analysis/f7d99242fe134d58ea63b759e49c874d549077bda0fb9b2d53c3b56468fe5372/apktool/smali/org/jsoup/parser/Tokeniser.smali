.class public final Lorg/jsoup/parser/Tokeniser;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final notCharRefCharsSorted:[C

.field public static final win1252Extensions:[I


# instance fields
.field public final charPending:Lorg/jsoup/parser/Token$Character;

.field public charStartPos:I

.field public final charsBuilder:Ljava/lang/StringBuilder;

.field public charsString:Ljava/lang/String;

.field public final codepointHolder:[I

.field public final commentPending:Lorg/jsoup/parser/Token$Comment;

.field public final dataBuffer:Ljava/lang/StringBuilder;

.field public final doctypePending:Lorg/jsoup/parser/Token$Doctype;

.field public emitPending:Lorg/jsoup/parser/Token;

.field public final endPending:Lorg/jsoup/parser/Token$EndTag;

.field public final errors:Lcom/fsck/k9/mail/FetchProfile;

.field public isEmitPending:Z

.field public lastStartCloseSeq:Ljava/lang/String;

.field public lastStartTag:Ljava/lang/String;

.field public markupStartPos:I

.field public final multipointHolder:[I

.field public final reader:Lorg/jsoup/parser/CharacterReader;

.field public final startPending:Lorg/jsoup/parser/Token$StartTag;

.field public state:Lorg/jsoup/parser/TokeniserState;

.field public final syntax:I

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
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState$1;

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
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lorg/jsoup/parser/Tokeniser;->isEmitPending:Z

    .line 13
    .line 14
    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const/16 v2, 0x400

    .line 19
    .line 20
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    .line 31
    .line 32
    new-instance v0, Lorg/jsoup/parser/Token$Character;

    .line 33
    .line 34
    const/4 v2, 0x5

    .line 35
    invoke-direct {v0, v2}, Lorg/jsoup/parser/Token;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charPending:Lorg/jsoup/parser/Token$Character;

    .line 39
    .line 40
    new-instance v0, Lorg/jsoup/parser/Token$Doctype;

    .line 41
    .line 42
    invoke-direct {v0}, Lorg/jsoup/parser/Token$Doctype;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    .line 46
    .line 47
    new-instance v0, Lorg/jsoup/parser/Token$Comment;

    .line 48
    .line 49
    invoke-direct {v0}, Lorg/jsoup/parser/Token$Comment;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->commentPending:Lorg/jsoup/parser/Token$Comment;

    .line 53
    .line 54
    iput v1, p0, Lorg/jsoup/parser/Tokeniser;->charStartPos:I

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    new-array v1, v0, [I

    .line 58
    .line 59
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->codepointHolder:[I

    .line 60
    .line 61
    const/4 v1, 0x2

    .line 62
    new-array v2, v1, [I

    .line 63
    .line 64
    iput-object v2, p0, Lorg/jsoup/parser/Tokeniser;->multipointHolder:[I

    .line 65
    .line 66
    iput v0, p0, Lorg/jsoup/parser/Tokeniser;->syntax:I

    .line 67
    .line 68
    new-instance v2, Lorg/jsoup/parser/Token$StartTag;

    .line 69
    .line 70
    invoke-direct {v2, v1, p1}, Lorg/jsoup/parser/Token$Tag;-><init>(ILorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Lorg/jsoup/parser/Tokeniser;->startPending:Lorg/jsoup/parser/Token$StartTag;

    .line 74
    .line 75
    iput-object v2, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 76
    .line 77
    new-instance v1, Lorg/jsoup/parser/Token$EndTag;

    .line 78
    .line 79
    const/4 v2, 0x3

    .line 80
    invoke-direct {v1, v2, p1}, Lorg/jsoup/parser/Token$Tag;-><init>(ILorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->endPending:Lorg/jsoup/parser/Token$EndTag;

    .line 84
    .line 85
    new-instance v1, Lorg/jsoup/parser/Token$XmlDecl;

    .line 86
    .line 87
    const/4 v2, 0x6

    .line 88
    invoke-direct {v1, v2, p1}, Lorg/jsoup/parser/Token$Tag;-><init>(ILorg/jsoup/parser/HtmlTreeBuilder;)V

    .line 89
    .line 90
    .line 91
    iput-boolean v0, v1, Lorg/jsoup/parser/Token$XmlDecl;->isDeclaration:Z

    .line 92
    .line 93
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->xmlDeclPending:Lorg/jsoup/parser/Token$XmlDecl;

    .line 94
    .line 95
    iget-object v0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 96
    .line 97
    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 98
    .line 99
    iget-object p1, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->parser:Lorg/jsoup/parser/Parser;

    .line 100
    .line 101
    iget-object p1, p1, Lorg/jsoup/parser/Parser;->errors:Lcom/fsck/k9/mail/FetchProfile;

    .line 102
    .line 103
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->errors:Lcom/fsck/k9/mail/FetchProfile;

    .line 104
    .line 105
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
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Lcom/fsck/k9/mail/FetchProfile;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fsck/k9/mail/FetchProfile;->canAddError()Z

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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    :goto_0
    const/16 v16, 0x0

    .line 12
    .line 13
    goto/16 :goto_10

    .line 14
    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Character;->charValue()C

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->current()C

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ne v2, v4, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    iget-object v2, v1, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 38
    .line 39
    iget v4, v1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 40
    .line 41
    aget-char v2, v2, v4

    .line 42
    .line 43
    sget-object v4, Lorg/jsoup/parser/Tokeniser;->notCharRefCharsSorted:[C

    .line 44
    .line 45
    invoke-static {v4, v2}, Ljava/util/Arrays;->binarySearch([CC)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-ltz v2, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget v2, v1, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 53
    .line 54
    iget v4, v1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 55
    .line 56
    sub-int/2addr v2, v4

    .line 57
    const/16 v4, 0x400

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    if-ge v2, v4, :cond_3

    .line 61
    .line 62
    iput v5, v1, Lorg/jsoup/parser/CharacterReader;->fillPoint:I

    .line 63
    .line 64
    :cond_3
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 65
    .line 66
    .line 67
    iget v2, v1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 68
    .line 69
    iput v2, v1, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 70
    .line 71
    const-string v2, "#"

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    const-string v4, ";"

    .line 78
    .line 79
    const/16 v6, 0x61

    .line 80
    .line 81
    const/16 v7, 0x41

    .line 82
    .line 83
    const/16 v8, 0x39

    .line 84
    .line 85
    const/16 v9, 0x30

    .line 86
    .line 87
    const/4 v10, 0x1

    .line 88
    const/4 v11, -0x1

    .line 89
    iget-object v12, v0, Lorg/jsoup/parser/Tokeniser;->codepointHolder:[I

    .line 90
    .line 91
    if-eqz v2, :cond_12

    .line 92
    .line 93
    const-string v2, "X"

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/CharacterReader;->matchConsumeIgnoreCase(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_a

    .line 100
    .line 101
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 102
    .line 103
    .line 104
    iget v13, v1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 105
    .line 106
    :goto_1
    iget v14, v1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 107
    .line 108
    iget v15, v1, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 109
    .line 110
    if-ge v14, v15, :cond_8

    .line 111
    .line 112
    iget-object v15, v1, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 113
    .line 114
    aget-char v15, v15, v14

    .line 115
    .line 116
    if-lt v15, v9, :cond_5

    .line 117
    .line 118
    if-le v15, v8, :cond_4

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    const/16 v16, 0x0

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_5
    :goto_2
    const/16 v16, 0x0

    .line 125
    .line 126
    if-lt v15, v7, :cond_6

    .line 127
    .line 128
    const/16 v3, 0x46

    .line 129
    .line 130
    if-le v15, v3, :cond_7

    .line 131
    .line 132
    :cond_6
    if-lt v15, v6, :cond_9

    .line 133
    .line 134
    const/16 v3, 0x66

    .line 135
    .line 136
    if-gt v15, v3, :cond_9

    .line 137
    .line 138
    :cond_7
    :goto_3
    add-int/lit8 v14, v14, 0x1

    .line 139
    .line 140
    iput v14, v1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_8
    const/16 v16, 0x0

    .line 144
    .line 145
    :cond_9
    iget-object v3, v1, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 146
    .line 147
    iget-object v6, v1, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 148
    .line 149
    sub-int/2addr v14, v13

    .line 150
    invoke-static {v3, v6, v13, v14}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    goto :goto_5

    .line 155
    :cond_a
    const/16 v16, 0x0

    .line 156
    .line 157
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 158
    .line 159
    .line 160
    iget v3, v1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 161
    .line 162
    :goto_4
    iget v6, v1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 163
    .line 164
    iget v7, v1, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 165
    .line 166
    if-ge v6, v7, :cond_b

    .line 167
    .line 168
    iget-object v7, v1, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 169
    .line 170
    aget-char v7, v7, v6

    .line 171
    .line 172
    if-lt v7, v9, :cond_b

    .line 173
    .line 174
    if-gt v7, v8, :cond_b

    .line 175
    .line 176
    add-int/lit8 v6, v6, 0x1

    .line 177
    .line 178
    iput v6, v1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_b
    iget-object v7, v1, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 182
    .line 183
    iget-object v8, v1, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 184
    .line 185
    sub-int/2addr v6, v3

    .line 186
    invoke-static {v7, v8, v3, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    :goto_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-nez v6, :cond_c

    .line 195
    .line 196
    const-string v2, "numeric reference with no numerals"

    .line 197
    .line 198
    new-array v3, v5, [Ljava/lang/Object;

    .line 199
    .line 200
    invoke-virtual {v0, v2, v3}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->rewindToMark()V

    .line 204
    .line 205
    .line 206
    return-object v16

    .line 207
    :cond_c
    iput v11, v1, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 208
    .line 209
    invoke-virtual {v1, v4}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-nez v1, :cond_d

    .line 214
    .line 215
    new-array v1, v10, [Ljava/lang/Object;

    .line 216
    .line 217
    aput-object v3, v1, v5

    .line 218
    .line 219
    const-string v4, "missing semicolon on [&#%s]"

    .line 220
    .line 221
    invoke-virtual {v0, v4, v1}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    :cond_d
    if-eqz v2, :cond_e

    .line 225
    .line 226
    const/16 v1, 0x10

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_e
    const/16 v1, 0xa

    .line 230
    .line 231
    :goto_6
    :try_start_0
    invoke-static {v3, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 236
    .line 237
    .line 238
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    goto :goto_7

    .line 240
    :catch_0
    move v1, v11

    .line 241
    :goto_7
    if-eq v1, v11, :cond_11

    .line 242
    .line 243
    const v2, 0x10ffff

    .line 244
    .line 245
    .line 246
    if-le v1, v2, :cond_f

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_f
    const/16 v2, 0x80

    .line 250
    .line 251
    if-lt v1, v2, :cond_10

    .line 252
    .line 253
    const/16 v2, 0xa0

    .line 254
    .line 255
    if-ge v1, v2, :cond_10

    .line 256
    .line 257
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    new-array v3, v10, [Ljava/lang/Object;

    .line 262
    .line 263
    aput-object v2, v3, v5

    .line 264
    .line 265
    const-string v2, "character [%s] is not a valid unicode code point"

    .line 266
    .line 267
    invoke-virtual {v0, v2, v3}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    add-int/lit8 v1, v1, -0x80

    .line 271
    .line 272
    sget-object v0, Lorg/jsoup/parser/Tokeniser;->win1252Extensions:[I

    .line 273
    .line 274
    aget v1, v0, v1

    .line 275
    .line 276
    :cond_10
    aput v1, v12, v5

    .line 277
    .line 278
    goto :goto_9

    .line 279
    :cond_11
    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    new-array v2, v10, [Ljava/lang/Object;

    .line 284
    .line 285
    aput-object v1, v2, v5

    .line 286
    .line 287
    const-string v1, "character [%s] outside of valid range"

    .line 288
    .line 289
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    const v0, 0xfffd

    .line 293
    .line 294
    .line 295
    aput v0, v12, v5

    .line 296
    .line 297
    :goto_9
    return-object v12

    .line 298
    :cond_12
    const/16 v16, 0x0

    .line 299
    .line 300
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 301
    .line 302
    .line 303
    iget v2, v1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 304
    .line 305
    :goto_a
    iget v3, v1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 306
    .line 307
    iget v13, v1, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 308
    .line 309
    if-ge v3, v13, :cond_16

    .line 310
    .line 311
    iget-object v13, v1, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 312
    .line 313
    aget-char v3, v13, v3

    .line 314
    .line 315
    if-lt v3, v7, :cond_13

    .line 316
    .line 317
    const/16 v13, 0x5a

    .line 318
    .line 319
    if-le v3, v13, :cond_15

    .line 320
    .line 321
    :cond_13
    if-lt v3, v6, :cond_14

    .line 322
    .line 323
    const/16 v13, 0x7a

    .line 324
    .line 325
    if-le v3, v13, :cond_15

    .line 326
    .line 327
    :cond_14
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    if-eqz v3, :cond_16

    .line 332
    .line 333
    :cond_15
    iget v3, v1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 334
    .line 335
    add-int/2addr v3, v10

    .line 336
    iput v3, v1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 337
    .line 338
    goto :goto_a

    .line 339
    :cond_16
    :goto_b
    iget v3, v1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 340
    .line 341
    iget v6, v1, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 342
    .line 343
    if-lt v3, v6, :cond_17

    .line 344
    .line 345
    goto :goto_c

    .line 346
    :cond_17
    iget-object v6, v1, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 347
    .line 348
    aget-char v6, v6, v3

    .line 349
    .line 350
    if-lt v6, v9, :cond_18

    .line 351
    .line 352
    if-gt v6, v8, :cond_18

    .line 353
    .line 354
    add-int/lit8 v3, v3, 0x1

    .line 355
    .line 356
    iput v3, v1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 357
    .line 358
    goto :goto_b

    .line 359
    :cond_18
    :goto_c
    iget-object v6, v1, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 360
    .line 361
    iget-object v7, v1, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 362
    .line 363
    sub-int/2addr v3, v2

    .line 364
    invoke-static {v6, v7, v2, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    const/16 v3, 0x3b

    .line 369
    .line 370
    invoke-virtual {v1, v3}, Lorg/jsoup/parser/CharacterReader;->matches(C)Z

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    sget-object v6, Lorg/jsoup/nodes/Entities;->codeDelims:[C

    .line 375
    .line 376
    sget-object v6, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 377
    .line 378
    iget-object v7, v6, Lorg/jsoup/nodes/Entities$EscapeMode;->nameKeys:[Ljava/lang/String;

    .line 379
    .line 380
    invoke-static {v7, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 381
    .line 382
    .line 383
    move-result v7

    .line 384
    if-ltz v7, :cond_19

    .line 385
    .line 386
    iget-object v6, v6, Lorg/jsoup/nodes/Entities$EscapeMode;->codeVals:[I

    .line 387
    .line 388
    aget v6, v6, v7

    .line 389
    .line 390
    goto :goto_d

    .line 391
    :cond_19
    move v6, v11

    .line 392
    :goto_d
    if-eq v6, v11, :cond_1a

    .line 393
    .line 394
    goto :goto_11

    .line 395
    :cond_1a
    sget-object v6, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 396
    .line 397
    iget-object v7, v6, Lorg/jsoup/nodes/Entities$EscapeMode;->nameKeys:[Ljava/lang/String;

    .line 398
    .line 399
    invoke-static {v7, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 400
    .line 401
    .line 402
    move-result v7

    .line 403
    if-ltz v7, :cond_1b

    .line 404
    .line 405
    iget-object v6, v6, Lorg/jsoup/nodes/Entities$EscapeMode;->codeVals:[I

    .line 406
    .line 407
    aget v6, v6, v7

    .line 408
    .line 409
    goto :goto_e

    .line 410
    :cond_1b
    move v6, v11

    .line 411
    :goto_e
    if-eq v6, v11, :cond_1c

    .line 412
    .line 413
    if-eqz v3, :cond_1c

    .line 414
    .line 415
    goto :goto_11

    .line 416
    :cond_1c
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->rewindToMark()V

    .line 417
    .line 418
    .line 419
    if-eqz v3, :cond_1d

    .line 420
    .line 421
    new-array v3, v10, [Ljava/lang/Object;

    .line 422
    .line 423
    aput-object v2, v3, v5

    .line 424
    .line 425
    const-string v6, "invalid named reference [%s]"

    .line 426
    .line 427
    invoke-virtual {v0, v6, v3}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    :cond_1d
    if-eqz p2, :cond_1e

    .line 431
    .line 432
    goto :goto_10

    .line 433
    :cond_1e
    sget-object v3, Lorg/jsoup/nodes/Entities;->baseSorted:Ljava/util/ArrayList;

    .line 434
    .line 435
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 440
    .line 441
    .line 442
    move-result v6

    .line 443
    if-eqz v6, :cond_20

    .line 444
    .line 445
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    check-cast v6, Ljava/lang/String;

    .line 450
    .line 451
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 452
    .line 453
    .line 454
    move-result v7

    .line 455
    if-eqz v7, :cond_1f

    .line 456
    .line 457
    move-object v2, v6

    .line 458
    goto :goto_f

    .line 459
    :cond_20
    const-string v2, ""

    .line 460
    .line 461
    :goto_f
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    if-eqz v3, :cond_21

    .line 466
    .line 467
    :goto_10
    return-object v16

    .line 468
    :cond_21
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    .line 469
    .line 470
    .line 471
    :goto_11
    if-eqz p2, :cond_25

    .line 472
    .line 473
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    if-nez v3, :cond_24

    .line 478
    .line 479
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 480
    .line 481
    .line 482
    move-result v3

    .line 483
    if-eqz v3, :cond_22

    .line 484
    .line 485
    goto :goto_12

    .line 486
    :cond_22
    iget-object v3, v1, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 487
    .line 488
    iget v6, v1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 489
    .line 490
    aget-char v3, v3, v6

    .line 491
    .line 492
    if-lt v3, v9, :cond_23

    .line 493
    .line 494
    if-gt v3, v8, :cond_23

    .line 495
    .line 496
    goto :goto_13

    .line 497
    :cond_23
    :goto_12
    const/4 v3, 0x3

    .line 498
    new-array v3, v3, [C

    .line 499
    .line 500
    fill-array-data v3, :array_0

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1, v3}, Lorg/jsoup/parser/CharacterReader;->matchesAny([C)Z

    .line 504
    .line 505
    .line 506
    move-result v3

    .line 507
    if-eqz v3, :cond_25

    .line 508
    .line 509
    :cond_24
    :goto_13
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->rewindToMark()V

    .line 510
    .line 511
    .line 512
    return-object v16

    .line 513
    :cond_25
    iput v11, v1, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 514
    .line 515
    invoke-virtual {v1, v4}, Lorg/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    .line 516
    .line 517
    .line 518
    move-result v1

    .line 519
    if-nez v1, :cond_26

    .line 520
    .line 521
    new-array v1, v10, [Ljava/lang/Object;

    .line 522
    .line 523
    aput-object v2, v1, v5

    .line 524
    .line 525
    const-string v3, "missing semicolon on [&%s]"

    .line 526
    .line 527
    invoke-virtual {v0, v3, v1}, Lorg/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    :cond_26
    sget-object v1, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    .line 531
    .line 532
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    check-cast v1, Ljava/lang/String;

    .line 537
    .line 538
    const/4 v3, 0x2

    .line 539
    iget-object v0, v0, Lorg/jsoup/parser/Tokeniser;->multipointHolder:[I

    .line 540
    .line 541
    if-eqz v1, :cond_27

    .line 542
    .line 543
    invoke-virtual {v1, v5}, Ljava/lang/String;->codePointAt(I)I

    .line 544
    .line 545
    .line 546
    move-result v4

    .line 547
    aput v4, v0, v5

    .line 548
    .line 549
    invoke-virtual {v1, v10}, Ljava/lang/String;->codePointAt(I)I

    .line 550
    .line 551
    .line 552
    move-result v1

    .line 553
    aput v1, v0, v10

    .line 554
    .line 555
    move v1, v3

    .line 556
    goto :goto_15

    .line 557
    :cond_27
    sget-object v1, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 558
    .line 559
    iget-object v4, v1, Lorg/jsoup/nodes/Entities$EscapeMode;->nameKeys:[Ljava/lang/String;

    .line 560
    .line 561
    invoke-static {v4, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 562
    .line 563
    .line 564
    move-result v4

    .line 565
    if-ltz v4, :cond_28

    .line 566
    .line 567
    iget-object v1, v1, Lorg/jsoup/nodes/Entities$EscapeMode;->codeVals:[I

    .line 568
    .line 569
    aget v1, v1, v4

    .line 570
    .line 571
    goto :goto_14

    .line 572
    :cond_28
    move v1, v11

    .line 573
    :goto_14
    if-eq v1, v11, :cond_29

    .line 574
    .line 575
    aput v1, v0, v5

    .line 576
    .line 577
    move v1, v10

    .line 578
    goto :goto_15

    .line 579
    :cond_29
    move v1, v5

    .line 580
    :goto_15
    if-ne v1, v10, :cond_2a

    .line 581
    .line 582
    aget v0, v0, v5

    .line 583
    .line 584
    aput v0, v12, v5

    .line 585
    .line 586
    return-object v12

    .line 587
    :cond_2a
    if-ne v1, v3, :cond_2b

    .line 588
    .line 589
    return-object v0

    .line 590
    :cond_2b
    const-string v0, "Unexpected characters returned for "

    .line 591
    .line 592
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    new-instance v1, Lorg/jsoup/helper/ValidationException;

    .line 597
    .line 598
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    throw v1

    .line 602
    nop

    .line 603
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
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-static {p0}, Lorg/jsoup/parser/Token;->reset(Ljava/lang/StringBuilder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final emit(C)V
    .locals 2

    .line 98
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 99
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 101
    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    :goto_0
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->charPending:Lorg/jsoup/parser/Token$Character;

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    return-void
.end method

.method public final emit(Ljava/lang/String;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 85
    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :goto_0
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->charPending:Lorg/jsoup/parser/Token$Character;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    return-void
.end method

.method public final emit(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 93
    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 95
    :goto_0
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->charPending:Lorg/jsoup/parser/Token$Character;

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 14
    .line 15
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iput v2, p0, Lorg/jsoup/parser/Tokeniser;->charStartPos:I

    .line 23
    .line 24
    iget v2, p1, Lorg/jsoup/parser/Token;->type:I

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    if-ne v2, v3, :cond_0

    .line 28
    .line 29
    check-cast p1, Lorg/jsoup/parser/Token$StartTag;

    .line 30
    .line 31
    iget-object p1, p1, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->lastStartCloseSeq:Ljava/lang/String;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const/4 v3, 0x3

    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    check-cast p1, Lorg/jsoup/parser/Token$EndTag;

    .line 43
    .line 44
    iget-object v2, p1, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    iget-object p1, p1, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 49
    .line 50
    new-array v0, v0, [Ljava/lang/Object;

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    aput-object p1, v0, v2

    .line 54
    .line 55
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Lcom/fsck/k9/mail/FetchProfile;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/fsck/k9/mail/FetchProfile;->canAddError()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    new-instance p1, Lorg/jsoup/parser/ParseError;

    .line 64
    .line 65
    const-string v2, "Attributes incorrectly present on end tag [/%s]"

    .line 66
    .line 67
    invoke-direct {p1, v1, v2, v0}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void

    .line 74
    :cond_2
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    .line 75
    .line 76
    const-string p1, "Must be false"

    .line 77
    .line 78
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
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
    iget-boolean v1, v0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->newAttribute()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final eofError(Lorg/jsoup/parser/TokeniserState;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Lcom/fsck/k9/mail/FetchProfile;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fsck/k9/mail/FetchProfile;->canAddError()Z

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
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->errors:Lcom/fsck/k9/mail/FetchProfile;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fsck/k9/mail/FetchProfile;->canAddError()Z

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
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 6
    .line 7
    iget-object v1, v0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    .line 30
    .line 31
    const-string v0, "Must be false"

    .line 32
    .line 33
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public final transition(Lorg/jsoup/parser/TokeniserState;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->TagOpen:Lorg/jsoup/parser/TokeniserState$8;

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

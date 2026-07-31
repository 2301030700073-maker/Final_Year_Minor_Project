.class public final Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final charset:Ljava/lang/Object;

.field public frameIndex:I

.field public ignoreEmptyFrames:Z

.field public final out:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/compose/ui/platform/AndroidComposeView$indirectPointerNavigationGestureDetector$1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->out:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    iput p2, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->frameIndex:I

    .line 11
    .line 12
    new-instance p2, Landroid/view/GestureDetector;

    .line 13
    .line 14
    new-instance v0, Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector$gestureDetector$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Landroidx/compose/ui/platform/IndirectPointerNavigationGestureDetector$gestureDetector$1;-><init>(Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->charset:Ljava/lang/Object;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->$r8$classId:I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->charset:Ljava/lang/Object;

    .line 28
    new-instance p1, Landroidx/lifecycle/LiveData$1;

    const/16 v0, 0x10

    invoke-direct {p1, p0, v0}, Landroidx/lifecycle/LiveData$1;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->out:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->$r8$classId:I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->charset:Ljava/lang/Object;

    .line 26
    new-instance p1, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;

    const/16 v0, 0x10

    invoke-direct {p1, p0, v0}, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->out:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/streams/io/SharpStream;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->$r8$classId:I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->charset:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->frameIndex:I

    .line 32
    iput-object p1, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->out:Ljava/lang/Object;

    .line 33
    iput-boolean p2, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->ignoreEmptyFrames:Z

    return-void
.end method

.method public static extractText(Lorg/jsoup/nodes/Node;Ljava/lang/StringBuilder;)V
    .locals 9

    .line 1
    instance-of v0, p0, Lorg/jsoup/nodes/TextNode;

    .line 2
    .line 3
    const-string v1, "\r\n"

    .line 4
    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Lorg/jsoup/nodes/TextNode;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v2, ""

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    const/16 v3, 0x26

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-gez v4, :cond_1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    new-instance v4, Lorg/jsoup/parser/Parser;

    .line 30
    .line 31
    new-instance v5, Lorg/jsoup/parser/HtmlTreeBuilder;

    .line 32
    .line 33
    invoke-direct {v5}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-direct {v4, v5}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-gez v5, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    new-instance v5, Ljava/io/StringReader;

    .line 47
    .line 48
    invoke-direct {v5, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v4, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    .line 52
    .line 53
    invoke-virtual {v0, v5, v4}, Lorg/jsoup/parser/TreeBuilder;->initialiseParse(Ljava/io/Reader;Lorg/jsoup/parser/Parser;)V

    .line 54
    .line 55
    .line 56
    new-instance v4, Lorg/jsoup/parser/Tokeniser;

    .line 57
    .line 58
    invoke-direct {v4, v0}, Lorg/jsoup/parser/Tokeniser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_3
    :goto_0
    iget-object v5, v4, Lorg/jsoup/parser/Tokeniser;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 66
    .line 67
    invoke-virtual {v5}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-nez v6, :cond_6

    .line 72
    .line 73
    invoke-virtual {v5, v3}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v3}, Lorg/jsoup/parser/CharacterReader;->matches(C)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_3

    .line 85
    .line 86
    invoke-virtual {v5}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 87
    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    const/4 v6, 0x1

    .line 91
    invoke-virtual {v4, v5, v6}, Lorg/jsoup/parser/Tokeniser;->consumeCharacterReference(Ljava/lang/Character;Z)[I

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    if-eqz v5, :cond_5

    .line 96
    .line 97
    array-length v7, v5

    .line 98
    if-nez v7, :cond_4

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    const/4 v7, 0x0

    .line 102
    aget v7, v5, v7

    .line 103
    .line 104
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    array-length v7, v5

    .line 108
    const/4 v8, 0x2

    .line 109
    if-ne v7, v8, :cond_3

    .line 110
    .line 111
    aget v5, v5, v6

    .line 112
    .line 113
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_6
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :goto_2
    const/16 v3, 0xa0

    .line 126
    .line 127
    const/16 v4, 0x20

    .line 128
    .line 129
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const/16 v3, 0x202f

    .line 134
    .line 135
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const/16 v3, 0x205f

    .line 140
    .line 141
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const/16 v3, 0x3000

    .line 146
    .line 147
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const-string v3, "[\\u2000-\\u200A]"

    .line 152
    .line 153
    const-string v5, " "

    .line 154
    .line 155
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const-string v3, "[\\u200B-\\u200F]"

    .line 160
    .line 161
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v3, "[\\u0000-\\u0008\\u000B\\u000C\\u000E-\\u001F]"

    .line 166
    .line 167
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const/16 v2, 0x9

    .line 172
    .line 173
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const-string v2, "\n"

    .line 178
    .line 179
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const-string v3, "\r"

    .line 184
    .line 185
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    :goto_3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_7
    instance-of v0, p0, Lorg/jsoup/nodes/Element;

    .line 198
    .line 199
    if-eqz v0, :cond_8

    .line 200
    .line 201
    move-object v0, p0

    .line 202
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 203
    .line 204
    iget-object v0, v0, Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;

    .line 205
    .line 206
    iget-object v0, v0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 207
    .line 208
    const-string v2, "br"

    .line 209
    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_8

    .line 215
    .line 216
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_9

    .line 232
    .line 233
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Lorg/jsoup/nodes/Node;

    .line 238
    .line 239
    invoke-static {v0, p1}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->extractText(Lorg/jsoup/nodes/Node;Ljava/lang/StringBuilder;)V

    .line 240
    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_9
    return-void
.end method


# virtual methods
.method public build(Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->available()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-int v0, v0

    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->read([B)I

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lorg/jsoup/parser/Parser;

    .line 17
    .line 18
    new-instance v1, Lorg/jsoup/parser/XmlTreeBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Lorg/jsoup/parser/XmlTreeBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 24
    .line 25
    .line 26
    const v1, 0x7fffffff

    .line 27
    .line 28
    .line 29
    iput v1, v0, Lorg/jsoup/parser/Parser;->maxDepth:I

    .line 30
    .line 31
    sget-object v1, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 32
    .line 33
    new-instance v1, Lorg/jsoup/internal/ControllableInputStream;

    .line 34
    .line 35
    new-instance v2, Lorg/jsoup/internal/SimpleBufferedInput;

    .line 36
    .line 37
    invoke-direct {v2, p1}, Lorg/jsoup/internal/SimpleBufferedInput;-><init>(Ljava/io/ByteArrayInputStream;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2}, Lorg/jsoup/internal/ControllableInputStream;-><init>(Lorg/jsoup/internal/SimpleBufferedInput;)V

    .line 41
    .line 42
    .line 43
    :try_start_0
    invoke-static {v1, v0}, Lorg/jsoup/helper/DataUtil;->detectCharset(Lorg/jsoup/internal/ControllableInputStream;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Printer;

    .line 44
    .line 45
    .line 46
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    invoke-static {p1, v0}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Lorg/jsoup/nodes/Printer;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    .line 48
    .line 49
    .line 50
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    iget-object p1, p1, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Lorg/jsoup/internal/ControllableInputStream;

    .line 54
    .line 55
    invoke-virtual {p1}, Lorg/jsoup/internal/ControllableInputStream;->close()V

    .line 56
    .line 57
    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const/16 v1, 0x80

    .line 61
    .line 62
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 63
    .line 64
    .line 65
    const-string v1, "body > div > p"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 96
    .line 97
    .line 98
    invoke-static {v1, p1}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->extractText(Lorg/jsoup/nodes/Node;Ljava/lang/StringBuilder;)V

    .line 99
    .line 100
    .line 101
    iget-boolean v2, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->ignoreEmptyFrames:Z

    .line 102
    .line 103
    const/4 v3, 0x1

    .line 104
    if-eqz v2, :cond_1

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-ge v2, v3, :cond_1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    const-string v2, "begin"

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const/16 v4, 0x2e

    .line 120
    .line 121
    const/16 v5, 0x2c

    .line 122
    .line 123
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    const-string v6, "end"

    .line 128
    .line 129
    invoke-virtual {v1, v6}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iget v4, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->frameIndex:I

    .line 138
    .line 139
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {p0, v4}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget v4, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->frameIndex:I

    .line 147
    .line 148
    add-int/2addr v4, v3

    .line 149
    iput v4, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->frameIndex:I

    .line 150
    .line 151
    const-string v3, "\r\n"

    .line 152
    .line 153
    invoke-virtual {p0, v3}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const-string v2, " --> "

    .line 160
    .line 161
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v3}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v3}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v3}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_2
    :goto_1
    return-void

    .line 185
    :catchall_0
    move-exception p0

    .line 186
    goto :goto_2

    .line 187
    :catchall_1
    move-exception p0

    .line 188
    const/4 p1, 0x0

    .line 189
    :goto_2
    if-eqz p1, :cond_3

    .line 190
    .line 191
    iget-object p1, p1, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast p1, Lorg/jsoup/internal/ControllableInputStream;

    .line 194
    .line 195
    invoke-virtual {p1}, Lorg/jsoup/internal/ControllableInputStream;->close()V

    .line 196
    .line 197
    .line 198
    :cond_3
    throw p0
.end method

.method public continueSettlingToState(I)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->out:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->charset:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast v3, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 12
    .line 13
    iget-object v0, v3, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput p1, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->frameIndex:I

    .line 25
    .line 26
    iget-boolean p1, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->ignoreEmptyFrames:Z

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    iget-object p1, v3, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/view/View;

    .line 37
    .line 38
    check-cast v2, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    iput-boolean v1, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->ignoreEmptyFrames:Z

    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void

    .line 48
    :pswitch_0
    check-cast v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 49
    .line 50
    iget-object v0, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iput p1, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->frameIndex:I

    .line 62
    .line 63
    iget-boolean p1, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->ignoreEmptyFrames:Z

    .line 64
    .line 65
    if-nez p1, :cond_3

    .line 66
    .line 67
    iget-object p1, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroid/view/View;

    .line 74
    .line 75
    check-cast v2, Landroidx/lifecycle/LiveData$1;

    .line 76
    .line 77
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    iput-boolean v1, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->ignoreEmptyFrames:Z

    .line 83
    .line 84
    :cond_3
    :goto_1
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->out:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->charset:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([B)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.class public final enum Lorg/jsoup/parser/HtmlTreeBuilderState$1;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "Initial"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 8

    .line 1
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->isWhitespace(Lorg/jsoup/parser/Token;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isComment()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    check-cast p1, Lorg/jsoup/parser/Token$Comment;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertCommentNode(Lorg/jsoup/parser/Token$Comment;)V

    .line 18
    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isDoctype()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_b

    .line 26
    .line 27
    check-cast p1, Lorg/jsoup/parser/Token$Doctype;

    .line 28
    .line 29
    new-instance p0, Lorg/jsoup/nodes/DocumentType;

    .line 30
    .line 31
    iget-object v1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 32
    .line 33
    iget-object v2, p1, Lorg/jsoup/parser/Token$Doctype;->name:Lokhttp3/FormBody$Builder;

    .line 34
    .line 35
    invoke-virtual {v2}, Lokhttp3/FormBody$Builder;->value()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-boolean v1, v1, Lorg/jsoup/parser/ParseSettings;->preserveTagCase:Z

    .line 47
    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    invoke-static {v2}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :cond_2
    iget-object v1, p1, Lorg/jsoup/parser/Token$Doctype;->publicIdentifier:Lokhttp3/FormBody$Builder;

    .line 55
    .line 56
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->value()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v3, p1, Lorg/jsoup/parser/Token$Doctype;->systemIdentifier:Lokhttp3/FormBody$Builder;

    .line 61
    .line 62
    invoke-virtual {v3}, Lokhttp3/FormBody$Builder;->value()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-direct {p0, v2}, Lorg/jsoup/nodes/LeafNode;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Landroidx/room/Room;->notNull(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v3}, Landroidx/room/Room;->notNull(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const-string v5, "name"

    .line 80
    .line 81
    invoke-virtual {v4, v5, v2}, Lorg/jsoup/nodes/Attributes;->addObject(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 82
    .line 83
    .line 84
    const-string v2, "publicId"

    .line 85
    .line 86
    invoke-virtual {v4, v2, v1}, Lorg/jsoup/nodes/Attributes;->addObject(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 87
    .line 88
    .line 89
    const-string v1, "systemId"

    .line 90
    .line 91
    invoke-virtual {v4, v1, v3}, Lorg/jsoup/nodes/Attributes;->addObject(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    const-string v4, "pubSysKey"

    .line 99
    .line 100
    if-eqz v3, :cond_3

    .line 101
    .line 102
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v3, "PUBLIC"

    .line 107
    .line 108
    invoke-virtual {v1, v4, v3}, Lorg/jsoup/nodes/Attributes;->addObject(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    const-string v3, "SYSTEM"

    .line 123
    .line 124
    invoke-virtual {v1, v4, v3}, Lorg/jsoup/nodes/Attributes;->addObject(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_0
    iget-object v1, p1, Lorg/jsoup/parser/Token$Doctype;->pubSysKey:Ljava/lang/String;

    .line 128
    .line 129
    if-eqz v1, :cond_8

    .line 130
    .line 131
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->ensureAttributes()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    if-eqz v3, :cond_5

    .line 139
    .line 140
    iget-object v3, v3, Lorg/jsoup/nodes/Document;->parser:Lorg/jsoup/parser/Parser;

    .line 141
    .line 142
    iget-object v3, v3, Lorg/jsoup/parser/Parser;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_5
    sget-object v3, Lorg/jsoup/parser/ParseSettings;->htmlDefault:Lorg/jsoup/parser/ParseSettings;

    .line 146
    .line 147
    :goto_1
    iget-boolean v3, v3, Lorg/jsoup/parser/ParseSettings;->preserveAttributeCase:Z

    .line 148
    .line 149
    if-nez v3, :cond_6

    .line 150
    .line 151
    invoke-static {v4}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    :cond_6
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    const/4 v7, -0x1

    .line 164
    if-eq v6, v7, :cond_7

    .line 165
    .line 166
    iget-object v7, v3, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    .line 167
    .line 168
    aput-object v1, v7, v6

    .line 169
    .line 170
    iget-object v1, v3, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 171
    .line 172
    aget-object v1, v1, v6

    .line 173
    .line 174
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-nez v1, :cond_8

    .line 179
    .line 180
    iget-object v1, v3, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 181
    .line 182
    aput-object v4, v1, v6

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_7
    invoke-virtual {v3, v4, v1}, Lorg/jsoup/nodes/Attributes;->addObject(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 186
    .line 187
    .line 188
    :cond_8
    :goto_2
    iget-object v1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 189
    .line 190
    invoke-virtual {v1, p0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)V

    .line 191
    .line 192
    .line 193
    iget-boolean p1, p1, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 194
    .line 195
    if-nez p1, :cond_9

    .line 196
    .line 197
    invoke-virtual {p0, v5}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    const-string v1, "html"

    .line 202
    .line 203
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-eqz p1, :cond_9

    .line 208
    .line 209
    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    const-string p1, "HTML"

    .line 214
    .line 215
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    if-eqz p0, :cond_a

    .line 220
    .line 221
    :cond_9
    iget-object p0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 222
    .line 223
    sget-object p1, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 224
    .line 225
    iput-object p1, p0, Lorg/jsoup/nodes/Document;->quirksMode:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 226
    .line 227
    :cond_a
    sget-object p0, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHtml:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 228
    .line 229
    iput-object p0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 230
    .line 231
    return v0

    .line 232
    :cond_b
    iget-object p0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 233
    .line 234
    sget-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 235
    .line 236
    iput-object v0, p0, Lorg/jsoup/nodes/Document;->quirksMode:Lorg/jsoup/nodes/Document$QuirksMode;

    .line 237
    .line 238
    sget-object p0, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHtml:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 239
    .line 240
    iput-object p0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 241
    .line 242
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 243
    .line 244
    .line 245
    move-result p0

    .line 246
    return p0
.end method

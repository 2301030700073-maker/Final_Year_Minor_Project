.class public abstract enum Lorg/jsoup/parser/HtmlTreeBuilderState;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum AfterAfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState$22;

.field public static final enum AfterAfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState$23;

.field public static final enum AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState$19;

.field public static final enum AfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState$21;

.field public static final enum AfterHead:Lorg/jsoup/parser/HtmlTreeBuilderState$6;

.field public static final enum BeforeHead:Lorg/jsoup/parser/HtmlTreeBuilderState$3;

.field public static final enum BeforeHtml:Lorg/jsoup/parser/HtmlTreeBuilderState$2;

.field public static final enum ForeignContent:Lorg/jsoup/parser/HtmlTreeBuilderState$24;

.field public static final enum InBody:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

.field public static final enum InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState$11;

.field public static final enum InCell:Lorg/jsoup/parser/HtmlTreeBuilderState$15;

.field public static final enum InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState$12;

.field public static final enum InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState$20;

.field public static final enum InHead:Lorg/jsoup/parser/HtmlTreeBuilderState$4;

.field public static final enum InHeadNoscript:Lorg/jsoup/parser/HtmlTreeBuilderState$5;

.field public static final enum InRow:Lorg/jsoup/parser/HtmlTreeBuilderState$14;

.field public static final enum InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState$16;

.field public static final enum InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState$17;

.field public static final enum InTable:Lorg/jsoup/parser/HtmlTreeBuilderState$9;

.field public static final enum InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState$13;

.field public static final enum InTableText:Lorg/jsoup/parser/HtmlTreeBuilderState$10;

.field public static final enum InTemplate:Lorg/jsoup/parser/HtmlTreeBuilderState$18;

.field public static final enum Initial:Lorg/jsoup/parser/HtmlTreeBuilderState$1;

.field public static final enum Text:Lorg/jsoup/parser/HtmlTreeBuilderState$8;

.field public static final nullString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 1
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilderState$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Initial:Lorg/jsoup/parser/HtmlTreeBuilderState$1;

    .line 7
    .line 8
    new-instance v1, Lorg/jsoup/parser/HtmlTreeBuilderState$2;

    .line 9
    .line 10
    invoke-direct {v1}, Lorg/jsoup/parser/HtmlTreeBuilderState$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHtml:Lorg/jsoup/parser/HtmlTreeBuilderState$2;

    .line 14
    .line 15
    new-instance v2, Lorg/jsoup/parser/HtmlTreeBuilderState$3;

    .line 16
    .line 17
    invoke-direct {v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$3;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHead:Lorg/jsoup/parser/HtmlTreeBuilderState$3;

    .line 21
    .line 22
    new-instance v3, Lorg/jsoup/parser/HtmlTreeBuilderState$4;

    .line 23
    .line 24
    invoke-direct {v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState$4;

    .line 28
    .line 29
    new-instance v4, Lorg/jsoup/parser/HtmlTreeBuilderState$5;

    .line 30
    .line 31
    invoke-direct {v4}, Lorg/jsoup/parser/HtmlTreeBuilderState$5;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHeadNoscript:Lorg/jsoup/parser/HtmlTreeBuilderState$5;

    .line 35
    .line 36
    new-instance v5, Lorg/jsoup/parser/HtmlTreeBuilderState$6;

    .line 37
    .line 38
    invoke-direct {v5}, Lorg/jsoup/parser/HtmlTreeBuilderState$6;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterHead:Lorg/jsoup/parser/HtmlTreeBuilderState$6;

    .line 42
    .line 43
    new-instance v6, Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 44
    .line 45
    invoke-direct {v6}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 49
    .line 50
    new-instance v7, Lorg/jsoup/parser/HtmlTreeBuilderState$8;

    .line 51
    .line 52
    invoke-direct {v7}, Lorg/jsoup/parser/HtmlTreeBuilderState$8;-><init>()V

    .line 53
    .line 54
    .line 55
    sput-object v7, Lorg/jsoup/parser/HtmlTreeBuilderState;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState$8;

    .line 56
    .line 57
    new-instance v8, Lorg/jsoup/parser/HtmlTreeBuilderState$9;

    .line 58
    .line 59
    invoke-direct {v8}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;-><init>()V

    .line 60
    .line 61
    .line 62
    sput-object v8, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState$9;

    .line 63
    .line 64
    new-instance v9, Lorg/jsoup/parser/HtmlTreeBuilderState$10;

    .line 65
    .line 66
    invoke-direct {v9}, Lorg/jsoup/parser/HtmlTreeBuilderState$10;-><init>()V

    .line 67
    .line 68
    .line 69
    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableText:Lorg/jsoup/parser/HtmlTreeBuilderState$10;

    .line 70
    .line 71
    new-instance v10, Lorg/jsoup/parser/HtmlTreeBuilderState$11;

    .line 72
    .line 73
    invoke-direct {v10}, Lorg/jsoup/parser/HtmlTreeBuilderState$11;-><init>()V

    .line 74
    .line 75
    .line 76
    sput-object v10, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState$11;

    .line 77
    .line 78
    new-instance v11, Lorg/jsoup/parser/HtmlTreeBuilderState$12;

    .line 79
    .line 80
    invoke-direct {v11}, Lorg/jsoup/parser/HtmlTreeBuilderState$12;-><init>()V

    .line 81
    .line 82
    .line 83
    sput-object v11, Lorg/jsoup/parser/HtmlTreeBuilderState;->InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState$12;

    .line 84
    .line 85
    new-instance v12, Lorg/jsoup/parser/HtmlTreeBuilderState$13;

    .line 86
    .line 87
    invoke-direct {v12}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;-><init>()V

    .line 88
    .line 89
    .line 90
    sput-object v12, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState$13;

    .line 91
    .line 92
    new-instance v13, Lorg/jsoup/parser/HtmlTreeBuilderState$14;

    .line 93
    .line 94
    invoke-direct {v13}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;-><init>()V

    .line 95
    .line 96
    .line 97
    sput-object v13, Lorg/jsoup/parser/HtmlTreeBuilderState;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState$14;

    .line 98
    .line 99
    new-instance v14, Lorg/jsoup/parser/HtmlTreeBuilderState$15;

    .line 100
    .line 101
    invoke-direct {v14}, Lorg/jsoup/parser/HtmlTreeBuilderState$15;-><init>()V

    .line 102
    .line 103
    .line 104
    sput-object v14, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState$15;

    .line 105
    .line 106
    new-instance v15, Lorg/jsoup/parser/HtmlTreeBuilderState$16;

    .line 107
    .line 108
    invoke-direct {v15}, Lorg/jsoup/parser/HtmlTreeBuilderState$16;-><init>()V

    .line 109
    .line 110
    .line 111
    sput-object v15, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState$16;

    .line 112
    .line 113
    new-instance v16, Lorg/jsoup/parser/HtmlTreeBuilderState$17;

    .line 114
    .line 115
    invoke-direct/range {v16 .. v16}, Lorg/jsoup/parser/HtmlTreeBuilderState$17;-><init>()V

    .line 116
    .line 117
    .line 118
    sput-object v16, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState$17;

    .line 119
    .line 120
    new-instance v17, Lorg/jsoup/parser/HtmlTreeBuilderState$18;

    .line 121
    .line 122
    invoke-direct/range {v17 .. v17}, Lorg/jsoup/parser/HtmlTreeBuilderState$18;-><init>()V

    .line 123
    .line 124
    .line 125
    sput-object v17, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTemplate:Lorg/jsoup/parser/HtmlTreeBuilderState$18;

    .line 126
    .line 127
    new-instance v18, Lorg/jsoup/parser/HtmlTreeBuilderState$19;

    .line 128
    .line 129
    invoke-direct/range {v18 .. v18}, Lorg/jsoup/parser/HtmlTreeBuilderState$19;-><init>()V

    .line 130
    .line 131
    .line 132
    sput-object v18, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState$19;

    .line 133
    .line 134
    new-instance v19, Lorg/jsoup/parser/HtmlTreeBuilderState$20;

    .line 135
    .line 136
    invoke-direct/range {v19 .. v19}, Lorg/jsoup/parser/HtmlTreeBuilderState$20;-><init>()V

    .line 137
    .line 138
    .line 139
    sput-object v19, Lorg/jsoup/parser/HtmlTreeBuilderState;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState$20;

    .line 140
    .line 141
    new-instance v20, Lorg/jsoup/parser/HtmlTreeBuilderState$21;

    .line 142
    .line 143
    invoke-direct/range {v20 .. v20}, Lorg/jsoup/parser/HtmlTreeBuilderState$21;-><init>()V

    .line 144
    .line 145
    .line 146
    sput-object v20, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState$21;

    .line 147
    .line 148
    new-instance v21, Lorg/jsoup/parser/HtmlTreeBuilderState$22;

    .line 149
    .line 150
    invoke-direct/range {v21 .. v21}, Lorg/jsoup/parser/HtmlTreeBuilderState$22;-><init>()V

    .line 151
    .line 152
    .line 153
    sput-object v21, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterAfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState$22;

    .line 154
    .line 155
    new-instance v22, Lorg/jsoup/parser/HtmlTreeBuilderState$23;

    .line 156
    .line 157
    invoke-direct/range {v22 .. v22}, Lorg/jsoup/parser/HtmlTreeBuilderState$23;-><init>()V

    .line 158
    .line 159
    .line 160
    sput-object v22, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterAfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState$23;

    .line 161
    .line 162
    new-instance v23, Lorg/jsoup/parser/HtmlTreeBuilderState$24;

    .line 163
    .line 164
    invoke-direct/range {v23 .. v23}, Lorg/jsoup/parser/HtmlTreeBuilderState$24;-><init>()V

    .line 165
    .line 166
    .line 167
    sput-object v23, Lorg/jsoup/parser/HtmlTreeBuilderState;->ForeignContent:Lorg/jsoup/parser/HtmlTreeBuilderState$24;

    .line 168
    .line 169
    move-object/from16 v24, v0

    .line 170
    .line 171
    const/16 v0, 0x18

    .line 172
    .line 173
    new-array v0, v0, [Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 174
    .line 175
    const/16 v25, 0x0

    .line 176
    .line 177
    aput-object v24, v0, v25

    .line 178
    .line 179
    const/16 v24, 0x1

    .line 180
    .line 181
    aput-object v1, v0, v24

    .line 182
    .line 183
    const/4 v1, 0x2

    .line 184
    aput-object v2, v0, v1

    .line 185
    .line 186
    const/4 v1, 0x3

    .line 187
    aput-object v3, v0, v1

    .line 188
    .line 189
    const/4 v1, 0x4

    .line 190
    aput-object v4, v0, v1

    .line 191
    .line 192
    const/4 v1, 0x5

    .line 193
    aput-object v5, v0, v1

    .line 194
    .line 195
    const/4 v1, 0x6

    .line 196
    aput-object v6, v0, v1

    .line 197
    .line 198
    const/4 v1, 0x7

    .line 199
    aput-object v7, v0, v1

    .line 200
    .line 201
    const/16 v1, 0x8

    .line 202
    .line 203
    aput-object v8, v0, v1

    .line 204
    .line 205
    const/16 v1, 0x9

    .line 206
    .line 207
    aput-object v9, v0, v1

    .line 208
    .line 209
    const/16 v1, 0xa

    .line 210
    .line 211
    aput-object v10, v0, v1

    .line 212
    .line 213
    const/16 v1, 0xb

    .line 214
    .line 215
    aput-object v11, v0, v1

    .line 216
    .line 217
    const/16 v1, 0xc

    .line 218
    .line 219
    aput-object v12, v0, v1

    .line 220
    .line 221
    const/16 v1, 0xd

    .line 222
    .line 223
    aput-object v13, v0, v1

    .line 224
    .line 225
    const/16 v1, 0xe

    .line 226
    .line 227
    aput-object v14, v0, v1

    .line 228
    .line 229
    const/16 v1, 0xf

    .line 230
    .line 231
    aput-object v15, v0, v1

    .line 232
    .line 233
    const/16 v1, 0x10

    .line 234
    .line 235
    aput-object v16, v0, v1

    .line 236
    .line 237
    const/16 v1, 0x11

    .line 238
    .line 239
    aput-object v17, v0, v1

    .line 240
    .line 241
    const/16 v1, 0x12

    .line 242
    .line 243
    aput-object v18, v0, v1

    .line 244
    .line 245
    const/16 v1, 0x13

    .line 246
    .line 247
    aput-object v19, v0, v1

    .line 248
    .line 249
    const/16 v1, 0x14

    .line 250
    .line 251
    aput-object v20, v0, v1

    .line 252
    .line 253
    const/16 v1, 0x15

    .line 254
    .line 255
    aput-object v21, v0, v1

    .line 256
    .line 257
    const/16 v1, 0x16

    .line 258
    .line 259
    aput-object v22, v0, v1

    .line 260
    .line 261
    const/16 v1, 0x17

    .line 262
    .line 263
    aput-object v23, v0, v1

    .line 264
    .line 265
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->$VALUES:[Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 266
    .line 267
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->nullString:Ljava/lang/String;

    .line 272
    .line 273
    return-void
.end method

.method public static access$100(Lorg/jsoup/parser/Token;)Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/jsoup/parser/Token;->type:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    check-cast p0, Lorg/jsoup/parser/Token$Character;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/jsoup/parser/Token$Character;->data:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p0}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public static access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    .line 2
    .line 3
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Rawtext:Lorg/jsoup/parser/TokeniserState$5;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 9
    .line 10
    iput-object v0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->originalState:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 11
    .line 12
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState$8;

    .line 13
    .line 14
    iput-object v0, p1, Lorg/jsoup/parser/HtmlTreeBuilder;->state:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertElementFor(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static access$500(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/nodes/Element;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 2
    .line 3
    if-eqz p0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/jsoup/nodes/Attributes$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lorg/jsoup/nodes/Attributes$1;-><init>(Lorg/jsoup/nodes/Attributes;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes$1;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_7

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes$1;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lorg/jsoup/nodes/Attribute;

    .line 24
    .line 25
    iget-object v1, p0, Lorg/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, -0x1

    .line 36
    if-eq v3, v4, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v3, p0, Lorg/jsoup/nodes/Attribute;->parent:Lorg/jsoup/nodes/Attributes;

    .line 40
    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    sget v3, Lorg/jsoup/nodes/Range$AttributeRange;->$r8$clinit:I

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eq v5, v4, :cond_6

    .line 51
    .line 52
    const-string v5, "/jsoup.userdata"

    .line 53
    .line 54
    invoke-virtual {v3, v5}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eq v6, v4, :cond_3

    .line 59
    .line 60
    invoke-virtual {v3, v5}, Lorg/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-ne v6, v4, :cond_2

    .line 65
    .line 66
    new-instance v4, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v5, v4}, Lorg/jsoup/nodes/Attributes;->addObject(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    iget-object v3, v3, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    .line 76
    .line 77
    aget-object v3, v3, v6

    .line 78
    .line 79
    move-object v4, v3

    .line 80
    check-cast v4, Ljava/util/Map;

    .line 81
    .line 82
    :goto_1
    const-string v3, "jsoup.attrs"

    .line 83
    .line 84
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    const/4 v3, 0x0

    .line 90
    :goto_2
    check-cast v3, Ljava/util/Map;

    .line 91
    .line 92
    if-nez v3, :cond_4

    .line 93
    .line 94
    sget v3, Lorg/jsoup/nodes/Range$AttributeRange;->$r8$clinit:I

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Lorg/jsoup/nodes/Range$AttributeRange;

    .line 102
    .line 103
    if-eqz v3, :cond_5

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_5
    sget v3, Lorg/jsoup/nodes/Range$AttributeRange;->$r8$clinit:I

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_6
    sget v3, Lorg/jsoup/nodes/Range$AttributeRange;->$r8$clinit:I

    .line 110
    .line 111
    :goto_3
    iget-object v3, p0, Lorg/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v3}, Lorg/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v2, v1, v3}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iput-object v2, p0, Lorg/jsoup/nodes/Attribute;->parent:Lorg/jsoup/nodes/Attributes;

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_7
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    .line 1
    const-class v0, Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    .line 1
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->$VALUES:[Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/jsoup/parser/HtmlTreeBuilderState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
.end method

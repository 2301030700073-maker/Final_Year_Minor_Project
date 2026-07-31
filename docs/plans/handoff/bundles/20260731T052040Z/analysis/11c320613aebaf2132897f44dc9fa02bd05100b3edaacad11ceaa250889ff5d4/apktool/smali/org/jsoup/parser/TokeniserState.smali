.class public abstract enum Lorg/jsoup/parser/TokeniserState;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $VALUES:[Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterAttributeName:Lorg/jsoup/parser/TokeniserState$36;

.field public static final enum AfterAttributeValue_quoted:Lorg/jsoup/parser/TokeniserState$41;

.field public static final enum AfterDoctypeName:Lorg/jsoup/parser/TokeniserState$55;

.field public static final enum AfterDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState$60;

.field public static final enum AfterDoctypePublicKeyword:Lorg/jsoup/parser/TokeniserState$56;

.field public static final enum AfterDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState$66;

.field public static final enum AfterDoctypeSystemKeyword:Lorg/jsoup/parser/TokeniserState$62;

.field public static final enum AttributeName:Lorg/jsoup/parser/TokeniserState$35;

.field public static final enum AttributeValue_doubleQuoted:Lorg/jsoup/parser/TokeniserState$38;

.field public static final enum AttributeValue_singleQuoted:Lorg/jsoup/parser/TokeniserState$39;

.field public static final enum AttributeValue_unquoted:Lorg/jsoup/parser/TokeniserState$40;

.field public static final enum BeforeAttributeName:Lorg/jsoup/parser/TokeniserState$34;

.field public static final enum BeforeAttributeValue:Lorg/jsoup/parser/TokeniserState$37;

.field public static final enum BeforeDoctypeName:Lorg/jsoup/parser/TokeniserState$53;

.field public static final enum BeforeDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState$57;

.field public static final enum BeforeDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState$63;

.field public static final enum BetweenDoctypePublicAndSystemIdentifiers:Lorg/jsoup/parser/TokeniserState$61;

.field public static final enum BogusComment:Lorg/jsoup/parser/TokeniserState$43;

.field public static final enum BogusDoctype:Lorg/jsoup/parser/TokeniserState$67;

.field public static final enum CdataSection:Lorg/jsoup/parser/TokeniserState$69;

.field public static final enum CharacterReferenceInData:Lorg/jsoup/parser/TokeniserState$2;

.field public static final enum CharacterReferenceInRcdata:Lorg/jsoup/parser/TokeniserState$4;

.field public static final enum Comment:Lorg/jsoup/parser/TokeniserState$48;

.field public static final enum CommentEnd:Lorg/jsoup/parser/TokeniserState$50;

.field public static final enum CommentEndBang:Lorg/jsoup/parser/TokeniserState$51;

.field public static final enum CommentEndDash:Lorg/jsoup/parser/TokeniserState$49;

.field public static final enum CommentStart:Lorg/jsoup/parser/TokeniserState$46;

.field public static final enum CommentStartDash:Lorg/jsoup/parser/TokeniserState$47;

.field public static final enum Data:Lorg/jsoup/parser/TokeniserState$1;

.field public static final enum Doctype:Lorg/jsoup/parser/TokeniserState$52;

.field public static final enum DoctypeInternalSubset:Lorg/jsoup/parser/TokeniserState$68;

.field public static final enum DoctypeName:Lorg/jsoup/parser/TokeniserState$54;

.field public static final enum DoctypePublicIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState$58;

.field public static final enum DoctypePublicIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState$59;

.field public static final enum DoctypeSystemIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState$64;

.field public static final enum DoctypeSystemIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState$65;

.field public static final enum EndTagOpen:Lorg/jsoup/parser/TokeniserState$9;

.field public static final enum MarkupDeclarationOpen:Lorg/jsoup/parser/TokeniserState$44;

.field public static final enum MarkupProcessingOpen:Lorg/jsoup/parser/TokeniserState$45;

.field public static final enum PLAINTEXT:Lorg/jsoup/parser/TokeniserState$7;

.field public static final enum RCDATAEndTagName:Lorg/jsoup/parser/TokeniserState$13;

.field public static final enum RCDATAEndTagOpen:Lorg/jsoup/parser/TokeniserState$12;

.field public static final enum Rawtext:Lorg/jsoup/parser/TokeniserState$5;

.field public static final enum RawtextEndTagName:Lorg/jsoup/parser/TokeniserState$16;

.field public static final enum RawtextEndTagOpen:Lorg/jsoup/parser/TokeniserState$15;

.field public static final enum RawtextLessthanSign:Lorg/jsoup/parser/TokeniserState$14;

.field public static final enum Rcdata:Lorg/jsoup/parser/TokeniserState$3;

.field public static final enum RcdataLessthanSign:Lorg/jsoup/parser/TokeniserState$11;

.field public static final enum ScriptData:Lorg/jsoup/parser/TokeniserState$6;

.field public static final enum ScriptDataDoubleEscapeEnd:Lorg/jsoup/parser/TokeniserState$33;

.field public static final enum ScriptDataDoubleEscapeStart:Lorg/jsoup/parser/TokeniserState$28;

.field public static final enum ScriptDataDoubleEscaped:Lorg/jsoup/parser/TokeniserState$29;

.field public static final enum ScriptDataDoubleEscapedDash:Lorg/jsoup/parser/TokeniserState$30;

.field public static final enum ScriptDataDoubleEscapedDashDash:Lorg/jsoup/parser/TokeniserState$31;

.field public static final enum ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState$32;

.field public static final enum ScriptDataEndTagName:Lorg/jsoup/parser/TokeniserState$19;

.field public static final enum ScriptDataEndTagOpen:Lorg/jsoup/parser/TokeniserState$18;

.field public static final enum ScriptDataEscapeStart:Lorg/jsoup/parser/TokeniserState$20;

.field public static final enum ScriptDataEscapeStartDash:Lorg/jsoup/parser/TokeniserState$21;

.field public static final enum ScriptDataEscaped:Lorg/jsoup/parser/TokeniserState$22;

.field public static final enum ScriptDataEscapedDash:Lorg/jsoup/parser/TokeniserState$23;

.field public static final enum ScriptDataEscapedDashDash:Lorg/jsoup/parser/TokeniserState$24;

.field public static final enum ScriptDataEscapedEndTagName:Lorg/jsoup/parser/TokeniserState$27;

.field public static final enum ScriptDataEscapedEndTagOpen:Lorg/jsoup/parser/TokeniserState$26;

.field public static final enum ScriptDataEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState$25;

.field public static final enum ScriptDataLessthanSign:Lorg/jsoup/parser/TokeniserState$17;

.field public static final enum SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState$42;

.field public static final enum TagName:Lorg/jsoup/parser/TokeniserState$10;

.field public static final enum TagOpen:Lorg/jsoup/parser/TokeniserState$8;

.field public static final attributeNameCharsSorted:[C

.field public static final attributeValueUnquoted:[C

.field public static final replacementStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 71

    .line 1
    new-instance v0, Lorg/jsoup/parser/TokeniserState$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jsoup/parser/TokeniserState$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState$1;

    .line 7
    .line 8
    new-instance v1, Lorg/jsoup/parser/TokeniserState$2;

    .line 9
    .line 10
    invoke-direct {v1}, Lorg/jsoup/parser/TokeniserState$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lorg/jsoup/parser/TokeniserState;->CharacterReferenceInData:Lorg/jsoup/parser/TokeniserState$2;

    .line 14
    .line 15
    new-instance v2, Lorg/jsoup/parser/TokeniserState$3;

    .line 16
    .line 17
    invoke-direct {v2}, Lorg/jsoup/parser/TokeniserState$3;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState$3;

    .line 21
    .line 22
    new-instance v3, Lorg/jsoup/parser/TokeniserState$4;

    .line 23
    .line 24
    invoke-direct {v3}, Lorg/jsoup/parser/TokeniserState$4;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v3, Lorg/jsoup/parser/TokeniserState;->CharacterReferenceInRcdata:Lorg/jsoup/parser/TokeniserState$4;

    .line 28
    .line 29
    new-instance v4, Lorg/jsoup/parser/TokeniserState$5;

    .line 30
    .line 31
    invoke-direct {v4}, Lorg/jsoup/parser/TokeniserState$5;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v4, Lorg/jsoup/parser/TokeniserState;->Rawtext:Lorg/jsoup/parser/TokeniserState$5;

    .line 35
    .line 36
    new-instance v5, Lorg/jsoup/parser/TokeniserState$6;

    .line 37
    .line 38
    invoke-direct {v5}, Lorg/jsoup/parser/TokeniserState$6;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v5, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState$6;

    .line 42
    .line 43
    new-instance v6, Lorg/jsoup/parser/TokeniserState$7;

    .line 44
    .line 45
    invoke-direct {v6}, Lorg/jsoup/parser/TokeniserState$7;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v6, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState$7;

    .line 49
    .line 50
    new-instance v7, Lorg/jsoup/parser/TokeniserState$8;

    .line 51
    .line 52
    invoke-direct {v7}, Lorg/jsoup/parser/TokeniserState$8;-><init>()V

    .line 53
    .line 54
    .line 55
    sput-object v7, Lorg/jsoup/parser/TokeniserState;->TagOpen:Lorg/jsoup/parser/TokeniserState$8;

    .line 56
    .line 57
    new-instance v8, Lorg/jsoup/parser/TokeniserState$9;

    .line 58
    .line 59
    invoke-direct {v8}, Lorg/jsoup/parser/TokeniserState$9;-><init>()V

    .line 60
    .line 61
    .line 62
    sput-object v8, Lorg/jsoup/parser/TokeniserState;->EndTagOpen:Lorg/jsoup/parser/TokeniserState$9;

    .line 63
    .line 64
    new-instance v9, Lorg/jsoup/parser/TokeniserState$10;

    .line 65
    .line 66
    invoke-direct {v9}, Lorg/jsoup/parser/TokeniserState$10;-><init>()V

    .line 67
    .line 68
    .line 69
    sput-object v9, Lorg/jsoup/parser/TokeniserState;->TagName:Lorg/jsoup/parser/TokeniserState$10;

    .line 70
    .line 71
    new-instance v10, Lorg/jsoup/parser/TokeniserState$11;

    .line 72
    .line 73
    invoke-direct {v10}, Lorg/jsoup/parser/TokeniserState$11;-><init>()V

    .line 74
    .line 75
    .line 76
    sput-object v10, Lorg/jsoup/parser/TokeniserState;->RcdataLessthanSign:Lorg/jsoup/parser/TokeniserState$11;

    .line 77
    .line 78
    new-instance v11, Lorg/jsoup/parser/TokeniserState$12;

    .line 79
    .line 80
    invoke-direct {v11}, Lorg/jsoup/parser/TokeniserState$12;-><init>()V

    .line 81
    .line 82
    .line 83
    sput-object v11, Lorg/jsoup/parser/TokeniserState;->RCDATAEndTagOpen:Lorg/jsoup/parser/TokeniserState$12;

    .line 84
    .line 85
    new-instance v12, Lorg/jsoup/parser/TokeniserState$13;

    .line 86
    .line 87
    invoke-direct {v12}, Lorg/jsoup/parser/TokeniserState$13;-><init>()V

    .line 88
    .line 89
    .line 90
    sput-object v12, Lorg/jsoup/parser/TokeniserState;->RCDATAEndTagName:Lorg/jsoup/parser/TokeniserState$13;

    .line 91
    .line 92
    new-instance v13, Lorg/jsoup/parser/TokeniserState$14;

    .line 93
    .line 94
    invoke-direct {v13}, Lorg/jsoup/parser/TokeniserState$14;-><init>()V

    .line 95
    .line 96
    .line 97
    sput-object v13, Lorg/jsoup/parser/TokeniserState;->RawtextLessthanSign:Lorg/jsoup/parser/TokeniserState$14;

    .line 98
    .line 99
    new-instance v14, Lorg/jsoup/parser/TokeniserState$15;

    .line 100
    .line 101
    invoke-direct {v14}, Lorg/jsoup/parser/TokeniserState$15;-><init>()V

    .line 102
    .line 103
    .line 104
    sput-object v14, Lorg/jsoup/parser/TokeniserState;->RawtextEndTagOpen:Lorg/jsoup/parser/TokeniserState$15;

    .line 105
    .line 106
    new-instance v15, Lorg/jsoup/parser/TokeniserState$16;

    .line 107
    .line 108
    invoke-direct {v15}, Lorg/jsoup/parser/TokeniserState$16;-><init>()V

    .line 109
    .line 110
    .line 111
    sput-object v15, Lorg/jsoup/parser/TokeniserState;->RawtextEndTagName:Lorg/jsoup/parser/TokeniserState$16;

    .line 112
    .line 113
    new-instance v16, Lorg/jsoup/parser/TokeniserState$17;

    .line 114
    .line 115
    invoke-direct/range {v16 .. v16}, Lorg/jsoup/parser/TokeniserState$17;-><init>()V

    .line 116
    .line 117
    .line 118
    sput-object v16, Lorg/jsoup/parser/TokeniserState;->ScriptDataLessthanSign:Lorg/jsoup/parser/TokeniserState$17;

    .line 119
    .line 120
    new-instance v17, Lorg/jsoup/parser/TokeniserState$18;

    .line 121
    .line 122
    invoke-direct/range {v17 .. v17}, Lorg/jsoup/parser/TokeniserState$18;-><init>()V

    .line 123
    .line 124
    .line 125
    sput-object v17, Lorg/jsoup/parser/TokeniserState;->ScriptDataEndTagOpen:Lorg/jsoup/parser/TokeniserState$18;

    .line 126
    .line 127
    new-instance v18, Lorg/jsoup/parser/TokeniserState$19;

    .line 128
    .line 129
    invoke-direct/range {v18 .. v18}, Lorg/jsoup/parser/TokeniserState$19;-><init>()V

    .line 130
    .line 131
    .line 132
    sput-object v18, Lorg/jsoup/parser/TokeniserState;->ScriptDataEndTagName:Lorg/jsoup/parser/TokeniserState$19;

    .line 133
    .line 134
    new-instance v19, Lorg/jsoup/parser/TokeniserState$20;

    .line 135
    .line 136
    invoke-direct/range {v19 .. v19}, Lorg/jsoup/parser/TokeniserState$20;-><init>()V

    .line 137
    .line 138
    .line 139
    sput-object v19, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapeStart:Lorg/jsoup/parser/TokeniserState$20;

    .line 140
    .line 141
    new-instance v20, Lorg/jsoup/parser/TokeniserState$21;

    .line 142
    .line 143
    invoke-direct/range {v20 .. v20}, Lorg/jsoup/parser/TokeniserState$21;-><init>()V

    .line 144
    .line 145
    .line 146
    sput-object v20, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapeStartDash:Lorg/jsoup/parser/TokeniserState$21;

    .line 147
    .line 148
    new-instance v21, Lorg/jsoup/parser/TokeniserState$22;

    .line 149
    .line 150
    invoke-direct/range {v21 .. v21}, Lorg/jsoup/parser/TokeniserState$22;-><init>()V

    .line 151
    .line 152
    .line 153
    sput-object v21, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscaped:Lorg/jsoup/parser/TokeniserState$22;

    .line 154
    .line 155
    new-instance v22, Lorg/jsoup/parser/TokeniserState$23;

    .line 156
    .line 157
    invoke-direct/range {v22 .. v22}, Lorg/jsoup/parser/TokeniserState$23;-><init>()V

    .line 158
    .line 159
    .line 160
    sput-object v22, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedDash:Lorg/jsoup/parser/TokeniserState$23;

    .line 161
    .line 162
    new-instance v23, Lorg/jsoup/parser/TokeniserState$24;

    .line 163
    .line 164
    invoke-direct/range {v23 .. v23}, Lorg/jsoup/parser/TokeniserState$24;-><init>()V

    .line 165
    .line 166
    .line 167
    sput-object v23, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedDashDash:Lorg/jsoup/parser/TokeniserState$24;

    .line 168
    .line 169
    new-instance v24, Lorg/jsoup/parser/TokeniserState$25;

    .line 170
    .line 171
    invoke-direct/range {v24 .. v24}, Lorg/jsoup/parser/TokeniserState$25;-><init>()V

    .line 172
    .line 173
    .line 174
    sput-object v24, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState$25;

    .line 175
    .line 176
    new-instance v25, Lorg/jsoup/parser/TokeniserState$26;

    .line 177
    .line 178
    invoke-direct/range {v25 .. v25}, Lorg/jsoup/parser/TokeniserState$26;-><init>()V

    .line 179
    .line 180
    .line 181
    sput-object v25, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedEndTagOpen:Lorg/jsoup/parser/TokeniserState$26;

    .line 182
    .line 183
    new-instance v26, Lorg/jsoup/parser/TokeniserState$27;

    .line 184
    .line 185
    invoke-direct/range {v26 .. v26}, Lorg/jsoup/parser/TokeniserState$27;-><init>()V

    .line 186
    .line 187
    .line 188
    sput-object v26, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedEndTagName:Lorg/jsoup/parser/TokeniserState$27;

    .line 189
    .line 190
    new-instance v27, Lorg/jsoup/parser/TokeniserState$28;

    .line 191
    .line 192
    invoke-direct/range {v27 .. v27}, Lorg/jsoup/parser/TokeniserState$28;-><init>()V

    .line 193
    .line 194
    .line 195
    sput-object v27, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapeStart:Lorg/jsoup/parser/TokeniserState$28;

    .line 196
    .line 197
    new-instance v28, Lorg/jsoup/parser/TokeniserState$29;

    .line 198
    .line 199
    invoke-direct/range {v28 .. v28}, Lorg/jsoup/parser/TokeniserState$29;-><init>()V

    .line 200
    .line 201
    .line 202
    sput-object v28, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscaped:Lorg/jsoup/parser/TokeniserState$29;

    .line 203
    .line 204
    new-instance v29, Lorg/jsoup/parser/TokeniserState$30;

    .line 205
    .line 206
    invoke-direct/range {v29 .. v29}, Lorg/jsoup/parser/TokeniserState$30;-><init>()V

    .line 207
    .line 208
    .line 209
    sput-object v29, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedDash:Lorg/jsoup/parser/TokeniserState$30;

    .line 210
    .line 211
    new-instance v30, Lorg/jsoup/parser/TokeniserState$31;

    .line 212
    .line 213
    invoke-direct/range {v30 .. v30}, Lorg/jsoup/parser/TokeniserState$31;-><init>()V

    .line 214
    .line 215
    .line 216
    sput-object v30, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedDashDash:Lorg/jsoup/parser/TokeniserState$31;

    .line 217
    .line 218
    new-instance v31, Lorg/jsoup/parser/TokeniserState$32;

    .line 219
    .line 220
    invoke-direct/range {v31 .. v31}, Lorg/jsoup/parser/TokeniserState$32;-><init>()V

    .line 221
    .line 222
    .line 223
    sput-object v31, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState$32;

    .line 224
    .line 225
    new-instance v32, Lorg/jsoup/parser/TokeniserState$33;

    .line 226
    .line 227
    invoke-direct/range {v32 .. v32}, Lorg/jsoup/parser/TokeniserState$33;-><init>()V

    .line 228
    .line 229
    .line 230
    sput-object v32, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapeEnd:Lorg/jsoup/parser/TokeniserState$33;

    .line 231
    .line 232
    new-instance v33, Lorg/jsoup/parser/TokeniserState$34;

    .line 233
    .line 234
    invoke-direct/range {v33 .. v33}, Lorg/jsoup/parser/TokeniserState$34;-><init>()V

    .line 235
    .line 236
    .line 237
    sput-object v33, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState$34;

    .line 238
    .line 239
    new-instance v34, Lorg/jsoup/parser/TokeniserState$35;

    .line 240
    .line 241
    invoke-direct/range {v34 .. v34}, Lorg/jsoup/parser/TokeniserState$35;-><init>()V

    .line 242
    .line 243
    .line 244
    sput-object v34, Lorg/jsoup/parser/TokeniserState;->AttributeName:Lorg/jsoup/parser/TokeniserState$35;

    .line 245
    .line 246
    new-instance v35, Lorg/jsoup/parser/TokeniserState$36;

    .line 247
    .line 248
    invoke-direct/range {v35 .. v35}, Lorg/jsoup/parser/TokeniserState$36;-><init>()V

    .line 249
    .line 250
    .line 251
    sput-object v35, Lorg/jsoup/parser/TokeniserState;->AfterAttributeName:Lorg/jsoup/parser/TokeniserState$36;

    .line 252
    .line 253
    new-instance v36, Lorg/jsoup/parser/TokeniserState$37;

    .line 254
    .line 255
    invoke-direct/range {v36 .. v36}, Lorg/jsoup/parser/TokeniserState$37;-><init>()V

    .line 256
    .line 257
    .line 258
    sput-object v36, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeValue:Lorg/jsoup/parser/TokeniserState$37;

    .line 259
    .line 260
    new-instance v37, Lorg/jsoup/parser/TokeniserState$38;

    .line 261
    .line 262
    invoke-direct/range {v37 .. v37}, Lorg/jsoup/parser/TokeniserState$38;-><init>()V

    .line 263
    .line 264
    .line 265
    sput-object v37, Lorg/jsoup/parser/TokeniserState;->AttributeValue_doubleQuoted:Lorg/jsoup/parser/TokeniserState$38;

    .line 266
    .line 267
    new-instance v38, Lorg/jsoup/parser/TokeniserState$39;

    .line 268
    .line 269
    invoke-direct/range {v38 .. v38}, Lorg/jsoup/parser/TokeniserState$39;-><init>()V

    .line 270
    .line 271
    .line 272
    sput-object v38, Lorg/jsoup/parser/TokeniserState;->AttributeValue_singleQuoted:Lorg/jsoup/parser/TokeniserState$39;

    .line 273
    .line 274
    new-instance v39, Lorg/jsoup/parser/TokeniserState$40;

    .line 275
    .line 276
    invoke-direct/range {v39 .. v39}, Lorg/jsoup/parser/TokeniserState$40;-><init>()V

    .line 277
    .line 278
    .line 279
    sput-object v39, Lorg/jsoup/parser/TokeniserState;->AttributeValue_unquoted:Lorg/jsoup/parser/TokeniserState$40;

    .line 280
    .line 281
    new-instance v40, Lorg/jsoup/parser/TokeniserState$41;

    .line 282
    .line 283
    invoke-direct/range {v40 .. v40}, Lorg/jsoup/parser/TokeniserState$41;-><init>()V

    .line 284
    .line 285
    .line 286
    sput-object v40, Lorg/jsoup/parser/TokeniserState;->AfterAttributeValue_quoted:Lorg/jsoup/parser/TokeniserState$41;

    .line 287
    .line 288
    new-instance v41, Lorg/jsoup/parser/TokeniserState$42;

    .line 289
    .line 290
    invoke-direct/range {v41 .. v41}, Lorg/jsoup/parser/TokeniserState$42;-><init>()V

    .line 291
    .line 292
    .line 293
    sput-object v41, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState$42;

    .line 294
    .line 295
    new-instance v42, Lorg/jsoup/parser/TokeniserState$43;

    .line 296
    .line 297
    invoke-direct/range {v42 .. v42}, Lorg/jsoup/parser/TokeniserState$43;-><init>()V

    .line 298
    .line 299
    .line 300
    sput-object v42, Lorg/jsoup/parser/TokeniserState;->BogusComment:Lorg/jsoup/parser/TokeniserState$43;

    .line 301
    .line 302
    new-instance v43, Lorg/jsoup/parser/TokeniserState$44;

    .line 303
    .line 304
    invoke-direct/range {v43 .. v43}, Lorg/jsoup/parser/TokeniserState$44;-><init>()V

    .line 305
    .line 306
    .line 307
    sput-object v43, Lorg/jsoup/parser/TokeniserState;->MarkupDeclarationOpen:Lorg/jsoup/parser/TokeniserState$44;

    .line 308
    .line 309
    new-instance v44, Lorg/jsoup/parser/TokeniserState$45;

    .line 310
    .line 311
    invoke-direct/range {v44 .. v44}, Lorg/jsoup/parser/TokeniserState$45;-><init>()V

    .line 312
    .line 313
    .line 314
    sput-object v44, Lorg/jsoup/parser/TokeniserState;->MarkupProcessingOpen:Lorg/jsoup/parser/TokeniserState$45;

    .line 315
    .line 316
    new-instance v45, Lorg/jsoup/parser/TokeniserState$46;

    .line 317
    .line 318
    invoke-direct/range {v45 .. v45}, Lorg/jsoup/parser/TokeniserState$46;-><init>()V

    .line 319
    .line 320
    .line 321
    sput-object v45, Lorg/jsoup/parser/TokeniserState;->CommentStart:Lorg/jsoup/parser/TokeniserState$46;

    .line 322
    .line 323
    new-instance v46, Lorg/jsoup/parser/TokeniserState$47;

    .line 324
    .line 325
    invoke-direct/range {v46 .. v46}, Lorg/jsoup/parser/TokeniserState$47;-><init>()V

    .line 326
    .line 327
    .line 328
    sput-object v46, Lorg/jsoup/parser/TokeniserState;->CommentStartDash:Lorg/jsoup/parser/TokeniserState$47;

    .line 329
    .line 330
    new-instance v47, Lorg/jsoup/parser/TokeniserState$48;

    .line 331
    .line 332
    invoke-direct/range {v47 .. v47}, Lorg/jsoup/parser/TokeniserState$48;-><init>()V

    .line 333
    .line 334
    .line 335
    sput-object v47, Lorg/jsoup/parser/TokeniserState;->Comment:Lorg/jsoup/parser/TokeniserState$48;

    .line 336
    .line 337
    new-instance v48, Lorg/jsoup/parser/TokeniserState$49;

    .line 338
    .line 339
    invoke-direct/range {v48 .. v48}, Lorg/jsoup/parser/TokeniserState$49;-><init>()V

    .line 340
    .line 341
    .line 342
    sput-object v48, Lorg/jsoup/parser/TokeniserState;->CommentEndDash:Lorg/jsoup/parser/TokeniserState$49;

    .line 343
    .line 344
    new-instance v49, Lorg/jsoup/parser/TokeniserState$50;

    .line 345
    .line 346
    invoke-direct/range {v49 .. v49}, Lorg/jsoup/parser/TokeniserState$50;-><init>()V

    .line 347
    .line 348
    .line 349
    sput-object v49, Lorg/jsoup/parser/TokeniserState;->CommentEnd:Lorg/jsoup/parser/TokeniserState$50;

    .line 350
    .line 351
    new-instance v50, Lorg/jsoup/parser/TokeniserState$51;

    .line 352
    .line 353
    invoke-direct/range {v50 .. v50}, Lorg/jsoup/parser/TokeniserState$51;-><init>()V

    .line 354
    .line 355
    .line 356
    sput-object v50, Lorg/jsoup/parser/TokeniserState;->CommentEndBang:Lorg/jsoup/parser/TokeniserState$51;

    .line 357
    .line 358
    new-instance v51, Lorg/jsoup/parser/TokeniserState$52;

    .line 359
    .line 360
    invoke-direct/range {v51 .. v51}, Lorg/jsoup/parser/TokeniserState$52;-><init>()V

    .line 361
    .line 362
    .line 363
    sput-object v51, Lorg/jsoup/parser/TokeniserState;->Doctype:Lorg/jsoup/parser/TokeniserState$52;

    .line 364
    .line 365
    new-instance v52, Lorg/jsoup/parser/TokeniserState$53;

    .line 366
    .line 367
    invoke-direct/range {v52 .. v52}, Lorg/jsoup/parser/TokeniserState$53;-><init>()V

    .line 368
    .line 369
    .line 370
    sput-object v52, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypeName:Lorg/jsoup/parser/TokeniserState$53;

    .line 371
    .line 372
    new-instance v53, Lorg/jsoup/parser/TokeniserState$54;

    .line 373
    .line 374
    invoke-direct/range {v53 .. v53}, Lorg/jsoup/parser/TokeniserState$54;-><init>()V

    .line 375
    .line 376
    .line 377
    sput-object v53, Lorg/jsoup/parser/TokeniserState;->DoctypeName:Lorg/jsoup/parser/TokeniserState$54;

    .line 378
    .line 379
    new-instance v54, Lorg/jsoup/parser/TokeniserState$55;

    .line 380
    .line 381
    invoke-direct/range {v54 .. v54}, Lorg/jsoup/parser/TokeniserState$55;-><init>()V

    .line 382
    .line 383
    .line 384
    sput-object v54, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeName:Lorg/jsoup/parser/TokeniserState$55;

    .line 385
    .line 386
    new-instance v55, Lorg/jsoup/parser/TokeniserState$56;

    .line 387
    .line 388
    invoke-direct/range {v55 .. v55}, Lorg/jsoup/parser/TokeniserState$56;-><init>()V

    .line 389
    .line 390
    .line 391
    sput-object v55, Lorg/jsoup/parser/TokeniserState;->AfterDoctypePublicKeyword:Lorg/jsoup/parser/TokeniserState$56;

    .line 392
    .line 393
    new-instance v56, Lorg/jsoup/parser/TokeniserState$57;

    .line 394
    .line 395
    invoke-direct/range {v56 .. v56}, Lorg/jsoup/parser/TokeniserState$57;-><init>()V

    .line 396
    .line 397
    .line 398
    sput-object v56, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState$57;

    .line 399
    .line 400
    new-instance v57, Lorg/jsoup/parser/TokeniserState$58;

    .line 401
    .line 402
    invoke-direct/range {v57 .. v57}, Lorg/jsoup/parser/TokeniserState$58;-><init>()V

    .line 403
    .line 404
    .line 405
    sput-object v57, Lorg/jsoup/parser/TokeniserState;->DoctypePublicIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState$58;

    .line 406
    .line 407
    new-instance v58, Lorg/jsoup/parser/TokeniserState$59;

    .line 408
    .line 409
    invoke-direct/range {v58 .. v58}, Lorg/jsoup/parser/TokeniserState$59;-><init>()V

    .line 410
    .line 411
    .line 412
    sput-object v58, Lorg/jsoup/parser/TokeniserState;->DoctypePublicIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState$59;

    .line 413
    .line 414
    new-instance v59, Lorg/jsoup/parser/TokeniserState$60;

    .line 415
    .line 416
    invoke-direct/range {v59 .. v59}, Lorg/jsoup/parser/TokeniserState$60;-><init>()V

    .line 417
    .line 418
    .line 419
    sput-object v59, Lorg/jsoup/parser/TokeniserState;->AfterDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState$60;

    .line 420
    .line 421
    new-instance v60, Lorg/jsoup/parser/TokeniserState$61;

    .line 422
    .line 423
    invoke-direct/range {v60 .. v60}, Lorg/jsoup/parser/TokeniserState$61;-><init>()V

    .line 424
    .line 425
    .line 426
    sput-object v60, Lorg/jsoup/parser/TokeniserState;->BetweenDoctypePublicAndSystemIdentifiers:Lorg/jsoup/parser/TokeniserState$61;

    .line 427
    .line 428
    new-instance v61, Lorg/jsoup/parser/TokeniserState$62;

    .line 429
    .line 430
    invoke-direct/range {v61 .. v61}, Lorg/jsoup/parser/TokeniserState$62;-><init>()V

    .line 431
    .line 432
    .line 433
    sput-object v61, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeSystemKeyword:Lorg/jsoup/parser/TokeniserState$62;

    .line 434
    .line 435
    new-instance v62, Lorg/jsoup/parser/TokeniserState$63;

    .line 436
    .line 437
    invoke-direct/range {v62 .. v62}, Lorg/jsoup/parser/TokeniserState$63;-><init>()V

    .line 438
    .line 439
    .line 440
    sput-object v62, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState$63;

    .line 441
    .line 442
    new-instance v63, Lorg/jsoup/parser/TokeniserState$64;

    .line 443
    .line 444
    invoke-direct/range {v63 .. v63}, Lorg/jsoup/parser/TokeniserState$64;-><init>()V

    .line 445
    .line 446
    .line 447
    sput-object v63, Lorg/jsoup/parser/TokeniserState;->DoctypeSystemIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState$64;

    .line 448
    .line 449
    new-instance v64, Lorg/jsoup/parser/TokeniserState$65;

    .line 450
    .line 451
    invoke-direct/range {v64 .. v64}, Lorg/jsoup/parser/TokeniserState$65;-><init>()V

    .line 452
    .line 453
    .line 454
    sput-object v64, Lorg/jsoup/parser/TokeniserState;->DoctypeSystemIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState$65;

    .line 455
    .line 456
    new-instance v65, Lorg/jsoup/parser/TokeniserState$66;

    .line 457
    .line 458
    invoke-direct/range {v65 .. v65}, Lorg/jsoup/parser/TokeniserState$66;-><init>()V

    .line 459
    .line 460
    .line 461
    sput-object v65, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState$66;

    .line 462
    .line 463
    new-instance v66, Lorg/jsoup/parser/TokeniserState$67;

    .line 464
    .line 465
    invoke-direct/range {v66 .. v66}, Lorg/jsoup/parser/TokeniserState$67;-><init>()V

    .line 466
    .line 467
    .line 468
    sput-object v66, Lorg/jsoup/parser/TokeniserState;->BogusDoctype:Lorg/jsoup/parser/TokeniserState$67;

    .line 469
    .line 470
    new-instance v67, Lorg/jsoup/parser/TokeniserState$68;

    .line 471
    .line 472
    invoke-direct/range {v67 .. v67}, Lorg/jsoup/parser/TokeniserState$68;-><init>()V

    .line 473
    .line 474
    .line 475
    sput-object v67, Lorg/jsoup/parser/TokeniserState;->DoctypeInternalSubset:Lorg/jsoup/parser/TokeniserState$68;

    .line 476
    .line 477
    new-instance v68, Lorg/jsoup/parser/TokeniserState$69;

    .line 478
    .line 479
    invoke-direct/range {v68 .. v68}, Lorg/jsoup/parser/TokeniserState$69;-><init>()V

    .line 480
    .line 481
    .line 482
    sput-object v68, Lorg/jsoup/parser/TokeniserState;->CdataSection:Lorg/jsoup/parser/TokeniserState$69;

    .line 483
    .line 484
    move-object/from16 v69, v0

    .line 485
    .line 486
    const/16 v0, 0x45

    .line 487
    .line 488
    new-array v0, v0, [Lorg/jsoup/parser/TokeniserState;

    .line 489
    .line 490
    const/16 v70, 0x0

    .line 491
    .line 492
    aput-object v69, v0, v70

    .line 493
    .line 494
    const/16 v69, 0x1

    .line 495
    .line 496
    aput-object v1, v0, v69

    .line 497
    .line 498
    const/4 v1, 0x2

    .line 499
    aput-object v2, v0, v1

    .line 500
    .line 501
    const/4 v1, 0x3

    .line 502
    aput-object v3, v0, v1

    .line 503
    .line 504
    const/4 v1, 0x4

    .line 505
    aput-object v4, v0, v1

    .line 506
    .line 507
    const/4 v1, 0x5

    .line 508
    aput-object v5, v0, v1

    .line 509
    .line 510
    const/4 v1, 0x6

    .line 511
    aput-object v6, v0, v1

    .line 512
    .line 513
    const/4 v1, 0x7

    .line 514
    aput-object v7, v0, v1

    .line 515
    .line 516
    const/16 v1, 0x8

    .line 517
    .line 518
    aput-object v8, v0, v1

    .line 519
    .line 520
    const/16 v1, 0x9

    .line 521
    .line 522
    aput-object v9, v0, v1

    .line 523
    .line 524
    const/16 v1, 0xa

    .line 525
    .line 526
    aput-object v10, v0, v1

    .line 527
    .line 528
    const/16 v1, 0xb

    .line 529
    .line 530
    aput-object v11, v0, v1

    .line 531
    .line 532
    const/16 v1, 0xc

    .line 533
    .line 534
    aput-object v12, v0, v1

    .line 535
    .line 536
    const/16 v2, 0xd

    .line 537
    .line 538
    aput-object v13, v0, v2

    .line 539
    .line 540
    const/16 v3, 0xe

    .line 541
    .line 542
    aput-object v14, v0, v3

    .line 543
    .line 544
    const/16 v3, 0xf

    .line 545
    .line 546
    aput-object v15, v0, v3

    .line 547
    .line 548
    const/16 v3, 0x10

    .line 549
    .line 550
    aput-object v16, v0, v3

    .line 551
    .line 552
    const/16 v3, 0x11

    .line 553
    .line 554
    aput-object v17, v0, v3

    .line 555
    .line 556
    const/16 v3, 0x12

    .line 557
    .line 558
    aput-object v18, v0, v3

    .line 559
    .line 560
    const/16 v3, 0x13

    .line 561
    .line 562
    aput-object v19, v0, v3

    .line 563
    .line 564
    const/16 v3, 0x14

    .line 565
    .line 566
    aput-object v20, v0, v3

    .line 567
    .line 568
    const/16 v3, 0x15

    .line 569
    .line 570
    aput-object v21, v0, v3

    .line 571
    .line 572
    const/16 v3, 0x16

    .line 573
    .line 574
    aput-object v22, v0, v3

    .line 575
    .line 576
    const/16 v3, 0x17

    .line 577
    .line 578
    aput-object v23, v0, v3

    .line 579
    .line 580
    const/16 v3, 0x18

    .line 581
    .line 582
    aput-object v24, v0, v3

    .line 583
    .line 584
    const/16 v3, 0x19

    .line 585
    .line 586
    aput-object v25, v0, v3

    .line 587
    .line 588
    const/16 v3, 0x1a

    .line 589
    .line 590
    aput-object v26, v0, v3

    .line 591
    .line 592
    const/16 v3, 0x1b

    .line 593
    .line 594
    aput-object v27, v0, v3

    .line 595
    .line 596
    const/16 v3, 0x1c

    .line 597
    .line 598
    aput-object v28, v0, v3

    .line 599
    .line 600
    const/16 v3, 0x1d

    .line 601
    .line 602
    aput-object v29, v0, v3

    .line 603
    .line 604
    const/16 v3, 0x1e

    .line 605
    .line 606
    aput-object v30, v0, v3

    .line 607
    .line 608
    const/16 v3, 0x1f

    .line 609
    .line 610
    aput-object v31, v0, v3

    .line 611
    .line 612
    const/16 v3, 0x20

    .line 613
    .line 614
    aput-object v32, v0, v3

    .line 615
    .line 616
    const/16 v3, 0x21

    .line 617
    .line 618
    aput-object v33, v0, v3

    .line 619
    .line 620
    const/16 v3, 0x22

    .line 621
    .line 622
    aput-object v34, v0, v3

    .line 623
    .line 624
    const/16 v3, 0x23

    .line 625
    .line 626
    aput-object v35, v0, v3

    .line 627
    .line 628
    const/16 v3, 0x24

    .line 629
    .line 630
    aput-object v36, v0, v3

    .line 631
    .line 632
    const/16 v3, 0x25

    .line 633
    .line 634
    aput-object v37, v0, v3

    .line 635
    .line 636
    const/16 v3, 0x26

    .line 637
    .line 638
    aput-object v38, v0, v3

    .line 639
    .line 640
    const/16 v3, 0x27

    .line 641
    .line 642
    aput-object v39, v0, v3

    .line 643
    .line 644
    const/16 v3, 0x28

    .line 645
    .line 646
    aput-object v40, v0, v3

    .line 647
    .line 648
    const/16 v3, 0x29

    .line 649
    .line 650
    aput-object v41, v0, v3

    .line 651
    .line 652
    const/16 v3, 0x2a

    .line 653
    .line 654
    aput-object v42, v0, v3

    .line 655
    .line 656
    const/16 v3, 0x2b

    .line 657
    .line 658
    aput-object v43, v0, v3

    .line 659
    .line 660
    const/16 v3, 0x2c

    .line 661
    .line 662
    aput-object v44, v0, v3

    .line 663
    .line 664
    const/16 v3, 0x2d

    .line 665
    .line 666
    aput-object v45, v0, v3

    .line 667
    .line 668
    const/16 v3, 0x2e

    .line 669
    .line 670
    aput-object v46, v0, v3

    .line 671
    .line 672
    const/16 v3, 0x2f

    .line 673
    .line 674
    aput-object v47, v0, v3

    .line 675
    .line 676
    const/16 v3, 0x30

    .line 677
    .line 678
    aput-object v48, v0, v3

    .line 679
    .line 680
    const/16 v3, 0x31

    .line 681
    .line 682
    aput-object v49, v0, v3

    .line 683
    .line 684
    const/16 v3, 0x32

    .line 685
    .line 686
    aput-object v50, v0, v3

    .line 687
    .line 688
    const/16 v3, 0x33

    .line 689
    .line 690
    aput-object v51, v0, v3

    .line 691
    .line 692
    const/16 v3, 0x34

    .line 693
    .line 694
    aput-object v52, v0, v3

    .line 695
    .line 696
    const/16 v3, 0x35

    .line 697
    .line 698
    aput-object v53, v0, v3

    .line 699
    .line 700
    const/16 v3, 0x36

    .line 701
    .line 702
    aput-object v54, v0, v3

    .line 703
    .line 704
    const/16 v3, 0x37

    .line 705
    .line 706
    aput-object v55, v0, v3

    .line 707
    .line 708
    const/16 v3, 0x38

    .line 709
    .line 710
    aput-object v56, v0, v3

    .line 711
    .line 712
    const/16 v3, 0x39

    .line 713
    .line 714
    aput-object v57, v0, v3

    .line 715
    .line 716
    const/16 v3, 0x3a

    .line 717
    .line 718
    aput-object v58, v0, v3

    .line 719
    .line 720
    const/16 v3, 0x3b

    .line 721
    .line 722
    aput-object v59, v0, v3

    .line 723
    .line 724
    const/16 v3, 0x3c

    .line 725
    .line 726
    aput-object v60, v0, v3

    .line 727
    .line 728
    const/16 v3, 0x3d

    .line 729
    .line 730
    aput-object v61, v0, v3

    .line 731
    .line 732
    const/16 v3, 0x3e

    .line 733
    .line 734
    aput-object v62, v0, v3

    .line 735
    .line 736
    const/16 v3, 0x3f

    .line 737
    .line 738
    aput-object v63, v0, v3

    .line 739
    .line 740
    const/16 v3, 0x40

    .line 741
    .line 742
    aput-object v64, v0, v3

    .line 743
    .line 744
    const/16 v3, 0x41

    .line 745
    .line 746
    aput-object v65, v0, v3

    .line 747
    .line 748
    const/16 v3, 0x42

    .line 749
    .line 750
    aput-object v66, v0, v3

    .line 751
    .line 752
    const/16 v3, 0x43

    .line 753
    .line 754
    aput-object v67, v0, v3

    .line 755
    .line 756
    const/16 v3, 0x44

    .line 757
    .line 758
    aput-object v68, v0, v3

    .line 759
    .line 760
    sput-object v0, Lorg/jsoup/parser/TokeniserState;->$VALUES:[Lorg/jsoup/parser/TokeniserState;

    .line 761
    .line 762
    new-array v0, v1, [C

    .line 763
    .line 764
    fill-array-data v0, :array_0

    .line 765
    .line 766
    .line 767
    sput-object v0, Lorg/jsoup/parser/TokeniserState;->attributeNameCharsSorted:[C

    .line 768
    .line 769
    new-array v0, v2, [C

    .line 770
    .line 771
    fill-array-data v0, :array_1

    .line 772
    .line 773
    .line 774
    sput-object v0, Lorg/jsoup/parser/TokeniserState;->attributeValueUnquoted:[C

    .line 775
    .line 776
    const v0, 0xfffd

    .line 777
    .line 778
    .line 779
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    sput-object v0, Lorg/jsoup/parser/TokeniserState;->replacementStr:Ljava/lang/String;

    .line 784
    .line 785
    return-void

    .line 786
    nop

    .line 787
    :array_0
    .array-data 2
        0x9s
        0xas
        0xcs
        0xds
        0x20s
        0x22s
        0x27s
        0x2fs
        0x3cs
        0x3ds
        0x3es
        0x3fs
    .end array-data

    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    :array_1
    .array-data 2
        0x0s
        0x9s
        0xas
        0xcs
        0xds
        0x20s
        0x22s
        0x26s
        0x27s
        0x3cs
        0x3ds
        0x3es
        0x60s
    .end array-data
.end method

.method public static access$200(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->current()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    const/16 p2, 0x3c

    .line 8
    .line 9
    if-eq v0, p2, :cond_3

    .line 10
    .line 11
    const p3, 0xffff

    .line 12
    .line 13
    .line 14
    if-eq v0, p3, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 17
    .line 18
    .line 19
    iget p3, p1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 20
    .line 21
    iget v0, p1, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 22
    .line 23
    iget-object v1, p1, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 24
    .line 25
    move v2, p3

    .line 26
    :goto_0
    if-ge v2, v0, :cond_0

    .line 27
    .line 28
    aget-char v3, v1, v2

    .line 29
    .line 30
    if-eq v3, p2, :cond_0

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iput v2, p1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 38
    .line 39
    if-le v2, p3, :cond_1

    .line 40
    .line 41
    iget-object p2, p1, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 42
    .line 43
    iget-object p1, p1, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 44
    .line 45
    sub-int/2addr v2, p3

    .line 46
    invoke-static {p2, p1, p3, v2}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const-string p1, ""

    .line 52
    .line 53
    :goto_1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    new-instance p1, Lorg/jsoup/parser/Token$EOF;

    .line 58
    .line 59
    invoke-direct {p1}, Lorg/jsoup/parser/Token$EOF;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_3
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 74
    .line 75
    .line 76
    const p1, 0xfffd

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public static access$500(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->matchesAsciiAlpha()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p2, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;

    .line 8
    .line 9
    const/16 v0, 0x14

    .line 10
    .line 11
    invoke-direct {p2, v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/CharacterReader;->consumeMatching(Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Lorg/jsoup/parser/TokenData;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenData;->append(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/Tokeniser;->isAppropriateEndTagToken()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Lorg/jsoup/parser/TokenData;

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/16 v0, 0x9

    .line 48
    .line 49
    if-eq p1, v0, :cond_3

    .line 50
    .line 51
    const/16 v0, 0xa

    .line 52
    .line 53
    if-eq p1, v0, :cond_3

    .line 54
    .line 55
    const/16 v0, 0xc

    .line 56
    .line 57
    if-eq p1, v0, :cond_3

    .line 58
    .line 59
    const/16 v0, 0xd

    .line 60
    .line 61
    if-eq p1, v0, :cond_3

    .line 62
    .line 63
    const/16 v0, 0x20

    .line 64
    .line 65
    if-eq p1, v0, :cond_3

    .line 66
    .line 67
    const/16 v0, 0x2f

    .line 68
    .line 69
    if-eq p1, v0, :cond_2

    .line 70
    .line 71
    const/16 v0, 0x3e

    .line 72
    .line 73
    if-eq p1, v0, :cond_1

    .line 74
    .line 75
    invoke-virtual {v1, p1}, Lorg/jsoup/parser/TokenData;->append(C)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 80
    .line 81
    .line 82
    sget-object p1, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState$1;

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_2
    sget-object p1, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState$42;

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_3
    sget-object p1, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState$34;

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_4
    :goto_0
    const-string p1, "</"

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public static access$600(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->matchesAsciiAlpha()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consumeLetterSequence()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Lorg/jsoup/parser/TokenData;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/TokenData;->append(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v1, 0x9

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    const/16 v1, 0xa

    .line 29
    .line 30
    if-eq v0, v1, :cond_1

    .line 31
    .line 32
    const/16 v1, 0xc

    .line 33
    .line 34
    if-eq v0, v1, :cond_1

    .line 35
    .line 36
    const/16 v1, 0xd

    .line 37
    .line 38
    if-eq v0, v1, :cond_1

    .line 39
    .line 40
    const/16 v1, 0x20

    .line 41
    .line 42
    if-eq v0, v1, :cond_1

    .line 43
    .line 44
    const/16 v1, 0x2f

    .line 45
    .line 46
    if-eq v0, v1, :cond_1

    .line 47
    .line 48
    const/16 v1, 0x3e

    .line 49
    .line 50
    if-eq v0, v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->unconsume()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Lorg/jsoup/parser/TokenData;

    .line 60
    .line 61
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string v1, "script"

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/TokeniserState;
    .locals 1

    .line 1
    const-class v0, Lorg/jsoup/parser/TokeniserState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jsoup/parser/TokeniserState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/jsoup/parser/TokeniserState;
    .locals 1

    .line 1
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->$VALUES:[Lorg/jsoup/parser/TokeniserState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/jsoup/parser/TokeniserState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jsoup/parser/TokeniserState;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
.end method

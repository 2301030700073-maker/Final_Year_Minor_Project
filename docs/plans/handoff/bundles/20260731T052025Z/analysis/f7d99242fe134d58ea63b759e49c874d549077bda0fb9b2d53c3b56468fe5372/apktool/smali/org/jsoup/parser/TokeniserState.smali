.class public abstract enum Lorg/jsoup/parser/TokeniserState;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


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

.field public static final enum CdataSection:Lorg/jsoup/parser/TokeniserState$68;

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
    .locals 70

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
    sput-object v67, Lorg/jsoup/parser/TokeniserState;->CdataSection:Lorg/jsoup/parser/TokeniserState$68;

    .line 476
    .line 477
    move-object/from16 v68, v0

    .line 478
    .line 479
    const/16 v0, 0x44

    .line 480
    .line 481
    new-array v0, v0, [Lorg/jsoup/parser/TokeniserState;

    .line 482
    .line 483
    const/16 v69, 0x0

    .line 484
    .line 485
    aput-object v68, v0, v69

    .line 486
    .line 487
    const/16 v68, 0x1

    .line 488
    .line 489
    aput-object v1, v0, v68

    .line 490
    .line 491
    const/4 v1, 0x2

    .line 492
    aput-object v2, v0, v1

    .line 493
    .line 494
    const/4 v1, 0x3

    .line 495
    aput-object v3, v0, v1

    .line 496
    .line 497
    const/4 v1, 0x4

    .line 498
    aput-object v4, v0, v1

    .line 499
    .line 500
    const/4 v1, 0x5

    .line 501
    aput-object v5, v0, v1

    .line 502
    .line 503
    const/4 v1, 0x6

    .line 504
    aput-object v6, v0, v1

    .line 505
    .line 506
    const/4 v1, 0x7

    .line 507
    aput-object v7, v0, v1

    .line 508
    .line 509
    const/16 v1, 0x8

    .line 510
    .line 511
    aput-object v8, v0, v1

    .line 512
    .line 513
    const/16 v1, 0x9

    .line 514
    .line 515
    aput-object v9, v0, v1

    .line 516
    .line 517
    const/16 v1, 0xa

    .line 518
    .line 519
    aput-object v10, v0, v1

    .line 520
    .line 521
    const/16 v1, 0xb

    .line 522
    .line 523
    aput-object v11, v0, v1

    .line 524
    .line 525
    const/16 v1, 0xc

    .line 526
    .line 527
    aput-object v12, v0, v1

    .line 528
    .line 529
    const/16 v2, 0xd

    .line 530
    .line 531
    aput-object v13, v0, v2

    .line 532
    .line 533
    const/16 v3, 0xe

    .line 534
    .line 535
    aput-object v14, v0, v3

    .line 536
    .line 537
    const/16 v3, 0xf

    .line 538
    .line 539
    aput-object v15, v0, v3

    .line 540
    .line 541
    const/16 v3, 0x10

    .line 542
    .line 543
    aput-object v16, v0, v3

    .line 544
    .line 545
    const/16 v3, 0x11

    .line 546
    .line 547
    aput-object v17, v0, v3

    .line 548
    .line 549
    const/16 v3, 0x12

    .line 550
    .line 551
    aput-object v18, v0, v3

    .line 552
    .line 553
    const/16 v3, 0x13

    .line 554
    .line 555
    aput-object v19, v0, v3

    .line 556
    .line 557
    const/16 v3, 0x14

    .line 558
    .line 559
    aput-object v20, v0, v3

    .line 560
    .line 561
    const/16 v3, 0x15

    .line 562
    .line 563
    aput-object v21, v0, v3

    .line 564
    .line 565
    const/16 v3, 0x16

    .line 566
    .line 567
    aput-object v22, v0, v3

    .line 568
    .line 569
    const/16 v3, 0x17

    .line 570
    .line 571
    aput-object v23, v0, v3

    .line 572
    .line 573
    const/16 v3, 0x18

    .line 574
    .line 575
    aput-object v24, v0, v3

    .line 576
    .line 577
    const/16 v3, 0x19

    .line 578
    .line 579
    aput-object v25, v0, v3

    .line 580
    .line 581
    const/16 v3, 0x1a

    .line 582
    .line 583
    aput-object v26, v0, v3

    .line 584
    .line 585
    const/16 v3, 0x1b

    .line 586
    .line 587
    aput-object v27, v0, v3

    .line 588
    .line 589
    const/16 v3, 0x1c

    .line 590
    .line 591
    aput-object v28, v0, v3

    .line 592
    .line 593
    const/16 v3, 0x1d

    .line 594
    .line 595
    aput-object v29, v0, v3

    .line 596
    .line 597
    const/16 v3, 0x1e

    .line 598
    .line 599
    aput-object v30, v0, v3

    .line 600
    .line 601
    const/16 v3, 0x1f

    .line 602
    .line 603
    aput-object v31, v0, v3

    .line 604
    .line 605
    const/16 v3, 0x20

    .line 606
    .line 607
    aput-object v32, v0, v3

    .line 608
    .line 609
    const/16 v3, 0x21

    .line 610
    .line 611
    aput-object v33, v0, v3

    .line 612
    .line 613
    const/16 v3, 0x22

    .line 614
    .line 615
    aput-object v34, v0, v3

    .line 616
    .line 617
    const/16 v3, 0x23

    .line 618
    .line 619
    aput-object v35, v0, v3

    .line 620
    .line 621
    const/16 v3, 0x24

    .line 622
    .line 623
    aput-object v36, v0, v3

    .line 624
    .line 625
    const/16 v3, 0x25

    .line 626
    .line 627
    aput-object v37, v0, v3

    .line 628
    .line 629
    const/16 v3, 0x26

    .line 630
    .line 631
    aput-object v38, v0, v3

    .line 632
    .line 633
    const/16 v3, 0x27

    .line 634
    .line 635
    aput-object v39, v0, v3

    .line 636
    .line 637
    const/16 v3, 0x28

    .line 638
    .line 639
    aput-object v40, v0, v3

    .line 640
    .line 641
    const/16 v3, 0x29

    .line 642
    .line 643
    aput-object v41, v0, v3

    .line 644
    .line 645
    const/16 v3, 0x2a

    .line 646
    .line 647
    aput-object v42, v0, v3

    .line 648
    .line 649
    const/16 v3, 0x2b

    .line 650
    .line 651
    aput-object v43, v0, v3

    .line 652
    .line 653
    const/16 v3, 0x2c

    .line 654
    .line 655
    aput-object v44, v0, v3

    .line 656
    .line 657
    const/16 v3, 0x2d

    .line 658
    .line 659
    aput-object v45, v0, v3

    .line 660
    .line 661
    const/16 v3, 0x2e

    .line 662
    .line 663
    aput-object v46, v0, v3

    .line 664
    .line 665
    const/16 v3, 0x2f

    .line 666
    .line 667
    aput-object v47, v0, v3

    .line 668
    .line 669
    const/16 v3, 0x30

    .line 670
    .line 671
    aput-object v48, v0, v3

    .line 672
    .line 673
    const/16 v3, 0x31

    .line 674
    .line 675
    aput-object v49, v0, v3

    .line 676
    .line 677
    const/16 v3, 0x32

    .line 678
    .line 679
    aput-object v50, v0, v3

    .line 680
    .line 681
    const/16 v3, 0x33

    .line 682
    .line 683
    aput-object v51, v0, v3

    .line 684
    .line 685
    const/16 v3, 0x34

    .line 686
    .line 687
    aput-object v52, v0, v3

    .line 688
    .line 689
    const/16 v3, 0x35

    .line 690
    .line 691
    aput-object v53, v0, v3

    .line 692
    .line 693
    const/16 v3, 0x36

    .line 694
    .line 695
    aput-object v54, v0, v3

    .line 696
    .line 697
    const/16 v3, 0x37

    .line 698
    .line 699
    aput-object v55, v0, v3

    .line 700
    .line 701
    const/16 v3, 0x38

    .line 702
    .line 703
    aput-object v56, v0, v3

    .line 704
    .line 705
    const/16 v3, 0x39

    .line 706
    .line 707
    aput-object v57, v0, v3

    .line 708
    .line 709
    const/16 v3, 0x3a

    .line 710
    .line 711
    aput-object v58, v0, v3

    .line 712
    .line 713
    const/16 v3, 0x3b

    .line 714
    .line 715
    aput-object v59, v0, v3

    .line 716
    .line 717
    const/16 v3, 0x3c

    .line 718
    .line 719
    aput-object v60, v0, v3

    .line 720
    .line 721
    const/16 v3, 0x3d

    .line 722
    .line 723
    aput-object v61, v0, v3

    .line 724
    .line 725
    const/16 v3, 0x3e

    .line 726
    .line 727
    aput-object v62, v0, v3

    .line 728
    .line 729
    const/16 v3, 0x3f

    .line 730
    .line 731
    aput-object v63, v0, v3

    .line 732
    .line 733
    const/16 v3, 0x40

    .line 734
    .line 735
    aput-object v64, v0, v3

    .line 736
    .line 737
    const/16 v3, 0x41

    .line 738
    .line 739
    aput-object v65, v0, v3

    .line 740
    .line 741
    const/16 v3, 0x42

    .line 742
    .line 743
    aput-object v66, v0, v3

    .line 744
    .line 745
    const/16 v3, 0x43

    .line 746
    .line 747
    aput-object v67, v0, v3

    .line 748
    .line 749
    sput-object v0, Lorg/jsoup/parser/TokeniserState;->$VALUES:[Lorg/jsoup/parser/TokeniserState;

    .line 750
    .line 751
    new-array v0, v1, [C

    .line 752
    .line 753
    fill-array-data v0, :array_0

    .line 754
    .line 755
    .line 756
    sput-object v0, Lorg/jsoup/parser/TokeniserState;->attributeNameCharsSorted:[C

    .line 757
    .line 758
    new-array v0, v2, [C

    .line 759
    .line 760
    fill-array-data v0, :array_1

    .line 761
    .line 762
    .line 763
    sput-object v0, Lorg/jsoup/parser/TokeniserState;->attributeValueUnquoted:[C

    .line 764
    .line 765
    const v0, 0xfffd

    .line 766
    .line 767
    .line 768
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    sput-object v0, Lorg/jsoup/parser/TokeniserState;->replacementStr:Ljava/lang/String;

    .line 773
    .line 774
    return-void

    .line 775
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

    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
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
    iget p3, p1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 17
    .line 18
    iget v0, p1, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 19
    .line 20
    iget-object v1, p1, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 21
    .line 22
    move v2, p3

    .line 23
    :goto_0
    if-ge v2, v0, :cond_0

    .line 24
    .line 25
    aget-char v3, v1, v2

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    if-eq v3, p2, :cond_0

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iput v2, p1, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 35
    .line 36
    if-le v2, p3, :cond_1

    .line 37
    .line 38
    iget-object p2, p1, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 39
    .line 40
    iget-object p1, p1, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 41
    .line 42
    sub-int/2addr v2, p3

    .line 43
    invoke-static {p2, p1, p3, v2}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const-string p1, ""

    .line 49
    .line 50
    :goto_1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    new-instance p1, Lorg/jsoup/parser/Token$EOF;

    .line 55
    .line 56
    invoke-direct {p1}, Lorg/jsoup/parser/Token$EOF;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 71
    .line 72
    .line 73
    const p1, 0xfffd

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public static access$500(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

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
    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/Tokeniser;->isAppropriateEndTagToken()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_4

    .line 35
    .line 36
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/16 v0, 0x9

    .line 41
    .line 42
    if-eq p1, v0, :cond_3

    .line 43
    .line 44
    const/16 v0, 0xa

    .line 45
    .line 46
    if-eq p1, v0, :cond_3

    .line 47
    .line 48
    const/16 v0, 0xc

    .line 49
    .line 50
    if-eq p1, v0, :cond_3

    .line 51
    .line 52
    const/16 v0, 0xd

    .line 53
    .line 54
    if-eq p1, v0, :cond_3

    .line 55
    .line 56
    const/16 v0, 0x20

    .line 57
    .line 58
    if-eq p1, v0, :cond_3

    .line 59
    .line 60
    const/16 v0, 0x2f

    .line 61
    .line 62
    if-eq p1, v0, :cond_2

    .line 63
    .line 64
    const/16 v0, 0x3e

    .line 65
    .line 66
    if-eq p1, v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 73
    .line 74
    .line 75
    sget-object p1, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState$1;

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    sget-object p1, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState$42;

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_3
    sget-object p1, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState$34;

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_4
    :goto_0
    const-string p1, "</"

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/StringBuilder;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public static access$600(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

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
    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

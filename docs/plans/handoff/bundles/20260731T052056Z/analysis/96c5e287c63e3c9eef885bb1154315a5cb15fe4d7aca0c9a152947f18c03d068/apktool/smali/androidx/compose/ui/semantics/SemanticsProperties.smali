.class public abstract Landroidx/compose/ui/semantics/SemanticsProperties;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final CollectionItemInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final ContentDataType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final ContentType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final Disabled:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final Error:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final FillableData:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final Heading:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final HideFromAccessibility:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final ImeAction:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final IndexForKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final InputText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final InvisibleToUser:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final IsContainer:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final IsDialog:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final IsEditable:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final IsPopup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final IsSensitiveData:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final IsShowingTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final IsTraversalGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final LinkTestMarker:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final LiveRegion:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final MaxTextLength:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final Password:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final Shape:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final StateDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final TestTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final TextEntryKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final TextSelectionRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final TextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final TraversalIndex:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;->INSTANCE$3:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 4
    .line 5
    const-string v2, "ContentDescription"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 9
    .line 10
    .line 11
    sput-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 12
    .line 13
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const-string v2, "StateDescription"

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->StateDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 22
    .line 23
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 24
    .line 25
    const-string v2, "ProgressBarRangeInfo"

    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 31
    .line 32
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;->INSTANCE$11:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

    .line 33
    .line 34
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 35
    .line 36
    const-string v4, "PaneTitle"

    .line 37
    .line 38
    invoke-direct {v2, v4, v3, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 39
    .line 40
    .line 41
    sput-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 42
    .line 43
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 44
    .line 45
    const-string v2, "SelectableGroup"

    .line 46
    .line 47
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 51
    .line 52
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 53
    .line 54
    const-string v2, "CollectionInfo"

    .line 55
    .line 56
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 60
    .line 61
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 62
    .line 63
    const-string v2, "CollectionItemInfo"

    .line 64
    .line 65
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionItemInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 69
    .line 70
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 71
    .line 72
    const-string v2, "Heading"

    .line 73
    .line 74
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Heading:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 78
    .line 79
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 80
    .line 81
    const-string v2, "TextEntryKey"

    .line 82
    .line 83
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TextEntryKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 87
    .line 88
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 89
    .line 90
    const-string v2, "Disabled"

    .line 91
    .line 92
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Disabled:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 96
    .line 97
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 98
    .line 99
    const-string v2, "LiveRegion"

    .line 100
    .line 101
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->LiveRegion:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 105
    .line 106
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 107
    .line 108
    const-string v2, "Focused"

    .line 109
    .line 110
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 114
    .line 115
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 116
    .line 117
    const-string v2, "IsContainer"

    .line 118
    .line 119
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsContainer:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 123
    .line 124
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 125
    .line 126
    const-string v2, "IsTraversalGroup"

    .line 127
    .line 128
    invoke-direct {v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsTraversalGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 132
    .line 133
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 134
    .line 135
    const-string v2, "IsSensitiveData"

    .line 136
    .line 137
    invoke-direct {v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsSensitiveData:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 141
    .line 142
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 143
    .line 144
    const-string v2, "InvisibleToUser"

    .line 145
    .line 146
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;->INSTANCE$7:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

    .line 147
    .line 148
    invoke-direct {v0, v2, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 149
    .line 150
    .line 151
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->InvisibleToUser:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 152
    .line 153
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 154
    .line 155
    const-string v2, "HideFromAccessibility"

    .line 156
    .line 157
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;->INSTANCE$6:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

    .line 158
    .line 159
    invoke-direct {v0, v2, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 160
    .line 161
    .line 162
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->HideFromAccessibility:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 163
    .line 164
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 165
    .line 166
    const-string v2, "ContentType"

    .line 167
    .line 168
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;->INSTANCE$4:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

    .line 169
    .line 170
    invoke-direct {v0, v2, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 171
    .line 172
    .line 173
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 174
    .line 175
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 176
    .line 177
    const-string v2, "ContentDataType"

    .line 178
    .line 179
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;->INSTANCE$2:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

    .line 180
    .line 181
    invoke-direct {v0, v2, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 182
    .line 183
    .line 184
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDataType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 185
    .line 186
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 187
    .line 188
    const-string v2, "FillableData"

    .line 189
    .line 190
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;->INSTANCE$5:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

    .line 191
    .line 192
    invoke-direct {v0, v2, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 193
    .line 194
    .line 195
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->FillableData:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 196
    .line 197
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 198
    .line 199
    const-string v2, "TraversalIndex"

    .line 200
    .line 201
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;->INSTANCE$16:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

    .line 202
    .line 203
    invoke-direct {v0, v2, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 204
    .line 205
    .line 206
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TraversalIndex:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 207
    .line 208
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 209
    .line 210
    const-string v2, "HorizontalScrollAxisRange"

    .line 211
    .line 212
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 213
    .line 214
    .line 215
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 216
    .line 217
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 218
    .line 219
    const-string v2, "VerticalScrollAxisRange"

    .line 220
    .line 221
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 222
    .line 223
    .line 224
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 225
    .line 226
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;->INSTANCE$9:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

    .line 227
    .line 228
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 229
    .line 230
    const-string v4, "IsPopup"

    .line 231
    .line 232
    invoke-direct {v2, v4, v3, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 233
    .line 234
    .line 235
    sput-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->IsPopup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 236
    .line 237
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;->INSTANCE$8:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

    .line 238
    .line 239
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 240
    .line 241
    const-string v4, "IsDialog"

    .line 242
    .line 243
    invoke-direct {v2, v4, v3, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 244
    .line 245
    .line 246
    sput-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->IsDialog:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 247
    .line 248
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;->INSTANCE$12:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

    .line 249
    .line 250
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 251
    .line 252
    const-string v4, "Role"

    .line 253
    .line 254
    invoke-direct {v2, v4, v3, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 255
    .line 256
    .line 257
    sput-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 258
    .line 259
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 260
    .line 261
    const-string v2, "TestTag"

    .line 262
    .line 263
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;->INSTANCE$14:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

    .line 264
    .line 265
    invoke-direct {v0, v2, v1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 266
    .line 267
    .line 268
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TestTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 269
    .line 270
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 271
    .line 272
    const-string v2, "LinkTestMarker"

    .line 273
    .line 274
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;->INSTANCE$10:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

    .line 275
    .line 276
    invoke-direct {v0, v2, v1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 277
    .line 278
    .line 279
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->LinkTestMarker:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 280
    .line 281
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;->INSTANCE$15:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

    .line 282
    .line 283
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 284
    .line 285
    const-string v4, "Text"

    .line 286
    .line 287
    invoke-direct {v2, v4, v3, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 288
    .line 289
    .line 290
    sput-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 291
    .line 292
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 293
    .line 294
    const-string v2, "TextSubstitution"

    .line 295
    .line 296
    invoke-direct {v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 300
    .line 301
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 302
    .line 303
    const-string v2, "IsShowingTextSubstitution"

    .line 304
    .line 305
    invoke-direct {v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsShowingTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 309
    .line 310
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 311
    .line 312
    const-string v2, "InputText"

    .line 313
    .line 314
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 315
    .line 316
    .line 317
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->InputText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 318
    .line 319
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 320
    .line 321
    const-string v2, "EditableText"

    .line 322
    .line 323
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 324
    .line 325
    .line 326
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 327
    .line 328
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 329
    .line 330
    const-string v2, "TextSelectionRange"

    .line 331
    .line 332
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 333
    .line 334
    .line 335
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TextSelectionRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 336
    .line 337
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 338
    .line 339
    const-string v2, "ImeAction"

    .line 340
    .line 341
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 342
    .line 343
    .line 344
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ImeAction:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 345
    .line 346
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 347
    .line 348
    const-string v2, "Selected"

    .line 349
    .line 350
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 351
    .line 352
    .line 353
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 354
    .line 355
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 356
    .line 357
    const-string v2, "ToggleableState"

    .line 358
    .line 359
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 360
    .line 361
    .line 362
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 363
    .line 364
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 365
    .line 366
    const-string v2, "Password"

    .line 367
    .line 368
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 369
    .line 370
    .line 371
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Password:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 372
    .line 373
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 374
    .line 375
    const-string v2, "Error"

    .line 376
    .line 377
    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(ILjava/lang/String;)V

    .line 378
    .line 379
    .line 380
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Error:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 381
    .line 382
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 383
    .line 384
    const-string v2, "IndexForKey"

    .line 385
    .line 386
    invoke-direct {v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IndexForKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 390
    .line 391
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 392
    .line 393
    const-string v2, "IsEditable"

    .line 394
    .line 395
    invoke-direct {v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsEditable:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 399
    .line 400
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 401
    .line 402
    const-string v2, "MaxTextLength"

    .line 403
    .line 404
    invoke-direct {v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->MaxTextLength:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 408
    .line 409
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 410
    .line 411
    const-string v2, "Shape"

    .line 412
    .line 413
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;->INSTANCE$13:Landroidx/compose/ui/semantics/SemanticsPropertyKey$1;

    .line 414
    .line 415
    invoke-direct {v0, v2, v1, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 416
    .line 417
    .line 418
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Shape:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 419
    .line 420
    return-void
.end method

.class public final enum Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/glance/appwidget/protobuf/Internal$EnumLite;


# static fields
.field private static final synthetic $VALUES:[Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final enum ANDROID_REMOTE_VIEWS:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final ANDROID_REMOTE_VIEWS_VALUE:I = 0xb

.field public static final enum BOX:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final BOX_VALUE:I = 0x3

.field public static final enum BUTTON:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final BUTTON_VALUE:I = 0x8

.field public static final enum CHECK_BOX:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final CHECK_BOX_VALUE:I = 0x7

.field public static final enum CIRCULAR_PROGRESS_INDICATOR:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final CIRCULAR_PROGRESS_INDICATOR_VALUE:I = 0xf

.field public static final enum COLUMN:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final COLUMN_VALUE:I = 0x2

.field public static final enum IMAGE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final IMAGE_VALUE:I = 0xd

.field public static final enum LAZY_COLUMN:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final LAZY_COLUMN_VALUE:I = 0x5

.field public static final enum LAZY_VERTICAL_GRID:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final LAZY_VERTICAL_GRID_VALUE:I = 0x10

.field public static final enum LINEAR_PROGRESS_INDICATOR:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final LINEAR_PROGRESS_INDICATOR_VALUE:I = 0xe

.field public static final enum LIST_ITEM:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final LIST_ITEM_VALUE:I = 0x6

.field public static final enum RADIO_BUTTON:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final RADIO_BUTTON_VALUE:I = 0x13

.field public static final enum RADIO_COLUMN:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final RADIO_COLUMN_VALUE:I = 0x15

.field public static final enum RADIO_GROUP:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final RADIO_GROUP_VALUE:I = 0x12

.field public static final enum RADIO_ROW:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final RADIO_ROW_VALUE:I = 0x14

.field public static final enum REMOTE_VIEWS_ROOT:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final REMOTE_VIEWS_ROOT_VALUE:I = 0xc

.field public static final enum ROW:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final ROW_VALUE:I = 0x1

.field public static final enum SIZE_BOX:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final SIZE_BOX_VALUE:I = 0x16

.field public static final enum SPACER:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final SPACER_VALUE:I = 0x9

.field public static final enum SWITCH:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final SWITCH_VALUE:I = 0xa

.field public static final enum TEXT:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final TEXT_VALUE:I = 0x4

.field public static final enum UNKNOWN_TYPE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final UNKNOWN_TYPE_VALUE:I = 0x0

.field public static final enum UNRECOGNIZED:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final enum VERTICAL_GRID_ITEM:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

.field public static final VERTICAL_GRID_ITEM_VALUE:I = 0x11

.field private static final internalValueMap:Landroidx/glance/appwidget/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/glance/appwidget/protobuf/Internal$EnumLiteMap;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 49

    .line 1
    new-instance v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 2
    .line 3
    const-string v1, "UNKNOWN_TYPE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->UNKNOWN_TYPE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 10
    .line 11
    new-instance v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 12
    .line 13
    const-string v3, "ROW"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->ROW:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 20
    .line 21
    new-instance v3, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 22
    .line 23
    const-string v5, "COLUMN"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->COLUMN:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 30
    .line 31
    new-instance v5, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 32
    .line 33
    const-string v7, "BOX"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->BOX:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 40
    .line 41
    new-instance v7, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 42
    .line 43
    const-string v9, "TEXT"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->TEXT:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 50
    .line 51
    new-instance v9, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 52
    .line 53
    const-string v11, "LAZY_COLUMN"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v12}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->LAZY_COLUMN:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 60
    .line 61
    new-instance v11, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 62
    .line 63
    const-string v13, "LIST_ITEM"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v14}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->LIST_ITEM:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 70
    .line 71
    new-instance v13, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 72
    .line 73
    const-string v15, "CHECK_BOX"

    .line 74
    .line 75
    move/from16 v16, v2

    .line 76
    .line 77
    const/4 v2, 0x7

    .line 78
    invoke-direct {v13, v15, v2, v2}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v13, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->CHECK_BOX:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 82
    .line 83
    new-instance v15, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 84
    .line 85
    move/from16 v17, v2

    .line 86
    .line 87
    const-string v2, "BUTTON"

    .line 88
    .line 89
    move/from16 v18, v4

    .line 90
    .line 91
    const/16 v4, 0x8

    .line 92
    .line 93
    invoke-direct {v15, v2, v4, v4}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 94
    .line 95
    .line 96
    sput-object v15, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->BUTTON:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 97
    .line 98
    new-instance v2, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 99
    .line 100
    move/from16 v19, v4

    .line 101
    .line 102
    const-string v4, "SPACER"

    .line 103
    .line 104
    move/from16 v20, v6

    .line 105
    .line 106
    const/16 v6, 0x9

    .line 107
    .line 108
    invoke-direct {v2, v4, v6, v6}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 109
    .line 110
    .line 111
    sput-object v2, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->SPACER:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 112
    .line 113
    new-instance v4, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 114
    .line 115
    move/from16 v21, v6

    .line 116
    .line 117
    const-string v6, "SWITCH"

    .line 118
    .line 119
    move/from16 v22, v8

    .line 120
    .line 121
    const/16 v8, 0xa

    .line 122
    .line 123
    invoke-direct {v4, v6, v8, v8}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 124
    .line 125
    .line 126
    sput-object v4, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->SWITCH:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 127
    .line 128
    new-instance v6, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 129
    .line 130
    move/from16 v23, v8

    .line 131
    .line 132
    const-string v8, "ANDROID_REMOTE_VIEWS"

    .line 133
    .line 134
    move/from16 v24, v10

    .line 135
    .line 136
    const/16 v10, 0xb

    .line 137
    .line 138
    invoke-direct {v6, v8, v10, v10}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 139
    .line 140
    .line 141
    sput-object v6, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->ANDROID_REMOTE_VIEWS:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 142
    .line 143
    new-instance v8, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 144
    .line 145
    move/from16 v25, v12

    .line 146
    .line 147
    const-string v12, "REMOTE_VIEWS_ROOT"

    .line 148
    .line 149
    move/from16 v26, v14

    .line 150
    .line 151
    const/16 v14, 0xc

    .line 152
    .line 153
    invoke-direct {v8, v12, v14, v14}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 154
    .line 155
    .line 156
    sput-object v8, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->REMOTE_VIEWS_ROOT:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 157
    .line 158
    new-instance v12, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 159
    .line 160
    move/from16 v27, v14

    .line 161
    .line 162
    const-string v14, "IMAGE"

    .line 163
    .line 164
    move/from16 v28, v10

    .line 165
    .line 166
    const/16 v10, 0xd

    .line 167
    .line 168
    invoke-direct {v12, v14, v10, v10}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 169
    .line 170
    .line 171
    sput-object v12, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->IMAGE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 172
    .line 173
    new-instance v14, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 174
    .line 175
    move/from16 v29, v10

    .line 176
    .line 177
    const-string v10, "LINEAR_PROGRESS_INDICATOR"

    .line 178
    .line 179
    move-object/from16 v30, v0

    .line 180
    .line 181
    const/16 v0, 0xe

    .line 182
    .line 183
    invoke-direct {v14, v10, v0, v0}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 184
    .line 185
    .line 186
    sput-object v14, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->LINEAR_PROGRESS_INDICATOR:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 187
    .line 188
    new-instance v10, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 189
    .line 190
    move/from16 v31, v0

    .line 191
    .line 192
    const-string v0, "CIRCULAR_PROGRESS_INDICATOR"

    .line 193
    .line 194
    move-object/from16 v32, v1

    .line 195
    .line 196
    const/16 v1, 0xf

    .line 197
    .line 198
    invoke-direct {v10, v0, v1, v1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 199
    .line 200
    .line 201
    sput-object v10, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->CIRCULAR_PROGRESS_INDICATOR:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 202
    .line 203
    new-instance v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 204
    .line 205
    move/from16 v33, v1

    .line 206
    .line 207
    const-string v1, "LAZY_VERTICAL_GRID"

    .line 208
    .line 209
    move-object/from16 v34, v2

    .line 210
    .line 211
    const/16 v2, 0x10

    .line 212
    .line 213
    invoke-direct {v0, v1, v2, v2}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 214
    .line 215
    .line 216
    sput-object v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->LAZY_VERTICAL_GRID:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 217
    .line 218
    new-instance v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 219
    .line 220
    move/from16 v35, v2

    .line 221
    .line 222
    const-string v2, "VERTICAL_GRID_ITEM"

    .line 223
    .line 224
    move-object/from16 v36, v0

    .line 225
    .line 226
    const/16 v0, 0x11

    .line 227
    .line 228
    invoke-direct {v1, v2, v0, v0}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 229
    .line 230
    .line 231
    sput-object v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->VERTICAL_GRID_ITEM:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 232
    .line 233
    new-instance v2, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 234
    .line 235
    move/from16 v37, v0

    .line 236
    .line 237
    const-string v0, "RADIO_GROUP"

    .line 238
    .line 239
    move-object/from16 v38, v1

    .line 240
    .line 241
    const/16 v1, 0x12

    .line 242
    .line 243
    invoke-direct {v2, v0, v1, v1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 244
    .line 245
    .line 246
    sput-object v2, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->RADIO_GROUP:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 247
    .line 248
    new-instance v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 249
    .line 250
    move/from16 v39, v1

    .line 251
    .line 252
    const-string v1, "RADIO_BUTTON"

    .line 253
    .line 254
    move-object/from16 v40, v2

    .line 255
    .line 256
    const/16 v2, 0x13

    .line 257
    .line 258
    invoke-direct {v0, v1, v2, v2}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 259
    .line 260
    .line 261
    sput-object v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->RADIO_BUTTON:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 262
    .line 263
    new-instance v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 264
    .line 265
    move/from16 v41, v2

    .line 266
    .line 267
    const-string v2, "RADIO_ROW"

    .line 268
    .line 269
    move-object/from16 v42, v0

    .line 270
    .line 271
    const/16 v0, 0x14

    .line 272
    .line 273
    invoke-direct {v1, v2, v0, v0}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 274
    .line 275
    .line 276
    sput-object v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->RADIO_ROW:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 277
    .line 278
    new-instance v2, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 279
    .line 280
    move/from16 v43, v0

    .line 281
    .line 282
    const-string v0, "RADIO_COLUMN"

    .line 283
    .line 284
    move-object/from16 v44, v1

    .line 285
    .line 286
    const/16 v1, 0x15

    .line 287
    .line 288
    invoke-direct {v2, v0, v1, v1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 289
    .line 290
    .line 291
    sput-object v2, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->RADIO_COLUMN:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 292
    .line 293
    new-instance v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 294
    .line 295
    move/from16 v45, v1

    .line 296
    .line 297
    const-string v1, "SIZE_BOX"

    .line 298
    .line 299
    move-object/from16 v46, v2

    .line 300
    .line 301
    const/16 v2, 0x16

    .line 302
    .line 303
    invoke-direct {v0, v1, v2, v2}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 304
    .line 305
    .line 306
    sput-object v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->SIZE_BOX:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 307
    .line 308
    new-instance v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 309
    .line 310
    const/16 v2, 0x17

    .line 311
    .line 312
    move-object/from16 v47, v0

    .line 313
    .line 314
    const/4 v0, -0x1

    .line 315
    move-object/from16 v48, v3

    .line 316
    .line 317
    const-string v3, "UNRECOGNIZED"

    .line 318
    .line 319
    invoke-direct {v1, v3, v2, v0}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;-><init>(Ljava/lang/String;II)V

    .line 320
    .line 321
    .line 322
    sput-object v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->UNRECOGNIZED:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 323
    .line 324
    const/16 v0, 0x18

    .line 325
    .line 326
    new-array v0, v0, [Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 327
    .line 328
    aput-object v30, v0, v16

    .line 329
    .line 330
    aput-object v32, v0, v18

    .line 331
    .line 332
    aput-object v48, v0, v20

    .line 333
    .line 334
    aput-object v5, v0, v22

    .line 335
    .line 336
    aput-object v7, v0, v24

    .line 337
    .line 338
    aput-object v9, v0, v25

    .line 339
    .line 340
    aput-object v11, v0, v26

    .line 341
    .line 342
    aput-object v13, v0, v17

    .line 343
    .line 344
    aput-object v15, v0, v19

    .line 345
    .line 346
    aput-object v34, v0, v21

    .line 347
    .line 348
    aput-object v4, v0, v23

    .line 349
    .line 350
    aput-object v6, v0, v28

    .line 351
    .line 352
    aput-object v8, v0, v27

    .line 353
    .line 354
    aput-object v12, v0, v29

    .line 355
    .line 356
    aput-object v14, v0, v31

    .line 357
    .line 358
    aput-object v10, v0, v33

    .line 359
    .line 360
    aput-object v36, v0, v35

    .line 361
    .line 362
    aput-object v38, v0, v37

    .line 363
    .line 364
    aput-object v40, v0, v39

    .line 365
    .line 366
    aput-object v42, v0, v41

    .line 367
    .line 368
    aput-object v44, v0, v43

    .line 369
    .line 370
    aput-object v46, v0, v45

    .line 371
    .line 372
    const/16 v2, 0x16

    .line 373
    .line 374
    aput-object v47, v0, v2

    .line 375
    .line 376
    const/16 v2, 0x17

    .line 377
    .line 378
    aput-object v1, v0, v2

    .line 379
    .line 380
    sput-object v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->$VALUES:[Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 381
    .line 382
    new-instance v0, Landroidx/collection/internal/Lock;

    .line 383
    .line 384
    move/from16 v1, v28

    .line 385
    .line 386
    invoke-direct {v0, v1}, Landroidx/collection/internal/Lock;-><init>(I)V

    .line 387
    .line 388
    .line 389
    sput-object v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->internalValueMap:Landroidx/glance/appwidget/protobuf/Internal$EnumLiteMap;

    .line 390
    .line 391
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;
    .locals 1

    .line 1
    const-class v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;
    .locals 1

    .line 1
    sget-object v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->$VALUES:[Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    sget-object v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->UNRECOGNIZED:Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->value:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const-string p0, "Can\'t get the number of an unknown enum value."

    .line 9
    .line 10
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0
.end method

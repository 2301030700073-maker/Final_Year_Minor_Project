.class public final enum Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

.field public static final enum ACTUAL:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

.field public static final ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALL_EXCEPT_ANNOTATIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

.field public static final enum CONST:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier$Companion;

.field public static final enum DATA:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

.field public static final enum EXPECT:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

.field public static final enum FUN:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

.field public static final enum INLINE:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

.field public static final enum INNER:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

.field public static final enum LATEINIT:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

.field public static final enum MEMBER_KIND:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

.field public static final enum MODALITY:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

.field public static final enum OVERRIDE:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

.field public static final enum VALUE:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

.field public static final enum VISIBILITY:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;


# instance fields
.field private final includeByDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "VISIBILITY"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;-><init>(ILjava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->VISIBILITY:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 11
    .line 12
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 13
    .line 14
    const-string v4, "MODALITY"

    .line 15
    .line 16
    invoke-direct {v2, v3, v4, v3}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;-><init>(ILjava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    sput-object v2, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->MODALITY:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 20
    .line 21
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    const-string v6, "OVERRIDE"

    .line 25
    .line 26
    invoke-direct {v4, v5, v6, v3}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;-><init>(ILjava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    sput-object v4, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->OVERRIDE:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 30
    .line 31
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 32
    .line 33
    const/4 v7, 0x3

    .line 34
    const-string v8, "ANNOTATIONS"

    .line 35
    .line 36
    invoke-direct {v6, v7, v8, v1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;-><init>(ILjava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    sput-object v6, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 40
    .line 41
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 42
    .line 43
    const/4 v9, 0x4

    .line 44
    const-string v10, "INNER"

    .line 45
    .line 46
    invoke-direct {v8, v9, v10, v3}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;-><init>(ILjava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    sput-object v8, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->INNER:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 50
    .line 51
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 52
    .line 53
    const/4 v11, 0x5

    .line 54
    const-string v12, "MEMBER_KIND"

    .line 55
    .line 56
    invoke-direct {v10, v11, v12, v3}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;-><init>(ILjava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    sput-object v10, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->MEMBER_KIND:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 60
    .line 61
    new-instance v12, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 62
    .line 63
    const/4 v13, 0x6

    .line 64
    const-string v14, "DATA"

    .line 65
    .line 66
    invoke-direct {v12, v13, v14, v3}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;-><init>(ILjava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    sput-object v12, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->DATA:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 70
    .line 71
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 72
    .line 73
    const/4 v15, 0x7

    .line 74
    move/from16 v16, v1

    .line 75
    .line 76
    const-string v1, "INLINE"

    .line 77
    .line 78
    invoke-direct {v14, v15, v1, v3}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;-><init>(ILjava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    sput-object v14, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->INLINE:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 82
    .line 83
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 84
    .line 85
    move/from16 v17, v5

    .line 86
    .line 87
    const/16 v5, 0x8

    .line 88
    .line 89
    move/from16 v18, v7

    .line 90
    .line 91
    const-string v7, "EXPECT"

    .line 92
    .line 93
    invoke-direct {v1, v5, v7, v3}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;-><init>(ILjava/lang/String;Z)V

    .line 94
    .line 95
    .line 96
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->EXPECT:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 97
    .line 98
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 99
    .line 100
    move/from16 v19, v5

    .line 101
    .line 102
    const/16 v5, 0x9

    .line 103
    .line 104
    move/from16 v20, v9

    .line 105
    .line 106
    const-string v9, "ACTUAL"

    .line 107
    .line 108
    invoke-direct {v7, v5, v9, v3}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;-><init>(ILjava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    sput-object v7, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->ACTUAL:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 112
    .line 113
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 114
    .line 115
    move/from16 v21, v5

    .line 116
    .line 117
    const/16 v5, 0xa

    .line 118
    .line 119
    move/from16 v22, v11

    .line 120
    .line 121
    const-string v11, "CONST"

    .line 122
    .line 123
    invoke-direct {v9, v5, v11, v3}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;-><init>(ILjava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    sput-object v9, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->CONST:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 127
    .line 128
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 129
    .line 130
    move/from16 v23, v5

    .line 131
    .line 132
    const/16 v5, 0xb

    .line 133
    .line 134
    move/from16 v24, v13

    .line 135
    .line 136
    const-string v13, "LATEINIT"

    .line 137
    .line 138
    invoke-direct {v11, v5, v13, v3}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;-><init>(ILjava/lang/String;Z)V

    .line 139
    .line 140
    .line 141
    sput-object v11, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->LATEINIT:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 142
    .line 143
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 144
    .line 145
    move/from16 v25, v5

    .line 146
    .line 147
    const/16 v5, 0xc

    .line 148
    .line 149
    move/from16 v26, v15

    .line 150
    .line 151
    const-string v15, "FUN"

    .line 152
    .line 153
    invoke-direct {v13, v5, v15, v3}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;-><init>(ILjava/lang/String;Z)V

    .line 154
    .line 155
    .line 156
    sput-object v13, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->FUN:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 157
    .line 158
    new-instance v15, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 159
    .line 160
    move/from16 v27, v5

    .line 161
    .line 162
    const/16 v5, 0xd

    .line 163
    .line 164
    move-object/from16 v28, v0

    .line 165
    .line 166
    const-string v0, "VALUE"

    .line 167
    .line 168
    invoke-direct {v15, v5, v0, v3}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;-><init>(ILjava/lang/String;Z)V

    .line 169
    .line 170
    .line 171
    sput-object v15, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->VALUE:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 172
    .line 173
    const/16 v0, 0xe

    .line 174
    .line 175
    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 176
    .line 177
    aput-object v28, v0, v16

    .line 178
    .line 179
    aput-object v2, v0, v3

    .line 180
    .line 181
    aput-object v4, v0, v17

    .line 182
    .line 183
    aput-object v6, v0, v18

    .line 184
    .line 185
    aput-object v8, v0, v20

    .line 186
    .line 187
    aput-object v10, v0, v22

    .line 188
    .line 189
    aput-object v12, v0, v24

    .line 190
    .line 191
    aput-object v14, v0, v26

    .line 192
    .line 193
    aput-object v1, v0, v19

    .line 194
    .line 195
    aput-object v7, v0, v21

    .line 196
    .line 197
    aput-object v9, v0, v23

    .line 198
    .line 199
    aput-object v11, v0, v25

    .line 200
    .line 201
    aput-object v13, v0, v27

    .line 202
    .line 203
    aput-object v15, v0, v5

    .line 204
    .line 205
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 206
    .line 207
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier$Companion;

    .line 208
    .line 209
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 210
    .line 211
    .line 212
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->Companion:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier$Companion;

    .line 213
    .line 214
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->values()[Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .line 222
    .line 223
    array-length v2, v0

    .line 224
    move/from16 v3, v16

    .line 225
    .line 226
    :goto_0
    if-ge v3, v2, :cond_1

    .line 227
    .line 228
    aget-object v4, v0, v3

    .line 229
    .line 230
    iget-boolean v5, v4, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->includeByDefault:Z

    .line 231
    .line 232
    if-eqz v5, :cond_0

    .line 233
    .line 234
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 238
    .line 239
    goto :goto_0

    .line 240
    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->ALL_EXCEPT_ANNOTATIONS:Ljava/util/Set;

    .line 245
    .line 246
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->values()[Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->ALL:Ljava/util/Set;

    .line 255
    .line 256
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->includeByDefault:Z

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;
    .locals 1

    .line 1
    const-class v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererModifier;

    .line 8
    .line 9
    return-object v0
.end method

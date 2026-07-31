.class public abstract Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final charSequenceArrayDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

.field public static final charSequenceListDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

.field public static final nullablePolymorphicSparseParcelableArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public static final parcelableArrayDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

.field public static final parcelableListDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

.field public static final polymorphicCharSequenceArrayDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

.field public static final polymorphicCharSequenceDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public static final polymorphicCharSequenceListDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

.field public static final polymorphicIBinderDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public static final polymorphicJavaSerializableDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public static final polymorphicParcelableArrayDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

.field public static final polymorphicParcelableDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public static final polymorphicParcelableListDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

.field public static final polymorphicSparseParcelableArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public static final sparseParcelableArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 2
    .line 3
    const-class v1, Ljava/lang/CharSequence;

    .line 4
    .line 5
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lkotlinx/serialization/PolymorphicSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicCharSequenceDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 17
    .line 18
    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 19
    .line 20
    const-class v2, Landroid/os/Parcelable;

    .line 21
    .line 22
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v0, v3}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lkotlinx/serialization/PolymorphicSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicParcelableDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 34
    .line 35
    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 36
    .line 37
    const-class v3, Ljava/io/Serializable;

    .line 38
    .line 39
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-direct {v0, v3}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lkotlinx/serialization/PolymorphicSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicJavaSerializableDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 51
    .line 52
    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 53
    .line 54
    const-class v3, Landroid/os/IBinder;

    .line 55
    .line 56
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-direct {v0, v3}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lkotlinx/serialization/PolymorphicSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicIBinderDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 68
    .line 69
    sget-object v0, Landroidx/savedstate/serialization/serializers/DefaultParcelableSerializer;->INSTANCE:Landroidx/savedstate/serialization/serializers/DefaultParcelableSerializer;

    .line 70
    .line 71
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v4, Lkotlinx/serialization/internal/ReferenceArraySerializer;

    .line 79
    .line 80
    invoke-direct {v4, v3, v0}, Lkotlinx/serialization/internal/ReferenceArraySerializer;-><init>(Lkotlin/jvm/internal/ClassReference;Lkotlinx/serialization/KSerializer;)V

    .line 81
    .line 82
    .line 83
    iget-object v3, v4, Lkotlinx/serialization/internal/ReferenceArraySerializer;->descriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 84
    .line 85
    sput-object v3, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->parcelableArrayDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 86
    .line 87
    new-instance v3, Lkotlinx/serialization/PolymorphicSerializer;

    .line 88
    .line 89
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-direct {v3, v4}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 97
    .line 98
    .line 99
    new-instance v4, Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 100
    .line 101
    invoke-interface {v3}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    const/4 v5, 0x0

    .line 109
    invoke-direct {v4, v3, v5}, Lkotlinx/serialization/internal/ArrayClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    .line 110
    .line 111
    .line 112
    sput-object v4, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicParcelableArrayDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 113
    .line 114
    new-instance v3, Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 115
    .line 116
    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    const/4 v6, 0x1

    .line 124
    invoke-direct {v3, v4, v6}, Lkotlinx/serialization/internal/ArrayClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    .line 125
    .line 126
    .line 127
    sput-object v3, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->parcelableListDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 128
    .line 129
    new-instance v3, Lkotlinx/serialization/PolymorphicSerializer;

    .line 130
    .line 131
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-direct {v3, v4}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 136
    .line 137
    .line 138
    new-instance v4, Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 139
    .line 140
    invoke-virtual {v3}, Lkotlinx/serialization/PolymorphicSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-direct {v4, v3, v6}, Lkotlinx/serialization/internal/ArrayClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    .line 148
    .line 149
    .line 150
    sput-object v4, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicParcelableListDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 151
    .line 152
    sget-object v3, Landroidx/savedstate/serialization/serializers/CharSequenceSerializer;->INSTANCE:Landroidx/savedstate/serialization/serializers/CharSequenceSerializer;

    .line 153
    .line 154
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 155
    .line 156
    .line 157
    new-instance v4, Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 158
    .line 159
    invoke-interface {v3}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-direct {v4, v3, v5}, Lkotlinx/serialization/internal/ArrayClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    .line 167
    .line 168
    .line 169
    sput-object v4, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->charSequenceArrayDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 170
    .line 171
    new-instance v3, Lkotlinx/serialization/PolymorphicSerializer;

    .line 172
    .line 173
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-direct {v3, v4}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 181
    .line 182
    .line 183
    new-instance v4, Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 184
    .line 185
    invoke-interface {v3}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-direct {v4, v3, v5}, Lkotlinx/serialization/internal/ArrayClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    .line 193
    .line 194
    .line 195
    sput-object v4, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicCharSequenceArrayDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 196
    .line 197
    new-instance v3, Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 198
    .line 199
    sget-object v4, Landroidx/savedstate/serialization/serializers/CharSequenceSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 200
    .line 201
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-direct {v3, v4, v6}, Lkotlinx/serialization/internal/ArrayClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    .line 205
    .line 206
    .line 207
    sput-object v3, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->charSequenceListDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 208
    .line 209
    new-instance v3, Lkotlinx/serialization/PolymorphicSerializer;

    .line 210
    .line 211
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-direct {v3, v1}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 216
    .line 217
    .line 218
    new-instance v1, Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 219
    .line 220
    invoke-virtual {v3}, Lkotlinx/serialization/PolymorphicSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-direct {v1, v3, v6}, Lkotlinx/serialization/internal/ArrayClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    .line 228
    .line 229
    .line 230
    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicCharSequenceListDescriptor:Lkotlinx/serialization/internal/ArrayClassDesc;

    .line 231
    .line 232
    sget-object v1, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->Companion:Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$Companion;

    .line 233
    .line 234
    invoke-virtual {v1, v0}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->sparseParcelableArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 243
    .line 244
    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 245
    .line 246
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-direct {v0, v3}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v0}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicSparseParcelableArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 262
    .line 263
    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 264
    .line 265
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-direct {v0, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 270
    .line 271
    .line 272
    invoke-static {v0}, Lkotlin/math/MathKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v1, v0}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->nullablePolymorphicSparseParcelableArrayDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 285
    .line 286
    return-void
.end method

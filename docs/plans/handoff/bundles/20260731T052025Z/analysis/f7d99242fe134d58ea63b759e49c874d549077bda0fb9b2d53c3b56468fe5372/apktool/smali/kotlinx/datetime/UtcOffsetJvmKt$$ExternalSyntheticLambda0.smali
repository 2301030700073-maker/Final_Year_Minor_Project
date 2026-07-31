.class public final synthetic Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    .line 1
    iget p0, p0, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    const-class v1, Lkotlinx/datetime/DateTimeUnit$MonthBased;

    .line 5
    .line 6
    const-class v2, Lkotlinx/datetime/DateTimeUnit$DayBased;

    .line 7
    .line 8
    const/16 v3, 0x2d

    .line 9
    .line 10
    const/4 v4, 0x3

    .line 11
    const-string v5, "Blank serial names are prohibited"

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x2

    .line 15
    const/16 v8, 0xb

    .line 16
    .line 17
    const/4 v9, 0x1

    .line 18
    const/4 v10, 0x0

    .line 19
    packed-switch p0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    const-string p0, "Could not parse int"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_0
    const-string p0, "Error getting PackageInfo"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_1
    const-string p0, "App in background"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_2
    const-string p0, "App in foreground"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_4
    sget-object p0, Lkotlinx/serialization/json/JsonArraySerializer;->descriptor:Lkotlinx/serialization/json/JsonArraySerializer$JsonArrayDescriptor;

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_5
    sget-object p0, Lkotlinx/serialization/json/JsonObjectSerializer;->descriptor:Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_6
    sget-object p0, Lkotlinx/serialization/json/JsonLiteralSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_7
    sget-object p0, Lkotlinx/serialization/json/JsonNullSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_8
    sget-object p0, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_9
    new-array p0, v10, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 53
    .line 54
    const-string v8, "kotlinx.datetime.TimeBased"

    .line 55
    .line 56
    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    .line 62
    new-instance v12, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 63
    .line 64
    invoke-direct {v12, v8}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    .line 68
    .line 69
    sget-object v0, Lkotlinx/serialization/internal/LongSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 70
    .line 71
    const-string v1, "nanoseconds"

    .line 72
    .line 73
    invoke-virtual {v12, v1, v0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 74
    .line 75
    .line 76
    new-instance v7, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 77
    .line 78
    sget-object v9, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$1:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    .line 79
    .line 80
    iget-object v0, v12, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementNames:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    invoke-direct/range {v7 .. v12}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;-><init>(Ljava/lang/String;Lkotlin/ranges/RangesKt;ILjava/util/List;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)V

    .line 91
    .line 92
    .line 93
    move-object v6, v7

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    invoke-static {v5}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-object v6

    .line 99
    :pswitch_a
    new-array p0, v10, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 100
    .line 101
    const-string v8, "kotlinx.datetime.MonthBased"

    .line 102
    .line 103
    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_1

    .line 108
    .line 109
    new-instance v12, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 110
    .line 111
    invoke-direct {v12, v8}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 115
    .line 116
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 117
    .line 118
    const-string v1, "months"

    .line 119
    .line 120
    invoke-virtual {v12, v1, v0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 121
    .line 122
    .line 123
    new-instance v7, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 124
    .line 125
    sget-object v9, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$1:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    .line 126
    .line 127
    iget-object v0, v12, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementNames:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    invoke-direct/range {v7 .. v12}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;-><init>(Ljava/lang/String;Lkotlin/ranges/RangesKt;ILjava/util/List;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)V

    .line 138
    .line 139
    .line 140
    move-object v6, v7

    .line 141
    goto :goto_1

    .line 142
    :cond_1
    invoke-static {v5}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :goto_1
    return-object v6

    .line 146
    :pswitch_b
    new-array p0, v10, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 147
    .line 148
    const-string v8, "kotlinx.datetime.DayBased"

    .line 149
    .line 150
    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_2

    .line 155
    .line 156
    new-instance v12, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 157
    .line 158
    invoke-direct {v12, v8}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    .line 162
    .line 163
    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 164
    .line 165
    const-string v1, "days"

    .line 166
    .line 167
    invoke-virtual {v12, v1, v0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 168
    .line 169
    .line 170
    new-instance v7, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 171
    .line 172
    sget-object v9, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$1:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    .line 173
    .line 174
    iget-object v0, v12, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->elementNames:Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    invoke-direct/range {v7 .. v12}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;-><init>(Ljava/lang/String;Lkotlin/ranges/RangesKt;ILjava/util/List;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)V

    .line 185
    .line 186
    .line 187
    move-object v6, v7

    .line 188
    goto :goto_2

    .line 189
    :cond_2
    invoke-static {v5}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :goto_2
    return-object v6

    .line 193
    :pswitch_c
    new-instance p0, Lkotlinx/serialization/SealedClassSerializer;

    .line 194
    .line 195
    const-class v0, Lkotlinx/datetime/DateTimeUnit;

    .line 196
    .line 197
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    const-class v3, Lkotlinx/datetime/DateTimeUnit$TimeBased;

    .line 210
    .line 211
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    new-array v5, v4, [Lkotlin/reflect/KClass;

    .line 216
    .line 217
    aput-object v2, v5, v10

    .line 218
    .line 219
    aput-object v1, v5, v9

    .line 220
    .line 221
    aput-object v3, v5, v7

    .line 222
    .line 223
    new-array v1, v4, [Lkotlinx/serialization/KSerializer;

    .line 224
    .line 225
    sget-object v2, Lkotlinx/datetime/serializers/DayBasedDateTimeUnitSerializer;->INSTANCE:Lkotlinx/datetime/serializers/DayBasedDateTimeUnitSerializer;

    .line 226
    .line 227
    aput-object v2, v1, v10

    .line 228
    .line 229
    sget-object v2, Lkotlinx/datetime/serializers/MonthBasedDateTimeUnitSerializer;->INSTANCE:Lkotlinx/datetime/serializers/MonthBasedDateTimeUnitSerializer;

    .line 230
    .line 231
    aput-object v2, v1, v9

    .line 232
    .line 233
    sget-object v2, Lkotlinx/datetime/serializers/TimeBasedDateTimeUnitSerializer;->INSTANCE:Lkotlinx/datetime/serializers/TimeBasedDateTimeUnitSerializer;

    .line 234
    .line 235
    aput-object v2, v1, v7

    .line 236
    .line 237
    const-string v2, "kotlinx.datetime.DateTimeUnit"

    .line 238
    .line 239
    invoke-direct {p0, v2, v0, v5, v1}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/ClassReference;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    .line 240
    .line 241
    .line 242
    return-object p0

    .line 243
    :pswitch_d
    new-instance p0, Lkotlinx/serialization/SealedClassSerializer;

    .line 244
    .line 245
    const-class v0, Lkotlinx/datetime/DateTimeUnit$DateBased;

    .line 246
    .line 247
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    new-array v3, v7, [Lkotlin/reflect/KClass;

    .line 260
    .line 261
    aput-object v2, v3, v10

    .line 262
    .line 263
    aput-object v1, v3, v9

    .line 264
    .line 265
    new-array v1, v7, [Lkotlinx/serialization/KSerializer;

    .line 266
    .line 267
    sget-object v2, Lkotlinx/datetime/serializers/DayBasedDateTimeUnitSerializer;->INSTANCE:Lkotlinx/datetime/serializers/DayBasedDateTimeUnitSerializer;

    .line 268
    .line 269
    aput-object v2, v1, v10

    .line 270
    .line 271
    sget-object v2, Lkotlinx/datetime/serializers/MonthBasedDateTimeUnitSerializer;->INSTANCE:Lkotlinx/datetime/serializers/MonthBasedDateTimeUnitSerializer;

    .line 272
    .line 273
    aput-object v2, v1, v9

    .line 274
    .line 275
    const-string v2, "kotlinx.datetime.DateTimeUnit.DateBased"

    .line 276
    .line 277
    invoke-direct {p0, v2, v0, v3, v1}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/ClassReference;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    .line 278
    .line 279
    .line 280
    return-object p0

    .line 281
    :pswitch_e
    new-instance p0, Lkotlinx/datetime/format/LocalDateFormat$Builder;

    .line 282
    .line 283
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 284
    .line 285
    invoke-direct {v0, v8}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 286
    .line 287
    .line 288
    invoke-direct {p0, v0, v9}, Lkotlinx/datetime/format/LocalDateFormat$Builder;-><init>(Lokhttp3/Headers$Builder;I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Lkotlinx/datetime/format/LocalDateFormat$Builder;->year()V

    .line 292
    .line 293
    .line 294
    invoke-static {p0, v3}, Lkotlin/text/StringsKt__IndentKt;->char(Lkotlinx/datetime/format/DateTimeFormatBuilder;C)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0}, Lkotlinx/datetime/format/LocalDateFormat$Builder;->monthNumber()V

    .line 298
    .line 299
    .line 300
    new-instance v0, Lkotlinx/datetime/format/YearMonthFormat;

    .line 301
    .line 302
    invoke-static {p0}, Lkotlinx/io/Sink$-CC;->$default$build(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;)Lkotlinx/datetime/internal/format/CachedFormatStructure;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    invoke-direct {v0, p0}, Lkotlinx/datetime/format/YearMonthFormat;-><init>(Lkotlinx/datetime/internal/format/CachedFormatStructure;)V

    .line 307
    .line 308
    .line 309
    return-object v0

    .line 310
    :pswitch_f
    new-instance p0, Lokhttp3/Headers$Builder;

    .line 311
    .line 312
    invoke-direct {p0, v8}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 313
    .line 314
    .line 315
    new-instance v0, Lkotlinx/datetime/internal/format/SignedFormatStructure;

    .line 316
    .line 317
    new-instance v1, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    .line 318
    .line 319
    new-instance v2, Lkotlinx/datetime/format/UtcOffsetWholeHoursDirective;

    .line 320
    .line 321
    sget-object v3, Lkotlinx/datetime/format/Padding;->ZERO:Lkotlinx/datetime/format/Padding;

    .line 322
    .line 323
    invoke-direct {v2, v3}, Lkotlinx/datetime/format/UtcOffsetWholeHoursDirective;-><init>(Lkotlinx/datetime/format/Padding;)V

    .line 324
    .line 325
    .line 326
    invoke-direct {v1, v2}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    .line 327
    .line 328
    .line 329
    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/SignedFormatStructure;-><init>(Lkotlinx/datetime/internal/format/BasicFormatStructure;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0, v0}, Lokhttp3/Headers$Builder;->add(Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 333
    .line 334
    .line 335
    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    .line 336
    .line 337
    new-instance v1, Lkotlinx/datetime/format/UtcOffsetMinuteOfHourDirective;

    .line 338
    .line 339
    invoke-direct {v1, v3}, Lkotlinx/datetime/format/UtcOffsetMinuteOfHourDirective;-><init>(Lkotlinx/datetime/format/Padding;)V

    .line 340
    .line 341
    .line 342
    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0, v0}, Lokhttp3/Headers$Builder;->add(Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 346
    .line 347
    .line 348
    new-instance v0, Lkotlinx/datetime/format/UtcOffsetFormat;

    .line 349
    .line 350
    new-instance v1, Lkotlinx/datetime/internal/format/CachedFormatStructure;

    .line 351
    .line 352
    iget-object p0, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 353
    .line 354
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    invoke-direct {v1, p0}, Lkotlinx/datetime/internal/format/CachedFormatStructure;-><init>(Ljava/util/List;)V

    .line 358
    .line 359
    .line 360
    invoke-direct {v0, v1}, Lkotlinx/datetime/format/UtcOffsetFormat;-><init>(Lkotlinx/datetime/internal/format/CachedFormatStructure;)V

    .line 361
    .line 362
    .line 363
    return-object v0

    .line 364
    :pswitch_10
    new-instance p0, Lkotlinx/datetime/format/UtcOffsetFormat$Builder;

    .line 365
    .line 366
    new-instance v1, Lokhttp3/Headers$Builder;

    .line 367
    .line 368
    invoke-direct {v1, v8}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 369
    .line 370
    .line 371
    invoke-direct {p0, v1}, Lkotlinx/datetime/format/UtcOffsetFormat$Builder;-><init>(Lokhttp3/Headers$Builder;)V

    .line 372
    .line 373
    .line 374
    new-instance v1, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    .line 375
    .line 376
    invoke-direct {v1, v4}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    .line 377
    .line 378
    .line 379
    new-array v2, v9, [Lkotlin/jvm/functions/Function1;

    .line 380
    .line 381
    aput-object v1, v2, v10

    .line 382
    .line 383
    new-instance v1, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    .line 384
    .line 385
    invoke-direct {v1, v0}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    .line 386
    .line 387
    .line 388
    invoke-static {p0, v2, v1}, Lkotlin/text/StringsKt__IndentKt;->alternativeParsing(Lkotlinx/datetime/format/DateTimeFormatBuilder;[Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 389
    .line 390
    .line 391
    new-instance v0, Lkotlinx/datetime/format/UtcOffsetFormat;

    .line 392
    .line 393
    invoke-static {p0}, Lkotlinx/io/Sink$-CC;->$default$build(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;)Lkotlinx/datetime/internal/format/CachedFormatStructure;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    invoke-direct {v0, p0}, Lkotlinx/datetime/format/UtcOffsetFormat;-><init>(Lkotlinx/datetime/internal/format/CachedFormatStructure;)V

    .line 398
    .line 399
    .line 400
    return-object v0

    .line 401
    :pswitch_11
    new-instance p0, Lkotlinx/datetime/format/UtcOffsetFormat$Builder;

    .line 402
    .line 403
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 404
    .line 405
    invoke-direct {v0, v8}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 406
    .line 407
    .line 408
    invoke-direct {p0, v0}, Lkotlinx/datetime/format/UtcOffsetFormat$Builder;-><init>(Lokhttp3/Headers$Builder;)V

    .line 409
    .line 410
    .line 411
    new-instance v0, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    .line 412
    .line 413
    invoke-direct {v0, v9}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    .line 414
    .line 415
    .line 416
    new-array v1, v9, [Lkotlin/jvm/functions/Function1;

    .line 417
    .line 418
    aput-object v0, v1, v10

    .line 419
    .line 420
    new-instance v0, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;

    .line 421
    .line 422
    invoke-direct {v0, v7}, Lkotlinx/serialization/json/JsonObject$$ExternalSyntheticLambda0;-><init>(I)V

    .line 423
    .line 424
    .line 425
    invoke-static {p0, v1, v0}, Lkotlin/text/StringsKt__IndentKt;->alternativeParsing(Lkotlinx/datetime/format/DateTimeFormatBuilder;[Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 426
    .line 427
    .line 428
    new-instance v0, Lkotlinx/datetime/format/UtcOffsetFormat;

    .line 429
    .line 430
    invoke-static {p0}, Lkotlinx/io/Sink$-CC;->$default$build(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;)Lkotlinx/datetime/internal/format/CachedFormatStructure;

    .line 431
    .line 432
    .line 433
    move-result-object p0

    .line 434
    invoke-direct {v0, p0}, Lkotlinx/datetime/format/UtcOffsetFormat;-><init>(Lkotlinx/datetime/internal/format/CachedFormatStructure;)V

    .line 435
    .line 436
    .line 437
    return-object v0

    .line 438
    :pswitch_12
    new-instance p0, Lkotlinx/datetime/format/LocalTimeFormat$Builder;

    .line 439
    .line 440
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 441
    .line 442
    invoke-direct {v0, v8}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 443
    .line 444
    .line 445
    invoke-direct {p0, v0}, Lkotlinx/datetime/format/LocalTimeFormat$Builder;-><init>(Lokhttp3/Headers$Builder;)V

    .line 446
    .line 447
    .line 448
    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    .line 449
    .line 450
    new-instance v1, Lkotlinx/datetime/format/HourDirective;

    .line 451
    .line 452
    invoke-direct {v1}, Lkotlinx/datetime/format/HourDirective;-><init>()V

    .line 453
    .line 454
    .line 455
    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/LocalTimeFormat$Builder;->addFormatStructureForTime(Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 459
    .line 460
    .line 461
    const/16 v0, 0x3a

    .line 462
    .line 463
    invoke-static {p0, v0}, Lkotlin/text/StringsKt__IndentKt;->char(Lkotlinx/datetime/format/DateTimeFormatBuilder;C)V

    .line 464
    .line 465
    .line 466
    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    .line 467
    .line 468
    new-instance v1, Lkotlinx/datetime/format/MinuteDirective;

    .line 469
    .line 470
    invoke-direct {v1}, Lkotlinx/datetime/format/MinuteDirective;-><init>()V

    .line 471
    .line 472
    .line 473
    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/LocalTimeFormat$Builder;->addFormatStructureForTime(Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 477
    .line 478
    .line 479
    new-instance v0, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 480
    .line 481
    const/16 v1, 0x19

    .line 482
    .line 483
    invoke-direct {v0, v1}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 484
    .line 485
    .line 486
    new-array v1, v9, [Lkotlin/jvm/functions/Function1;

    .line 487
    .line 488
    aput-object v0, v1, v10

    .line 489
    .line 490
    new-instance v0, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 491
    .line 492
    const/16 v2, 0x1a

    .line 493
    .line 494
    invoke-direct {v0, v2}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 495
    .line 496
    .line 497
    invoke-static {p0, v1, v0}, Lkotlin/text/StringsKt__IndentKt;->alternativeParsing(Lkotlinx/datetime/format/DateTimeFormatBuilder;[Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 498
    .line 499
    .line 500
    new-instance v0, Lkotlinx/datetime/format/LocalTimeFormat;

    .line 501
    .line 502
    invoke-static {p0}, Lkotlinx/io/Sink$-CC;->$default$build(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;)Lkotlinx/datetime/internal/format/CachedFormatStructure;

    .line 503
    .line 504
    .line 505
    move-result-object p0

    .line 506
    invoke-direct {v0, p0}, Lkotlinx/datetime/format/LocalTimeFormat;-><init>(Lkotlinx/datetime/internal/format/CachedFormatStructure;)V

    .line 507
    .line 508
    .line 509
    return-object v0

    .line 510
    :pswitch_13
    new-instance p0, Lkotlinx/datetime/format/LocalDateTimeFormat$Builder;

    .line 511
    .line 512
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 513
    .line 514
    invoke-direct {v0, v8}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 515
    .line 516
    .line 517
    invoke-direct {p0, v0}, Lkotlinx/datetime/format/LocalDateTimeFormat$Builder;-><init>(Lokhttp3/Headers$Builder;)V

    .line 518
    .line 519
    .line 520
    sget-object v1, Lkotlinx/datetime/format/LocalDateFormatKt;->ISO_DATE$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 521
    .line 522
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    check-cast v1, Lkotlinx/datetime/format/AbstractDateTimeFormat;

    .line 527
    .line 528
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    .line 530
    .line 531
    check-cast v1, Lkotlinx/datetime/format/LocalDateFormat;

    .line 532
    .line 533
    iget-object v1, v1, Lkotlinx/datetime/format/LocalDateFormat;->actualFormat:Lkotlinx/datetime/internal/format/CachedFormatStructure;

    .line 534
    .line 535
    invoke-virtual {v0, v1}, Lokhttp3/Headers$Builder;->add(Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 536
    .line 537
    .line 538
    new-instance v1, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 539
    .line 540
    const/16 v2, 0x17

    .line 541
    .line 542
    invoke-direct {v1, v2}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 543
    .line 544
    .line 545
    new-array v2, v9, [Lkotlin/jvm/functions/Function1;

    .line 546
    .line 547
    aput-object v1, v2, v10

    .line 548
    .line 549
    new-instance v1, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;

    .line 550
    .line 551
    const/16 v3, 0x18

    .line 552
    .line 553
    invoke-direct {v1, v3}, Lkotlin/time/InstantKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 554
    .line 555
    .line 556
    invoke-static {p0, v2, v1}, Lkotlin/text/StringsKt__IndentKt;->alternativeParsing(Lkotlinx/datetime/format/DateTimeFormatBuilder;[Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 557
    .line 558
    .line 559
    sget-object v1, Lkotlinx/datetime/format/LocalTimeFormatKt;->ISO_TIME$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 560
    .line 561
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    check-cast v1, Lkotlinx/datetime/format/LocalTimeFormat;

    .line 566
    .line 567
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    .line 569
    .line 570
    iget-object v1, v1, Lkotlinx/datetime/format/LocalTimeFormat;->actualFormat:Lkotlinx/datetime/internal/format/CachedFormatStructure;

    .line 571
    .line 572
    invoke-virtual {v0, v1}, Lokhttp3/Headers$Builder;->add(Lkotlinx/datetime/internal/format/FormatStructure;)V

    .line 573
    .line 574
    .line 575
    new-instance v0, Lkotlinx/datetime/format/LocalDateTimeFormat;

    .line 576
    .line 577
    invoke-static {p0}, Lkotlinx/io/Sink$-CC;->$default$build(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;)Lkotlinx/datetime/internal/format/CachedFormatStructure;

    .line 578
    .line 579
    .line 580
    move-result-object p0

    .line 581
    invoke-direct {v0, p0}, Lkotlinx/datetime/format/LocalDateTimeFormat;-><init>(Lkotlinx/datetime/internal/format/CachedFormatStructure;)V

    .line 582
    .line 583
    .line 584
    return-object v0

    .line 585
    :pswitch_14
    new-instance p0, Lkotlinx/datetime/format/LocalDateFormat$Builder;

    .line 586
    .line 587
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 588
    .line 589
    invoke-direct {v0, v8}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 590
    .line 591
    .line 592
    invoke-direct {p0, v0, v10}, Lkotlinx/datetime/format/LocalDateFormat$Builder;-><init>(Lokhttp3/Headers$Builder;I)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {p0}, Lkotlinx/datetime/format/LocalDateFormat$Builder;->year()V

    .line 596
    .line 597
    .line 598
    invoke-virtual {p0}, Lkotlinx/datetime/format/LocalDateFormat$Builder;->monthNumber()V

    .line 599
    .line 600
    .line 601
    invoke-virtual {p0}, Lkotlinx/datetime/format/LocalDateFormat$Builder;->day()V

    .line 602
    .line 603
    .line 604
    new-instance v0, Lkotlinx/datetime/format/LocalDateFormat;

    .line 605
    .line 606
    invoke-static {p0}, Lkotlinx/io/Sink$-CC;->$default$build(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;)Lkotlinx/datetime/internal/format/CachedFormatStructure;

    .line 607
    .line 608
    .line 609
    move-result-object p0

    .line 610
    invoke-direct {v0, p0}, Lkotlinx/datetime/format/LocalDateFormat;-><init>(Lkotlinx/datetime/internal/format/CachedFormatStructure;)V

    .line 611
    .line 612
    .line 613
    return-object v0

    .line 614
    :pswitch_15
    new-instance p0, Lkotlinx/datetime/format/LocalDateFormat$Builder;

    .line 615
    .line 616
    new-instance v0, Lokhttp3/Headers$Builder;

    .line 617
    .line 618
    invoke-direct {v0, v8}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 619
    .line 620
    .line 621
    invoke-direct {p0, v0, v10}, Lkotlinx/datetime/format/LocalDateFormat$Builder;-><init>(Lokhttp3/Headers$Builder;I)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {p0}, Lkotlinx/datetime/format/LocalDateFormat$Builder;->year()V

    .line 625
    .line 626
    .line 627
    invoke-static {p0, v3}, Lkotlin/text/StringsKt__IndentKt;->char(Lkotlinx/datetime/format/DateTimeFormatBuilder;C)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {p0}, Lkotlinx/datetime/format/LocalDateFormat$Builder;->monthNumber()V

    .line 631
    .line 632
    .line 633
    invoke-static {p0, v3}, Lkotlin/text/StringsKt__IndentKt;->char(Lkotlinx/datetime/format/DateTimeFormatBuilder;C)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {p0}, Lkotlinx/datetime/format/LocalDateFormat$Builder;->day()V

    .line 637
    .line 638
    .line 639
    new-instance v0, Lkotlinx/datetime/format/LocalDateFormat;

    .line 640
    .line 641
    invoke-static {p0}, Lkotlinx/io/Sink$-CC;->$default$build(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;)Lkotlinx/datetime/internal/format/CachedFormatStructure;

    .line 642
    .line 643
    .line 644
    move-result-object p0

    .line 645
    invoke-direct {v0, p0}, Lkotlinx/datetime/format/LocalDateFormat;-><init>(Lkotlinx/datetime/internal/format/CachedFormatStructure;)V

    .line 646
    .line 647
    .line 648
    return-object v0

    .line 649
    :pswitch_16
    new-instance p0, Lj$/time/format/DateTimeFormatterBuilder;

    .line 650
    .line 651
    invoke-direct {p0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 652
    .line 653
    .line 654
    invoke-virtual {p0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    .line 655
    .line 656
    .line 657
    move-result-object p0

    .line 658
    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    .line 659
    .line 660
    const/16 v2, 0xa

    .line 661
    .line 662
    sget-object v4, Lj$/time/format/SignStyle;->EXCEEDS_PAD:Lj$/time/format/SignStyle;

    .line 663
    .line 664
    invoke-virtual {p0, v1, v0, v2, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 665
    .line 666
    .line 667
    move-result-object p0

    .line 668
    invoke-virtual {p0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    .line 669
    .line 670
    .line 671
    move-result-object p0

    .line 672
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    .line 673
    .line 674
    invoke-virtual {p0, v0, v7}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    .line 675
    .line 676
    .line 677
    move-result-object p0

    .line 678
    invoke-virtual {p0}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter()Lj$/time/format/DateTimeFormatter;

    .line 679
    .line 680
    .line 681
    move-result-object p0

    .line 682
    return-object p0

    .line 683
    :pswitch_17
    new-instance p0, Lj$/time/format/DateTimeFormatterBuilder;

    .line 684
    .line 685
    invoke-direct {p0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 686
    .line 687
    .line 688
    invoke-virtual {p0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    .line 689
    .line 690
    .line 691
    move-result-object p0

    .line 692
    const-string v0, "+HHMM"

    .line 693
    .line 694
    const-string v1, "+0000"

    .line 695
    .line 696
    invoke-virtual {p0, v0, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 697
    .line 698
    .line 699
    move-result-object p0

    .line 700
    invoke-virtual {p0}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter()Lj$/time/format/DateTimeFormatter;

    .line 701
    .line 702
    .line 703
    move-result-object p0

    .line 704
    return-object p0

    .line 705
    :pswitch_18
    new-instance p0, Lj$/time/format/DateTimeFormatterBuilder;

    .line 706
    .line 707
    invoke-direct {p0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 708
    .line 709
    .line 710
    invoke-virtual {p0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    .line 711
    .line 712
    .line 713
    move-result-object p0

    .line 714
    const-string v0, "+HHmmss"

    .line 715
    .line 716
    const-string v1, "Z"

    .line 717
    .line 718
    invoke-virtual {p0, v0, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 719
    .line 720
    .line 721
    move-result-object p0

    .line 722
    invoke-virtual {p0}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter()Lj$/time/format/DateTimeFormatter;

    .line 723
    .line 724
    .line 725
    move-result-object p0

    .line 726
    return-object p0

    .line 727
    :pswitch_19
    invoke-static {}, Lcom/skydoves/landscapist/coil3/LocalCoilProviderKt;->$r8$lambda$dsT-3H_sfWv18ZUUJcsPD8YvP9w()Lcoil3/ImageLoader;

    .line 728
    .line 729
    .line 730
    move-result-object p0

    .line 731
    return-object p0

    .line 732
    :pswitch_1a
    sget-object p0, Lcom/skydoves/landscapist/LocalImageSourceFileKt;->LocalImageSourceFile:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 733
    .line 734
    return-object v6

    .line 735
    :pswitch_1b
    new-instance p0, Landroid/os/Handler;

    .line 736
    .line 737
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 742
    .line 743
    .line 744
    return-object p0

    .line 745
    :pswitch_1c
    new-instance p0, Lj$/time/format/DateTimeFormatterBuilder;

    .line 746
    .line 747
    invoke-direct {p0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 748
    .line 749
    .line 750
    invoke-virtual {p0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    .line 751
    .line 752
    .line 753
    move-result-object p0

    .line 754
    invoke-virtual {p0}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Lj$/time/format/DateTimeFormatterBuilder;

    .line 755
    .line 756
    .line 757
    move-result-object p0

    .line 758
    invoke-virtual {p0}, Lj$/time/format/DateTimeFormatterBuilder;->toFormatter()Lj$/time/format/DateTimeFormatter;

    .line 759
    .line 760
    .line 761
    move-result-object p0

    .line 762
    return-object p0

    .line 763
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

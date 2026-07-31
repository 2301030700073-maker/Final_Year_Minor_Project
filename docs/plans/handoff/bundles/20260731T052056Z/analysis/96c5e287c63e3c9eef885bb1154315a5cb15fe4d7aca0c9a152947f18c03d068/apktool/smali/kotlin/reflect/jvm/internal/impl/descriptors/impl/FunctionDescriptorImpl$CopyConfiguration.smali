.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;


# instance fields
.field public additionalAnnotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

.field public copyOverrides:Z

.field public dispatchReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

.field public dropOriginalInContainingParts:Z

.field public isHiddenForResolutionEverywhereBesideSupercalls:Z

.field public isHiddenToOvercomeSignatureClash:Z

.field public justForTypeSubstitution:Z

.field public kind:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

.field public name:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public final newContextReceiverParameters:Ljava/util/List;

.field public newExtensionReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

.field public newHasSynthesizedParameterNames:Ljava/lang/Boolean;

.field public newModality:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field public newOwner:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

.field public newReturnType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

.field public newTypeParameters:Ljava/util/List;

.field public newValueParameterDescriptors:Ljava/util/List;

.field public newVisibility:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

.field public original:Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

.field public preserveSourceElement:Z

.field public signatureChange:Z

.field public substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

.field public final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

.field public final userDataMap:Ljava/util/LinkedHashMap;


# direct methods
.method public static synthetic $$$reportNull$$$0(I)V
    .locals 17

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_1
    const-string v0, "@NotNull method %s.%s must not return null"

    .line 8
    .line 9
    :goto_0
    const/4 v1, 0x2

    .line 10
    packed-switch p0, :pswitch_data_1

    .line 11
    .line 12
    .line 13
    :pswitch_2
    const/4 v2, 0x3

    .line 14
    goto :goto_1

    .line 15
    :pswitch_3
    move v2, v1

    .line 16
    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration"

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    packed-switch p0, :pswitch_data_2

    .line 22
    .line 23
    .line 24
    :pswitch_4
    const-string v5, "substitution"

    .line 25
    .line 26
    aput-object v5, v2, v4

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :pswitch_5
    const-string/jumbo v5, "userDataKey"

    .line 30
    .line 31
    .line 32
    aput-object v5, v2, v4

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :pswitch_6
    const-string v5, "additionalAnnotations"

    .line 36
    .line 37
    aput-object v5, v2, v4

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :pswitch_7
    const-string v5, "contextReceiverParameters"

    .line 41
    .line 42
    aput-object v5, v2, v4

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :pswitch_8
    const-string/jumbo v5, "type"

    .line 46
    .line 47
    .line 48
    aput-object v5, v2, v4

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :pswitch_9
    const-string v5, "parameters"

    .line 52
    .line 53
    aput-object v5, v2, v4

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :pswitch_a
    const-string v5, "name"

    .line 57
    .line 58
    aput-object v5, v2, v4

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :pswitch_b
    const-string/jumbo v5, "visibility"

    .line 62
    .line 63
    .line 64
    aput-object v5, v2, v4

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :pswitch_c
    const-string v5, "modality"

    .line 68
    .line 69
    aput-object v5, v2, v4

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :pswitch_d
    aput-object v3, v2, v4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :pswitch_e
    const-string v5, "owner"

    .line 76
    .line 77
    aput-object v5, v2, v4

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :pswitch_f
    const-string v5, "newReturnType"

    .line 81
    .line 82
    aput-object v5, v2, v4

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :pswitch_10
    const-string v5, "newContextReceiverParameters"

    .line 86
    .line 87
    aput-object v5, v2, v4

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :pswitch_11
    const-string v5, "newValueParameterDescriptors"

    .line 91
    .line 92
    aput-object v5, v2, v4

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :pswitch_12
    const-string v5, "kind"

    .line 96
    .line 97
    aput-object v5, v2, v4

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :pswitch_13
    const-string v5, "newVisibility"

    .line 101
    .line 102
    aput-object v5, v2, v4

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :pswitch_14
    const-string v5, "newModality"

    .line 106
    .line 107
    aput-object v5, v2, v4

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :pswitch_15
    const-string v5, "newOwner"

    .line 111
    .line 112
    aput-object v5, v2, v4

    .line 113
    .line 114
    :goto_2
    const-string v4, "setOwner"

    .line 115
    .line 116
    const-string v5, "setModality"

    .line 117
    .line 118
    const-string v6, "setVisibility"

    .line 119
    .line 120
    const-string v7, "setKind"

    .line 121
    .line 122
    const-string v8, "setName"

    .line 123
    .line 124
    const-string v9, "setValueParameters"

    .line 125
    .line 126
    const-string v10, "setTypeParameters"

    .line 127
    .line 128
    const-string v11, "setReturnType"

    .line 129
    .line 130
    const-string v12, "setContextReceiverParameters"

    .line 131
    .line 132
    const-string v13, "setAdditionalAnnotations"

    .line 133
    .line 134
    const-string v14, "setSubstitution"

    .line 135
    .line 136
    const-string v15, "putUserData"

    .line 137
    .line 138
    const/16 v16, 0x1

    .line 139
    .line 140
    packed-switch p0, :pswitch_data_3

    .line 141
    .line 142
    .line 143
    :pswitch_16
    aput-object v3, v2, v16

    .line 144
    .line 145
    goto/16 :goto_3

    .line 146
    .line 147
    :pswitch_17
    const-string v3, "setJustForTypeSubstitution"

    .line 148
    .line 149
    aput-object v3, v2, v16

    .line 150
    .line 151
    goto/16 :goto_3

    .line 152
    .line 153
    :pswitch_18
    const-string v3, "getSubstitution"

    .line 154
    .line 155
    aput-object v3, v2, v16

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :pswitch_19
    aput-object v15, v2, v16

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :pswitch_1a
    aput-object v14, v2, v16

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :pswitch_1b
    aput-object v13, v2, v16

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :pswitch_1c
    const-string v3, "setHiddenForResolutionEverywhereBesideSupercalls"

    .line 168
    .line 169
    aput-object v3, v2, v16

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :pswitch_1d
    const-string v3, "setHiddenToOvercomeSignatureClash"

    .line 173
    .line 174
    aput-object v3, v2, v16

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :pswitch_1e
    const-string v3, "setDropOriginalInContainingParts"

    .line 178
    .line 179
    aput-object v3, v2, v16

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :pswitch_1f
    const-string v3, "setPreserveSourceElement"

    .line 183
    .line 184
    aput-object v3, v2, v16

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :pswitch_20
    const-string v3, "setSignatureChange"

    .line 188
    .line 189
    aput-object v3, v2, v16

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :pswitch_21
    const-string v3, "setOriginal"

    .line 193
    .line 194
    aput-object v3, v2, v16

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :pswitch_22
    const-string v3, "setDispatchReceiverParameter"

    .line 198
    .line 199
    aput-object v3, v2, v16

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :pswitch_23
    const-string v3, "setExtensionReceiverParameter"

    .line 203
    .line 204
    aput-object v3, v2, v16

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :pswitch_24
    aput-object v12, v2, v16

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :pswitch_25
    aput-object v11, v2, v16

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :pswitch_26
    aput-object v10, v2, v16

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :pswitch_27
    aput-object v9, v2, v16

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :pswitch_28
    aput-object v8, v2, v16

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :pswitch_29
    const-string v3, "setCopyOverrides"

    .line 223
    .line 224
    aput-object v3, v2, v16

    .line 225
    .line 226
    goto :goto_3

    .line 227
    :pswitch_2a
    aput-object v7, v2, v16

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :pswitch_2b
    aput-object v6, v2, v16

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :pswitch_2c
    aput-object v5, v2, v16

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :pswitch_2d
    aput-object v4, v2, v16

    .line 237
    .line 238
    :goto_3
    packed-switch p0, :pswitch_data_4

    .line 239
    .line 240
    .line 241
    const-string v3, "<init>"

    .line 242
    .line 243
    aput-object v3, v2, v1

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :pswitch_2e
    aput-object v15, v2, v1

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :pswitch_2f
    aput-object v14, v2, v1

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :pswitch_30
    aput-object v13, v2, v1

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :pswitch_31
    aput-object v12, v2, v1

    .line 256
    .line 257
    goto :goto_4

    .line 258
    :pswitch_32
    aput-object v11, v2, v1

    .line 259
    .line 260
    goto :goto_4

    .line 261
    :pswitch_33
    aput-object v10, v2, v1

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :pswitch_34
    aput-object v9, v2, v1

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :pswitch_35
    aput-object v8, v2, v1

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :pswitch_36
    aput-object v7, v2, v1

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :pswitch_37
    aput-object v6, v2, v1

    .line 274
    .line 275
    goto :goto_4

    .line 276
    :pswitch_38
    aput-object v5, v2, v1

    .line 277
    .line 278
    goto :goto_4

    .line 279
    :pswitch_39
    aput-object v4, v2, v1

    .line 280
    .line 281
    :goto_4
    :pswitch_3a
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    packed-switch p0, :pswitch_data_5

    .line 286
    .line 287
    .line 288
    :pswitch_3b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 289
    .line 290
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    goto :goto_5

    .line 294
    :pswitch_3c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 295
    .line 296
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    :goto_5
    throw v1

    .line 300
    nop

    .line 301
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
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
        :pswitch_d
        :pswitch_b
        :pswitch_d
        :pswitch_12
        :pswitch_d
        :pswitch_d
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_d
        :pswitch_9
        :pswitch_d
        :pswitch_8
        :pswitch_d
        :pswitch_7
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_6
        :pswitch_d
        :pswitch_4
        :pswitch_d
        :pswitch_5
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_2d
        :pswitch_16
        :pswitch_2c
        :pswitch_16
        :pswitch_2b
        :pswitch_16
        :pswitch_2a
        :pswitch_29
        :pswitch_16
        :pswitch_28
        :pswitch_16
        :pswitch_27
        :pswitch_16
        :pswitch_26
        :pswitch_16
        :pswitch_25
        :pswitch_16
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_16
        :pswitch_1b
        :pswitch_16
        :pswitch_1a
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x8
        :pswitch_39
        :pswitch_3a
        :pswitch_38
        :pswitch_3a
        :pswitch_37
        :pswitch_3a
        :pswitch_36
        :pswitch_3a
        :pswitch_3a
        :pswitch_35
        :pswitch_3a
        :pswitch_34
        :pswitch_3a
        :pswitch_33
        :pswitch_3a
        :pswitch_32
        :pswitch_3a
        :pswitch_31
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_30
        :pswitch_3a
        :pswitch_2f
        :pswitch_3a
        :pswitch_2e
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x9
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3b
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_7

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz p3, :cond_6

    .line 7
    .line 8
    if-eqz p4, :cond_5

    .line 9
    .line 10
    if-eqz p5, :cond_4

    .line 11
    .line 12
    if-eqz p6, :cond_3

    .line 13
    .line 14
    if-eqz p7, :cond_2

    .line 15
    .line 16
    if-eqz p8, :cond_1

    .line 17
    .line 18
    if-eqz p10, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    .line 24
    .line 25
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->original:Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    .line 26
    .line 27
    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->dispatchReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 28
    .line 29
    iput-object v3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->dispatchReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 30
    .line 31
    iput-boolean v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->copyOverrides:Z

    .line 32
    .line 33
    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->signatureChange:Z

    .line 34
    .line 35
    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->preserveSourceElement:Z

    .line 36
    .line 37
    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->dropOriginalInContainingParts:Z

    .line 38
    .line 39
    iget-boolean v2, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isHiddenToOvercomeSignatureClash:Z

    .line 40
    .line 41
    iput-boolean v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->isHiddenToOvercomeSignatureClash:Z

    .line 42
    .line 43
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->newTypeParameters:Ljava/util/List;

    .line 44
    .line 45
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->additionalAnnotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 46
    .line 47
    iget-boolean p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isHiddenForResolutionEverywhereBesideSupercalls:Z

    .line 48
    .line 49
    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->isHiddenForResolutionEverywhereBesideSupercalls:Z

    .line 50
    .line 51
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->userDataMap:Ljava/util/LinkedHashMap;

    .line 57
    .line 58
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->newHasSynthesizedParameterNames:Ljava/lang/Boolean;

    .line 59
    .line 60
    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->justForTypeSubstitution:Z

    .line 61
    .line 62
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->substitution:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    .line 63
    .line 64
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->newOwner:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 65
    .line 66
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->newModality:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    .line 67
    .line 68
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->newVisibility:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 69
    .line 70
    iput-object p6, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->kind:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 71
    .line 72
    iput-object p7, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->newValueParameterDescriptors:Ljava/util/List;

    .line 73
    .line 74
    iput-object p8, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->newContextReceiverParameters:Ljava/util/List;

    .line 75
    .line 76
    iput-object p9, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->newExtensionReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 77
    .line 78
    iput-object p10, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->newReturnType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 79
    .line 80
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->name:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 81
    .line 82
    return-void

    .line 83
    :cond_0
    const/4 p0, 0x7

    .line 84
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->$$$reportNull$$$0(I)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_1
    const/4 p0, 0x6

    .line 89
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->$$$reportNull$$$0(I)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :cond_2
    const/4 p0, 0x5

    .line 94
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->$$$reportNull$$$0(I)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_3
    const/4 p0, 0x4

    .line 99
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->$$$reportNull$$$0(I)V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :cond_4
    const/4 p0, 0x3

    .line 104
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->$$$reportNull$$$0(I)V

    .line 105
    .line 106
    .line 107
    throw v0

    .line 108
    :cond_5
    const/4 p0, 0x2

    .line 109
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->$$$reportNull$$$0(I)V

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :cond_6
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->$$$reportNull$$$0(I)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :cond_7
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->$$$reportNull$$$0(I)V

    .line 118
    .line 119
    .line 120
    throw v0
.end method


# virtual methods
.method public final build()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->this$0:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->doSubstitute(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final putUserData()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->userDataMap:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;->HAS_ERASED_VALUE_PARAMETERS:Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$1;

    .line 6
    .line 7
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public final setAdditionalAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->additionalAnnotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/16 p0, 0x23

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->$$$reportNull$$$0(I)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final setCopyOverrides()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->copyOverrides:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final setDispatchReceiverParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->dispatchReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setHiddenForResolutionEverywhereBesideSupercalls()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->isHiddenForResolutionEverywhereBesideSupercalls:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final setHiddenToOvercomeSignatureClash()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->isHiddenToOvercomeSignatureClash:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final setKind(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->kind:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/16 p0, 0xe

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->$$$reportNull$$$0(I)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final setModality(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->newModality:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/16 p0, 0xa

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->$$$reportNull$$$0(I)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final setName(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->name:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setOwner(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->newOwner:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setPreserveSourceElement()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->preserveSourceElement:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final setReturnType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->newReturnType:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/16 p0, 0x17

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->$$$reportNull$$$0(I)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final setSignatureChange()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->signatureChange:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final setTypeParameters()Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 2
    .line 3
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->newTypeParameters:Ljava/util/List;

    .line 4
    .line 5
    return-object p0
.end method

.method public final setValueParameters(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->newValueParameterDescriptors:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor$CopyBuilder;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->newVisibility:Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/16 p0, 0xc

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration;->$$$reportNull$$$0(I)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

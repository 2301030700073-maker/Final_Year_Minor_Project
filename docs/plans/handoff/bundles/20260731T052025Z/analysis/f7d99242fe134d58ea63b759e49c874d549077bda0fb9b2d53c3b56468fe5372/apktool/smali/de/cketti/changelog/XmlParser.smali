.class public final Lde/cketti/changelog/XmlParser;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ldagger/internal/Provider;
.implements Lorg/apache/james/mime4j/util/ByteSequence;


# instance fields
.field public final synthetic $r8$classId:I

.field public lastVersionCode:I

.field public result:Ljava/lang/Object;

.field public xmlPullParser:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, Lde/cketti/changelog/XmlParser;->$r8$classId:I

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 270
    iput-object v0, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 263
    iput p1, p0, Lde/cketti/changelog/XmlParser;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 240
    iput p2, p0, Lde/cketti/changelog/XmlParser;->$r8$classId:I

    iput-object p3, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    iput-object p4, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    iput p1, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lde/cketti/changelog/XmlParser;->$r8$classId:I

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 261
    iput v0, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 262
    iput-object p1, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/ViewConfiguration;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lde/cketti/changelog/XmlParser;->$r8$classId:I

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/util/GlideSuppliers$1;)V
    .locals 2

    const/16 v0, 0xc

    iput v0, p0, Lde/cketti/changelog/XmlParser;->$r8$classId:I

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Landroidx/work/Configuration$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;)V

    const/16 v1, 0x96

    .line 274
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/pool/FactoryPools;->threadSafe(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Lcom/fsck/k9/backend/imap/ImapSync;

    move-result-object v0

    iput-object v0, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 275
    iput-object p1, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;ILandroid/view/MotionEvent;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lde/cketti/changelog/XmlParser;->$r8$classId:I

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 253
    iput p2, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 254
    iput-object p3, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 255
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "changes cannot be empty"

    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;)V
    .locals 12

    .line 1
    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lde/cketti/changelog/XmlParser;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->getIntervals()Lde/cketti/changelog/XmlParser;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget v0, p1, Lkotlin/ranges/IntProgression;->first:I

    .line 12
    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "negative nearestRange.first"

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget p1, p1, Lkotlin/ranges/IntProgression;->last:I

    .line 22
    .line 23
    iget v1, p2, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 24
    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-ge p1, v0, :cond_1

    .line 32
    .line 33
    sget-object p1, Landroidx/collection/ObjectIntMapKt;->EmptyObjectIntMap:Landroidx/collection/MutableObjectIntMap;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    new-array p2, p1, [Ljava/lang/Object;

    .line 42
    .line 43
    iput-object p2, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 44
    .line 45
    iput p1, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 46
    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :cond_1
    sub-int v1, p1, v0

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    new-array v2, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    iput-object v2, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 56
    .line 57
    iput v0, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 58
    .line 59
    new-instance v2, Landroidx/collection/MutableObjectIntMap;

    .line 60
    .line 61
    invoke-direct {v2, v1}, Landroidx/collection/MutableObjectIntMap;-><init>(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p2, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 67
    .line 68
    const-string v3, ", size "

    .line 69
    .line 70
    const-string v4, "Index "

    .line 71
    .line 72
    if-ltz v0, :cond_2

    .line 73
    .line 74
    iget v5, p2, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 75
    .line 76
    if-ge v0, v5, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-static {v0, v4, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    iget v6, p2, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 84
    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-static {v5}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    if-ltz p1, :cond_3

    .line 96
    .line 97
    iget v5, p2, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 98
    .line 99
    if-ge p1, v5, :cond_3

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    invoke-static {p1, v4, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iget p2, p2, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 107
    .line 108
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-static {p2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :goto_2
    if-lt p1, v0, :cond_4

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v3, "toIndex ("

    .line 124
    .line 125
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v3, ") should be not smaller than fromIndex ("

    .line 132
    .line 133
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const/16 v3, 0x29

    .line 140
    .line 141
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-static {p2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :goto_3
    invoke-static {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->access$binarySearch(ILandroidx/compose/runtime/collection/MutableVector;)I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    iget-object v3, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 156
    .line 157
    aget-object v3, v3, p2

    .line 158
    .line 159
    check-cast v3, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 160
    .line 161
    iget v3, v3, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    .line 162
    .line 163
    :goto_4
    if-gt v3, p1, :cond_8

    .line 164
    .line 165
    iget-object v4, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 166
    .line 167
    aget-object v4, v4, p2

    .line 168
    .line 169
    check-cast v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 170
    .line 171
    iget-object v5, v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->value:Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;

    .line 172
    .line 173
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;->getKey()Lkotlin/jvm/functions/Function1;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    iget v6, v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    .line 178
    .line 179
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    iget v8, v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->size:I

    .line 184
    .line 185
    add-int/2addr v8, v6

    .line 186
    add-int/lit8 v8, v8, -0x1

    .line 187
    .line 188
    invoke-static {p1, v8}, Ljava/lang/Math;->min(II)I

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    if-gt v7, v8, :cond_7

    .line 193
    .line 194
    :goto_5
    if-eqz v5, :cond_5

    .line 195
    .line 196
    sub-int v9, v7, v6

    .line 197
    .line 198
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    invoke-interface {v5, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    if-nez v9, :cond_6

    .line 207
    .line 208
    :cond_5
    new-instance v9, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;

    .line 209
    .line 210
    invoke-direct {v9, v7}, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;-><init>(I)V

    .line 211
    .line 212
    .line 213
    :cond_6
    invoke-virtual {v2, v7, v9}, Landroidx/collection/MutableObjectIntMap;->set(ILjava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    iget-object v10, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v10, [Ljava/lang/Object;

    .line 219
    .line 220
    iget v11, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 221
    .line 222
    sub-int v11, v7, v11

    .line 223
    .line 224
    aput-object v9, v10, v11

    .line 225
    .line 226
    if-eq v7, v8, :cond_7

    .line 227
    .line 228
    add-int/lit8 v7, v7, 0x1

    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_7
    iget v4, v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->size:I

    .line 232
    .line 233
    add-int/2addr v3, v4

    .line 234
    add-int/lit8 p2, p2, 0x1

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_8
    iput-object v2, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 238
    .line 239
    :goto_6
    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/android/feature/mail/message/reader/api/css/DefaultCssClassNameProvider;Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultCssVariableNameProvider;Ljava/lang/String;)V
    .locals 0

    const/16 p1, 0xd

    iput p1, p0, Lde/cketti/changelog/XmlParser;->$r8$classId:I

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p2, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit16 p2, p2, 0x800

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Protocol;ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lde/cketti/changelog/XmlParser;->$r8$classId:I

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 246
    iput p2, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 247
    iput-object p3, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/util/BufferRecycler;I)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Lde/cketti/changelog/XmlParser;->$r8$classId:I

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_0

    const/4 v0, 0x0

    .line 257
    invoke-virtual {p1, v0, p2}, Lorg/apache/james/mime4j/util/BufferRecycler;->allocByteBuffer(II)[B

    move-result-object p2

    iput-object p2, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 258
    iput-object p1, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    return-void

    .line 259
    :cond_0
    const-string p0, "Buffer capacity may not be negative"

    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lorg/minidns/iterative/ReliableDnsClient$1;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, Lde/cketti/changelog/XmlParser;->$r8$classId:I

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 250
    iput-object p1, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lde/cketti/changelog/XmlParser;->$r8$classId:I

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 266
    iput p2, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 267
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lde/cketti/changelog/XmlParser;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, 0x1

    .line 18
    const/4 v6, 0x2

    .line 19
    if-eq v4, v6, :cond_0

    .line 20
    .line 21
    if-eq v4, v5, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-ne v4, v6, :cond_22

    .line 25
    .line 26
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const-string v7, "gradient"

    .line 34
    .line 35
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    const/16 v9, 0xb

    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    if-nez v8, :cond_2

    .line 43
    .line 44
    const-string v5, "selector"

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    invoke-static {v0, v2, v3, v1}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Lde/cketti/changelog/XmlParser;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-direct {v1, v2, v9, v10, v0}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 67
    .line 68
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ": unsupported complex color tag "

    .line 81
    .line 82
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_21

    .line 105
    .line 106
    sget-object v4, Landroidx/core/R$styleable;->GradientColor:[I

    .line 107
    .line 108
    invoke-static {v0, v1, v3, v4}, Landroidx/core/content/res/CamUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    const-string v7, "http://schemas.android.com/apk/res/android"

    .line 113
    .line 114
    const-string v8, "startX"

    .line 115
    .line 116
    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    const/4 v11, 0x0

    .line 121
    if-eqz v8, :cond_3

    .line 122
    .line 123
    const/16 v8, 0x8

    .line 124
    .line 125
    invoke-virtual {v4, v8, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    move v13, v8

    .line 130
    goto :goto_1

    .line 131
    :cond_3
    move v13, v11

    .line 132
    :goto_1
    const-string v8, "startY"

    .line 133
    .line 134
    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    if-eqz v8, :cond_4

    .line 139
    .line 140
    const/16 v8, 0x9

    .line 141
    .line 142
    invoke-virtual {v4, v8, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    move v14, v8

    .line 147
    goto :goto_2

    .line 148
    :cond_4
    move v14, v11

    .line 149
    :goto_2
    const-string v8, "endX"

    .line 150
    .line 151
    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    if-eqz v8, :cond_5

    .line 156
    .line 157
    const/16 v8, 0xa

    .line 158
    .line 159
    invoke-virtual {v4, v8, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    move v15, v8

    .line 164
    goto :goto_3

    .line 165
    :cond_5
    move v15, v11

    .line 166
    :goto_3
    const-string v8, "endY"

    .line 167
    .line 168
    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    if-eqz v8, :cond_6

    .line 173
    .line 174
    invoke-virtual {v4, v9, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    move/from16 v16, v8

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_6
    move/from16 v16, v11

    .line 182
    .line 183
    :goto_4
    const-string v8, "centerX"

    .line 184
    .line 185
    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    const/4 v12, 0x3

    .line 190
    if-eqz v8, :cond_7

    .line 191
    .line 192
    invoke-virtual {v4, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    goto :goto_5

    .line 197
    :cond_7
    move v8, v11

    .line 198
    :goto_5
    const-string v9, "centerY"

    .line 199
    .line 200
    invoke-interface {v2, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    if-eqz v9, :cond_8

    .line 205
    .line 206
    const/4 v9, 0x4

    .line 207
    invoke-virtual {v4, v9, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    goto :goto_6

    .line 212
    :cond_8
    move v9, v11

    .line 213
    :goto_6
    const-string v10, "type"

    .line 214
    .line 215
    invoke-interface {v2, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    const/4 v12, 0x0

    .line 220
    if-eqz v10, :cond_9

    .line 221
    .line 222
    invoke-virtual {v4, v6, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 223
    .line 224
    .line 225
    move-result v10

    .line 226
    goto :goto_7

    .line 227
    :cond_9
    move v10, v12

    .line 228
    :goto_7
    const-string v6, "startColor"

    .line 229
    .line 230
    invoke-interface {v2, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    if-eqz v6, :cond_a

    .line 235
    .line 236
    invoke-virtual {v4, v12, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    goto :goto_8

    .line 241
    :cond_a
    move v6, v12

    .line 242
    :goto_8
    const-string v11, "centerColor"

    .line 243
    .line 244
    invoke-interface {v2, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v20

    .line 248
    if-eqz v20, :cond_b

    .line 249
    .line 250
    move/from16 v20, v5

    .line 251
    .line 252
    goto :goto_9

    .line 253
    :cond_b
    move/from16 v20, v12

    .line 254
    .line 255
    :goto_9
    invoke-interface {v2, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v11

    .line 259
    if-eqz v11, :cond_c

    .line 260
    .line 261
    const/4 v11, 0x7

    .line 262
    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 263
    .line 264
    .line 265
    move-result v11

    .line 266
    goto :goto_a

    .line 267
    :cond_c
    move v11, v12

    .line 268
    :goto_a
    const-string v5, "endColor"

    .line 269
    .line 270
    invoke-interface {v2, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    if-eqz v5, :cond_d

    .line 275
    .line 276
    const/4 v5, 0x1

    .line 277
    invoke-virtual {v4, v5, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 278
    .line 279
    .line 280
    move-result v22

    .line 281
    move/from16 v5, v22

    .line 282
    .line 283
    goto :goto_b

    .line 284
    :cond_d
    move v5, v12

    .line 285
    :goto_b
    const-string v12, "tileMode"

    .line 286
    .line 287
    invoke-interface {v2, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v12

    .line 291
    if-eqz v12, :cond_e

    .line 292
    .line 293
    const/4 v12, 0x6

    .line 294
    move/from16 v23, v13

    .line 295
    .line 296
    const/4 v13, 0x0

    .line 297
    invoke-virtual {v4, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 298
    .line 299
    .line 300
    move-result v12

    .line 301
    move v13, v12

    .line 302
    goto :goto_c

    .line 303
    :cond_e
    move/from16 v23, v13

    .line 304
    .line 305
    const/4 v13, 0x0

    .line 306
    :goto_c
    const-string v12, "gradientRadius"

    .line 307
    .line 308
    invoke-interface {v2, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    if-eqz v7, :cond_f

    .line 313
    .line 314
    const/4 v7, 0x5

    .line 315
    const/4 v12, 0x0

    .line 316
    invoke-virtual {v4, v7, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 317
    .line 318
    .line 319
    move-result v7

    .line 320
    move v12, v7

    .line 321
    goto :goto_d

    .line 322
    :cond_f
    const/4 v12, 0x0

    .line 323
    :goto_d
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 324
    .line 325
    .line 326
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    const/4 v7, 0x1

    .line 331
    add-int/2addr v4, v7

    .line 332
    new-instance v7, Ljava/util/ArrayList;

    .line 333
    .line 334
    move-object/from16 v24, v2

    .line 335
    .line 336
    const/16 v2, 0x14

    .line 337
    .line 338
    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 339
    .line 340
    .line 341
    move/from16 v25, v12

    .line 342
    .line 343
    new-instance v12, Ljava/util/ArrayList;

    .line 344
    .line 345
    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 346
    .line 347
    .line 348
    :goto_e
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    move/from16 v26, v14

    .line 353
    .line 354
    const/4 v14, 0x1

    .line 355
    if-eq v2, v14, :cond_15

    .line 356
    .line 357
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 358
    .line 359
    .line 360
    move-result v14

    .line 361
    move/from16 v27, v15

    .line 362
    .line 363
    if-ge v14, v4, :cond_10

    .line 364
    .line 365
    const/4 v15, 0x3

    .line 366
    if-eq v2, v15, :cond_16

    .line 367
    .line 368
    :cond_10
    const/4 v15, 0x2

    .line 369
    if-eq v2, v15, :cond_12

    .line 370
    .line 371
    :cond_11
    :goto_f
    move/from16 v14, v26

    .line 372
    .line 373
    move/from16 v15, v27

    .line 374
    .line 375
    goto :goto_e

    .line 376
    :cond_12
    if-gt v14, v4, :cond_11

    .line 377
    .line 378
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    const-string v14, "item"

    .line 383
    .line 384
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-nez v2, :cond_13

    .line 389
    .line 390
    goto :goto_f

    .line 391
    :cond_13
    sget-object v2, Landroidx/core/R$styleable;->GradientColorItem:[I

    .line 392
    .line 393
    invoke-static {v0, v1, v3, v2}, Landroidx/core/content/res/CamUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    const/4 v14, 0x0

    .line 398
    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 399
    .line 400
    .line 401
    move-result v15

    .line 402
    const/4 v14, 0x1

    .line 403
    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 404
    .line 405
    .line 406
    move-result v21

    .line 407
    if-eqz v15, :cond_14

    .line 408
    .line 409
    if-eqz v21, :cond_14

    .line 410
    .line 411
    const/4 v15, 0x0

    .line 412
    invoke-virtual {v2, v15, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 413
    .line 414
    .line 415
    move-result v22

    .line 416
    const/4 v15, 0x0

    .line 417
    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 418
    .line 419
    .line 420
    move-result v28

    .line 421
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 422
    .line 423
    .line 424
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    goto :goto_f

    .line 439
    :cond_14
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 440
    .line 441
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    const-string v1, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    .line 454
    .line 455
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    throw v0

    .line 466
    :cond_15
    move/from16 v27, v15

    .line 467
    .line 468
    :cond_16
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    if-lez v0, :cond_17

    .line 473
    .line 474
    new-instance v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;

    .line 475
    .line 476
    invoke-direct {v0, v12, v7}, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 477
    .line 478
    .line 479
    goto :goto_10

    .line 480
    :cond_17
    const/4 v0, 0x0

    .line 481
    :goto_10
    if-eqz v0, :cond_18

    .line 482
    .line 483
    :goto_11
    const/4 v14, 0x1

    .line 484
    goto :goto_12

    .line 485
    :cond_18
    if-eqz v20, :cond_19

    .line 486
    .line 487
    new-instance v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;

    .line 488
    .line 489
    invoke-direct {v0, v6, v11, v5}, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;-><init>(III)V

    .line 490
    .line 491
    .line 492
    goto :goto_11

    .line 493
    :cond_19
    new-instance v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;

    .line 494
    .line 495
    invoke-direct {v0, v6, v5}, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;-><init>(II)V

    .line 496
    .line 497
    .line 498
    goto :goto_11

    .line 499
    :goto_12
    if-eq v10, v14, :cond_1d

    .line 500
    .line 501
    const/4 v15, 0x2

    .line 502
    if-eq v10, v15, :cond_1c

    .line 503
    .line 504
    new-instance v12, Landroid/graphics/LinearGradient;

    .line 505
    .line 506
    iget-object v1, v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;->tmpLocation:[I

    .line 507
    .line 508
    iget-object v0, v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;->tmpMatrix:[F

    .line 509
    .line 510
    if-eq v13, v14, :cond_1b

    .line 511
    .line 512
    if-eq v13, v15, :cond_1a

    .line 513
    .line 514
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 515
    .line 516
    :goto_13
    move-object/from16 v18, v0

    .line 517
    .line 518
    move-object/from16 v17, v1

    .line 519
    .line 520
    move-object/from16 v19, v2

    .line 521
    .line 522
    move/from16 v13, v23

    .line 523
    .line 524
    move/from16 v14, v26

    .line 525
    .line 526
    move/from16 v15, v27

    .line 527
    .line 528
    const/4 v1, 0x0

    .line 529
    goto :goto_14

    .line 530
    :cond_1a
    sget-object v2, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 531
    .line 532
    goto :goto_13

    .line 533
    :cond_1b
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 534
    .line 535
    goto :goto_13

    .line 536
    :goto_14
    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 537
    .line 538
    .line 539
    goto :goto_17

    .line 540
    :cond_1c
    const/4 v1, 0x0

    .line 541
    new-instance v12, Landroid/graphics/SweepGradient;

    .line 542
    .line 543
    iget-object v2, v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;->tmpLocation:[I

    .line 544
    .line 545
    iget-object v0, v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;->tmpMatrix:[F

    .line 546
    .line 547
    invoke-direct {v12, v8, v9, v2, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 548
    .line 549
    .line 550
    goto :goto_17

    .line 551
    :cond_1d
    const/4 v1, 0x0

    .line 552
    const/16 v19, 0x0

    .line 553
    .line 554
    cmpg-float v2, v25, v19

    .line 555
    .line 556
    if-lez v2, :cond_20

    .line 557
    .line 558
    new-instance v17, Landroid/graphics/RadialGradient;

    .line 559
    .line 560
    iget-object v2, v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;->tmpLocation:[I

    .line 561
    .line 562
    iget-object v0, v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;->tmpMatrix:[F

    .line 563
    .line 564
    const/4 v14, 0x1

    .line 565
    if-eq v13, v14, :cond_1f

    .line 566
    .line 567
    const/4 v15, 0x2

    .line 568
    if-eq v13, v15, :cond_1e

    .line 569
    .line 570
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 571
    .line 572
    :goto_15
    move-object/from16 v22, v0

    .line 573
    .line 574
    move-object/from16 v21, v2

    .line 575
    .line 576
    move-object/from16 v23, v3

    .line 577
    .line 578
    move/from16 v18, v8

    .line 579
    .line 580
    move/from16 v19, v9

    .line 581
    .line 582
    move/from16 v20, v25

    .line 583
    .line 584
    goto :goto_16

    .line 585
    :cond_1e
    sget-object v3, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 586
    .line 587
    goto :goto_15

    .line 588
    :cond_1f
    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 589
    .line 590
    goto :goto_15

    .line 591
    :goto_16
    invoke-direct/range {v17 .. v23}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 592
    .line 593
    .line 594
    move-object/from16 v12, v17

    .line 595
    .line 596
    :goto_17
    new-instance v0, Lde/cketti/changelog/XmlParser;

    .line 597
    .line 598
    const/16 v2, 0xb

    .line 599
    .line 600
    const/4 v3, 0x0

    .line 601
    invoke-direct {v0, v1, v2, v12, v3}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    return-object v0

    .line 605
    :cond_20
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 606
    .line 607
    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    .line 608
    .line 609
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    throw v0

    .line 613
    :cond_21
    move-object/from16 v24, v2

    .line 614
    .line 615
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 616
    .line 617
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    .line 622
    .line 623
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    const-string v1, ": invalid gradient color tag "

    .line 630
    .line 631
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    throw v0

    .line 645
    :cond_22
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 646
    .line 647
    const-string v1, "No start tag found"

    .line 648
    .line 649
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    throw v0
.end method

.method public static synthetic insert$default(Lde/cketti/changelog/XmlParser;IIIIIIZZZI)V
    .locals 12

    .line 1
    and-int/lit8 v0, p10, 0x20

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    move v7, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move/from16 v7, p6

    .line 9
    .line 10
    :goto_0
    const/4 v11, -0x1

    .line 11
    move-object v1, p0

    .line 12
    move v2, p1

    .line 13
    move v3, p2

    .line 14
    move v4, p3

    .line 15
    move/from16 v5, p4

    .line 16
    .line 17
    move/from16 v6, p5

    .line 18
    .line 19
    move/from16 v8, p7

    .line 20
    .line 21
    move/from16 v9, p8

    .line 22
    .line 23
    move/from16 v10, p9

    .line 24
    .line 25
    invoke-virtual/range {v1 .. v11}, Lde/cketti/changelog/XmlParser;->insert(IIIIIIZZZI)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public addInterval(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "size should be >=0"

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :goto_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 13
    .line 14
    iget v1, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 15
    .line 16
    invoke-direct {v0, v1, p1, p2}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;-><init>(IILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    .line 17
    .line 18
    .line 19
    iget p2, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 20
    .line 21
    add-int/2addr p2, p1

    .line 22
    iput p2, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 23
    .line 24
    iget-object p0, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Landroidx/compose/runtime/collection/MutableVector;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public append(I)V
    .locals 3

    .line 52
    iget v0, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    add-int/lit8 v0, v0, 0x1

    .line 53
    iget-object v1, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    check-cast v1, [B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 54
    invoke-virtual {p0, v0}, Lde/cketti/changelog/XmlParser;->expand$1(I)V

    .line 55
    :cond_0
    iget-object v1, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    check-cast v1, [B

    iget v2, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 56
    iput v0, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    return-void
.end method

.method public append([BII)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-ltz p2, :cond_3

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    if-gt p2, v0, :cond_3

    .line 8
    .line 9
    if-ltz p3, :cond_3

    .line 10
    .line 11
    add-int v0, p2, p3

    .line 12
    .line 13
    if-ltz v0, :cond_3

    .line 14
    .line 15
    array-length v1, p1

    .line 16
    if-gt v0, v1, :cond_3

    .line 17
    .line 18
    if-nez p3, :cond_1

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_1
    iget v0, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 22
    .line 23
    add-int/2addr v0, p3

    .line 24
    iget-object v1, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, [B

    .line 27
    .line 28
    array-length v1, v1

    .line 29
    if-le v0, v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lde/cketti/changelog/XmlParser;->expand$1(I)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v1, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, [B

    .line 37
    .line 38
    iget v2, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 39
    .line 40
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    iput v0, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 47
    .line 48
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public appendBlockQuoteElement(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    iget v1, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 6
    .line 7
    if-le v1, p1, :cond_0

    .line 8
    .line 9
    sub-int/2addr v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_6

    .line 12
    .line 13
    const-string v3, "</blockquote>"

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-le p1, v1, :cond_6

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    add-int/2addr v1, v2

    .line 25
    if-gt v1, p1, :cond_6

    .line 26
    .line 27
    :goto_1
    iget-object v3, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultCssVariableNameProvider;

    .line 30
    .line 31
    iget-object v3, v3, Lnet/thunderbird/feature/mail/message/reader/impl/css/DefaultCssVariableNameProvider;->blockquoteDefaultBorderLeftColor:Ljava/lang/String;

    .line 32
    .line 33
    if-eq v1, v2, :cond_5

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    if-eq v1, v4, :cond_4

    .line 37
    .line 38
    const/4 v4, 0x3

    .line 39
    if-eq v1, v4, :cond_3

    .line 40
    .line 41
    const/4 v4, 0x4

    .line 42
    if-eq v1, v4, :cond_2

    .line 43
    .line 44
    const/4 v4, 0x5

    .line 45
    if-eq v1, v4, :cond_1

    .line 46
    .line 47
    const-string v4, "#ccc"

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    const-string v4, "#e9b96e"

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const-string v4, "#fcaf3e"

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    const-string v4, "#8ae234"

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    const-string v4, "#ad7fa8"

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_5
    const-string v4, "#729fcf"

    .line 63
    .line 64
    :goto_2
    const-string v5, ": "

    .line 65
    .line 66
    const-string v6, ";"

    .line 67
    .line 68
    invoke-static {v3, v5, v4, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v5, "<blockquote class=\"gmail_quote\" style=\"margin-bottom: 1ex; "

    .line 75
    .line 76
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v3, "\">"

    .line 83
    .line 84
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    if-eq v1, p1, :cond_6

    .line 95
    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_6
    iput p1, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 100
    .line 101
    return-void
.end method

.method public applySupportImageTint()V
    .locals 2

    .line 1
    iget-object v0, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {v1}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lokhttp3/ConnectionSpec$Builder;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, p0, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Lokhttp3/ConnectionSpec$Builder;[I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public assertElementStart(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    .line 5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lorg/jsoup/SerializationException;

    .line 17
    .line 18
    const-string v1, " (wanted: "

    .line 19
    .line 20
    const-string v2, ")"

    .line 21
    .line 22
    const-string v3, "Unexpected tag: "

    .line 23
    .line 24
    invoke-static {v3, p0, v1, p1, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public byteAt(I)B
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, [B

    .line 10
    .line 11
    aget-byte p0, p0, p1

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public expand$1(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 4
    .line 5
    iget-object v1, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [B

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    shl-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1, p1}, Lorg/apache/james/mime4j/util/BufferRecycler;->allocByteBuffer(II)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v2, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, [B

    .line 24
    .line 25
    iget v3, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 26
    .line 27
    invoke-static {v2, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, [B

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lorg/apache/james/mime4j/util/BufferRecycler;->releaseByteBuffer(I[B)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 38
    .line 39
    return-void
.end method

.method public get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;
    .locals 3

    if-ltz p1, :cond_0

    .line 3173
    iget v0, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 3174
    :cond_0
    const-string v0, "Index "

    const-string v1, ", size "

    .line 3175
    invoke-static {p1, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3176
    iget v1, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 3177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 3178
    :goto_0
    iget-object v0, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    if-eqz v0, :cond_1

    .line 3179
    iget v1, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    .line 3180
    iget v2, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->size:I

    add-int/2addr v2, v1

    if-ge p1, v2, :cond_1

    if-gt v1, p1, :cond_1

    return-object v0

    .line 3181
    :cond_1
    iget-object v0, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {p1, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->access$binarySearch(ILandroidx/compose/runtime/collection/MutableVector;)I

    move-result p1

    .line 3182
    iget-object v0, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object p1, v0, p1

    .line 3183
    check-cast p1, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    iput-object p1, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lde/cketti/changelog/XmlParser;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget v1, v0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    packed-switch v1, :pswitch_data_1

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/lang/AssertionError;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :pswitch_0
    new-instance v0, Landroidx/camera/camera2/pipe/graph/GraphState3A;

    .line 27
    .line 28
    invoke-direct {v0}, Landroidx/camera/camera2/pipe/graph/GraphState3A;-><init>()V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :pswitch_1
    new-instance v1, Landroidx/camera/camera2/pipe/graph/Controller3A;

    .line 34
    .line 35
    iget-object v2, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 38
    .line 39
    iget-object v2, v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphProcessorImplProvider:Lokhttp3/ConnectionPool;

    .line 40
    .line 41
    invoke-virtual {v2}, Lokhttp3/ConnectionPool;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 46
    .line 47
    iget-object v3, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v3, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 50
    .line 51
    iget-object v3, v3, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraMetadataProvider:Ldagger/internal/Provider;

    .line 52
    .line 53
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 58
    .line 59
    iget-object v4, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v4, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 62
    .line 63
    iget-object v4, v4, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphState3AProvider:Ldagger/internal/Provider;

    .line 64
    .line 65
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Landroidx/camera/camera2/pipe/graph/GraphState3A;

    .line 70
    .line 71
    iget-object v0, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 74
    .line 75
    iget-object v0, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->listener3AProvider:Ldagger/internal/Provider;

    .line 76
    .line 77
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroidx/camera/camera2/pipe/graph/Listener3A;

    .line 82
    .line 83
    invoke-direct {v1, v2, v3, v4, v0}, Landroidx/camera/camera2/pipe/graph/Controller3A;-><init>(Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/graph/GraphState3A;Landroidx/camera/camera2/pipe/graph/Listener3A;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    move-object v0, v1

    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :pswitch_2
    new-instance v1, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

    .line 90
    .line 91
    iget-object v2, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 94
    .line 95
    iget-object v2, v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphSessionLockProvider:Ldagger/internal/Provider;

    .line 96
    .line 97
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    .line 102
    .line 103
    iget-object v3, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v3, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 106
    .line 107
    iget-object v3, v3, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphProcessorImplProvider:Lokhttp3/ConnectionPool;

    .line 108
    .line 109
    invoke-virtual {v3}, Lokhttp3/ConnectionPool;->get()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 114
    .line 115
    iget-object v0, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 118
    .line 119
    iget-object v0, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraGraphCoroutineScopeProvider:Ldagger/internal/Provider;

    .line 120
    .line 121
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 126
    .line 127
    invoke-direct {v1, v2, v3, v0}, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;-><init>(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;Lkotlinx/coroutines/CoroutineScope;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :pswitch_3
    iget-object v1, v0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 134
    .line 135
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 136
    .line 137
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Landroidx/camera/camera2/pipe/core/Threads;

    .line 142
    .line 143
    iget-object v0, v0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 146
    .line 147
    iget-object v0, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraPipeJobProvider:Ldagger/internal/Provider;

    .line 148
    .line 149
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lkotlinx/coroutines/Job;

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    new-instance v2, Lkotlinx/coroutines/SupervisorJobImpl;

    .line 162
    .line 163
    invoke-direct {v2, v0}, Lkotlinx/coroutines/JobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, v1, Landroidx/camera/camera2/pipe/core/Threads;->lightweightDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 167
    .line 168
    new-instance v1, Lkotlinx/coroutines/CoroutineName;

    .line 169
    .line 170
    const-string v3, "CXCP-Graph"

    .line 171
    .line 172
    invoke-direct {v1, v3}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v2, v0}, Lkotlin/uuid/UuidKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    goto/16 :goto_5

    .line 188
    .line 189
    :pswitch_4
    new-instance v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    .line 190
    .line 191
    invoke-direct {v0}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;-><init>()V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_5

    .line 195
    .line 196
    :pswitch_5
    new-instance v1, Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

    .line 197
    .line 198
    iget-object v2, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 201
    .line 202
    iget-object v2, v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphSessionLockProvider:Ldagger/internal/Provider;

    .line 203
    .line 204
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    check-cast v2, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    .line 209
    .line 210
    iget-object v3, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v3, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 213
    .line 214
    iget-object v3, v3, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphProcessorImplProvider:Lokhttp3/ConnectionPool;

    .line 215
    .line 216
    invoke-virtual {v3}, Lokhttp3/ConnectionPool;->get()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    check-cast v3, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 221
    .line 222
    iget-object v0, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 225
    .line 226
    iget-object v0, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraGraphCoroutineScopeProvider:Ldagger/internal/Provider;

    .line 227
    .line 228
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 233
    .line 234
    invoke-direct {v1, v2, v3, v0}, Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;-><init>(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;Lkotlinx/coroutines/CoroutineScope;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :pswitch_6
    const-wide v0, 0x7fffffffffffffffL

    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    move-wide v7, v0

    .line 245
    move v2, v6

    .line 246
    :goto_1
    if-ge v2, v4, :cond_1

    .line 247
    .line 248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 249
    .line 250
    .line 251
    move-result-wide v9

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 253
    .line 254
    .line 255
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 256
    .line 257
    .line 258
    move-result-wide v11

    .line 259
    sub-long/2addr v11, v9

    .line 260
    cmp-long v3, v11, v7

    .line 261
    .line 262
    if-gez v3, :cond_0

    .line 263
    .line 264
    move-wide v7, v11

    .line 265
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 266
    .line 267
    goto :goto_1

    .line 268
    :cond_1
    :goto_2
    if-ge v6, v4, :cond_3

    .line 269
    .line 270
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 271
    .line 272
    .line 273
    move-result-wide v2

    .line 274
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 275
    .line 276
    .line 277
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 278
    .line 279
    .line 280
    move-result-wide v7

    .line 281
    sub-long/2addr v7, v2

    .line 282
    cmp-long v2, v7, v0

    .line 283
    .line 284
    if-gez v2, :cond_2

    .line 285
    .line 286
    move-wide v0, v7

    .line 287
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_3
    new-instance v0, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;

    .line 291
    .line 292
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_5

    .line 296
    .line 297
    :pswitch_7
    new-instance v0, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    .line 298
    .line 299
    invoke-direct {v0}, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;-><init>()V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_5

    .line 303
    .line 304
    :pswitch_8
    iget-object v1, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 307
    .line 308
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->streamGraphImplProvider:Lokhttp3/ConnectionPool;

    .line 309
    .line 310
    invoke-virtual {v1}, Lokhttp3/ConnectionPool;->get()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    check-cast v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 315
    .line 316
    iget-object v2, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 319
    .line 320
    iget-object v2, v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraControllerProvider:Lokhttp3/ConnectionPool;

    .line 321
    .line 322
    iget-object v0, v0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 325
    .line 326
    iget-object v0, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraSurfaceManagerProvider:Ldagger/internal/Provider;

    .line 327
    .line 328
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    check-cast v0, Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    .line 333
    .line 334
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    new-instance v3, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    .line 344
    .line 345
    iget-object v4, v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->imageSourceMap:Lkotlin/collections/builders/MapBuilder;

    .line 346
    .line 347
    invoke-direct {v3, v1, v2, v0, v4}, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;-><init>(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Lokhttp3/ConnectionPool;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Ljava/util/Map;)V

    .line 348
    .line 349
    .line 350
    :goto_3
    move-object v0, v3

    .line 351
    goto/16 :goto_5

    .line 352
    .line 353
    :pswitch_9
    iget-object v1, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 356
    .line 357
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphConfigModule:Landroidx/cardview/widget/CardView$1;

    .line 358
    .line 359
    iget-object v7, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 360
    .line 361
    move-object v10, v7

    .line 362
    check-cast v10, Landroidx/camera/camera2/pipe/CameraGraphId;

    .line 363
    .line 364
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 365
    .line 366
    move-object v11, v1

    .line 367
    check-cast v11, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 368
    .line 369
    invoke-static {v11}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    iget-object v1, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 375
    .line 376
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraBackendProvider:Ldagger/internal/Provider;

    .line 377
    .line 378
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    check-cast v1, Landroidx/camera/camera2/pipe/CameraBackend;

    .line 383
    .line 384
    iget-object v7, v0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 385
    .line 386
    check-cast v7, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 387
    .line 388
    iget-object v7, v7, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraContextProvider:Ldagger/internal/Provider;

    .line 389
    .line 390
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    check-cast v7, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$provideCameraContext$1;

    .line 395
    .line 396
    iget-object v8, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 397
    .line 398
    check-cast v8, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 399
    .line 400
    iget-object v8, v8, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphProcessorImplProvider:Lokhttp3/ConnectionPool;

    .line 401
    .line 402
    invoke-virtual {v8}, Lokhttp3/ConnectionPool;->get()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v8

    .line 406
    move-object v12, v8

    .line 407
    check-cast v12, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 408
    .line 409
    iget-object v8, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 410
    .line 411
    check-cast v8, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 412
    .line 413
    iget-object v8, v8, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->streamGraphImplProvider:Lokhttp3/ConnectionPool;

    .line 414
    .line 415
    invoke-virtual {v8}, Lokhttp3/ConnectionPool;->get()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v8

    .line 419
    move-object v13, v8

    .line 420
    check-cast v13, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 421
    .line 422
    iget-object v0, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 425
    .line 426
    iget-object v0, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideSurfaceGraphProvider:Ldagger/internal/Provider;

    .line 427
    .line 428
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    move-object v14, v0

    .line 433
    check-cast v14, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    .line 434
    .line 435
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 448
    .line 449
    .line 450
    move-object v9, v1

    .line 451
    check-cast v9, Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    .line 452
    .line 453
    iget-object v0, v9, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2CameraControllerComponent:Landroidx/biometric/BiometricPrompt;

    .line 454
    .line 455
    new-instance v8, Lcom/eygraber/uri/Uri$Builder;

    .line 456
    .line 457
    move-object v15, v9

    .line 458
    invoke-direct/range {v8 .. v15}, Lcom/eygraber/uri/Uri$Builder;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2Backend;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/graph/SurfaceGraph;Landroidx/camera/camera2/pipe/compat/Camera2Backend;)V

    .line 459
    .line 460
    .line 461
    new-instance v1, Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 462
    .line 463
    iget-object v0, v0, Landroidx/biometric/BiometricPrompt;->mClientFragmentManager:Ljava/lang/Object;

    .line 464
    .line 465
    check-cast v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 466
    .line 467
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 468
    .line 469
    .line 470
    iput-object v0, v1, Lnet/openid/appauth/AuthorizationRequest$Builder;->mClientId:Ljava/lang/Object;

    .line 471
    .line 472
    iput-object v8, v1, Lnet/openid/appauth/AuthorizationRequest$Builder;->mConfiguration:Ljava/lang/Object;

    .line 473
    .line 474
    new-instance v7, Lde/cketti/changelog/XmlParser;

    .line 475
    .line 476
    invoke-direct {v7, v5, v4, v0, v1}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    invoke-static {v7}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 480
    .line 481
    .line 482
    move-result-object v5

    .line 483
    iput-object v5, v1, Lnet/openid/appauth/AuthorizationRequest$Builder;->mLoginHint:Ljava/lang/Object;

    .line 484
    .line 485
    new-instance v5, Lde/cketti/changelog/XmlParser;

    .line 486
    .line 487
    invoke-direct {v5, v3, v4, v0, v1}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    iput-object v3, v1, Lnet/openid/appauth/AuthorizationRequest$Builder;->mResponseType:Ljava/lang/Object;

    .line 495
    .line 496
    new-instance v3, Lde/cketti/changelog/XmlParser;

    .line 497
    .line 498
    const/4 v5, 0x4

    .line 499
    invoke-direct {v3, v5, v4, v0, v1}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 500
    .line 501
    .line 502
    iput-object v3, v1, Lnet/openid/appauth/AuthorizationRequest$Builder;->mScope:Ljava/lang/Object;

    .line 503
    .line 504
    new-instance v3, Lde/cketti/changelog/XmlParser;

    .line 505
    .line 506
    const/4 v5, 0x5

    .line 507
    invoke-direct {v3, v5, v4, v0, v1}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    iput-object v3, v1, Lnet/openid/appauth/AuthorizationRequest$Builder;->mState:Ljava/lang/Object;

    .line 511
    .line 512
    new-instance v3, Lde/cketti/changelog/XmlParser;

    .line 513
    .line 514
    const/4 v5, 0x6

    .line 515
    invoke-direct {v3, v5, v4, v0, v1}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    iput-object v3, v1, Lnet/openid/appauth/AuthorizationRequest$Builder;->mNonce:Ljava/lang/Object;

    .line 519
    .line 520
    new-instance v3, Lde/cketti/changelog/XmlParser;

    .line 521
    .line 522
    const/4 v5, 0x7

    .line 523
    invoke-direct {v3, v5, v4, v0, v1}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    iput-object v3, v1, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifier:Ljava/lang/Object;

    .line 527
    .line 528
    new-instance v3, Lde/cketti/changelog/XmlParser;

    .line 529
    .line 530
    invoke-direct {v3, v2, v4, v0, v1}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 531
    .line 532
    .line 533
    iput-object v3, v1, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallenge:Ljava/lang/Object;

    .line 534
    .line 535
    new-instance v2, Lde/cketti/changelog/XmlParser;

    .line 536
    .line 537
    invoke-direct {v2, v4, v4, v0, v1}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    iput-object v2, v1, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallengeMethod:Ljava/lang/Object;

    .line 545
    .line 546
    new-instance v2, Lde/cketti/changelog/XmlParser;

    .line 547
    .line 548
    invoke-direct {v2, v6, v4, v0, v1}, Lde/cketti/changelog/XmlParser;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 549
    .line 550
    .line 551
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    iput-object v0, v1, Lnet/openid/appauth/AuthorizationRequest$Builder;->mRedirectUri:Ljava/lang/Object;

    .line 556
    .line 557
    iget-object v0, v1, Lnet/openid/appauth/AuthorizationRequest$Builder;->mRedirectUri:Ljava/lang/Object;

    .line 558
    .line 559
    check-cast v0, Ldagger/internal/Provider;

    .line 560
    .line 561
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    .line 566
    .line 567
    iget-object v1, v9, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->lock:Ljava/lang/Object;

    .line 568
    .line 569
    monitor-enter v1

    .line 570
    :try_start_0
    iget-object v2, v9, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->activeCameraControllers:Ljava/util/LinkedHashSet;

    .line 571
    .line 572
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    .line 574
    .line 575
    monitor-exit v1

    .line 576
    invoke-static {v0}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_5

    .line 580
    .line 581
    :catchall_0
    move-exception v0

    .line 582
    monitor-exit v1

    .line 583
    throw v0

    .line 584
    :pswitch_a
    new-instance v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 585
    .line 586
    iget-object v2, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 587
    .line 588
    check-cast v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 589
    .line 590
    iget-object v2, v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraMetadataProvider:Ldagger/internal/Provider;

    .line 591
    .line 592
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    check-cast v2, Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 597
    .line 598
    iget-object v3, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 599
    .line 600
    check-cast v3, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 601
    .line 602
    iget-object v3, v3, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphConfigModule:Landroidx/cardview/widget/CardView$1;

    .line 603
    .line 604
    iget-object v3, v3, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 605
    .line 606
    check-cast v3, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 607
    .line 608
    invoke-static {v3}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 609
    .line 610
    .line 611
    iget-object v4, v0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 612
    .line 613
    check-cast v4, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 614
    .line 615
    new-instance v5, Lcom/bumptech/glide/load/Option$1;

    .line 616
    .line 617
    iget-object v4, v4, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 618
    .line 619
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v4

    .line 623
    check-cast v4, Landroidx/camera/camera2/pipe/core/Threads;

    .line 624
    .line 625
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 626
    .line 627
    .line 628
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 629
    .line 630
    .line 631
    iget-object v0, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 632
    .line 633
    check-cast v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 634
    .line 635
    iget-object v0, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraControllerProvider:Lokhttp3/ConnectionPool;

    .line 636
    .line 637
    invoke-direct {v1, v2, v3, v5, v0}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraGraph$Config;Lcom/bumptech/glide/load/Option$1;Lokhttp3/ConnectionPool;)V

    .line 638
    .line 639
    .line 640
    goto/16 :goto_0

    .line 641
    .line 642
    :pswitch_b
    iget-object v1, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 643
    .line 644
    check-cast v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 645
    .line 646
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->streamGraphImplProvider:Lokhttp3/ConnectionPool;

    .line 647
    .line 648
    invoke-virtual {v1}, Lokhttp3/ConnectionPool;->get()Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    check-cast v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 653
    .line 654
    iget-object v2, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 655
    .line 656
    check-cast v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 657
    .line 658
    iget-object v2, v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->frameCaptureQueueProvider:Ldagger/internal/Provider;

    .line 659
    .line 660
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    check-cast v2, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    .line 665
    .line 666
    iget-object v3, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 667
    .line 668
    check-cast v3, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 669
    .line 670
    iget-object v3, v3, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraMetadataProvider:Ldagger/internal/Provider;

    .line 671
    .line 672
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v3

    .line 676
    check-cast v3, Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 677
    .line 678
    iget-object v0, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 679
    .line 680
    check-cast v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 681
    .line 682
    iget-object v0, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideSystemClockOffsetsProvider:Ldagger/internal/Provider;

    .line 683
    .line 684
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    check-cast v0, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;

    .line 689
    .line 690
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 700
    .line 701
    .line 702
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 703
    .line 704
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 705
    .line 706
    .line 707
    check-cast v3, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 708
    .line 709
    invoke-virtual {v3, v0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    check-cast v0, Ljava/lang/Integer;

    .line 714
    .line 715
    if-nez v0, :cond_4

    .line 716
    .line 717
    goto :goto_4

    .line 718
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 719
    .line 720
    .line 721
    move-result v0

    .line 722
    :goto_4
    new-instance v0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    .line 723
    .line 724
    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/internal/FrameDistributor;-><init>(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;)V

    .line 725
    .line 726
    .line 727
    goto/16 :goto_5

    .line 728
    .line 729
    :pswitch_c
    iget-object v1, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 730
    .line 731
    check-cast v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 732
    .line 733
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphConfigModule:Landroidx/cardview/widget/CardView$1;

    .line 734
    .line 735
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 736
    .line 737
    check-cast v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 738
    .line 739
    invoke-static {v1}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 740
    .line 741
    .line 742
    iget-object v2, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 743
    .line 744
    check-cast v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 745
    .line 746
    iget-object v2, v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->listener3AProvider:Ldagger/internal/Provider;

    .line 747
    .line 748
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object v2

    .line 752
    check-cast v2, Landroidx/camera/camera2/pipe/graph/Listener3A;

    .line 753
    .line 754
    iget-object v0, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 755
    .line 756
    check-cast v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 757
    .line 758
    iget-object v0, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideFrameDistributorProvider:Ldagger/internal/Provider;

    .line 759
    .line 760
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    check-cast v0, Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    .line 765
    .line 766
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 770
    .line 771
    .line 772
    new-array v3, v5, [Landroidx/camera/camera2/pipe/Request$Listener;

    .line 773
    .line 774
    aput-object v2, v3, v6

    .line 775
    .line 776
    invoke-static {v3}, Landroidx/compose/ui/unit/IntOffsetKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 777
    .line 778
    .line 779
    move-result-object v3

    .line 780
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    iget-object v0, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultListeners:Ljava/util/List;

    .line 787
    .line 788
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 789
    .line 790
    .line 791
    goto/16 :goto_3

    .line 792
    .line 793
    :pswitch_d
    new-instance v0, Landroidx/camera/camera2/pipe/graph/Listener3A;

    .line 794
    .line 795
    invoke-direct {v0}, Landroidx/camera/camera2/pipe/graph/Listener3A;-><init>()V

    .line 796
    .line 797
    .line 798
    goto/16 :goto_5

    .line 799
    .line 800
    :pswitch_e
    new-instance v1, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 801
    .line 802
    iget-object v2, v0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 803
    .line 804
    check-cast v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 805
    .line 806
    iget-object v2, v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 807
    .line 808
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v2

    .line 812
    check-cast v2, Landroidx/camera/camera2/pipe/core/Threads;

    .line 813
    .line 814
    iget-object v3, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 815
    .line 816
    check-cast v3, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 817
    .line 818
    iget-object v3, v3, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphConfigModule:Landroidx/cardview/widget/CardView$1;

    .line 819
    .line 820
    iget-object v4, v3, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 821
    .line 822
    check-cast v4, Landroidx/camera/camera2/pipe/CameraGraphId;

    .line 823
    .line 824
    iget-object v3, v3, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 825
    .line 826
    check-cast v3, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 827
    .line 828
    invoke-static {v3}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 829
    .line 830
    .line 831
    iget-object v5, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 832
    .line 833
    check-cast v5, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 834
    .line 835
    iget-object v5, v5, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->listener3AProvider:Ldagger/internal/Provider;

    .line 836
    .line 837
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    move-result-object v5

    .line 841
    check-cast v5, Landroidx/camera/camera2/pipe/graph/Listener3A;

    .line 842
    .line 843
    iget-object v6, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 844
    .line 845
    check-cast v6, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 846
    .line 847
    iget-object v6, v6, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideRequestListenersProvider:Ldagger/internal/Provider;

    .line 848
    .line 849
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v6

    .line 853
    check-cast v6, Ljava/util/List;

    .line 854
    .line 855
    iget-object v0, v0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 856
    .line 857
    check-cast v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 858
    .line 859
    iget-object v0, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2QuirksProvider:Ldagger/internal/Provider;

    .line 860
    .line 861
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    move-object v7, v0

    .line 866
    check-cast v7, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 867
    .line 868
    move-object/from16 v23, v4

    .line 869
    .line 870
    move-object v4, v3

    .line 871
    move-object/from16 v3, v23

    .line 872
    .line 873
    invoke-direct/range {v1 .. v7}, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/Listener3A;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;)V

    .line 874
    .line 875
    .line 876
    goto/16 :goto_0

    .line 877
    .line 878
    :pswitch_f
    iget-object v1, v0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 879
    .line 880
    check-cast v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 881
    .line 882
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraBackendsProvider:Ldagger/internal/Provider;

    .line 883
    .line 884
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    move-result-object v1

    .line 888
    check-cast v1, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;

    .line 889
    .line 890
    iget-object v2, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 891
    .line 892
    check-cast v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 893
    .line 894
    iget-object v2, v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphConfigModule:Landroidx/cardview/widget/CardView$1;

    .line 895
    .line 896
    iget-object v2, v2, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 897
    .line 898
    check-cast v2, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 899
    .line 900
    invoke-static {v2}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 901
    .line 902
    .line 903
    iget-object v0, v0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 904
    .line 905
    check-cast v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 906
    .line 907
    iget-object v0, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraContextProvider:Ldagger/internal/Provider;

    .line 908
    .line 909
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v0

    .line 913
    check-cast v0, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion$provideCameraContext$1;

    .line 914
    .line 915
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 916
    .line 917
    .line 918
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 919
    .line 920
    .line 921
    iget-object v0, v1, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->default:Landroidx/camera/camera2/pipe/CameraBackend;

    .line 922
    .line 923
    invoke-static {v0}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 924
    .line 925
    .line 926
    goto/16 :goto_5

    .line 927
    .line 928
    :pswitch_10
    iget-object v1, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 929
    .line 930
    check-cast v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 931
    .line 932
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphConfigModule:Landroidx/cardview/widget/CardView$1;

    .line 933
    .line 934
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 935
    .line 936
    check-cast v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 937
    .line 938
    invoke-static {v1}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 939
    .line 940
    .line 941
    iget-object v0, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 942
    .line 943
    check-cast v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 944
    .line 945
    iget-object v0, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraBackendProvider:Ldagger/internal/Provider;

    .line 946
    .line 947
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    check-cast v0, Landroidx/camera/camera2/pipe/CameraBackend;

    .line 952
    .line 953
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 954
    .line 955
    .line 956
    iget-object v1, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    .line 957
    .line 958
    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    .line 959
    .line 960
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 961
    .line 962
    .line 963
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2MetadataCache:Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

    .line 964
    .line 965
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    goto/16 :goto_5

    .line 970
    .line 971
    :pswitch_11
    new-instance v1, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 972
    .line 973
    iget-object v2, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 974
    .line 975
    check-cast v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 976
    .line 977
    iget-object v2, v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphConfigModule:Landroidx/cardview/widget/CardView$1;

    .line 978
    .line 979
    iget-object v2, v2, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 980
    .line 981
    check-cast v2, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 982
    .line 983
    invoke-static {v2}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 984
    .line 985
    .line 986
    iget-object v3, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 987
    .line 988
    check-cast v3, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 989
    .line 990
    iget-object v3, v3, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraMetadataProvider:Ldagger/internal/Provider;

    .line 991
    .line 992
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-result-object v3

    .line 996
    check-cast v3, Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 997
    .line 998
    iget-object v4, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 999
    .line 1000
    check-cast v4, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 1001
    .line 1002
    iget-object v4, v4, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphProcessorImplProvider:Lokhttp3/ConnectionPool;

    .line 1003
    .line 1004
    invoke-virtual {v4}, Lokhttp3/ConnectionPool;->get()Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v4

    .line 1008
    check-cast v4, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 1009
    .line 1010
    iget-object v5, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 1011
    .line 1012
    check-cast v5, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 1013
    .line 1014
    iget-object v5, v5, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphProcessorImplProvider:Lokhttp3/ConnectionPool;

    .line 1015
    .line 1016
    invoke-virtual {v5}, Lokhttp3/ConnectionPool;->get()Ljava/lang/Object;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v5

    .line 1020
    check-cast v5, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 1021
    .line 1022
    iget-object v6, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 1023
    .line 1024
    check-cast v6, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 1025
    .line 1026
    iget-object v6, v6, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->streamGraphImplProvider:Lokhttp3/ConnectionPool;

    .line 1027
    .line 1028
    invoke-virtual {v6}, Lokhttp3/ConnectionPool;->get()Ljava/lang/Object;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v6

    .line 1032
    check-cast v6, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 1033
    .line 1034
    iget-object v7, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 1035
    .line 1036
    check-cast v7, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 1037
    .line 1038
    iget-object v7, v7, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideSurfaceGraphProvider:Ldagger/internal/Provider;

    .line 1039
    .line 1040
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v7

    .line 1044
    check-cast v7, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    .line 1045
    .line 1046
    iget-object v8, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 1047
    .line 1048
    check-cast v8, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 1049
    .line 1050
    iget-object v8, v8, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraControllerProvider:Lokhttp3/ConnectionPool;

    .line 1051
    .line 1052
    invoke-virtual {v8}, Lokhttp3/ConnectionPool;->get()Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v8

    .line 1056
    check-cast v8, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    .line 1057
    .line 1058
    iget-object v9, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 1059
    .line 1060
    check-cast v9, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 1061
    .line 1062
    iget-object v9, v9, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideFrameDistributorProvider:Ldagger/internal/Provider;

    .line 1063
    .line 1064
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v9

    .line 1068
    check-cast v9, Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    .line 1069
    .line 1070
    iget-object v10, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 1071
    .line 1072
    check-cast v10, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 1073
    .line 1074
    iget-object v10, v10, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->frameCaptureQueueProvider:Ldagger/internal/Provider;

    .line 1075
    .line 1076
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v10

    .line 1080
    check-cast v10, Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;

    .line 1081
    .line 1082
    iget-object v11, v0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 1083
    .line 1084
    check-cast v11, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 1085
    .line 1086
    iget-object v11, v11, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->audioRestrictionControllerImplProvider:Ldagger/internal/Provider;

    .line 1087
    .line 1088
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v11

    .line 1092
    check-cast v11, Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;

    .line 1093
    .line 1094
    iget-object v12, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 1095
    .line 1096
    check-cast v12, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 1097
    .line 1098
    iget-object v13, v12, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphConfigModule:Landroidx/cardview/widget/CardView$1;

    .line 1099
    .line 1100
    iget-object v13, v13, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1101
    .line 1102
    check-cast v13, Landroidx/camera/camera2/pipe/CameraGraphId;

    .line 1103
    .line 1104
    iget-object v12, v12, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphParametersImplProvider:Ldagger/internal/Provider;

    .line 1105
    .line 1106
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v12

    .line 1110
    check-cast v12, Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;

    .line 1111
    .line 1112
    iget-object v14, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 1113
    .line 1114
    check-cast v14, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 1115
    .line 1116
    iget-object v14, v14, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->cameraGraphRequestListenersImplProvider:Ldagger/internal/Provider;

    .line 1117
    .line 1118
    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v14

    .line 1122
    check-cast v14, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;

    .line 1123
    .line 1124
    iget-object v15, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 1125
    .line 1126
    check-cast v15, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 1127
    .line 1128
    iget-object v15, v15, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->graphSessionLockProvider:Ldagger/internal/Provider;

    .line 1129
    .line 1130
    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v15

    .line 1134
    check-cast v15, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    .line 1135
    .line 1136
    move-object/from16 v16, v1

    .line 1137
    .line 1138
    iget-object v1, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 1139
    .line 1140
    check-cast v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 1141
    .line 1142
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->provideCameraGraphCoroutineScopeProvider:Ldagger/internal/Provider;

    .line 1143
    .line 1144
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v1

    .line 1148
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 1149
    .line 1150
    iget-object v0, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 1151
    .line 1152
    check-cast v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;

    .line 1153
    .line 1154
    iget-object v0, v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraGraphComponentImpl;->controller3AProvider:Ldagger/internal/Provider;

    .line 1155
    .line 1156
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v0

    .line 1160
    move-object/from16 v17, v0

    .line 1161
    .line 1162
    check-cast v17, Landroidx/camera/camera2/pipe/graph/Controller3A;

    .line 1163
    .line 1164
    move-object/from16 v23, v16

    .line 1165
    .line 1166
    move-object/from16 v16, v1

    .line 1167
    .line 1168
    move-object/from16 v1, v23

    .line 1169
    .line 1170
    move-object/from16 v23, v13

    .line 1171
    .line 1172
    move-object v13, v12

    .line 1173
    move-object/from16 v12, v23

    .line 1174
    .line 1175
    invoke-direct/range {v1 .. v17}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;-><init>(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/graph/SurfaceGraph;Landroidx/camera/camera2/pipe/compat/Camera2CameraController;Landroidx/camera/camera2/pipe/internal/FrameDistributor;Landroidx/camera/camera2/pipe/internal/FrameCaptureQueue;Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Lkotlinx/coroutines/CoroutineScope;Landroidx/camera/camera2/pipe/graph/Controller3A;)V

    .line 1176
    .line 1177
    .line 1178
    move-object/from16 v16, v1

    .line 1179
    .line 1180
    move-object/from16 v0, v16

    .line 1181
    .line 1182
    :goto_5
    return-object v0

    .line 1183
    :pswitch_12
    iget-object v1, v0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 1184
    .line 1185
    check-cast v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 1186
    .line 1187
    iget-object v2, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 1188
    .line 1189
    check-cast v2, Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 1190
    .line 1191
    iget-object v7, v2, Lnet/openid/appauth/AuthorizationRequest$Builder;->mConfiguration:Ljava/lang/Object;

    .line 1192
    .line 1193
    check-cast v7, Lcom/eygraber/uri/Uri$Builder;

    .line 1194
    .line 1195
    iget v0, v0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 1196
    .line 1197
    packed-switch v0, :pswitch_data_2

    .line 1198
    .line 1199
    .line 1200
    new-instance v1, Ljava/lang/AssertionError;

    .line 1201
    .line 1202
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 1203
    .line 1204
    .line 1205
    throw v1

    .line 1206
    :pswitch_13
    new-instance v2, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;

    .line 1207
    .line 1208
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 1209
    .line 1210
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v0

    .line 1214
    move-object v3, v0

    .line 1215
    check-cast v3, Landroidx/camera/camera2/pipe/core/Threads;

    .line 1216
    .line 1217
    iget-object v0, v7, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 1218
    .line 1219
    move-object v4, v0

    .line 1220
    check-cast v4, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 1221
    .line 1222
    invoke-static {v4}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1223
    .line 1224
    .line 1225
    iget-object v0, v7, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 1226
    .line 1227
    move-object v5, v0

    .line 1228
    check-cast v5, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 1229
    .line 1230
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2MetadataCacheProvider:Ldagger/internal/Provider;

    .line 1231
    .line 1232
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v0

    .line 1236
    move-object v6, v0

    .line 1237
    check-cast v6, Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    .line 1238
    .line 1239
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideStrictModeProvider:Ldagger/internal/Provider;

    .line 1240
    .line 1241
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v0

    .line 1245
    move-object v7, v0

    .line 1246
    check-cast v7, Landroidx/camera/camera2/pipe/StrictMode;

    .line 1247
    .line 1248
    invoke-direct/range {v2 .. v7}, Landroidx/camera/camera2/pipe/compat/AndroidExtensionSessionFactory;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;Landroidx/camera/camera2/pipe/StrictMode;)V

    .line 1249
    .line 1250
    .line 1251
    move-object v4, v2

    .line 1252
    goto/16 :goto_6

    .line 1253
    .line 1254
    :pswitch_14
    new-instance v4, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;

    .line 1255
    .line 1256
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 1257
    .line 1258
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v0

    .line 1262
    check-cast v0, Landroidx/camera/camera2/pipe/core/Threads;

    .line 1263
    .line 1264
    iget-object v1, v7, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 1265
    .line 1266
    check-cast v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 1267
    .line 1268
    invoke-static {v1}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1269
    .line 1270
    .line 1271
    iget-object v2, v7, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 1272
    .line 1273
    check-cast v2, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 1274
    .line 1275
    invoke-direct {v4, v0, v1, v2}, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;)V

    .line 1276
    .line 1277
    .line 1278
    goto/16 :goto_6

    .line 1279
    .line 1280
    :pswitch_15
    new-instance v4, Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;

    .line 1281
    .line 1282
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 1283
    .line 1284
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v0

    .line 1288
    check-cast v0, Landroidx/camera/camera2/pipe/core/Threads;

    .line 1289
    .line 1290
    iget-object v1, v7, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 1291
    .line 1292
    check-cast v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 1293
    .line 1294
    iget-object v2, v7, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 1295
    .line 1296
    check-cast v2, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 1297
    .line 1298
    invoke-static {v2}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1299
    .line 1300
    .line 1301
    invoke-direct {v4, v0, v1, v2, v5}, Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/CameraGraph$Config;I)V

    .line 1302
    .line 1303
    .line 1304
    goto/16 :goto_6

    .line 1305
    .line 1306
    :pswitch_16
    new-instance v4, Landroidx/camera/camera2/pipe/compat/AndroidMHighSpeedSessionFactory;

    .line 1307
    .line 1308
    iget-object v0, v7, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 1309
    .line 1310
    check-cast v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 1311
    .line 1312
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 1313
    .line 1314
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v1

    .line 1318
    check-cast v1, Landroidx/camera/camera2/pipe/core/Threads;

    .line 1319
    .line 1320
    invoke-direct {v4, v0, v1}, Landroidx/camera/camera2/pipe/compat/AndroidMHighSpeedSessionFactory;-><init>(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/core/Threads;)V

    .line 1321
    .line 1322
    .line 1323
    goto/16 :goto_6

    .line 1324
    .line 1325
    :pswitch_17
    new-instance v4, Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;

    .line 1326
    .line 1327
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 1328
    .line 1329
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v0

    .line 1333
    check-cast v0, Landroidx/camera/camera2/pipe/core/Threads;

    .line 1334
    .line 1335
    iget-object v1, v7, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 1336
    .line 1337
    check-cast v1, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 1338
    .line 1339
    iget-object v2, v7, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 1340
    .line 1341
    check-cast v2, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 1342
    .line 1343
    invoke-static {v2}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1344
    .line 1345
    .line 1346
    invoke-direct {v4, v0, v1, v2, v6}, Landroidx/camera/camera2/pipe/compat/AndroidMSessionFactory;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/CameraGraph$Config;I)V

    .line 1347
    .line 1348
    .line 1349
    goto/16 :goto_6

    .line 1350
    .line 1351
    :pswitch_18
    iget-object v0, v2, Lnet/openid/appauth/AuthorizationRequest$Builder;->mScope:Ljava/lang/Object;

    .line 1352
    .line 1353
    check-cast v0, Lde/cketti/changelog/XmlParser;

    .line 1354
    .line 1355
    iget-object v1, v2, Lnet/openid/appauth/AuthorizationRequest$Builder;->mState:Ljava/lang/Object;

    .line 1356
    .line 1357
    check-cast v1, Lde/cketti/changelog/XmlParser;

    .line 1358
    .line 1359
    iget-object v6, v2, Lnet/openid/appauth/AuthorizationRequest$Builder;->mNonce:Ljava/lang/Object;

    .line 1360
    .line 1361
    check-cast v6, Lde/cketti/changelog/XmlParser;

    .line 1362
    .line 1363
    iget-object v8, v2, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifier:Ljava/lang/Object;

    .line 1364
    .line 1365
    check-cast v8, Lde/cketti/changelog/XmlParser;

    .line 1366
    .line 1367
    iget-object v2, v2, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallenge:Ljava/lang/Object;

    .line 1368
    .line 1369
    check-cast v2, Lde/cketti/changelog/XmlParser;

    .line 1370
    .line 1371
    iget-object v7, v7, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 1372
    .line 1373
    check-cast v7, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 1374
    .line 1375
    invoke-static {v7}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1379
    .line 1380
    .line 1381
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1382
    .line 1383
    .line 1384
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1388
    .line 1389
    .line 1390
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1391
    .line 1392
    .line 1393
    iget v9, v7, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    .line 1394
    .line 1395
    if-ne v9, v3, :cond_6

    .line 1396
    .line 1397
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1398
    .line 1399
    const/16 v1, 0x1f

    .line 1400
    .line 1401
    if-lt v0, v1, :cond_5

    .line 1402
    .line 1403
    invoke-virtual {v2}, Lde/cketti/changelog/XmlParser;->get()Ljava/lang/Object;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v0

    .line 1407
    move-object v4, v0

    .line 1408
    check-cast v4, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    .line 1409
    .line 1410
    goto/16 :goto_6

    .line 1411
    .line 1412
    :cond_5
    const-string v0, "Cannot use Extension sessions below Android S"

    .line 1413
    .line 1414
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1415
    .line 1416
    .line 1417
    goto/16 :goto_6

    .line 1418
    .line 1419
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1420
    .line 1421
    const/16 v3, 0x1c

    .line 1422
    .line 1423
    if-lt v2, v3, :cond_7

    .line 1424
    .line 1425
    invoke-virtual {v8}, Lde/cketti/changelog/XmlParser;->get()Ljava/lang/Object;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v0

    .line 1429
    move-object v4, v0

    .line 1430
    check-cast v4, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    .line 1431
    .line 1432
    goto/16 :goto_6

    .line 1433
    .line 1434
    :cond_7
    if-ne v9, v5, :cond_8

    .line 1435
    .line 1436
    invoke-virtual {v1}, Lde/cketti/changelog/XmlParser;->get()Ljava/lang/Object;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v0

    .line 1440
    move-object v4, v0

    .line 1441
    check-cast v4, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    .line 1442
    .line 1443
    goto/16 :goto_6

    .line 1444
    .line 1445
    :cond_8
    const/16 v1, 0x18

    .line 1446
    .line 1447
    if-lt v2, v1, :cond_9

    .line 1448
    .line 1449
    invoke-virtual {v6}, Lde/cketti/changelog/XmlParser;->get()Ljava/lang/Object;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v0

    .line 1453
    move-object v4, v0

    .line 1454
    check-cast v4, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    .line 1455
    .line 1456
    goto/16 :goto_6

    .line 1457
    .line 1458
    :cond_9
    iget-object v1, v7, Landroidx/camera/camera2/pipe/CameraGraph$Config;->input:Ljava/util/ArrayList;

    .line 1459
    .line 1460
    if-nez v1, :cond_a

    .line 1461
    .line 1462
    invoke-virtual {v0}, Lde/cketti/changelog/XmlParser;->get()Ljava/lang/Object;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v0

    .line 1466
    move-object v4, v0

    .line 1467
    check-cast v4, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    .line 1468
    .line 1469
    goto/16 :goto_6

    .line 1470
    .line 1471
    :cond_a
    const-string v0, "Reprocessing is not supported on Android M"

    .line 1472
    .line 1473
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1474
    .line 1475
    .line 1476
    goto/16 :goto_6

    .line 1477
    .line 1478
    :pswitch_19
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraManagerProvider:Ldagger/internal/Provider;

    .line 1479
    .line 1480
    iget-object v2, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 1481
    .line 1482
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v2

    .line 1486
    check-cast v2, Landroidx/camera/camera2/pipe/core/Threads;

    .line 1487
    .line 1488
    iget-object v3, v7, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 1489
    .line 1490
    check-cast v3, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 1491
    .line 1492
    invoke-static {v3}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1493
    .line 1494
    .line 1495
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraPipeJobProvider:Ldagger/internal/Provider;

    .line 1496
    .line 1497
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v1

    .line 1501
    check-cast v1, Lkotlinx/coroutines/Job;

    .line 1502
    .line 1503
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1504
    .line 1505
    .line 1506
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1510
    .line 1511
    .line 1512
    new-instance v4, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    .line 1513
    .line 1514
    iget-object v3, v3, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    .line 1515
    .line 1516
    invoke-direct {v4, v0, v2, v3, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;-><init>(Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/core/Threads;Ljava/lang/String;Lkotlinx/coroutines/Job;)V

    .line 1517
    .line 1518
    .line 1519
    goto/16 :goto_6

    .line 1520
    .line 1521
    :pswitch_1a
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 1522
    .line 1523
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v0

    .line 1527
    check-cast v0, Landroidx/camera/camera2/pipe/core/Threads;

    .line 1528
    .line 1529
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraPipeJobProvider:Ldagger/internal/Provider;

    .line 1530
    .line 1531
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v1

    .line 1535
    check-cast v1, Lkotlinx/coroutines/Job;

    .line 1536
    .line 1537
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1538
    .line 1539
    .line 1540
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1541
    .line 1542
    .line 1543
    new-instance v2, Lkotlinx/coroutines/SupervisorJobImpl;

    .line 1544
    .line 1545
    invoke-direct {v2, v1}, Lkotlinx/coroutines/JobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    .line 1546
    .line 1547
    .line 1548
    iget-object v0, v0, Landroidx/camera/camera2/pipe/core/Threads;->lightweightDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 1549
    .line 1550
    new-instance v1, Lkotlinx/coroutines/CoroutineName;

    .line 1551
    .line 1552
    const-string v3, "CXCP-Camera2Controller"

    .line 1553
    .line 1554
    invoke-direct {v1, v3}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    .line 1555
    .line 1556
    .line 1557
    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v0

    .line 1561
    invoke-static {v2, v0}, Lkotlin/uuid/UuidKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v0

    .line 1565
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v4

    .line 1569
    goto/16 :goto_6

    .line 1570
    .line 1571
    :pswitch_1b
    new-instance v5, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    .line 1572
    .line 1573
    iget-object v0, v2, Lnet/openid/appauth/AuthorizationRequest$Builder;->mLoginHint:Ljava/lang/Object;

    .line 1574
    .line 1575
    check-cast v0, Ldagger/internal/Provider;

    .line 1576
    .line 1577
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v0

    .line 1581
    move-object v6, v0

    .line 1582
    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .line 1583
    .line 1584
    iget-object v0, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 1585
    .line 1586
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v0

    .line 1590
    check-cast v0, Landroidx/camera/camera2/pipe/core/Threads;

    .line 1591
    .line 1592
    iget-object v3, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideStrictModeProvider:Ldagger/internal/Provider;

    .line 1593
    .line 1594
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v3

    .line 1598
    move-object v8, v3

    .line 1599
    check-cast v8, Landroidx/camera/camera2/pipe/StrictMode;

    .line 1600
    .line 1601
    iget-object v3, v7, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 1602
    .line 1603
    move-object v9, v3

    .line 1604
    check-cast v9, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 1605
    .line 1606
    invoke-static {v9}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1607
    .line 1608
    .line 1609
    iget-object v3, v7, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 1610
    .line 1611
    move-object v10, v3

    .line 1612
    check-cast v10, Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;

    .line 1613
    .line 1614
    iget-object v3, v7, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 1615
    .line 1616
    move-object v11, v3

    .line 1617
    check-cast v11, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    .line 1618
    .line 1619
    iget-object v3, v2, Lnet/openid/appauth/AuthorizationRequest$Builder;->mResponseType:Ljava/lang/Object;

    .line 1620
    .line 1621
    check-cast v3, Ldagger/internal/Provider;

    .line 1622
    .line 1623
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v3

    .line 1627
    move-object v12, v3

    .line 1628
    check-cast v12, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    .line 1629
    .line 1630
    iget-object v3, v2, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifierChallengeMethod:Ljava/lang/Object;

    .line 1631
    .line 1632
    check-cast v3, Ldagger/internal/Provider;

    .line 1633
    .line 1634
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v3

    .line 1638
    move-object v13, v3

    .line 1639
    check-cast v13, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    .line 1640
    .line 1641
    new-instance v14, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 1642
    .line 1643
    iget-object v2, v2, Lnet/openid/appauth/AuthorizationRequest$Builder;->mClientId:Ljava/lang/Object;

    .line 1644
    .line 1645
    check-cast v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 1646
    .line 1647
    iget-object v3, v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideThreadsProvider:Ldagger/internal/Provider;

    .line 1648
    .line 1649
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1650
    .line 1651
    .line 1652
    move-result-object v3

    .line 1653
    move-object v15, v3

    .line 1654
    check-cast v15, Landroidx/camera/camera2/pipe/core/Threads;

    .line 1655
    .line 1656
    iget-object v3, v7, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 1657
    .line 1658
    move-object/from16 v16, v3

    .line 1659
    .line 1660
    check-cast v16, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 1661
    .line 1662
    invoke-static/range {v16 .. v16}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1663
    .line 1664
    .line 1665
    iget-object v3, v7, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 1666
    .line 1667
    move-object/from16 v17, v3

    .line 1668
    .line 1669
    check-cast v17, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 1670
    .line 1671
    iget-object v3, v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2QuirksProvider:Ldagger/internal/Provider;

    .line 1672
    .line 1673
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v3

    .line 1677
    move-object/from16 v18, v3

    .line 1678
    .line 1679
    check-cast v18, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 1680
    .line 1681
    iget-object v2, v2, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideStrictModeProvider:Ldagger/internal/Provider;

    .line 1682
    .line 1683
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v2

    .line 1687
    move-object/from16 v19, v2

    .line 1688
    .line 1689
    check-cast v19, Landroidx/camera/camera2/pipe/StrictMode;

    .line 1690
    .line 1691
    invoke-direct/range {v14 .. v19}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/StrictMode;)V

    .line 1692
    .line 1693
    .line 1694
    iget-object v2, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->pruningCamera2DeviceManagerProvider:Ldagger/internal/Provider;

    .line 1695
    .line 1696
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v2

    .line 1700
    move-object v15, v2

    .line 1701
    check-cast v15, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;

    .line 1702
    .line 1703
    iget-object v2, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraSurfaceManagerProvider:Ldagger/internal/Provider;

    .line 1704
    .line 1705
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v2

    .line 1709
    move-object/from16 v16, v2

    .line 1710
    .line 1711
    check-cast v16, Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    .line 1712
    .line 1713
    iget-object v2, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->camera2QuirksProvider:Ldagger/internal/Provider;

    .line 1714
    .line 1715
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v2

    .line 1719
    move-object/from16 v17, v2

    .line 1720
    .line 1721
    check-cast v17, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 1722
    .line 1723
    iget-object v2, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->systemTimeSourceProvider:Ldagger/internal/Provider;

    .line 1724
    .line 1725
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v2

    .line 1729
    move-object/from16 v18, v2

    .line 1730
    .line 1731
    check-cast v18, Landroidx/camera/camera2/pipe/core/SystemTimeSource;

    .line 1732
    .line 1733
    iget-object v2, v7, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 1734
    .line 1735
    move-object/from16 v19, v2

    .line 1736
    .line 1737
    check-cast v19, Landroidx/camera/camera2/pipe/CameraGraphId;

    .line 1738
    .line 1739
    iget-object v2, v7, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 1740
    .line 1741
    move-object/from16 v20, v2

    .line 1742
    .line 1743
    check-cast v20, Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    .line 1744
    .line 1745
    iget-object v2, v7, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 1746
    .line 1747
    move-object/from16 v21, v2

    .line 1748
    .line 1749
    check-cast v21, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 1750
    .line 1751
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->concurrentSessionSequencersProvider:Ldagger/internal/Provider;

    .line 1752
    .line 1753
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1754
    .line 1755
    .line 1756
    move-result-object v1

    .line 1757
    move-object/from16 v22, v1

    .line 1758
    .line 1759
    check-cast v22, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;

    .line 1760
    .line 1761
    move-object v7, v0

    .line 1762
    invoke-direct/range {v5 .. v22}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/StrictMode;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphProcessorImpl;Landroidx/camera/camera2/pipe/graph/SurfaceGraph;Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;Lcom/fsck/k9/mailstore/LocalStore$7;Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/core/SystemTimeSource;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/compat/Camera2Backend;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;)V

    .line 1763
    .line 1764
    .line 1765
    move-object v4, v5

    .line 1766
    :goto_6
    return-object v4

    .line 1767
    :pswitch_1c
    iget-object v1, v0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 1768
    .line 1769
    check-cast v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;

    .line 1770
    .line 1771
    iget-object v3, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 1772
    .line 1773
    check-cast v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;

    .line 1774
    .line 1775
    iget v0, v0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 1776
    .line 1777
    packed-switch v0, :pswitch_data_3

    .line 1778
    .line 1779
    .line 1780
    new-instance v1, Ljava/lang/AssertionError;

    .line 1781
    .line 1782
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 1783
    .line 1784
    .line 1785
    throw v1

    .line 1786
    :pswitch_1d
    new-instance v2, Landroidx/camera/camera2/adapter/CameraControlAdapter;

    .line 1787
    .line 1788
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

    .line 1789
    .line 1790
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1791
    .line 1792
    .line 1793
    move-result-object v0

    .line 1794
    check-cast v0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 1795
    .line 1796
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->evCompControlProvider:Ldagger/internal/Provider;

    .line 1797
    .line 1798
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1799
    .line 1800
    .line 1801
    move-result-object v1

    .line 1802
    move-object v4, v1

    .line 1803
    check-cast v4, Landroidx/camera/camera2/impl/EvCompControl;

    .line 1804
    .line 1805
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->flashControlProvider:Ldagger/internal/Provider;

    .line 1806
    .line 1807
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1808
    .line 1809
    .line 1810
    move-result-object v1

    .line 1811
    move-object v5, v1

    .line 1812
    check-cast v5, Landroidx/camera/camera2/impl/FlashControl;

    .line 1813
    .line 1814
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->focusMeteringControlProvider:Ldagger/internal/Provider;

    .line 1815
    .line 1816
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1817
    .line 1818
    .line 1819
    move-result-object v1

    .line 1820
    move-object v6, v1

    .line 1821
    check-cast v6, Landroidx/camera/camera2/impl/FocusMeteringControl;

    .line 1822
    .line 1823
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->stillCaptureRequestControlProvider:Ldagger/internal/Provider;

    .line 1824
    .line 1825
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1826
    .line 1827
    .line 1828
    move-result-object v1

    .line 1829
    move-object v7, v1

    .line 1830
    check-cast v7, Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    .line 1831
    .line 1832
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->torchControlProvider:Ldagger/internal/Provider;

    .line 1833
    .line 1834
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v1

    .line 1838
    move-object v8, v1

    .line 1839
    check-cast v8, Landroidx/camera/camera2/impl/TorchControl;

    .line 1840
    .line 1841
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->lowLightBoostControlProvider:Ldagger/internal/Provider;

    .line 1842
    .line 1843
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1844
    .line 1845
    .line 1846
    move-result-object v1

    .line 1847
    move-object v9, v1

    .line 1848
    check-cast v9, Landroidx/camera/camera2/impl/LowLightBoostControl;

    .line 1849
    .line 1850
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->zoomControlProvider:Ldagger/internal/Provider;

    .line 1851
    .line 1852
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v1

    .line 1856
    move-object v10, v1

    .line 1857
    check-cast v10, Landroidx/camera/camera2/impl/ZoomControl;

    .line 1858
    .line 1859
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideZslControlProvider:Ldagger/internal/Provider;

    .line 1860
    .line 1861
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1862
    .line 1863
    .line 1864
    move-result-object v1

    .line 1865
    move-object v11, v1

    .line 1866
    check-cast v11, Landroidx/camera/camera2/adapter/ZslControl;

    .line 1867
    .line 1868
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideCamera2CameraControlProvider:Ldagger/internal/Provider;

    .line 1869
    .line 1870
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1871
    .line 1872
    .line 1873
    move-result-object v1

    .line 1874
    move-object v12, v1

    .line 1875
    check-cast v12, Landroidx/camera/camera2/interop/Camera2CameraControl;

    .line 1876
    .line 1877
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->useCaseManagerProvider:Ldagger/internal/Provider;

    .line 1878
    .line 1879
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1880
    .line 1881
    .line 1882
    move-result-object v1

    .line 1883
    move-object v13, v1

    .line 1884
    check-cast v13, Landroidx/camera/camera2/impl/UseCaseManager;

    .line 1885
    .line 1886
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 1887
    .line 1888
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v1

    .line 1892
    move-object v14, v1

    .line 1893
    check-cast v14, Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 1894
    .line 1895
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->videoUsageControlProvider:Ldagger/internal/Provider;

    .line 1896
    .line 1897
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v1

    .line 1901
    move-object v15, v1

    .line 1902
    check-cast v15, Landroidx/camera/camera2/impl/VideoUsageControl;

    .line 1903
    .line 1904
    move-object v3, v0

    .line 1905
    invoke-direct/range {v2 .. v15}, Landroidx/camera/camera2/adapter/CameraControlAdapter;-><init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;Landroidx/camera/camera2/impl/EvCompControl;Landroidx/camera/camera2/impl/FlashControl;Landroidx/camera/camera2/impl/FocusMeteringControl;Landroidx/camera/camera2/impl/StillCaptureRequestControl;Landroidx/camera/camera2/impl/TorchControl;Landroidx/camera/camera2/impl/LowLightBoostControl;Landroidx/camera/camera2/impl/ZoomControl;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/camera/camera2/impl/UseCaseManager;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/VideoUsageControl;)V

    .line 1906
    .line 1907
    .line 1908
    move-object v4, v2

    .line 1909
    goto/16 :goto_10

    .line 1910
    .line 1911
    :pswitch_1e
    new-instance v0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;

    .line 1912
    .line 1913
    iget-object v2, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraCallbackMapProvider:Ldagger/internal/Provider;

    .line 1914
    .line 1915
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1916
    .line 1917
    .line 1918
    move-result-object v2

    .line 1919
    move-object v4, v2

    .line 1920
    check-cast v4, Landroidx/camera/camera2/impl/CameraCallbackMap;

    .line 1921
    .line 1922
    iget-object v2, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->comboRequestListenerProvider:Ldagger/internal/Provider;

    .line 1923
    .line 1924
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v2

    .line 1928
    move-object v5, v2

    .line 1929
    check-cast v5, Landroidx/camera/camera2/impl/ComboRequestListener;

    .line 1930
    .line 1931
    iget-object v6, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraConfig:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 1932
    .line 1933
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1934
    .line 1935
    .line 1936
    iget-object v2, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Ldagger/internal/Provider;

    .line 1937
    .line 1938
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v2

    .line 1942
    move-object v7, v2

    .line 1943
    check-cast v7, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    .line 1944
    .line 1945
    iget-object v2, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideZslControlProvider:Ldagger/internal/Provider;

    .line 1946
    .line 1947
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1948
    .line 1949
    .line 1950
    move-result-object v2

    .line 1951
    move-object v8, v2

    .line 1952
    check-cast v8, Landroidx/camera/camera2/adapter/ZslControl;

    .line 1953
    .line 1954
    invoke-virtual {v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->templateParamsOverride()Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v9

    .line 1958
    iget-object v2, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideCameraMetadataProvider:Ldagger/internal/Provider;

    .line 1959
    .line 1960
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1961
    .line 1962
    .line 1963
    move-result-object v2

    .line 1964
    move-object v10, v2

    .line 1965
    check-cast v10, Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 1966
    .line 1967
    iget-object v1, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->cameraAppConfig:Lcom/eygraber/uri/Uri$Builder;

    .line 1968
    .line 1969
    iget-object v2, v1, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 1970
    .line 1971
    move-object v11, v2

    .line 1972
    check-cast v11, Landroidx/camera/core/CameraXConfig;

    .line 1973
    .line 1974
    iget-object v1, v1, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 1975
    .line 1976
    move-object v12, v1

    .line 1977
    check-cast v12, Landroidx/cardview/widget/CardView$1;

    .line 1978
    .line 1979
    invoke-static {v12}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1980
    .line 1981
    .line 1982
    move-object v3, v0

    .line 1983
    invoke-direct/range {v3 .. v12}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;-><init>(Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/impl/ComboRequestListener;Lcom/fsck/k9/mailstore/LocalStore$8;Landroidx/camera/camera2/compat/quirk/CameraQuirks;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/core/CameraXConfig;Landroidx/cardview/widget/CardView$1;)V

    .line 1984
    .line 1985
    .line 1986
    move-object v4, v3

    .line 1987
    goto/16 :goto_10

    .line 1988
    .line 1989
    :pswitch_1f
    new-instance v4, Landroidx/camera/camera2/internal/IntrinsicZoomCalculatorImpl;

    .line 1990
    .line 1991
    invoke-virtual {v1}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->getCameraDevices()Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;

    .line 1992
    .line 1993
    .line 1994
    move-result-object v0

    .line 1995
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1996
    .line 1997
    .line 1998
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 1999
    .line 2000
    .line 2001
    goto/16 :goto_10

    .line 2002
    .line 2003
    :pswitch_20
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraConfig:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 2004
    .line 2005
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2006
    .line 2007
    .line 2008
    iget-object v4, v0, Lcom/fsck/k9/mailstore/LocalStore$8;->val$attachmentId:Ljava/lang/String;

    .line 2009
    .line 2010
    invoke-static {v4}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 2011
    .line 2012
    .line 2013
    goto/16 :goto_10

    .line 2014
    .line 2015
    :pswitch_21
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideCameraIdStringProvider:Ldagger/internal/Provider;

    .line 2016
    .line 2017
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2018
    .line 2019
    .line 2020
    move-result-object v0

    .line 2021
    check-cast v0, Ljava/lang/String;

    .line 2022
    .line 2023
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Ldagger/internal/Provider;

    .line 2024
    .line 2025
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2026
    .line 2027
    .line 2028
    move-result-object v1

    .line 2029
    check-cast v1, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    .line 2030
    .line 2031
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2032
    .line 2033
    .line 2034
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2035
    .line 2036
    .line 2037
    new-instance v4, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;

    .line 2038
    .line 2039
    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    .line 2040
    .line 2041
    .line 2042
    move-result-object v1

    .line 2043
    invoke-direct {v4, v0, v1}, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;-><init>(Ljava/lang/String;Landroidx/camera/core/impl/Quirks;)V

    .line 2044
    .line 2045
    .line 2046
    goto/16 :goto_10

    .line 2047
    .line 2048
    :pswitch_22
    new-instance v4, Landroidx/camera/camera2/impl/CameraCallbackMap;

    .line 2049
    .line 2050
    invoke-direct {v4}, Landroidx/camera/camera2/impl/CameraCallbackMap;-><init>()V

    .line 2051
    .line 2052
    .line 2053
    goto/16 :goto_10

    .line 2054
    .line 2055
    :pswitch_23
    new-instance v4, Landroidx/camera/camera2/adapter/CameraControlStateAdapter;

    .line 2056
    .line 2057
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->zoomControlProvider:Ldagger/internal/Provider;

    .line 2058
    .line 2059
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2060
    .line 2061
    .line 2062
    move-result-object v0

    .line 2063
    check-cast v0, Landroidx/camera/camera2/impl/ZoomControl;

    .line 2064
    .line 2065
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->evCompControlProvider:Ldagger/internal/Provider;

    .line 2066
    .line 2067
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2068
    .line 2069
    .line 2070
    move-result-object v1

    .line 2071
    check-cast v1, Landroidx/camera/camera2/impl/EvCompControl;

    .line 2072
    .line 2073
    iget-object v2, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->torchControlProvider:Ldagger/internal/Provider;

    .line 2074
    .line 2075
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2076
    .line 2077
    .line 2078
    move-result-object v2

    .line 2079
    check-cast v2, Landroidx/camera/camera2/impl/TorchControl;

    .line 2080
    .line 2081
    iget-object v3, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->lowLightBoostControlProvider:Ldagger/internal/Provider;

    .line 2082
    .line 2083
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2084
    .line 2085
    .line 2086
    move-result-object v3

    .line 2087
    check-cast v3, Landroidx/camera/camera2/impl/LowLightBoostControl;

    .line 2088
    .line 2089
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2090
    .line 2091
    .line 2092
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2093
    .line 2094
    .line 2095
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2096
    .line 2097
    .line 2098
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2099
    .line 2100
    .line 2101
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 2102
    .line 2103
    .line 2104
    goto/16 :goto_10

    .line 2105
    .line 2106
    :pswitch_24
    new-instance v5, Landroidx/camera/camera2/adapter/CameraInfoAdapter;

    .line 2107
    .line 2108
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

    .line 2109
    .line 2110
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2111
    .line 2112
    .line 2113
    move-result-object v0

    .line 2114
    move-object v6, v0

    .line 2115
    check-cast v6, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 2116
    .line 2117
    iget-object v7, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraConfig:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 2118
    .line 2119
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2120
    .line 2121
    .line 2122
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraStateAdapterProvider:Ldagger/internal/Provider;

    .line 2123
    .line 2124
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2125
    .line 2126
    .line 2127
    move-result-object v0

    .line 2128
    move-object v8, v0

    .line 2129
    check-cast v8, Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 2130
    .line 2131
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraControlStateAdapterProvider:Ldagger/internal/Provider;

    .line 2132
    .line 2133
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2134
    .line 2135
    .line 2136
    move-result-object v0

    .line 2137
    move-object v9, v0

    .line 2138
    check-cast v9, Landroidx/camera/camera2/adapter/CameraControlStateAdapter;

    .line 2139
    .line 2140
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraCallbackMapProvider:Ldagger/internal/Provider;

    .line 2141
    .line 2142
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2143
    .line 2144
    .line 2145
    move-result-object v0

    .line 2146
    move-object v10, v0

    .line 2147
    check-cast v10, Landroidx/camera/camera2/impl/CameraCallbackMap;

    .line 2148
    .line 2149
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->focusMeteringControlProvider:Ldagger/internal/Provider;

    .line 2150
    .line 2151
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2152
    .line 2153
    .line 2154
    move-result-object v0

    .line 2155
    move-object v11, v0

    .line 2156
    check-cast v11, Landroidx/camera/camera2/impl/FocusMeteringControl;

    .line 2157
    .line 2158
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Ldagger/internal/Provider;

    .line 2159
    .line 2160
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2161
    .line 2162
    .line 2163
    move-result-object v0

    .line 2164
    move-object v12, v0

    .line 2165
    check-cast v12, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    .line 2166
    .line 2167
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideEncoderProfilesProvider:Ldagger/internal/Provider;

    .line 2168
    .line 2169
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2170
    .line 2171
    .line 2172
    move-result-object v0

    .line 2173
    move-object v13, v0

    .line 2174
    check-cast v13, Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 2175
    .line 2176
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->streamConfigurationMapCompatProvider:Ldagger/internal/Provider;

    .line 2177
    .line 2178
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2179
    .line 2180
    .line 2181
    move-result-object v0

    .line 2182
    move-object v14, v0

    .line 2183
    check-cast v14, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    .line 2184
    .line 2185
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->intrinsicZoomCalculatorImplProvider:Ldagger/internal/Provider;

    .line 2186
    .line 2187
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2188
    .line 2189
    .line 2190
    move-result-object v0

    .line 2191
    move-object v15, v0

    .line 2192
    check-cast v15, Landroidx/camera/camera2/internal/IntrinsicZoomCalculatorImpl;

    .line 2193
    .line 2194
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->streamSpecsCalculator:Landroidx/cardview/widget/CardView$1;

    .line 2195
    .line 2196
    move-object/from16 v16, v0

    .line 2197
    .line 2198
    invoke-direct/range {v5 .. v16}, Landroidx/camera/camera2/adapter/CameraInfoAdapter;-><init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;Lcom/fsck/k9/mailstore/LocalStore$8;Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/camera2/adapter/CameraControlStateAdapter;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/impl/FocusMeteringControl;Landroidx/camera/camera2/compat/quirk/CameraQuirks;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;Landroidx/camera/camera2/internal/IntrinsicZoomCalculatorImpl;Landroidx/cardview/widget/CardView$1;)V

    .line 2199
    .line 2200
    .line 2201
    :goto_7
    move-object v4, v5

    .line 2202
    goto/16 :goto_10

    .line 2203
    .line 2204
    :pswitch_25
    new-instance v4, Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 2205
    .line 2206
    invoke-direct {v4}, Landroidx/camera/camera2/adapter/CameraStateAdapter;-><init>()V

    .line 2207
    .line 2208
    .line 2209
    goto/16 :goto_10

    .line 2210
    .line 2211
    :pswitch_26
    new-instance v4, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;

    .line 2212
    .line 2213
    invoke-direct {v4}, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;-><init>()V

    .line 2214
    .line 2215
    .line 2216
    goto/16 :goto_10

    .line 2217
    .line 2218
    :pswitch_27
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->camera2CameraControlCompatImplProvider:Ldagger/internal/Provider;

    .line 2219
    .line 2220
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2221
    .line 2222
    .line 2223
    move-result-object v0

    .line 2224
    check-cast v0, Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;

    .line 2225
    .line 2226
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 2227
    .line 2228
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2229
    .line 2230
    .line 2231
    move-result-object v1

    .line 2232
    check-cast v1, Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 2233
    .line 2234
    iget-object v2, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->comboRequestListenerProvider:Ldagger/internal/Provider;

    .line 2235
    .line 2236
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2237
    .line 2238
    .line 2239
    move-result-object v2

    .line 2240
    check-cast v2, Landroidx/camera/camera2/impl/ComboRequestListener;

    .line 2241
    .line 2242
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2243
    .line 2244
    .line 2245
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2246
    .line 2247
    .line 2248
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2249
    .line 2250
    .line 2251
    new-instance v4, Landroidx/camera/camera2/interop/Camera2CameraControl;

    .line 2252
    .line 2253
    invoke-direct {v4, v0, v1, v2}, Landroidx/camera/camera2/interop/Camera2CameraControl;-><init>(Landroidx/camera/camera2/compat/Camera2CameraControlCompatImpl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)V

    .line 2254
    .line 2255
    .line 2256
    goto/16 :goto_10

    .line 2257
    .line 2258
    :pswitch_28
    new-instance v4, Landroidx/camera/camera2/impl/ZoomControl;

    .line 2259
    .line 2260
    invoke-virtual {v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->zoomCompat()Landroidx/camera/camera2/compat/ZoomCompat;

    .line 2261
    .line 2262
    .line 2263
    move-result-object v0

    .line 2264
    invoke-direct {v4, v0}, Landroidx/camera/camera2/impl/ZoomControl;-><init>(Landroidx/camera/camera2/compat/ZoomCompat;)V

    .line 2265
    .line 2266
    .line 2267
    goto/16 :goto_10

    .line 2268
    .line 2269
    :pswitch_29
    new-instance v4, Landroidx/camera/camera2/impl/VideoUsageControl;

    .line 2270
    .line 2271
    invoke-direct {v4}, Landroidx/camera/camera2/impl/VideoUsageControl;-><init>()V

    .line 2272
    .line 2273
    .line 2274
    goto/16 :goto_10

    .line 2275
    .line 2276
    :pswitch_2a
    new-instance v4, Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    .line 2277
    .line 2278
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->flashControlProvider:Ldagger/internal/Provider;

    .line 2279
    .line 2280
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2281
    .line 2282
    .line 2283
    move-result-object v0

    .line 2284
    check-cast v0, Landroidx/camera/camera2/impl/FlashControl;

    .line 2285
    .line 2286
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 2287
    .line 2288
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2289
    .line 2290
    .line 2291
    move-result-object v1

    .line 2292
    check-cast v1, Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 2293
    .line 2294
    invoke-direct {v4, v0, v1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;-><init>(Landroidx/camera/camera2/impl/FlashControl;Landroidx/camera/camera2/impl/UseCaseThreads;)V

    .line 2295
    .line 2296
    .line 2297
    goto/16 :goto_10

    .line 2298
    .line 2299
    :pswitch_2b
    new-instance v5, Landroidx/camera/camera2/impl/FocusMeteringControl;

    .line 2300
    .line 2301
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

    .line 2302
    .line 2303
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2304
    .line 2305
    .line 2306
    move-result-object v0

    .line 2307
    move-object v6, v0

    .line 2308
    check-cast v6, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 2309
    .line 2310
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Ldagger/internal/Provider;

    .line 2311
    .line 2312
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2313
    .line 2314
    .line 2315
    move-result-object v0

    .line 2316
    check-cast v0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    .line 2317
    .line 2318
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2319
    .line 2320
    .line 2321
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    .line 2322
    .line 2323
    .line 2324
    move-result-object v0

    .line 2325
    const-class v1, Landroidx/camera/camera2/compat/quirk/AfRegionFlipHorizontallyQuirk;

    .line 2326
    .line 2327
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    .line 2328
    .line 2329
    .line 2330
    move-result v0

    .line 2331
    if-eqz v0, :cond_b

    .line 2332
    .line 2333
    sget-object v0, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;->INSTANCE$1:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    .line 2334
    .line 2335
    :goto_8
    move-object v7, v0

    .line 2336
    goto :goto_9

    .line 2337
    :cond_b
    sget-object v0, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;->INSTANCE$4:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    .line 2338
    .line 2339
    goto :goto_8

    .line 2340
    :goto_9
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->state3AControlProvider:Ldagger/internal/Provider;

    .line 2341
    .line 2342
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2343
    .line 2344
    .line 2345
    move-result-object v0

    .line 2346
    move-object v8, v0

    .line 2347
    check-cast v8, Landroidx/camera/camera2/impl/State3AControl;

    .line 2348
    .line 2349
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 2350
    .line 2351
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2352
    .line 2353
    .line 2354
    move-result-object v0

    .line 2355
    move-object v9, v0

    .line 2356
    check-cast v9, Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 2357
    .line 2358
    invoke-virtual {v3}, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->zoomCompat()Landroidx/camera/camera2/compat/ZoomCompat;

    .line 2359
    .line 2360
    .line 2361
    move-result-object v10

    .line 2362
    invoke-direct/range {v5 .. v10}, Landroidx/camera/camera2/impl/FocusMeteringControl;-><init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/compat/ZoomCompat;)V

    .line 2363
    .line 2364
    .line 2365
    goto/16 :goto_7

    .line 2366
    .line 2367
    :pswitch_2c
    new-instance v4, Landroidx/camera/camera2/impl/TorchControl;

    .line 2368
    .line 2369
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

    .line 2370
    .line 2371
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2372
    .line 2373
    .line 2374
    move-result-object v0

    .line 2375
    check-cast v0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 2376
    .line 2377
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->state3AControlProvider:Ldagger/internal/Provider;

    .line 2378
    .line 2379
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2380
    .line 2381
    .line 2382
    move-result-object v1

    .line 2383
    check-cast v1, Landroidx/camera/camera2/impl/State3AControl;

    .line 2384
    .line 2385
    iget-object v2, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 2386
    .line 2387
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2388
    .line 2389
    .line 2390
    move-result-object v2

    .line 2391
    check-cast v2, Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 2392
    .line 2393
    invoke-direct {v4, v0, v1, v2}, Landroidx/camera/camera2/impl/TorchControl;-><init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;)V

    .line 2394
    .line 2395
    .line 2396
    goto/16 :goto_10

    .line 2397
    .line 2398
    :pswitch_2d
    new-instance v5, Landroidx/camera/camera2/impl/FlashControl;

    .line 2399
    .line 2400
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

    .line 2401
    .line 2402
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2403
    .line 2404
    .line 2405
    move-result-object v0

    .line 2406
    move-object v6, v0

    .line 2407
    check-cast v6, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 2408
    .line 2409
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->state3AControlProvider:Ldagger/internal/Provider;

    .line 2410
    .line 2411
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2412
    .line 2413
    .line 2414
    move-result-object v0

    .line 2415
    move-object v7, v0

    .line 2416
    check-cast v7, Landroidx/camera/camera2/impl/State3AControl;

    .line 2417
    .line 2418
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 2419
    .line 2420
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2421
    .line 2422
    .line 2423
    move-result-object v0

    .line 2424
    move-object v8, v0

    .line 2425
    check-cast v8, Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 2426
    .line 2427
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->torchControlProvider:Ldagger/internal/Provider;

    .line 2428
    .line 2429
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2430
    .line 2431
    .line 2432
    move-result-object v0

    .line 2433
    move-object v9, v0

    .line 2434
    check-cast v9, Landroidx/camera/camera2/impl/TorchControl;

    .line 2435
    .line 2436
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Ldagger/internal/Provider;

    .line 2437
    .line 2438
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2439
    .line 2440
    .line 2441
    move-result-object v0

    .line 2442
    check-cast v0, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    .line 2443
    .line 2444
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2445
    .line 2446
    .line 2447
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    .line 2448
    .line 2449
    .line 2450
    move-result-object v0

    .line 2451
    const-class v1, Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;

    .line 2452
    .line 2453
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    .line 2454
    .line 2455
    .line 2456
    move-result v0

    .line 2457
    if-eqz v0, :cond_c

    .line 2458
    .line 2459
    sget-object v0, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;->INSTANCE$8:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    .line 2460
    .line 2461
    :goto_a
    move-object v10, v0

    .line 2462
    goto :goto_b

    .line 2463
    :cond_c
    sget-object v0, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;->INSTANCE$6:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    .line 2464
    .line 2465
    goto :goto_a

    .line 2466
    :goto_b
    invoke-direct/range {v5 .. v10}, Landroidx/camera/camera2/impl/FlashControl;-><init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/TorchControl;Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;)V

    .line 2467
    .line 2468
    .line 2469
    goto/16 :goto_7

    .line 2470
    .line 2471
    :pswitch_2e
    new-instance v4, Landroidx/camera/camera2/compat/EvCompImpl;

    .line 2472
    .line 2473
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

    .line 2474
    .line 2475
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2476
    .line 2477
    .line 2478
    move-result-object v0

    .line 2479
    check-cast v0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 2480
    .line 2481
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 2482
    .line 2483
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2484
    .line 2485
    .line 2486
    move-result-object v1

    .line 2487
    check-cast v1, Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 2488
    .line 2489
    iget-object v2, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->comboRequestListenerProvider:Ldagger/internal/Provider;

    .line 2490
    .line 2491
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2492
    .line 2493
    .line 2494
    move-result-object v2

    .line 2495
    check-cast v2, Landroidx/camera/camera2/impl/ComboRequestListener;

    .line 2496
    .line 2497
    invoke-direct {v4, v0, v1, v2}, Landroidx/camera/camera2/compat/EvCompImpl;-><init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)V

    .line 2498
    .line 2499
    .line 2500
    goto/16 :goto_10

    .line 2501
    .line 2502
    :pswitch_2f
    new-instance v4, Landroidx/camera/camera2/impl/EvCompControl;

    .line 2503
    .line 2504
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->evCompImplProvider:Ldagger/internal/Provider;

    .line 2505
    .line 2506
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2507
    .line 2508
    .line 2509
    move-result-object v0

    .line 2510
    check-cast v0, Landroidx/camera/camera2/compat/EvCompImpl;

    .line 2511
    .line 2512
    invoke-direct {v4, v0}, Landroidx/camera/camera2/impl/EvCompControl;-><init>(Landroidx/camera/camera2/compat/EvCompImpl;)V

    .line 2513
    .line 2514
    .line 2515
    goto/16 :goto_10

    .line 2516
    .line 2517
    :pswitch_30
    new-instance v4, Landroidx/camera/camera2/impl/ComboRequestListener;

    .line 2518
    .line 2519
    invoke-direct {v4}, Landroidx/camera/camera2/impl/ComboRequestListener;-><init>()V

    .line 2520
    .line 2521
    .line 2522
    goto/16 :goto_10

    .line 2523
    .line 2524
    :pswitch_31
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraConfig:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 2525
    .line 2526
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2527
    .line 2528
    .line 2529
    iget-object v1, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->cameraAppConfig:Lcom/eygraber/uri/Uri$Builder;

    .line 2530
    .line 2531
    iget-object v1, v1, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 2532
    .line 2533
    check-cast v1, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;

    .line 2534
    .line 2535
    iget-object v1, v1, Landroidx/camera/core/impl/AutoValue_CameraThreadConfig;->cameraExecutor:Ljava/util/concurrent/Executor;

    .line 2536
    .line 2537
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2538
    .line 2539
    .line 2540
    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 2541
    .line 2542
    .line 2543
    move-result-object v2

    .line 2544
    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 2545
    .line 2546
    .line 2547
    move-result-object v3

    .line 2548
    invoke-static {v3, v2}, Lkotlin/uuid/UuidKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 2549
    .line 2550
    .line 2551
    move-result-object v3

    .line 2552
    new-instance v4, Lkotlinx/coroutines/CoroutineName;

    .line 2553
    .line 2554
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2555
    .line 2556
    const-string v6, "CXCP-UseCase-"

    .line 2557
    .line 2558
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2559
    .line 2560
    .line 2561
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$8;->val$attachmentId:Ljava/lang/String;

    .line 2562
    .line 2563
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2564
    .line 2565
    .line 2566
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2567
    .line 2568
    .line 2569
    move-result-object v0

    .line 2570
    invoke-direct {v4, v0}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    .line 2571
    .line 2572
    .line 2573
    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 2574
    .line 2575
    .line 2576
    move-result-object v0

    .line 2577
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 2578
    .line 2579
    .line 2580
    move-result-object v0

    .line 2581
    new-instance v4, Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 2582
    .line 2583
    invoke-direct {v4, v0, v1, v2}, Landroidx/camera/camera2/impl/UseCaseThreads;-><init>(Lkotlinx/coroutines/internal/ContextScope;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 2584
    .line 2585
    .line 2586
    goto/16 :goto_10

    .line 2587
    .line 2588
    :pswitch_32
    new-instance v4, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;

    .line 2589
    .line 2590
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideCameraMetadataProvider:Ldagger/internal/Provider;

    .line 2591
    .line 2592
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2593
    .line 2594
    .line 2595
    move-result-object v0

    .line 2596
    check-cast v0, Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 2597
    .line 2598
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideStreamConfigurationMapProvider:Ldagger/internal/Provider;

    .line 2599
    .line 2600
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2601
    .line 2602
    .line 2603
    move-result-object v1

    .line 2604
    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 2605
    .line 2606
    invoke-direct {v4, v0}, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;)V

    .line 2607
    .line 2608
    .line 2609
    goto/16 :goto_10

    .line 2610
    .line 2611
    :pswitch_33
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideCameraMetadataProvider:Ldagger/internal/Provider;

    .line 2612
    .line 2613
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2614
    .line 2615
    .line 2616
    move-result-object v0

    .line 2617
    check-cast v0, Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 2618
    .line 2619
    if-eqz v0, :cond_11

    .line 2620
    .line 2621
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2622
    .line 2623
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2624
    .line 2625
    .line 2626
    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 2627
    .line 2628
    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 2629
    .line 2630
    .line 2631
    move-result-object v0

    .line 2632
    move-object v4, v0

    .line 2633
    check-cast v4, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 2634
    .line 2635
    goto/16 :goto_10

    .line 2636
    .line 2637
    :pswitch_34
    new-instance v4, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    .line 2638
    .line 2639
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideStreamConfigurationMapProvider:Ldagger/internal/Provider;

    .line 2640
    .line 2641
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2642
    .line 2643
    .line 2644
    move-result-object v0

    .line 2645
    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 2646
    .line 2647
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->outputSizesCorrectorProvider:Ldagger/internal/Provider;

    .line 2648
    .line 2649
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2650
    .line 2651
    .line 2652
    move-result-object v1

    .line 2653
    check-cast v1, Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;

    .line 2654
    .line 2655
    invoke-direct {v4, v0, v1}, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;-><init>(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;)V

    .line 2656
    .line 2657
    .line 2658
    goto/16 :goto_10

    .line 2659
    .line 2660
    :pswitch_35
    new-instance v4, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    .line 2661
    .line 2662
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideCameraMetadataProvider:Ldagger/internal/Provider;

    .line 2663
    .line 2664
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2665
    .line 2666
    .line 2667
    move-result-object v0

    .line 2668
    check-cast v0, Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 2669
    .line 2670
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->streamConfigurationMapCompatProvider:Ldagger/internal/Provider;

    .line 2671
    .line 2672
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2673
    .line 2674
    .line 2675
    move-result-object v1

    .line 2676
    check-cast v1, Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    .line 2677
    .line 2678
    invoke-direct {v4, v0, v1}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;)V

    .line 2679
    .line 2680
    .line 2681
    goto/16 :goto_10

    .line 2682
    .line 2683
    :pswitch_36
    new-instance v4, Landroidx/camera/camera2/impl/State3AControl;

    .line 2684
    .line 2685
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

    .line 2686
    .line 2687
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2688
    .line 2689
    .line 2690
    move-result-object v0

    .line 2691
    check-cast v0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 2692
    .line 2693
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraQuirksProvider:Ldagger/internal/Provider;

    .line 2694
    .line 2695
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2696
    .line 2697
    .line 2698
    move-result-object v1

    .line 2699
    check-cast v1, Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    .line 2700
    .line 2701
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2702
    .line 2703
    .line 2704
    invoke-virtual {v1}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    .line 2705
    .line 2706
    .line 2707
    move-result-object v1

    .line 2708
    const-class v2, Landroidx/camera/camera2/compat/quirk/ImageCaptureFailWithAutoFlashQuirk;

    .line 2709
    .line 2710
    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    .line 2711
    .line 2712
    .line 2713
    move-result v1

    .line 2714
    const-class v2, Landroidx/camera/camera2/compat/quirk/CrashWhenTakingPhotoWithAutoFlashAEModeQuirk;

    .line 2715
    .line 2716
    invoke-static {}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->getAll()Landroidx/camera/core/impl/Quirks;

    .line 2717
    .line 2718
    .line 2719
    move-result-object v5

    .line 2720
    invoke-virtual {v5, v2}, Landroidx/camera/core/impl/Quirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    .line 2721
    .line 2722
    .line 2723
    move-result-object v2

    .line 2724
    if-eqz v2, :cond_d

    .line 2725
    .line 2726
    goto :goto_c

    .line 2727
    :cond_d
    if-eqz v1, :cond_e

    .line 2728
    .line 2729
    :goto_c
    sget-object v1, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;->INSTANCE:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    .line 2730
    .line 2731
    goto :goto_d

    .line 2732
    :cond_e
    sget-object v1, Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;->INSTANCE$2:Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;

    .line 2733
    .line 2734
    :goto_d
    iget-object v2, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 2735
    .line 2736
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2737
    .line 2738
    .line 2739
    move-result-object v2

    .line 2740
    check-cast v2, Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 2741
    .line 2742
    invoke-direct {v4, v0, v1, v2}, Landroidx/camera/camera2/impl/State3AControl;-><init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;Landroidx/camera/camera2/compat/workaround/TargetAspectRatio;Landroidx/camera/camera2/impl/UseCaseThreads;)V

    .line 2743
    .line 2744
    .line 2745
    goto/16 :goto_10

    .line 2746
    .line 2747
    :pswitch_37
    new-instance v4, Landroidx/camera/camera2/impl/LowLightBoostControl;

    .line 2748
    .line 2749
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideCameraMetadataProvider:Ldagger/internal/Provider;

    .line 2750
    .line 2751
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2752
    .line 2753
    .line 2754
    move-result-object v0

    .line 2755
    check-cast v0, Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 2756
    .line 2757
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->state3AControlProvider:Ldagger/internal/Provider;

    .line 2758
    .line 2759
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2760
    .line 2761
    .line 2762
    move-result-object v1

    .line 2763
    check-cast v1, Landroidx/camera/camera2/impl/State3AControl;

    .line 2764
    .line 2765
    iget-object v2, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 2766
    .line 2767
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2768
    .line 2769
    .line 2770
    move-result-object v2

    .line 2771
    check-cast v2, Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 2772
    .line 2773
    iget-object v3, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->comboRequestListenerProvider:Ldagger/internal/Provider;

    .line 2774
    .line 2775
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2776
    .line 2777
    .line 2778
    move-result-object v3

    .line 2779
    check-cast v3, Landroidx/camera/camera2/impl/ComboRequestListener;

    .line 2780
    .line 2781
    invoke-direct {v4, v0, v1, v2, v3}, Landroidx/camera/camera2/impl/LowLightBoostControl;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)V

    .line 2782
    .line 2783
    .line 2784
    goto/16 :goto_10

    .line 2785
    .line 2786
    :pswitch_38
    iget-object v0, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->cameraAppConfig:Lcom/eygraber/uri/Uri$Builder;

    .line 2787
    .line 2788
    iget-object v0, v0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 2789
    .line 2790
    check-cast v0, Landroidx/camera/camera2/pipe/CameraPipeImpl;

    .line 2791
    .line 2792
    invoke-static {v0}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 2793
    .line 2794
    .line 2795
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraConfig:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 2796
    .line 2797
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2798
    .line 2799
    .line 2800
    const-string v2, "CXCP"

    .line 2801
    .line 2802
    :try_start_1
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->cameras()Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;

    .line 2803
    .line 2804
    .line 2805
    move-result-object v0

    .line 2806
    iget-object v1, v1, Lcom/fsck/k9/mailstore/LocalStore$8;->val$attachmentId:Ljava/lang/String;

    .line 2807
    .line 2808
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->awaitCameraMetadata-FpsL5FU$default(Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 2809
    .line 2810
    .line 2811
    move-result-object v4
    :try_end_1
    .catch Landroidx/camera/camera2/pipe/DoNotDisturbException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2812
    goto/16 :goto_10

    .line 2813
    .line 2814
    :catch_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isErrorEnabled()Z

    .line 2815
    .line 2816
    .line 2817
    move-result v0

    .line 2818
    if-eqz v0, :cond_11

    .line 2819
    .line 2820
    const-string v0, "Failed to inject camera metadata: Do Not Disturb mode is on."

    .line 2821
    .line 2822
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    .line 2824
    .line 2825
    goto/16 :goto_10

    .line 2826
    .line 2827
    :pswitch_39
    new-instance v4, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 2828
    .line 2829
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraConfig:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 2830
    .line 2831
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2832
    .line 2833
    .line 2834
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideCameraMetadataProvider:Ldagger/internal/Provider;

    .line 2835
    .line 2836
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2837
    .line 2838
    .line 2839
    move-result-object v1

    .line 2840
    check-cast v1, Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 2841
    .line 2842
    invoke-direct {v4, v0, v1}, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;-><init>(Lcom/fsck/k9/mailstore/LocalStore$8;Landroidx/camera/camera2/pipe/CameraMetadata;)V

    .line 2843
    .line 2844
    .line 2845
    goto/16 :goto_10

    .line 2846
    .line 2847
    :pswitch_3a
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

    .line 2848
    .line 2849
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2850
    .line 2851
    .line 2852
    move-result-object v0

    .line 2853
    check-cast v0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 2854
    .line 2855
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2856
    .line 2857
    .line 2858
    new-instance v4, Landroidx/camera/camera2/adapter/ZslControlImpl;

    .line 2859
    .line 2860
    invoke-direct {v4, v0}, Landroidx/camera/camera2/adapter/ZslControlImpl;-><init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;)V

    .line 2861
    .line 2862
    .line 2863
    goto/16 :goto_10

    .line 2864
    .line 2865
    :pswitch_3b
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseManager;

    .line 2866
    .line 2867
    iget-object v4, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->cameraAppConfig:Lcom/eygraber/uri/Uri$Builder;

    .line 2868
    .line 2869
    iget-object v7, v1, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraAppComponentImpl;->cameraAppConfig:Lcom/eygraber/uri/Uri$Builder;

    .line 2870
    .line 2871
    iget-object v4, v4, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 2872
    .line 2873
    check-cast v4, Landroidx/camera/camera2/pipe/CameraPipeImpl;

    .line 2874
    .line 2875
    invoke-static {v4}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 2876
    .line 2877
    .line 2878
    iget-object v8, v7, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 2879
    .line 2880
    check-cast v8, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;

    .line 2881
    .line 2882
    invoke-static {v8}, Lkotlin/math/MathKt;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 2883
    .line 2884
    .line 2885
    move-object v9, v8

    .line 2886
    new-instance v8, Landroidx/cardview/widget/CardView$1;

    .line 2887
    .line 2888
    invoke-direct {v8, v2, v1, v3, v6}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 2889
    .line 2890
    .line 2891
    iget-object v1, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideZslControlProvider:Ldagger/internal/Provider;

    .line 2892
    .line 2893
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2894
    .line 2895
    .line 2896
    move-result-object v1

    .line 2897
    check-cast v1, Landroidx/camera/camera2/adapter/ZslControl;

    .line 2898
    .line 2899
    iget-object v2, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->lowLightBoostControlProvider:Ldagger/internal/Provider;

    .line 2900
    .line 2901
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2902
    .line 2903
    .line 2904
    move-result-object v2

    .line 2905
    move-object v10, v2

    .line 2906
    check-cast v10, Landroidx/camera/camera2/impl/LowLightBoostControl;

    .line 2907
    .line 2908
    new-instance v2, Lokhttp3/Headers$Builder;

    .line 2909
    .line 2910
    const/16 v11, 0x9

    .line 2911
    .line 2912
    invoke-direct {v2, v11}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 2913
    .line 2914
    .line 2915
    iget-object v11, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->evCompControlProvider:Ldagger/internal/Provider;

    .line 2916
    .line 2917
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2918
    .line 2919
    .line 2920
    move-result-object v11

    .line 2921
    invoke-virtual {v2, v11}, Lokhttp3/Headers$Builder;->add(Ljava/lang/Object;)V

    .line 2922
    .line 2923
    .line 2924
    iget-object v11, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->flashControlProvider:Ldagger/internal/Provider;

    .line 2925
    .line 2926
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2927
    .line 2928
    .line 2929
    move-result-object v11

    .line 2930
    invoke-virtual {v2, v11}, Lokhttp3/Headers$Builder;->add(Ljava/lang/Object;)V

    .line 2931
    .line 2932
    .line 2933
    iget-object v11, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->focusMeteringControlProvider:Ldagger/internal/Provider;

    .line 2934
    .line 2935
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2936
    .line 2937
    .line 2938
    move-result-object v11

    .line 2939
    invoke-virtual {v2, v11}, Lokhttp3/Headers$Builder;->add(Ljava/lang/Object;)V

    .line 2940
    .line 2941
    .line 2942
    iget-object v11, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->state3AControlProvider:Ldagger/internal/Provider;

    .line 2943
    .line 2944
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2945
    .line 2946
    .line 2947
    move-result-object v11

    .line 2948
    invoke-virtual {v2, v11}, Lokhttp3/Headers$Builder;->add(Ljava/lang/Object;)V

    .line 2949
    .line 2950
    .line 2951
    iget-object v11, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->stillCaptureRequestControlProvider:Ldagger/internal/Provider;

    .line 2952
    .line 2953
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2954
    .line 2955
    .line 2956
    move-result-object v11

    .line 2957
    invoke-virtual {v2, v11}, Lokhttp3/Headers$Builder;->add(Ljava/lang/Object;)V

    .line 2958
    .line 2959
    .line 2960
    iget-object v11, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->torchControlProvider:Ldagger/internal/Provider;

    .line 2961
    .line 2962
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2963
    .line 2964
    .line 2965
    move-result-object v11

    .line 2966
    invoke-virtual {v2, v11}, Lokhttp3/Headers$Builder;->add(Ljava/lang/Object;)V

    .line 2967
    .line 2968
    .line 2969
    iget-object v11, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->lowLightBoostControlProvider:Ldagger/internal/Provider;

    .line 2970
    .line 2971
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2972
    .line 2973
    .line 2974
    move-result-object v11

    .line 2975
    invoke-virtual {v2, v11}, Lokhttp3/Headers$Builder;->add(Ljava/lang/Object;)V

    .line 2976
    .line 2977
    .line 2978
    iget-object v11, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->videoUsageControlProvider:Ldagger/internal/Provider;

    .line 2979
    .line 2980
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2981
    .line 2982
    .line 2983
    move-result-object v11

    .line 2984
    invoke-virtual {v2, v11}, Lokhttp3/Headers$Builder;->add(Ljava/lang/Object;)V

    .line 2985
    .line 2986
    .line 2987
    iget-object v11, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->zoomControlProvider:Ldagger/internal/Provider;

    .line 2988
    .line 2989
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2990
    .line 2991
    .line 2992
    move-result-object v11

    .line 2993
    invoke-virtual {v2, v11}, Lokhttp3/Headers$Builder;->add(Ljava/lang/Object;)V

    .line 2994
    .line 2995
    .line 2996
    iget-object v2, v2, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 2997
    .line 2998
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2999
    .line 3000
    .line 3001
    move-result v11

    .line 3002
    if-eqz v11, :cond_f

    .line 3003
    .line 3004
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 3005
    .line 3006
    :goto_e
    move-object v11, v2

    .line 3007
    goto :goto_f

    .line 3008
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 3009
    .line 3010
    .line 3011
    move-result v11

    .line 3012
    if-ne v11, v5, :cond_10

    .line 3013
    .line 3014
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3015
    .line 3016
    .line 3017
    move-result-object v2

    .line 3018
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 3019
    .line 3020
    .line 3021
    move-result-object v2

    .line 3022
    goto :goto_e

    .line 3023
    :cond_10
    new-instance v5, Ljava/util/HashSet;

    .line 3024
    .line 3025
    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3026
    .line 3027
    .line 3028
    invoke-static {v5}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 3029
    .line 3030
    .line 3031
    move-result-object v2

    .line 3032
    goto :goto_e

    .line 3033
    :goto_f
    iget-object v2, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideCamera2CameraControlProvider:Ldagger/internal/Provider;

    .line 3034
    .line 3035
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3036
    .line 3037
    .line 3038
    move-result-object v2

    .line 3039
    move-object v12, v2

    .line 3040
    check-cast v12, Landroidx/camera/camera2/interop/Camera2CameraControl;

    .line 3041
    .line 3042
    iget-object v2, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraStateAdapterProvider:Ldagger/internal/Provider;

    .line 3043
    .line 3044
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3045
    .line 3046
    .line 3047
    move-result-object v2

    .line 3048
    move-object v13, v2

    .line 3049
    check-cast v13, Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 3050
    .line 3051
    iget-object v14, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraInternalAdapterProvider:Lokhttp3/ConnectionPool;

    .line 3052
    .line 3053
    iget-object v15, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 3054
    .line 3055
    iget-object v2, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraInfoAdapterProvider:Ldagger/internal/Provider;

    .line 3056
    .line 3057
    iget-object v5, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideEncoderProfilesProvider:Ldagger/internal/Provider;

    .line 3058
    .line 3059
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3060
    .line 3061
    .line 3062
    move-result-object v5

    .line 3063
    move-object/from16 v17, v5

    .line 3064
    .line 3065
    check-cast v17, Landroidx/camera/core/impl/EncoderProfilesProvider;

    .line 3066
    .line 3067
    iget-object v5, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraPipeCameraPropertiesProvider:Ldagger/internal/Provider;

    .line 3068
    .line 3069
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3070
    .line 3071
    .line 3072
    move-result-object v5

    .line 3073
    move-object/from16 v18, v5

    .line 3074
    .line 3075
    check-cast v18, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 3076
    .line 3077
    iget-object v5, v7, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 3078
    .line 3079
    move-object/from16 v19, v5

    .line 3080
    .line 3081
    check-cast v19, Landroidx/camera/core/CameraXConfig;

    .line 3082
    .line 3083
    iget-object v3, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraGraphConfigProvider:Ldagger/internal/Provider;

    .line 3084
    .line 3085
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3086
    .line 3087
    .line 3088
    move-result-object v3

    .line 3089
    move-object/from16 v20, v3

    .line 3090
    .line 3091
    check-cast v20, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;

    .line 3092
    .line 3093
    iget-object v3, v7, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 3094
    .line 3095
    check-cast v3, Landroid/content/Context;

    .line 3096
    .line 3097
    sget-object v5, Landroidx/camera/camera2/impl/DisplayInfoManager;->Companion:Landroidx/camera/camera2/impl/MeteringRepeating$Builder;

    .line 3098
    .line 3099
    invoke-virtual {v5, v3}, Landroidx/camera/camera2/impl/MeteringRepeating$Builder;->getInstance(Landroid/content/Context;)Landroidx/camera/camera2/impl/DisplayInfoManager;

    .line 3100
    .line 3101
    .line 3102
    move-result-object v22

    .line 3103
    move-object v5, v0

    .line 3104
    move-object/from16 v16, v2

    .line 3105
    .line 3106
    move-object/from16 v21, v3

    .line 3107
    .line 3108
    move-object v6, v4

    .line 3109
    move-object v7, v9

    .line 3110
    move-object v9, v1

    .line 3111
    invoke-direct/range {v5 .. v22}, Landroidx/camera/camera2/impl/UseCaseManager;-><init>(Landroidx/camera/camera2/pipe/CameraPipeImpl;Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;Landroidx/cardview/widget/CardView$1;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/impl/LowLightBoostControl;Ljava/util/Set;Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/camera/camera2/adapter/CameraStateAdapter;Lokhttp3/ConnectionPool;Ljavax/inject/Provider;Ljavax/inject/Provider;Landroidx/camera/core/impl/EncoderProfilesProvider;Landroidx/camera/camera2/impl/CameraPipeCameraProperties;Landroidx/camera/core/CameraXConfig;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Landroid/content/Context;Landroidx/camera/camera2/impl/DisplayInfoManager;)V

    .line 3112
    .line 3113
    .line 3114
    goto/16 :goto_7

    .line 3115
    .line 3116
    :pswitch_3c
    new-instance v6, Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    .line 3117
    .line 3118
    iget-object v7, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraConfig:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 3119
    .line 3120
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3121
    .line 3122
    .line 3123
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->useCaseManagerProvider:Ldagger/internal/Provider;

    .line 3124
    .line 3125
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3126
    .line 3127
    .line 3128
    move-result-object v0

    .line 3129
    move-object v8, v0

    .line 3130
    check-cast v8, Landroidx/camera/camera2/impl/UseCaseManager;

    .line 3131
    .line 3132
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraInfoAdapterProvider:Ldagger/internal/Provider;

    .line 3133
    .line 3134
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3135
    .line 3136
    .line 3137
    move-result-object v0

    .line 3138
    move-object v9, v0

    .line 3139
    check-cast v9, Landroidx/camera/core/impl/CameraInfoInternal;

    .line 3140
    .line 3141
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraControlAdapterProvider:Ldagger/internal/Provider;

    .line 3142
    .line 3143
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3144
    .line 3145
    .line 3146
    move-result-object v0

    .line 3147
    move-object v10, v0

    .line 3148
    check-cast v10, Landroidx/camera/core/impl/CameraControlInternal;

    .line 3149
    .line 3150
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->provideUseCaseThreadsProvider:Ldagger/internal/Provider;

    .line 3151
    .line 3152
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3153
    .line 3154
    .line 3155
    move-result-object v0

    .line 3156
    move-object v11, v0

    .line 3157
    check-cast v11, Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 3158
    .line 3159
    iget-object v0, v3, Landroidx/camera/camera2/config/DaggerCameraAppComponent$CameraComponentImpl;->cameraStateAdapterProvider:Ldagger/internal/Provider;

    .line 3160
    .line 3161
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3162
    .line 3163
    .line 3164
    move-result-object v0

    .line 3165
    move-object v12, v0

    .line 3166
    check-cast v12, Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 3167
    .line 3168
    invoke-direct/range {v6 .. v12}, Landroidx/camera/camera2/adapter/CameraInternalAdapter;-><init>(Lcom/fsck/k9/mailstore/LocalStore$8;Landroidx/camera/camera2/impl/UseCaseManager;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/CameraControlInternal;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/adapter/CameraStateAdapter;)V

    .line 3169
    .line 3170
    .line 3171
    move-object v4, v6

    .line 3172
    :cond_11
    :goto_10
    return-object v4

    .line 3173
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1c
        :pswitch_12
    .end packed-switch

    .line 3174
    .line 3175
    .line 3176
    .line 3177
    .line 3178
    .line 3179
    .line 3180
    .line 3181
    :pswitch_data_1
    .packed-switch 0x0
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

    .line 3182
    .line 3183
    .line 3184
    .line 3185
    .line 3186
    .line 3187
    .line 3188
    .line 3189
    .line 3190
    .line 3191
    .line 3192
    .line 3193
    .line 3194
    .line 3195
    .line 3196
    .line 3197
    .line 3198
    .line 3199
    .line 3200
    .line 3201
    .line 3202
    .line 3203
    .line 3204
    .line 3205
    .line 3206
    .line 3207
    .line 3208
    .line 3209
    .line 3210
    .line 3211
    .line 3212
    .line 3213
    .line 3214
    .line 3215
    .line 3216
    .line 3217
    .line 3218
    .line 3219
    .line 3220
    .line 3221
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    .line 3222
    .line 3223
    .line 3224
    .line 3225
    .line 3226
    .line 3227
    .line 3228
    .line 3229
    .line 3230
    .line 3231
    .line 3232
    .line 3233
    .line 3234
    .line 3235
    .line 3236
    .line 3237
    .line 3238
    .line 3239
    .line 3240
    .line 3241
    .line 3242
    .line 3243
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch
.end method

.method public getIndex(Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/collection/MutableObjectIntMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectIntMap;->findKeyIndex(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/collection/MutableObjectIntMap;->values:[I

    .line 12
    .line 13
    aget p0, p0, p1

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, -0x1

    .line 17
    return p0
.end method

.method public insert(IIIIIIZZZI)V
    .locals 9

    .line 1
    iget-object v0, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [J

    .line 4
    .line 5
    iget v1, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 6
    .line 7
    add-int/lit8 v2, v1, 0x3

    .line 8
    .line 9
    iput v2, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 10
    .line 11
    array-length v3, v0

    .line 12
    if-gt v3, v2, :cond_0

    .line 13
    .line 14
    mul-int/lit8 v3, v3, 0x2

    .line 15
    .line 16
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v0, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, [J

    .line 29
    .line 30
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 35
    .line 36
    :cond_0
    iget-object p0, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, [J

    .line 39
    .line 40
    int-to-long v2, p2

    .line 41
    const/16 p2, 0x20

    .line 42
    .line 43
    shl-long/2addr v2, p2

    .line 44
    int-to-long v4, p3

    .line 45
    const-wide v6, 0xffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    and-long/2addr v4, v6

    .line 51
    or-long/2addr v2, v4

    .line 52
    aput-wide v2, p0, v1

    .line 53
    .line 54
    add-int/lit8 p3, v1, 0x1

    .line 55
    .line 56
    int-to-long v2, p4

    .line 57
    shl-long/2addr v2, p2

    .line 58
    int-to-long v4, p5

    .line 59
    and-long/2addr v4, v6

    .line 60
    or-long/2addr v2, v4

    .line 61
    aput-wide v2, p0, p3

    .line 62
    .line 63
    add-int/lit8 p2, v1, 0x2

    .line 64
    .line 65
    move/from16 p3, p9

    .line 66
    .line 67
    int-to-long v2, p3

    .line 68
    const/16 p3, 0x3f

    .line 69
    .line 70
    shl-long/2addr v2, p3

    .line 71
    move/from16 p3, p8

    .line 72
    .line 73
    int-to-long v4, p3

    .line 74
    const/16 p3, 0x3e

    .line 75
    .line 76
    shl-long/2addr v4, p3

    .line 77
    or-long/2addr v2, v4

    .line 78
    move/from16 p3, p7

    .line 79
    .line 80
    int-to-long v4, p3

    .line 81
    const/16 p3, 0x3d

    .line 82
    .line 83
    shl-long/2addr v4, p3

    .line 84
    or-long/2addr v2, v4

    .line 85
    const-wide/high16 v4, 0x1000000000000000L

    .line 86
    .line 87
    or-long/2addr v2, v4

    .line 88
    const/4 p3, 0x0

    .line 89
    const/16 v0, 0x3ff

    .line 90
    .line 91
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    int-to-long v4, p3

    .line 96
    const/16 p3, 0x32

    .line 97
    .line 98
    shl-long/2addr v4, p3

    .line 99
    or-long/2addr v2, v4

    .line 100
    const v4, 0x1ffffff

    .line 101
    .line 102
    .line 103
    and-int v5, p6, v4

    .line 104
    .line 105
    int-to-long v6, v5

    .line 106
    const/16 v8, 0x19

    .line 107
    .line 108
    shl-long/2addr v6, v8

    .line 109
    or-long/2addr v2, v6

    .line 110
    and-int/2addr p1, v4

    .line 111
    int-to-long v6, p1

    .line 112
    or-long/2addr v2, v6

    .line 113
    aput-wide v2, p0, p2

    .line 114
    .line 115
    if-gez p6, :cond_1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_1
    const/4 p1, -0x1

    .line 119
    move/from16 p2, p10

    .line 120
    .line 121
    if-eq p2, p1, :cond_2

    .line 122
    .line 123
    move p1, p2

    .line 124
    goto :goto_0

    .line 125
    :cond_2
    add-int/lit8 p1, v1, -0x3

    .line 126
    .line 127
    :goto_0
    if-ltz p1, :cond_4

    .line 128
    .line 129
    add-int/lit8 p2, p1, 0x2

    .line 130
    .line 131
    aget-wide v2, p0, p2

    .line 132
    .line 133
    long-to-int v6, v2

    .line 134
    and-int/2addr v6, v4

    .line 135
    if-ne v6, v5, :cond_3

    .line 136
    .line 137
    sub-int/2addr v1, p1

    .line 138
    div-int/lit8 v1, v1, 0x3

    .line 139
    .line 140
    sget p1, Landroidx/compose/ui/spatial/RectListKt;->$r8$clinit:I

    .line 141
    .line 142
    const-wide v4, -0xffc000000000001L    # -3.8812952307517716E231

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    and-long/2addr v2, v4

    .line 148
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    int-to-long v0, p1

    .line 153
    shl-long/2addr v0, p3

    .line 154
    or-long/2addr v0, v2

    .line 155
    aput-wide v0, p0, p2

    .line 156
    .line 157
    return-void

    .line 158
    :cond_3
    add-int/lit8 p1, p1, -0x3

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_4
    :goto_1
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Shader;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public length()I
    .locals 0

    .line 1
    iget p0, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 2
    .line 3
    return p0
.end method

.method public loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 8

    .line 1
    iget-object p0, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Landroid/widget/ImageView;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatImageView:[I

    .line 11
    .line 12
    invoke-static {p0, p1, v2, p2}, Landroidx/core/view/MenuHostHelper;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/core/view/MenuHostHelper;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-object v1, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v7, v1

    .line 19
    check-cast v7, Landroid/content/res/TypedArray;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v3, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v4, v3

    .line 28
    check-cast v4, Landroid/content/res/TypedArray;

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    move-object v3, p1

    .line 32
    move v5, p2

    .line 33
    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 p2, -0x1

    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {v7, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eq v1, p2, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1, v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object p1, v0

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 68
    .line 69
    invoke-static {p1}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    const/4 p1, 0x2

    .line 73
    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroidx/core/view/MenuHostHelper;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    const/4 p1, 0x3

    .line 87
    invoke-virtual {v7, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    invoke-virtual {v7, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    const/4 p2, 0x0

    .line 98
    invoke-static {p1, p2}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .line 104
    .line 105
    :cond_3
    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->recycle()V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :goto_1
    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->recycle()V

    .line 110
    .line 111
    .line 112
    throw p1
.end method

.method public parseReleaseElement()Z
    .locals 10

    .line 1
    const-string v0, "release"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lde/cketti/changelog/XmlParser;->assertElementStart(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const-string/jumbo v2, "version"

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "Missing attribute: "

    .line 19
    .line 20
    if-eqz v3, :cond_7

    .line 21
    .line 22
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "date"

    .line 27
    .line 28
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string/jumbo v5, "versioncode"

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    if-eqz v6, :cond_6

    .line 40
    .line 41
    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    iget v1, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 50
    .line 51
    const/4 v5, -0x1

    .line 52
    if-eq v1, v5, :cond_0

    .line 53
    .line 54
    if-gt v4, v1, :cond_0

    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/4 v6, 0x2

    .line 68
    const/4 v7, 0x3

    .line 69
    if-ne v1, v6, :cond_4

    .line 70
    .line 71
    const-string v6, "change"

    .line 72
    .line 73
    invoke-virtual {p0, v6}, Lde/cketti/changelog/XmlParser;->assertElementStart(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 77
    .line 78
    .line 79
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    const/4 v8, 0x4

    .line 84
    if-ne v6, v8, :cond_3

    .line 85
    .line 86
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    const-string v8, "\\s+"

    .line 95
    .line 96
    const-string v9, " "

    .line 97
    .line 98
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 103
    .line 104
    .line 105
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    if-ne v8, v7, :cond_2

    .line 110
    .line 111
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    new-instance p0, Lorg/jsoup/SerializationException;

    .line 116
    .line 117
    const-string v0, "Expected </change>"

    .line 118
    .line 119
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p0

    .line 123
    :cond_3
    new-instance p0, Lorg/jsoup/SerializationException;

    .line 124
    .line 125
    const-string v0, "Expected text"

    .line 126
    .line 127
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :cond_4
    :goto_0
    if-ne v1, v7, :cond_1

    .line 132
    .line 133
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_5

    .line 138
    .line 139
    new-instance v0, Lde/cketti/changelog/ReleaseItem;

    .line 140
    .line 141
    invoke-direct {v0, v4, v2, v3, v5}, Lde/cketti/changelog/ReleaseItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 142
    .line 143
    .line 144
    iget-object p0, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p0, Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    const/4 p0, 0x0

    .line 152
    return p0

    .line 153
    :cond_5
    new-instance p0, Lorg/jsoup/SerializationException;

    .line 154
    .line 155
    const-string v0, "<release> tag must contain at least one <change> element"

    .line 156
    .line 157
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p0

    .line 161
    :catch_0
    new-instance p0, Lorg/jsoup/SerializationException;

    .line 162
    .line 163
    const-string v0, "Invalid version code value: "

    .line 164
    .line 165
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p0

    .line 173
    :cond_6
    new-instance p0, Lorg/jsoup/SerializationException;

    .line 174
    .line 175
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p0

    .line 183
    :cond_7
    new-instance p0, Lorg/jsoup/SerializationException;

    .line 184
    .line 185
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p0
.end method

.method public readChangeLog()Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    .line 5
    :goto_0
    :try_start_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "changelog"

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lde/cketti/changelog/XmlParser;->assertElementStart(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lde/cketti/changelog/XmlParser;->parseReleaseElement()Z

    .line 28
    .line 29
    .line 30
    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 v3, 0x1

    .line 35
    if-ne v1, v3, :cond_1

    .line 36
    .line 37
    :goto_1
    iget-object p0, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public remove(I)V
    .locals 3

    .line 1
    iget v0, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 2
    .line 3
    if-ltz v0, :cond_2

    .line 4
    .line 5
    if-ltz p1, :cond_2

    .line 6
    .line 7
    if-ltz p1, :cond_2

    .line 8
    .line 9
    if-gt p1, v0, :cond_2

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sub-int/2addr v0, p1

    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, [B

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget v0, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 26
    .line 27
    sub-int/2addr v0, p1

    .line 28
    iput v0, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 32
    .line 33
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public setImageResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/ImageView;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1, p1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0}, Lde/cketti/changelog/XmlParser;->applySupportImageTint()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public toByteArray()[B
    .locals 3

    .line 1
    iget v0, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, [B

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lde/cketti/changelog/XmlParser;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, [B

    .line 16
    .line 17
    iget p0, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 18
    .line 19
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v0, v1, v3, p0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lokhttp3/Protocol;

    .line 34
    .line 35
    sget-object v2, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    .line 36
    .line 37
    if-ne v1, v2, :cond_0

    .line 38
    .line 39
    const-string v1, "HTTP/1.0"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v1, "HTTP/1.1"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :goto_0
    const/16 v1, 0x20

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v2, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateHasCallbacks(IZ)V
    .locals 8

    .line 1
    const v0, 0x1ffffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p1, v0

    .line 5
    iget-object v1, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [J

    .line 8
    .line 9
    iget p0, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    array-length v3, v1

    .line 13
    add-int/lit8 v3, v3, -0x2

    .line 14
    .line 15
    if-ge v2, v3, :cond_1

    .line 16
    .line 17
    if-ge v2, p0, :cond_1

    .line 18
    .line 19
    add-int/lit8 v3, v2, 0x2

    .line 20
    .line 21
    aget-wide v4, v1, v3

    .line 22
    .line 23
    long-to-int v6, v4

    .line 24
    and-int/2addr v6, v0

    .line 25
    if-ne v6, p1, :cond_0

    .line 26
    .line 27
    const-wide p0, 0x6fffffffffffffffL    # 3.1050361846014175E231

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    and-long/2addr p0, v4

    .line 33
    int-to-long v4, p2

    .line 34
    const-wide/high16 v6, 0x1000000000000000L

    .line 35
    .line 36
    mul-long/2addr v6, v4

    .line 37
    or-long/2addr p0, v6

    .line 38
    const-wide/high16 v6, -0x8000000000000000L

    .line 39
    .line 40
    mul-long/2addr v4, v6

    .line 41
    or-long/2addr p0, v4

    .line 42
    aput-wide p0, v1, v3

    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method public updateSubhierarchy(IIJ)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, [J

    .line 6
    .line 7
    iget-object v2, v0, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, [J

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput-wide p3, v2, v3

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    :cond_0
    if-lez v3, :cond_4

    .line 16
    .line 17
    add-int/lit8 v3, v3, -0x1

    .line 18
    .line 19
    aget-wide v4, v2, v3

    .line 20
    .line 21
    long-to-int v6, v4

    .line 22
    const v7, 0x1ffffff

    .line 23
    .line 24
    .line 25
    and-int/2addr v6, v7

    .line 26
    const/16 v8, 0x19

    .line 27
    .line 28
    shr-long v9, v4, v8

    .line 29
    .line 30
    long-to-int v9, v9

    .line 31
    and-int/2addr v9, v7

    .line 32
    const/16 v10, 0x32

    .line 33
    .line 34
    shr-long/2addr v4, v10

    .line 35
    long-to-int v4, v4

    .line 36
    const/16 v5, 0x3ff

    .line 37
    .line 38
    and-int/2addr v4, v5

    .line 39
    if-ne v4, v5, :cond_1

    .line 40
    .line 41
    iget v4, v0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    mul-int/lit8 v4, v4, 0x3

    .line 45
    .line 46
    add-int/2addr v4, v9

    .line 47
    :goto_0
    if-ltz v9, :cond_4

    .line 48
    .line 49
    :goto_1
    array-length v11, v1

    .line 50
    add-int/lit8 v11, v11, -0x2

    .line 51
    .line 52
    if-ge v9, v11, :cond_0

    .line 53
    .line 54
    if-ge v9, v4, :cond_0

    .line 55
    .line 56
    add-int/lit8 v11, v9, 0x2

    .line 57
    .line 58
    aget-wide v12, v1, v11

    .line 59
    .line 60
    shr-long v14, v12, v8

    .line 61
    .line 62
    long-to-int v14, v14

    .line 63
    and-int/2addr v14, v7

    .line 64
    if-ne v14, v6, :cond_2

    .line 65
    .line 66
    aget-wide v14, v1, v9

    .line 67
    .line 68
    add-int/lit8 v16, v9, 0x1

    .line 69
    .line 70
    move/from16 p3, v7

    .line 71
    .line 72
    move/from16 p4, v8

    .line 73
    .line 74
    aget-wide v7, v1, v16

    .line 75
    .line 76
    const/16 v17, 0x20

    .line 77
    .line 78
    move/from16 v18, v10

    .line 79
    .line 80
    move/from16 v19, v11

    .line 81
    .line 82
    shr-long v10, v14, v17

    .line 83
    .line 84
    long-to-int v10, v10

    .line 85
    add-int v10, v10, p1

    .line 86
    .line 87
    long-to-int v11, v14

    .line 88
    add-int v11, v11, p2

    .line 89
    .line 90
    int-to-long v14, v10

    .line 91
    shl-long v14, v14, v17

    .line 92
    .line 93
    int-to-long v10, v11

    .line 94
    const-wide v20, 0xffffffffL

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    and-long v10, v10, v20

    .line 100
    .line 101
    or-long/2addr v10, v14

    .line 102
    aput-wide v10, v1, v9

    .line 103
    .line 104
    shr-long v10, v7, v17

    .line 105
    .line 106
    long-to-int v10, v10

    .line 107
    add-int v10, v10, p1

    .line 108
    .line 109
    long-to-int v7, v7

    .line 110
    add-int v7, v7, p2

    .line 111
    .line 112
    int-to-long v10, v10

    .line 113
    shl-long v10, v10, v17

    .line 114
    .line 115
    int-to-long v7, v7

    .line 116
    and-long v7, v7, v20

    .line 117
    .line 118
    or-long/2addr v7, v10

    .line 119
    aput-wide v7, v1, v16

    .line 120
    .line 121
    const/16 v7, 0x3f

    .line 122
    .line 123
    shr-long v7, v12, v7

    .line 124
    .line 125
    const-wide/16 v10, 0x1

    .line 126
    .line 127
    and-long/2addr v7, v10

    .line 128
    const/16 v10, 0x3c

    .line 129
    .line 130
    shl-long/2addr v7, v10

    .line 131
    or-long/2addr v7, v12

    .line 132
    aput-wide v7, v1, v19

    .line 133
    .line 134
    shr-long v7, v12, v18

    .line 135
    .line 136
    long-to-int v7, v7

    .line 137
    and-int/2addr v7, v5

    .line 138
    if-lez v7, :cond_3

    .line 139
    .line 140
    add-int/lit8 v7, v3, 0x1

    .line 141
    .line 142
    add-int/lit8 v8, v9, 0x3

    .line 143
    .line 144
    sget v10, Landroidx/compose/ui/spatial/RectListKt;->$r8$clinit:I

    .line 145
    .line 146
    const-wide v10, -0x3fffffe000001L

    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    and-long/2addr v10, v12

    .line 152
    and-int v8, v8, p3

    .line 153
    .line 154
    int-to-long v12, v8

    .line 155
    shl-long v12, v12, p4

    .line 156
    .line 157
    or-long/2addr v10, v12

    .line 158
    aput-wide v10, v2, v3

    .line 159
    .line 160
    move v3, v7

    .line 161
    goto :goto_2

    .line 162
    :cond_2
    move/from16 p3, v7

    .line 163
    .line 164
    move/from16 p4, v8

    .line 165
    .line 166
    move/from16 v18, v10

    .line 167
    .line 168
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x3

    .line 169
    .line 170
    move/from16 v7, p3

    .line 171
    .line 172
    move/from16 v8, p4

    .line 173
    .line 174
    move/from16 v10, v18

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_4
    return-void
.end method

.method public withRect(ILkotlin/jvm/functions/Function4;)V
    .locals 6

    .line 1
    const v0, 0x1ffffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p1, v0

    .line 5
    iget-object v1, p0, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [J

    .line 8
    .line 9
    iget p0, p0, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    array-length v3, v1

    .line 13
    add-int/lit8 v3, v3, -0x2

    .line 14
    .line 15
    if-ge v2, v3, :cond_1

    .line 16
    .line 17
    if-ge v2, p0, :cond_1

    .line 18
    .line 19
    add-int/lit8 v3, v2, 0x2

    .line 20
    .line 21
    aget-wide v3, v1, v3

    .line 22
    .line 23
    long-to-int v3, v3

    .line 24
    and-int/2addr v3, v0

    .line 25
    if-ne v3, p1, :cond_0

    .line 26
    .line 27
    aget-wide p0, v1, v2

    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    aget-wide v0, v1, v2

    .line 32
    .line 33
    const/16 v2, 0x20

    .line 34
    .line 35
    shr-long v3, p0, v2

    .line 36
    .line 37
    long-to-int v3, v3

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    long-to-int p0, p0

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    shr-long v4, v0, v2

    .line 48
    .line 49
    long-to-int p1, v4

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    long-to-int v0, v0

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {p2, v3, p0, p1, v0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    add-int/lit8 v2, v2, 0x3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

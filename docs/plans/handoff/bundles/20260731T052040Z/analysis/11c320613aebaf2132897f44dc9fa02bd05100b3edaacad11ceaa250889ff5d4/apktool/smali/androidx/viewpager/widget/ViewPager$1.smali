.class public final Landroidx/viewpager/widget/ViewPager$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 9
    iput p1, p0, Landroidx/viewpager/widget/ViewPager$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/acra/data/CrashReportDataFactory;)V
    .locals 0

    .line 1
    const/16 p1, 0xc

    .line 2
    .line 3
    iput p1, p0, Landroidx/viewpager/widget/ViewPager$1;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    iget p0, p0, Landroidx/viewpager/widget/ViewPager$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, -0x1

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lorg/acra/startup/Report;

    .line 10
    .line 11
    iget-object p0, p1, Lorg/acra/startup/Report;->file:Ljava/io/File;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 14
    .line 15
    .line 16
    move-result-wide p0

    .line 17
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p2, Lorg/acra/startup/Report;

    .line 22
    .line 23
    iget-object p1, p2, Lorg/acra/startup/Report;->file:Ljava/io/File;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    :pswitch_0
    check-cast p1, Ljava/io/File;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 41
    .line 42
    .line 43
    move-result-wide p0

    .line 44
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p2, Ljava/io/File;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    .line 51
    .line 52
    .line 53
    move-result-wide p1

    .line 54
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    return p0

    .line 63
    :pswitch_1
    check-cast p1, Lorg/acra/collector/Collector;

    .line 64
    .line 65
    :try_start_0
    invoke-interface {p1}, Lorg/acra/collector/Collector;->getOrder()Lorg/acra/collector/Collector$Order;

    .line 66
    .line 67
    .line 68
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    sget-object p0, Lorg/acra/collector/Collector$Order;->NORMAL:Lorg/acra/collector/Collector$Order;

    .line 71
    .line 72
    :goto_0
    check-cast p2, Lorg/acra/collector/Collector;

    .line 73
    .line 74
    :try_start_1
    invoke-interface {p2}, Lorg/acra/collector/Collector;->getOrder()Lorg/acra/collector/Collector$Order;

    .line 75
    .line 76
    .line 77
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    goto :goto_1

    .line 79
    :catch_1
    sget-object p1, Lorg/acra/collector/Collector$Order;->NORMAL:Lorg/acra/collector/Collector$Order;

    .line 80
    .line 81
    :goto_1
    invoke-static {p0, p1}, Landroidx/room/Room;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    return p0

    .line 86
    :pswitch_2
    check-cast p1, Lokio/internal/ZipEntry;

    .line 87
    .line 88
    iget-object p0, p1, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    .line 89
    .line 90
    check-cast p2, Lokio/internal/ZipEntry;

    .line 91
    .line 92
    iget-object p1, p2, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    .line 93
    .line 94
    invoke-static {p0, p1}, Landroidx/room/Room;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    return p0

    .line 99
    :pswitch_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    new-instance p0, Ljava/lang/ClassCastException;

    .line 103
    .line 104
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :pswitch_4
    check-cast p2, Lcoil3/network/okhttp/internal/OkHttpNetworkFetcherServiceLoaderTarget;

    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    const/4 p0, 0x2

    .line 114
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p1, Lcoil3/network/okhttp/internal/OkHttpNetworkFetcherServiceLoaderTarget;

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-interface {p0, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    return p0

    .line 128
    :pswitch_5
    check-cast p1, Landroidx/room/util/TableInfo$Index;

    .line 129
    .line 130
    iget-object p0, p1, Landroidx/room/util/TableInfo$Index;->name:Ljava/lang/String;

    .line 131
    .line 132
    check-cast p2, Landroidx/room/util/TableInfo$Index;

    .line 133
    .line 134
    iget-object p1, p2, Landroidx/room/util/TableInfo$Index;->name:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {p0, p1}, Landroidx/room/Room;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    return p0

    .line 141
    :pswitch_6
    check-cast p1, Landroidx/room/util/TableInfo$Column;

    .line 142
    .line 143
    iget-object p0, p1, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 144
    .line 145
    check-cast p2, Landroidx/room/util/TableInfo$Column;

    .line 146
    .line 147
    iget-object p1, p2, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {p0, p1}, Landroidx/room/Room;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    return p0

    .line 154
    :pswitch_7
    check-cast p1, Ljava/util/Map$Entry;

    .line 155
    .line 156
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    check-cast p0, Ljava/lang/Integer;

    .line 161
    .line 162
    check-cast p2, Ljava/util/Map$Entry;

    .line 163
    .line 164
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Ljava/lang/Integer;

    .line 169
    .line 170
    invoke-static {p0, p1}, Landroidx/room/Room;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    return p0

    .line 175
    :pswitch_8
    check-cast p1, Ljava/util/Map$Entry;

    .line 176
    .line 177
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    check-cast p0, Ljava/lang/Integer;

    .line 182
    .line 183
    check-cast p2, Ljava/util/Map$Entry;

    .line 184
    .line 185
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Ljava/lang/Integer;

    .line 190
    .line 191
    invoke-static {p0, p1}, Landroidx/room/Room;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    return p0

    .line 196
    :pswitch_9
    check-cast p1, Landroidx/recyclerview/widget/GapWorker$Task;

    .line 197
    .line 198
    check-cast p2, Landroidx/recyclerview/widget/GapWorker$Task;

    .line 199
    .line 200
    iget-object p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    .line 201
    .line 202
    if-nez p0, :cond_0

    .line 203
    .line 204
    move v3, v0

    .line 205
    goto :goto_2

    .line 206
    :cond_0
    move v3, v1

    .line 207
    :goto_2
    iget-object v4, p2, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    .line 208
    .line 209
    if-nez v4, :cond_1

    .line 210
    .line 211
    move v4, v0

    .line 212
    goto :goto_3

    .line 213
    :cond_1
    move v4, v1

    .line 214
    :goto_3
    if-eq v3, v4, :cond_2

    .line 215
    .line 216
    if-nez p0, :cond_3

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_2
    iget-boolean p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->neededNextFrame:Z

    .line 220
    .line 221
    iget-boolean v3, p2, Landroidx/recyclerview/widget/GapWorker$Task;->neededNextFrame:Z

    .line 222
    .line 223
    if-eq p0, v3, :cond_4

    .line 224
    .line 225
    if-eqz p0, :cond_7

    .line 226
    .line 227
    :cond_3
    move v0, v2

    .line 228
    goto :goto_4

    .line 229
    :cond_4
    iget p0, p2, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    .line 230
    .line 231
    iget v0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    .line 232
    .line 233
    sub-int v0, p0, v0

    .line 234
    .line 235
    if-eqz v0, :cond_5

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_5
    iget p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    .line 239
    .line 240
    iget p1, p2, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    .line 241
    .line 242
    sub-int v0, p0, p1

    .line 243
    .line 244
    if-eqz v0, :cond_6

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_6
    move v0, v1

    .line 248
    :cond_7
    :goto_4
    return v0

    .line 249
    :pswitch_a
    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 250
    .line 251
    check-cast p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 252
    .line 253
    iget p0, p1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 254
    .line 255
    iget p1, p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 256
    .line 257
    sub-int/2addr p0, p1

    .line 258
    return p0

    .line 259
    :pswitch_b
    check-cast p1, Landroid/view/View;

    .line 260
    .line 261
    check-cast p2, Landroid/view/View;

    .line 262
    .line 263
    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 264
    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    .line 266
    .line 267
    .line 268
    move-result p0

    .line 269
    invoke-virtual {p2}, Landroid/view/View;->getZ()F

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    cmpl-float p2, p0, p1

    .line 274
    .line 275
    if-lez p2, :cond_8

    .line 276
    .line 277
    move v0, v2

    .line 278
    goto :goto_5

    .line 279
    :cond_8
    cmpg-float p0, p0, p1

    .line 280
    .line 281
    if-gez p0, :cond_9

    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_9
    move v0, v1

    .line 285
    :goto_5
    return v0

    .line 286
    :pswitch_c
    check-cast p1, Landroidx/constraintlayout/core/SolverVariable;

    .line 287
    .line 288
    check-cast p2, Landroidx/constraintlayout/core/SolverVariable;

    .line 289
    .line 290
    iget p0, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 291
    .line 292
    iget p1, p2, Landroidx/constraintlayout/core/SolverVariable;->id:I

    .line 293
    .line 294
    sub-int/2addr p0, p1

    .line 295
    return p0

    .line 296
    :pswitch_d
    check-cast p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 297
    .line 298
    check-cast p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 299
    .line 300
    iget p0, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 301
    .line 302
    iget p1, p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 303
    .line 304
    sub-int/2addr p0, p1

    .line 305
    return p0

    .line 306
    nop

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
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

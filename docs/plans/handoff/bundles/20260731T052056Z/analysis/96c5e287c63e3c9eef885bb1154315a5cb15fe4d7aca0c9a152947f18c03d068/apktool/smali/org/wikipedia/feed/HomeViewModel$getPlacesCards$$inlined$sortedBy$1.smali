.class public final Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $savedLocation$inlined:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 10
    iput p1, p0, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$$inlined$sortedBy$1;->$r8$classId:I

    iput-object p2, p0, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$$inlined$sortedBy$1;->$savedLocation$inlined:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$$inlined$sortedBy$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$$inlined$sortedBy$1;->$savedLocation$inlined:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$$inlined$sortedBy$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$$inlined$sortedBy$1;->$savedLocation$inlined:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 9
    .line 10
    check-cast p0, Lorg/wikipedia/places/PlacesFragmentViewModel;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/wikipedia/places/PlacesFragmentViewModel;->lastKnownLocation:Landroid/location/Location;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/NearbyPage;->getLocation()Landroid/location/Location;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object p1, v1

    .line 31
    :goto_0
    check-cast p2, Lorg/wikipedia/dataclient/page/NearbyPage;

    .line 32
    .line 33
    iget-object p0, p0, Lorg/wikipedia/places/PlacesFragmentViewModel;->lastKnownLocation:Landroid/location/Location;

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/page/NearbyPage;->getLocation()Landroid/location/Location;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2, p0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :cond_1
    invoke-static {p1, v1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0

    .line 54
    :pswitch_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 55
    .line 56
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p1, p0}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    return p0

    .line 87
    :pswitch_1
    check-cast p0, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$$inlined$sortedBy$1;

    .line 88
    .line 89
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$$inlined$sortedBy$1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 97
    .line 98
    iget p0, p1, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 99
    .line 100
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p2, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 105
    .line 106
    iget p1, p2, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    .line 107
    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p0, p1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    :goto_1
    return p0

    .line 117
    :pswitch_2
    check-cast p0, Ljava/util/Comparator;

    .line 118
    .line 119
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-eqz p0, :cond_3

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_3
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 127
    .line 128
    iget-object p0, p1, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 129
    .line 130
    check-cast p2, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 131
    .line 132
    iget-object p1, p2, Landroidx/compose/ui/semantics/SemanticsNode;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 133
    .line 134
    sget-object p2, Landroidx/compose/ui/node/LayoutNode;->ZComparator:Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda0;

    .line 135
    .line 136
    invoke-virtual {p2, p0, p1}, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda0;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    :goto_2
    return p0

    .line 141
    :pswitch_3
    check-cast p1, Ljava/lang/Number;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    check-cast p0, Landroidx/collection/MutableLongIntMap;

    .line 148
    .line 149
    invoke-virtual {p0, v0, v1}, Landroidx/collection/MutableLongIntMap;->get(J)I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p2, Ljava/lang/Number;

    .line 158
    .line 159
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 160
    .line 161
    .line 162
    move-result-wide v0

    .line 163
    invoke-virtual {p0, v0, v1}, Landroidx/collection/MutableLongIntMap;->get(J)I

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-static {p1, p0}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    return p0

    .line 176
    :pswitch_4
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 177
    .line 178
    check-cast p0, Landroid/location/Location;

    .line 179
    .line 180
    new-instance v0, Landroid/location/Location;

    .line 181
    .line 182
    const-string v1, ""

    .line 183
    .line 184
    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object v2, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->coordinates:Ljava/util/List;

    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    const/4 v3, 0x0

    .line 193
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;

    .line 198
    .line 199
    iget-wide v4, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;->lat:D

    .line 200
    .line 201
    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 202
    .line 203
    .line 204
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->coordinates:Ljava/util/List;

    .line 205
    .line 206
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;

    .line 211
    .line 212
    iget-wide v4, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;->lon:D

    .line 213
    .line 214
    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 226
    .line 227
    new-instance v0, Landroid/location/Location;

    .line 228
    .line 229
    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v1, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->coordinates:Ljava/util/List;

    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;

    .line 242
    .line 243
    iget-wide v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;->lat:D

    .line 244
    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 246
    .line 247
    .line 248
    iget-object p2, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->coordinates:Ljava/util/List;

    .line 249
    .line 250
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;

    .line 255
    .line 256
    iget-wide v1, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;->lon:D

    .line 257
    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    .line 262
    .line 263
    .line 264
    move-result p0

    .line 265
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-static {p1, p0}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 270
    .line 271
    .line 272
    move-result p0

    .line 273
    return p0

    .line 274
    nop

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

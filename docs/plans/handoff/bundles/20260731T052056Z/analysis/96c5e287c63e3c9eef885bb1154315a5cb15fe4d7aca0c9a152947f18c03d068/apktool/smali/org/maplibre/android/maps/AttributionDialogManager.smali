.class public final Lorg/maplibre/android/maps/AttributionDialogManager;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public attributionSet:Ljava/util/Set;

.field public final context:Landroid/content/Context;

.field public dialog:Landroid/app/AlertDialog;

.field public final maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    .line 1
    iget-object p1, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->attributionSet:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [Lorg/maplibre/android/attribution/Attribution;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, [Lorg/maplibre/android/attribution/Attribution;

    .line 14
    .line 15
    aget-object p1, p1, p2

    .line 16
    .line 17
    iget-object p1, p1, Lorg/maplibre/android/attribution/Attribution;->url:Ljava/lang/String;

    .line 18
    .line 19
    const-string p2, "https://www.mapbox.com/map-feedback"

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const/4 v0, 0x1

    .line 26
    iget-object v1, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->context:Landroid/content/Context;

    .line 27
    .line 28
    const-string v2, "https://apps.mapbox.com/feedback"

    .line 29
    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_5

    .line 37
    .line 38
    :cond_0
    invoke-static {}, Lorg/maplibre/android/MapLibre;->getApiKey()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-object p0, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 51
    .line 52
    iget-object v2, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    .line 53
    .line 54
    invoke-virtual {v2}, Lorg/maplibre/android/maps/Transform;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const/4 v3, 0x3

    .line 59
    const/4 v4, 0x2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    iget-object v6, v2, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 67
    .line 68
    invoke-virtual {v6}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    .line 69
    .line 70
    .line 71
    move-result-wide v6

    .line 72
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    iget-object v7, v2, Lorg/maplibre/android/camera/CameraPosition;->target:Lorg/maplibre/android/geometry/LatLng;

    .line 77
    .line 78
    invoke-virtual {v7}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    .line 79
    .line 80
    .line 81
    move-result-wide v7

    .line 82
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    iget-wide v8, v2, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    .line 87
    .line 88
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    iget-wide v9, v2, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    .line 93
    .line 94
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    iget-wide v10, v2, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    .line 99
    .line 100
    double-to-int v2, v10

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const/4 v10, 0x5

    .line 106
    new-array v10, v10, [Ljava/lang/Object;

    .line 107
    .line 108
    const/4 v11, 0x0

    .line 109
    aput-object v6, v10, v11

    .line 110
    .line 111
    aput-object v7, v10, v0

    .line 112
    .line 113
    aput-object v8, v10, v4

    .line 114
    .line 115
    aput-object v9, v10, v3

    .line 116
    .line 117
    const/4 v6, 0x4

    .line 118
    aput-object v2, v10, v6

    .line 119
    .line 120
    const-string v2, "/%f/%f/%f/%f/%d"

    .line 121
    .line 122
    invoke-static {v5, v2, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {p2, v2}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 127
    .line 128
    .line 129
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    if-eqz v2, :cond_2

    .line 138
    .line 139
    const-string v5, "referrer"

    .line 140
    .line 141
    invoke-virtual {p2, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 142
    .line 143
    .line 144
    :cond_2
    if-eqz p1, :cond_3

    .line 145
    .line 146
    const-string v2, "access_token"

    .line 147
    .line 148
    invoke-virtual {p2, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 149
    .line 150
    .line 151
    :cond_3
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    if-eqz p0, :cond_4

    .line 156
    .line 157
    const-string p1, "getUri"

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object p0, p0, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    .line 163
    .line 164
    check-cast p0, Lorg/maplibre/android/maps/NativeMapView;

    .line 165
    .line 166
    invoke-virtual {p0}, Lorg/maplibre/android/maps/NativeMapView;->getStyleUri()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    const-string p1, "^(.*://[^:^/]*)/(.*)/(.*)"

    .line 171
    .line 172
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_4

    .line 185
    .line 186
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    const-string v2, "owner"

    .line 195
    .line 196
    invoke-virtual {p2, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    const-string v2, "id"

    .line 201
    .line 202
    invoke-virtual {p1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 203
    .line 204
    .line 205
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    :cond_5
    :try_start_0
    new-instance p0, Landroid/content/Intent;

    .line 214
    .line 215
    const-string p2, "android.intent.action.VIEW"

    .line 216
    .line 217
    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :catch_0
    move-exception p0

    .line 232
    const p1, 0x7f1203b1

    .line 233
    .line 234
    .line 235
    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 240
    .line 241
    .line 242
    invoke-static {p0}, Lkotlin/text/UStringsKt;->strictModeViolation(Ljava/lang/Exception;)V

    .line 243
    .line 244
    .line 245
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 247
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 248
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 249
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto/16 :goto_2

    .line 250
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    iget-object v2, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {v2}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 252
    const-string v3, "getSources"

    invoke-virtual {v2, v3}, Lorg/maplibre/android/maps/Style;->validateState(Ljava/lang/String;)V

    .line 253
    iget-object v2, v2, Lorg/maplibre/android/maps/Style;->nativeMap:Lorg/maplibre/android/maps/NativeMap;

    check-cast v2, Lorg/maplibre/android/maps/NativeMapView;

    invoke-virtual {v2}, Lorg/maplibre/android/maps/NativeMapView;->getSources()Ljava/util/List;

    move-result-object v2

    .line 254
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/maplibre/android/style/sources/Source;

    .line 255
    invoke-virtual {v3}, Lorg/maplibre/android/style/sources/Source;->getAttribution()Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 257
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    :cond_2
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 259
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    array-length v2, p1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, p1, v3

    .line 262
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 263
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 264
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 265
    new-instance v1, Lorg/maplibre/android/attribution/AttributionParser;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2, v2}, Lorg/maplibre/android/attribution/AttributionParser;-><init>(Ljava/lang/String;ZZ)V

    .line 266
    invoke-virtual {v1}, Lorg/maplibre/android/attribution/AttributionParser;->parseAttributions()V

    .line 267
    iget-object p1, v1, Lorg/maplibre/android/attribution/AttributionParser;->attributions:Ljava/util/LinkedHashSet;

    .line 268
    :goto_2
    iput-object p1, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->attributionSet:Ljava/util/Set;

    .line 269
    iget-object p1, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->context:Landroid/content/Context;

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_5

    .line 270
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    :cond_5
    if-nez v0, :cond_7

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    iget-object v1, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->attributionSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/maplibre/android/attribution/Attribution;

    .line 273
    iget-object v2, v2, Lorg/maplibre/android/attribution/Attribution;->title:Ljava/lang/String;

    .line 274
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 275
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 276
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1203b2

    .line 277
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 278
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f0c0331

    invoke-direct {v2, p1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 279
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/maps/AttributionDialogManager;->dialog:Landroid/app/AlertDialog;

    :cond_7
    return-void

    .line 280
    :cond_8
    const-string p0, "Using builder without providing attribution data"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    return-void
.end method

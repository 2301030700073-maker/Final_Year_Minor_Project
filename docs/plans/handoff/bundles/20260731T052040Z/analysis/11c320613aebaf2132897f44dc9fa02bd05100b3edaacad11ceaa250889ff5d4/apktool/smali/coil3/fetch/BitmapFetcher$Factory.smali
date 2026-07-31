.class public final Lcoil3/fetch/BitmapFetcher$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcoil3/fetch/Fetcher$Factory;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcoil3/fetch/BitmapFetcher$Factory;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lcoil3/request/Options;Lcoil3/RealImageLoader;)Lcoil3/fetch/Fetcher;
    .locals 5

    .line 1
    iget p0, p0, Lcoil3/fetch/BitmapFetcher$Factory;->$r8$classId:I

    .line 2
    .line 3
    const/4 p3, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "android_asset"

    .line 7
    .line 8
    const-string v3, "file"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, Lcoil3/Uri;

    .line 15
    .line 16
    iget-object p0, p1, Lcoil3/Uri;->scheme:Ljava/lang/String;

    .line 17
    .line 18
    const-string p3, "android.resource"

    .line 19
    .line 20
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v4, Lcoil3/fetch/DataUriFetcher;

    .line 28
    .line 29
    const/4 p0, 0x4

    .line 30
    invoke-direct {v4, p1, p2, p0}, Lcoil3/fetch/DataUriFetcher;-><init>(Lcoil3/Uri;Lcoil3/request/Options;I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-object v4

    .line 34
    :pswitch_0
    check-cast p1, Lcoil3/Uri;

    .line 35
    .line 36
    iget-object p0, p1, Lcoil3/Uri;->scheme:Ljava/lang/String;

    .line 37
    .line 38
    const-string p3, "jar:file"

    .line 39
    .line 40
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance v4, Lcoil3/fetch/DataUriFetcher;

    .line 48
    .line 49
    const/4 p0, 0x3

    .line 50
    invoke-direct {v4, p1, p2, p0}, Lcoil3/fetch/DataUriFetcher;-><init>(Lcoil3/Uri;Lcoil3/request/Options;I)V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-object v4

    .line 54
    :pswitch_1
    check-cast p1, Lcoil3/Uri;

    .line 55
    .line 56
    iget-object p0, p1, Lcoil3/Uri;->scheme:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_4

    .line 65
    .line 66
    :cond_2
    iget-object p0, p1, Lcoil3/Uri;->path:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz p0, :cond_4

    .line 69
    .line 70
    sget-object p0, Lcoil3/util/Utils_androidKt;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 71
    .line 72
    iget-object p0, p1, Lcoil3/Uri;->scheme:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_3

    .line 79
    .line 80
    invoke-static {p1}, Lcoil3/UriKt;->getPathSegments(Lcoil3/Uri;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    new-instance v4, Lcoil3/fetch/DataUriFetcher;

    .line 96
    .line 97
    invoke-direct {v4, p1, p2, v1}, Lcoil3/fetch/DataUriFetcher;-><init>(Lcoil3/Uri;Lcoil3/request/Options;I)V

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_2
    return-object v4

    .line 101
    :pswitch_2
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 102
    .line 103
    new-instance p0, Lcoil3/fetch/DrawableFetcher;

    .line 104
    .line 105
    invoke-direct {p0, p1, p2, v0}, Lcoil3/fetch/DrawableFetcher;-><init>(Ljava/lang/Object;Lcoil3/request/Options;I)V

    .line 106
    .line 107
    .line 108
    return-object p0

    .line 109
    :pswitch_3
    check-cast p1, Lcoil3/Uri;

    .line 110
    .line 111
    iget-object p0, p1, Lcoil3/Uri;->scheme:Ljava/lang/String;

    .line 112
    .line 113
    const-string p3, "data"

    .line 114
    .line 115
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-nez p0, :cond_5

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    new-instance v4, Lcoil3/fetch/DataUriFetcher;

    .line 123
    .line 124
    invoke-direct {v4, p1, p2, v0}, Lcoil3/fetch/DataUriFetcher;-><init>(Lcoil3/Uri;Lcoil3/request/Options;I)V

    .line 125
    .line 126
    .line 127
    :goto_3
    return-object v4

    .line 128
    :pswitch_4
    check-cast p1, Lcoil3/Uri;

    .line 129
    .line 130
    iget-object p0, p1, Lcoil3/Uri;->scheme:Ljava/lang/String;

    .line 131
    .line 132
    const-string p3, "content"

    .line 133
    .line 134
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-nez p0, :cond_6

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_6
    new-instance v4, Lcoil3/fetch/ContentUriFetcher;

    .line 142
    .line 143
    invoke-direct {v4, p1, p2}, Lcoil3/fetch/ContentUriFetcher;-><init>(Lcoil3/Uri;Lcoil3/request/Options;)V

    .line 144
    .line 145
    .line 146
    :goto_4
    return-object v4

    .line 147
    :pswitch_5
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 148
    .line 149
    new-instance p0, Lcoil3/fetch/DrawableFetcher;

    .line 150
    .line 151
    invoke-direct {p0, p1, p2, v1}, Lcoil3/fetch/DrawableFetcher;-><init>(Ljava/lang/Object;Lcoil3/request/Options;I)V

    .line 152
    .line 153
    .line 154
    return-object p0

    .line 155
    :pswitch_6
    check-cast p1, [B

    .line 156
    .line 157
    new-instance p0, Lcoil3/fetch/DrawableFetcher;

    .line 158
    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcoil3/fetch/DrawableFetcher;-><init>(Ljava/lang/Object;Lcoil3/request/Options;I)V

    .line 160
    .line 161
    .line 162
    return-object p0

    .line 163
    :pswitch_7
    check-cast p1, Lcoil3/Uri;

    .line 164
    .line 165
    sget-object p0, Lcoil3/util/Utils_androidKt;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 166
    .line 167
    iget-object p0, p1, Lcoil3/Uri;->scheme:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    if-eqz p0, :cond_7

    .line 174
    .line 175
    invoke-static {p1}, Lcoil3/UriKt;->getPathSegments(Lcoil3/Uri;)Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    if-eqz p0, :cond_7

    .line 188
    .line 189
    new-instance v4, Lcoil3/fetch/DataUriFetcher;

    .line 190
    .line 191
    invoke-direct {v4, p1, p2, p3}, Lcoil3/fetch/DataUriFetcher;-><init>(Lcoil3/Uri;Lcoil3/request/Options;I)V

    .line 192
    .line 193
    .line 194
    :cond_7
    return-object v4

    .line 195
    :pswitch_8
    check-cast p1, Landroid/graphics/Bitmap;

    .line 196
    .line 197
    new-instance p0, Lcoil3/fetch/BitmapFetcher;

    .line 198
    .line 199
    invoke-direct {p0, p1}, Lcoil3/fetch/BitmapFetcher;-><init>(Landroid/graphics/Bitmap;)V

    .line 200
    .line 201
    .line 202
    return-object p0

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
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

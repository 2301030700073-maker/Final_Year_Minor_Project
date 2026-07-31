.class public final Lorg/wikipedia/readinglist/ReadingListHeaderView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/wikipedia/readinglist/ReadingListHeaderView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lorg/wikipedia/readinglist/database/ReadingList;",
        "readingList",
        "",
        "setReadingList",
        "(Lorg/wikipedia/readinglist/database/ReadingList;)V",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final binding:Lokhttp3/MultipartBody$Builder;

.field public final imageViews:Ljava/util/List;

.field public readingList:Lorg/wikipedia/readinglist/database/ReadingList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const v0, 0x7f0c05e7

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    const p2, 0x7f09053e

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/ImageView;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    const p2, 0x7f09053f

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    const p2, 0x7f090540

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 48
    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    const p2, 0x7f090541

    .line 52
    .line 53
    .line 54
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 59
    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    const p2, 0x7f090542

    .line 63
    .line 64
    .line 65
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 70
    .line 71
    if-eqz v5, :cond_3

    .line 72
    .line 73
    const p2, 0x7f090543

    .line 74
    .line 75
    .line 76
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    check-cast v6, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 81
    .line 82
    if-eqz v6, :cond_3

    .line 83
    .line 84
    const p2, 0x7f090544

    .line 85
    .line 86
    .line 87
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    check-cast v7, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 92
    .line 93
    if-eqz v7, :cond_3

    .line 94
    .line 95
    const p2, 0x7f090545

    .line 96
    .line 97
    .line 98
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    check-cast v8, Landroid/widget/LinearLayout;

    .line 103
    .line 104
    if-eqz v8, :cond_3

    .line 105
    .line 106
    const p2, 0x7f090546

    .line 107
    .line 108
    .line 109
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    if-eqz v9, :cond_3

    .line 114
    .line 115
    new-instance p2, Lokhttp3/MultipartBody$Builder;

    .line 116
    .line 117
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object v0, p2, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object v8, p2, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 123
    .line 124
    iput-object v9, p2, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 125
    .line 126
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListHeaderView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 127
    .line 128
    const/4 p2, 0x6

    .line 129
    new-array p2, p2, [Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 130
    .line 131
    const/4 v0, 0x0

    .line 132
    aput-object v2, p2, v0

    .line 133
    .line 134
    const/4 v0, 0x1

    .line 135
    aput-object v3, p2, v0

    .line 136
    .line 137
    const/4 v2, 0x2

    .line 138
    aput-object v4, p2, v2

    .line 139
    .line 140
    const/4 v2, 0x3

    .line 141
    aput-object v5, p2, v2

    .line 142
    .line 143
    const/4 v2, 0x4

    .line 144
    aput-object v6, p2, v2

    .line 145
    .line 146
    const/4 v2, 0x5

    .line 147
    aput-object v7, p2, v2

    .line 148
    .line 149
    invoke-static {p2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListHeaderView;->imageViews:Ljava/util/List;

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    if-nez p2, :cond_2

    .line 160
    .line 161
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 162
    .line 163
    const/4 v2, -0x1

    .line 164
    invoke-direct {p2, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    .line 169
    .line 170
    new-instance p2, Landroid/util/TypedValue;

    .line 171
    .line 172
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    const v2, 0x7f0404da

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_0

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_0
    move-object p2, v1

    .line 190
    :goto_0
    if-eqz p2, :cond_1

    .line 191
    .line 192
    iget p1, p2, Landroid/util/TypedValue;->data:I

    .line 193
    .line 194
    const/16 p2, 0x30

    .line 195
    .line 196
    invoke-static {p1, p2}, Lorg/jsoup/Jsoup;->getPowerGradient(II)Landroid/graphics/drawable/PaintDrawable;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {v9, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListHeaderView;->clearThumbnails()V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_1
    const-string p0, "Attribute not found; ID=2130969818"

    .line 208
    .line 209
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v1

    .line 213
    :cond_2
    return-void

    .line 214
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    const-string p1, "Missing required view with ID: "

    .line 223
    .line 224
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v1
.end method


# virtual methods
.method public final clearThumbnails()V
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListHeaderView;->imageViews:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x1c

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {v0, v2, v2, v1}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public final setReadingList(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListHeaderView;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 5
    .line 6
    iget-object p1, p1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x0

    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListHeaderView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p0, v2, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p0, v2, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Landroid/widget/ImageView;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object p1, v2, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, v2, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Landroid/widget/ImageView;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListHeaderView;->readingList:Lorg/wikipedia/readinglist/database/ReadingList;

    .line 49
    .line 50
    if-eqz p1, :cond_5

    .line 51
    .line 52
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/ReadingListHeaderView;->clearThumbnails()V

    .line 53
    .line 54
    .line 55
    iget-object p1, p1, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 56
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 77
    .line 78
    iget-object v1, v1, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 79
    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    move-object v2, v1

    .line 106
    check-cast v2, Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_3

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListHeaderView;->imageViews:Ljava/util/List;

    .line 120
    .line 121
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_5

    .line 134
    .line 135
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Lkotlin/Pair;

    .line 140
    .line 141
    iget-object v0, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 147
    .line 148
    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast p1, Ljava/lang/String;

    .line 151
    .line 152
    const/4 v1, 0x0

    .line 153
    const/16 v2, 0x1c

    .line 154
    .line 155
    invoke-static {v0, p1, v1, v2}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_5
    return-void
.end method

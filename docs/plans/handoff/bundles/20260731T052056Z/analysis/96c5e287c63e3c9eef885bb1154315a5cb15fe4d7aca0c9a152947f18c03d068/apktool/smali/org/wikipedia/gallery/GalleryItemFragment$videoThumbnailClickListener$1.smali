.class public final Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public loading:Z

.field public final synthetic this$0:Lorg/wikipedia/gallery/GalleryItemFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/gallery/GalleryItemFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1;->loading:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1;->this$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/wikipedia/gallery/ImageInfo;->getBestDerivativeForSize()Lorg/wikipedia/gallery/ImageInfo$Derivative;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Lorg/wikipedia/gallery/ImageInfo$Derivative;->src:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->getMediaInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_6

    .line 33
    .line 34
    iget-object v0, v0, Lorg/wikipedia/gallery/ImageInfo;->originalUrl:Ljava/lang/String;

    .line 35
    .line 36
    :cond_2
    const/4 v1, 0x1

    .line 37
    iput-boolean v1, p0, Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1;->loading:Z

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "Loading video from url: "

    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object v2, v2, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Landroid/widget/VideoView;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Landroid/widget/MediaController;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-direct {v2, v4}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    iput-object v2, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->mediaController:Landroid/widget/MediaController;

    .line 79
    .line 80
    const/4 v2, 0x4

    .line 81
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    const/4 v2, 0x3

    .line 88
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    iget-object v2, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->mediaController:Landroid/widget/MediaController;

    .line 96
    .line 97
    if-eqz v2, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    const-string v5, "dimen"

    .line 108
    .line 109
    const-string v6, "android"

    .line 110
    .line 111
    const-string v7, "navigation_bar_height"

    .line 112
    .line 113
    invoke-virtual {v4, v7, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-lez v4, :cond_4

    .line 118
    .line 119
    invoke-static {v4}, Lokio/Okio__OkioKt;->getDimension(I)F

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    goto :goto_0

    .line 124
    :cond_4
    const/4 v4, 0x0

    .line 125
    :goto_0
    invoke-static {v4}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    float-to-int v4, v4

    .line 130
    invoke-virtual {v2, v3, v3, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 131
    .line 132
    .line 133
    :cond_5
    :goto_1
    invoke-virtual {p1, v1}, Lorg/wikipedia/gallery/GalleryItemFragment;->onLoading(Z)V

    .line 134
    .line 135
    .line 136
    iget-object v1, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v1, Landroid/widget/VideoView;

    .line 144
    .line 145
    iget-object v2, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->mediaController:Landroid/widget/MediaController;

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v1, Landroid/widget/VideoView;

    .line 158
    .line 159
    new-instance v2, Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1$$ExternalSyntheticLambda0;

    .line 160
    .line 161
    invoke-direct {v2, p1, p0}, Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/gallery/GalleryItemFragment;Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 165
    .line 166
    .line 167
    iget-object v1, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    iget-object v1, v1, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v1, Landroid/widget/VideoView;

    .line 175
    .line 176
    new-instance v2, Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1$$ExternalSyntheticLambda1;

    .line 177
    .line 178
    invoke-direct {v2, p1, p0}, Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/gallery/GalleryItemFragment;Lorg/wikipedia/gallery/GalleryItemFragment$videoThumbnailClickListener$1;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 182
    .line 183
    .line 184
    iget-object p0, p1, Lorg/wikipedia/gallery/GalleryItemFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 185
    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast p0, Landroid/widget/VideoView;

    .line 192
    .line 193
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 201
    .line 202
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iget-object v0, v0, Lorg/wikipedia/WikipediaApp;->userAgent$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 207
    .line 208
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Ljava/lang/String;

    .line 213
    .line 214
    const-string v1, "User-Agent"

    .line 215
    .line 216
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, p1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 224
    .line 225
    .line 226
    :cond_6
    :goto_2
    return-void
.end method

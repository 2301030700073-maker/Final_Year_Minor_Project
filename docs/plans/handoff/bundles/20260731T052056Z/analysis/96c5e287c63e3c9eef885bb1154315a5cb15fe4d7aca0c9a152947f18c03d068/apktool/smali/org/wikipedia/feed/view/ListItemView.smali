.class public final Lorg/wikipedia/feed/view/ListItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lokhttp3/MultipartBody$Builder;

.field public callback:Lorg/wikipedia/feed/view/ListItemView$Callback;

.field public historyEntry:Lorg/wikipedia/history/HistoryEntry;

.field public title:Lorg/wikipedia/page/PageTitle;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0c05d4

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f090735

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lorg/wikipedia/views/GraphView;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    const v0, 0x7f090736

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const v0, 0x7f090737

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/widget/TextView;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    const v0, 0x7f090738

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    const v0, 0x7f090739

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Landroid/widget/TextView;

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    .line 71
    .line 72
    invoke-direct {v0, p0, v1, v2, v3}, Lokhttp3/MultipartBody$Builder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lorg/wikipedia/feed/view/ListItemView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 79
    .line 80
    .line 81
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 82
    .line 83
    const/4 v2, -0x1

    .line 84
    const/4 v3, -0x2

    .line 85
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    const/high16 v1, 0x41800000    # 16.0f

    .line 92
    .line 93
    invoke-static {v1}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-static {v1}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    const/4 v3, 0x0

    .line 102
    invoke-virtual {p0, v3, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 103
    .line 104
    .line 105
    new-array v1, v0, [Landroid/view/View;

    .line 106
    .line 107
    aput-object p0, v1, v3

    .line 108
    .line 109
    aget-object v1, v1, v3

    .line 110
    .line 111
    new-instance v2, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda0;

    .line 112
    .line 113
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 117
    .line 118
    .line 119
    new-instance v1, Landroid/util/TypedValue;

    .line 120
    .line 121
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    const v3, 0x7f040554

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_0

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_0
    move-object v1, p2

    .line 139
    :goto_0
    if-eqz v1, :cond_1

    .line 140
    .line 141
    iget p2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 142
    .line 143
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 144
    .line 145
    .line 146
    new-instance p2, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 147
    .line 148
    const/16 v0, 0xc

    .line 149
    .line 150
    invoke-direct {p2, v0, p0, p1}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    new-instance p1, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;

    .line 157
    .line 158
    const/4 p2, 0x2

    .line 159
    invoke-direct {p1, p2, p0}, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_1
    const-string p0, "Attribute not found; ID=2130969940"

    .line 167
    .line 168
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p2

    .line 172
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    const-string p1, "Missing required view with ID: "

    .line 181
    .line 182
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p2
.end method

.method public static final setHistoryEntry$lambda$0(Lorg/wikipedia/feed/view/ListItemView;Z)V
    .locals 0

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/view/ListItemView;->setViewsGreyedOut(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final setViewsGreyedOut(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/high16 p1, 0x3f000000    # 0.5f

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    :goto_0
    iget-object p0, p0, Lorg/wikipedia/feed/view/ListItemView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 9
    .line 10
    iget-object v0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final getCallback()Lorg/wikipedia/feed/view/ListItemView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/feed/view/ListItemView;->callback:Lorg/wikipedia/feed/view/ListItemView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHistoryEntry()Lorg/wikipedia/history/HistoryEntry;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/feed/view/ListItemView;->historyEntry:Lorg/wikipedia/history/HistoryEntry;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setHistoryEntry(Lorg/wikipedia/history/HistoryEntry;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lorg/wikipedia/feed/view/ListItemView;->historyEntry:Lorg/wikipedia/history/HistoryEntry;

    .line 2
    .line 3
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/view/ListItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/view/ListItemView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lorg/wikipedia/feed/view/ListItemView;->setImage(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lcoil3/util/BitmapsKt;->coroutineScope$default(Landroid/view/View;)Lkotlinx/coroutines/CoroutineScope;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    const/16 v2, 0x12

    .line 49
    .line 50
    invoke-direct {v1, v2, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 54
    .line 55
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_0

    .line 64
    .line 65
    const/4 p0, 0x1

    .line 66
    invoke-virtual {v1, p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->onFinish(Z)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_0
    new-instance p0, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 71
    .line 72
    invoke-direct {p0, v1}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/page/PageAvailableOfflineHandler$Callback;)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 76
    .line 77
    const/16 v3, 0x13

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    invoke-direct {v2, p1, v1, v4, v3}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 81
    .line 82
    .line 83
    const/4 p1, 0x2

    .line 84
    invoke-static {v0, p0, v4, v2, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final setImage(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/wikipedia/feed/view/ListItemView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 8
    .line 9
    const/16 p1, 0x8

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    const/16 v1, 0x1c

    .line 29
    .line 30
    invoke-static {p0, p1, v0, v1}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/feed/view/ListItemView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/feed/view/ListItemView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

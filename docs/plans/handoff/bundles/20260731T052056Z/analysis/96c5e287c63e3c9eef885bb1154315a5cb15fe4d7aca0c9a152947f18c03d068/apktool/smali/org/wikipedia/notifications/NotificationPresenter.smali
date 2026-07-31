.class public final Lorg/wikipedia/notifications/NotificationPresenter;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static lastPermissionRequestTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static addAction(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;Lorg/wikipedia/notifications/db/Notification$Link;Lorg/wikipedia/notifications/db/Notification;)V
    .locals 6

    .line 1
    iget-object v0, p2, Lorg/wikipedia/notifications/db/Notification$Link;->url:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p2, Lorg/wikipedia/notifications/db/Notification$Link;->tooltip:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v2, "/index.php?"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const-string v2, "diff="

    .line 18
    .line 19
    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const-string v2, "title="

    .line 26
    .line 27
    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lorg/wikipedia/notifications/NotificationPresenter;->addActionForDiffLink(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;Lorg/wikipedia/notifications/db/Notification$Link;Lorg/wikipedia/notifications/db/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 42
    .line 43
    iget-object v2, p2, Lorg/wikipedia/notifications/db/Notification$Link;->url:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const-string v4, "android.intent.action.VIEW"

    .line 53
    .line 54
    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 55
    .line 56
    .line 57
    iget-wide v4, p3, Lorg/wikipedia/notifications/db/Notification;->id:J

    .line 58
    .line 59
    iget-object p3, p3, Lorg/wikipedia/notifications/db/Notification;->type:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v0, v4, v5, p3}, Lorg/wikipedia/notifications/NotificationPresenter;->addIntentExtras(Landroid/content/Intent;JLjava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    const/high16 v0, 0x8000000

    .line 66
    .line 67
    invoke-static {p0, v3, p3, v0}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    if-lez p3, :cond_1

    .line 76
    .line 77
    sget-object p2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 78
    .line 79
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    sget-object p3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 89
    .line 90
    iget-object p2, p2, Lorg/wikipedia/notifications/db/Notification$Link;->label:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    :goto_0
    invoke-virtual {p1, p2, p0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public static addActionForDiffLink(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;Lorg/wikipedia/notifications/db/Notification$Link;Lorg/wikipedia/notifications/db/Notification;)V
    .locals 20

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    iget-object v2, v0, Lorg/wikipedia/notifications/db/Notification$Link;->url:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v3, "title"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "prev"

    .line 21
    .line 22
    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const-string v5, ""

    .line 27
    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    move-object v4, v5

    .line 31
    :cond_0
    invoke-static {v4}, Lkotlin/text/StringsKt__StringsJVMKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-wide/16 v6, -0x1

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v8

    .line 43
    move-wide v14, v8

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-wide v14, v6

    .line 46
    :goto_0
    const-string v4, "diff"

    .line 47
    .line 48
    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move-object v5, v2

    .line 56
    :goto_1
    invoke-static {v5}, Lkotlin/text/StringsKt__StringsJVMKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 63
    .line 64
    .line 65
    move-result-wide v6

    .line 66
    :cond_3
    move-wide/from16 v16, v6

    .line 67
    .line 68
    sget-object v10, Lorg/wikipedia/diff/ArticleEditDetailsActivity;->Companion:Lokio/ByteString$Companion;

    .line 69
    .line 70
    new-instance v12, Lorg/wikipedia/page/PageTitle;

    .line 71
    .line 72
    new-instance v2, Lorg/wikipedia/dataclient/WikiSite;

    .line 73
    .line 74
    iget-object v4, v0, Lorg/wikipedia/notifications/db/Notification$Link;->url:Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {v2, v4}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    invoke-direct {v12, v3, v2, v4}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/16 v18, 0x0

    .line 84
    .line 85
    const/16 v19, 0x20

    .line 86
    .line 87
    const/4 v13, -0x1

    .line 88
    move-object/from16 v11, p0

    .line 89
    .line 90
    invoke-static/range {v10 .. v19}, Lokio/ByteString$Companion;->newIntent$default(Lokio/ByteString$Companion;Landroid/content/Context;Lorg/wikipedia/page/PageTitle;IJJLorg/wikipedia/Constants$InvokeSource;I)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iget-wide v3, v1, Lorg/wikipedia/notifications/db/Notification;->id:J

    .line 95
    .line 96
    iget-object v1, v1, Lorg/wikipedia/notifications/db/Notification;->type:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v2, v3, v4, v1}, Lorg/wikipedia/notifications/NotificationPresenter;->addIntentExtras(Landroid/content/Intent;JLjava/lang/String;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const/high16 v2, 0x8000000

    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    invoke-static {v11, v3, v1, v2}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 110
    .line 111
    iget-object v0, v0, Lorg/wikipedia/notifications/db/Notification$Link;->label:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    move-object/from16 v2, p1

    .line 122
    .line 123
    invoke-virtual {v2, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public static addIntentExtras(Landroid/content/Intent;JLjava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "notificationId"

    .line 5
    .line 6
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string p1, "notificationType"

    .line 11
    .line 12
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "invokeSource"

    .line 17
    .line 18
    sget-object p2, Lorg/wikipedia/Constants$InvokeSource;->NOTIFICATION:Lorg/wikipedia/Constants$InvokeSource;

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public static drawNotificationBitmap(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/high16 v1, 0x41c00000    # 24.0f

    .line 7
    .line 8
    invoke-static {v1}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/high16 v2, 0x41600000    # 14.0f

    .line 13
    .line 14
    invoke-static {v2}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    mul-int/lit8 v3, v1, 0x2

    .line 19
    .line 20
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 21
    .line 22
    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v5, Landroid/graphics/Canvas;

    .line 30
    .line 31
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 32
    .line 33
    .line 34
    new-instance v6, Landroid/graphics/Paint;

    .line 35
    .line 36
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v7, 0x1

    .line 40
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->getColor(I)I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    const/4 v8, 0x0

    .line 55
    if-lez v7, :cond_0

    .line 56
    .line 57
    const-string v7, "sans-serif-medium"

    .line 58
    .line 59
    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 64
    .line 65
    .line 66
    const/high16 v7, 0x41400000    # 12.0f

    .line 67
    .line 68
    invoke-static {v7}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 73
    .line 74
    .line 75
    const/high16 v7, 0x3f800000    # 1.0f

    .line 76
    .line 77
    invoke-static {v7}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    .line 83
    .line 84
    new-instance v7, Landroid/graphics/Rect;

    .line 85
    .line 86
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    invoke-virtual {v6, v0, v8, v9, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 94
    .line 95
    .line 96
    const/high16 v9, 0x40800000    # 4.0f

    .line 97
    .line 98
    invoke-static {v9}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    int-to-float v10, v1

    .line 103
    iget v11, v7, Landroid/graphics/Rect;->right:I

    .line 104
    .line 105
    iget v12, v7, Landroid/graphics/Rect;->left:I

    .line 106
    .line 107
    sub-int/2addr v11, v12

    .line 108
    div-int/lit8 v11, v11, 0x2

    .line 109
    .line 110
    int-to-float v11, v11

    .line 111
    sub-float/2addr v10, v11

    .line 112
    int-to-float v3, v3

    .line 113
    sub-float/2addr v3, v9

    .line 114
    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    sub-float/2addr v3, v11

    .line 119
    invoke-virtual {v5, v0, v10, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 120
    .line 121
    .line 122
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 123
    .line 124
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    .line 126
    .line 127
    new-instance v0, Landroid/graphics/RectF;

    .line 128
    .line 129
    iget v11, v7, Landroid/graphics/Rect;->left:I

    .line 130
    .line 131
    int-to-float v11, v11

    .line 132
    add-float/2addr v11, v10

    .line 133
    sub-float/2addr v11, v9

    .line 134
    iget v12, v7, Landroid/graphics/Rect;->top:I

    .line 135
    .line 136
    int-to-float v12, v12

    .line 137
    add-float/2addr v12, v3

    .line 138
    sub-float/2addr v12, v9

    .line 139
    iget v13, v7, Landroid/graphics/Rect;->right:I

    .line 140
    .line 141
    int-to-float v13, v13

    .line 142
    add-float/2addr v10, v13

    .line 143
    add-float/2addr v10, v9

    .line 144
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 145
    .line 146
    int-to-float v7, v7

    .line 147
    add-float/2addr v3, v7

    .line 148
    add-float/2addr v3, v9

    .line 149
    invoke-direct {v0, v11, v12, v10, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v0, v9, v9, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 153
    .line 154
    .line 155
    :cond_0
    move/from16 v0, p2

    .line 156
    .line 157
    invoke-static {p0, v0}, Lkotlin/TuplesKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->getColor(I)I

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 176
    .line 177
    .line 178
    invoke-static {v0}, Lkotlin/UnsignedKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    new-instance p1, Landroid/graphics/Rect;

    .line 183
    .line 184
    sub-int v0, v1, v2

    .line 185
    .line 186
    add-int/2addr v1, v2

    .line 187
    mul-int/lit8 v2, v2, 0x2

    .line 188
    .line 189
    invoke-direct {p1, v0, v8, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 190
    .line 191
    .line 192
    const/4 v0, 0x0

    .line 193
    invoke-virtual {v5, p0, v0, p1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 197
    .line 198
    .line 199
    return-object v4
.end method

.method public static getDefaultBuilder(Landroid/content/Context;JLjava/lang/String;Lorg/wikipedia/notifications/NotificationCategory;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 8
    .line 9
    invoke-virtual {p4}, Lorg/wikipedia/notifications/NotificationCategory;->getId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-direct {v0, p0, p4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p4, -0x1

    .line 17
    invoke-virtual {v0, p4}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)V

    .line 18
    .line 19
    .line 20
    const/4 p4, 0x1

    .line 21
    iput p4, v0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 22
    .line 23
    const/16 v1, 0x10

    .line 24
    .line 25
    invoke-virtual {v0, v1, p4}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 26
    .line 27
    .line 28
    sget p4, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->$r8$clinit:I

    .line 29
    .line 30
    new-instance p4, Landroid/content/Intent;

    .line 31
    .line 32
    const-class v1, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;

    .line 33
    .line 34
    invoke-direct {p4, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    const-string v1, "action_notification_cancel"

    .line 38
    .line 39
    invoke-virtual {p4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    move-result-object p4

    .line 43
    const-string v1, "notificationId"

    .line 44
    .line 45
    invoke-virtual {p4, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    const-string v1, "notificationType"

    .line 50
    .line 51
    invoke-virtual {p4, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    long-to-int p1, p1

    .line 59
    const/high16 p2, 0x4000000

    .line 60
    .line 61
    invoke-static {p0, p1, p3, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    iget-object p1, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 66
    .line 67
    iput-object p0, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 68
    .line 69
    return-object v0
.end method

.method public static synthetic getDefaultBuilder$default(Landroid/content/Context;JLorg/wikipedia/notifications/NotificationCategory;I)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    .line 1
    and-int/lit8 v0, p4, 0x4

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "local"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "multiple"

    .line 9
    .line 10
    :goto_0
    and-int/lit8 p4, p4, 0x8

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    sget-object p3, Lorg/wikipedia/notifications/NotificationCategory;->SYSTEM:Lorg/wikipedia/notifications/NotificationCategory;

    .line 15
    .line 16
    :cond_1
    invoke-static {p0, p1, p2, v0, p3}, Lorg/wikipedia/notifications/NotificationPresenter;->getDefaultBuilder(Landroid/content/Context;JLjava/lang/String;Lorg/wikipedia/notifications/NotificationCategory;)Landroidx/core/app/NotificationCompat$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static showNotification(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lorg/wikipedia/util/FileUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

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
    const/high16 v0, 0x8000000

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {p0, v1, p9, v0}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 20
    .line 21
    .line 22
    move-result-object p9

    .line 23
    iput-object p9, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 24
    .line 25
    if-eqz p7, :cond_2

    .line 26
    .line 27
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p7

    .line 31
    if-nez p6, :cond_1

    .line 32
    .line 33
    const-string p6, ""

    .line 34
    .line 35
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 36
    .line 37
    .line 38
    move-result-object p9

    .line 39
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p6, p9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p6

    .line 46
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {p0, p8, p7, p6}, Lorg/wikipedia/notifications/NotificationPresenter;->drawNotificationBitmap(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object p6

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 p6, 0x0

    .line 55
    :goto_0
    invoke-virtual {p1, p6}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 56
    .line 57
    .line 58
    const p6, 0x7f080216

    .line 59
    .line 60
    .line 61
    iget-object p7, p1, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 62
    .line 63
    iput p6, p7, Landroid/app/Notification;->icon:I

    .line 64
    .line 65
    invoke-virtual {p0, p8}, Landroid/content/Context;->getColor(I)I

    .line 66
    .line 67
    .line 68
    move-result p6

    .line 69
    iput p6, p1, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 70
    .line 71
    invoke-static {p3}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    iput-object p3, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 76
    .line 77
    invoke-static {p4}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    iput-object p3, p1, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 82
    .line 83
    new-instance p3, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 84
    .line 85
    const/4 p4, 0x1

    .line 86
    invoke-direct {p3, p4}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-static {p5}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 90
    .line 91
    .line 92
    move-result-object p4

    .line 93
    iput-object p4, p3, Landroidx/core/app/NotificationCompat$InboxStyle;->mTexts:Ljava/lang/Object;

    .line 94
    .line 95
    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)V

    .line 96
    .line 97
    .line 98
    new-instance p3, Landroidx/core/app/NotificationManagerCompat;

    .line 99
    .line 100
    invoke-direct {p3, p0}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p3, p2, p0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.class public final Lorg/wikipedia/util/ShareUtil;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final INSTANCE:Lorg/wikipedia/util/ShareUtil;

.field public static final TOOLBAR_ON_CLICK_LISTENER:Lorg/wikipedia/util/FeedbackUtil$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/util/FeedbackUtil$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/wikipedia/util/FeedbackUtil$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/wikipedia/util/ShareUtil;->TOOLBAR_ON_CLICK_LISTENER:Lorg/wikipedia/util/FeedbackUtil$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    new-instance v0, Lorg/wikipedia/util/ShareUtil;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/wikipedia/util/ShareUtil;->INSTANCE:Lorg/wikipedia/util/ShareUtil;

    .line 15
    .line 16
    return-void
.end method

.method public static composeEmail$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    and-int/lit8 v0, p4, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const p1, 0x7f12091b

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    :cond_0
    and-int/lit8 v0, p4, 0x4

    .line 16
    .line 17
    const-string v1, ""

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    move-object p2, v1

    .line 22
    :cond_1
    and-int/lit8 p4, p4, 0x8

    .line 23
    .line 24
    if-eqz p4, :cond_2

    .line 25
    .line 26
    move-object p3, v1

    .line 27
    :cond_2
    new-instance p4, Landroid/content/Intent;

    .line 28
    .line 29
    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v0, "android.intent.action.SENDTO"

    .line 33
    .line 34
    invoke-virtual {p4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    const-string v0, "?subject="

    .line 47
    .line 48
    const-string v1, "&body="

    .line 49
    .line 50
    const-string v2, "mailto:"

    .line 51
    .line 52
    invoke-static {v2, p1, v0, p2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p4, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catch_0
    move-exception p0

    .line 82
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public static getIntentChooser(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/high16 v0, 0x10000

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 37
    .line 38
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 39
    .line 40
    new-instance v3, Landroid/content/ComponentName;

    .line 41
    .line 42
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 45
    .line 46
    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    const-string v4, "org\\.wikipedia.*"

    .line 57
    .line 58
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_0

    .line 74
    .line 75
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 80
    .line 81
    const/16 v2, 0x18

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    if-lt v1, v2, :cond_3

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-lt v1, p0, :cond_2

    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :cond_2
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    new-array p1, v3, [Landroid/content/ComponentName;

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, [Landroid/os/Parcelable;

    .line 109
    .line 110
    const-string p2, "android.intent.extra.EXCLUDE_COMPONENTS"

    .line 111
    .line 112
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_4

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_6

    .line 138
    .line 139
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 144
    .line 145
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 146
    .line 147
    new-instance v5, Landroid/content/ComponentName;

    .line 148
    .line 149
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 150
    .line 151
    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 152
    .line 153
    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_5

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_5
    new-instance v5, Landroid/content/Intent;

    .line 164
    .line 165
    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 166
    .line 167
    .line 168
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    new-instance v6, Landroid/content/ComponentName;

    .line 175
    .line 176
    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 177
    .line 178
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 179
    .line 180
    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    new-instance v6, Landroid/content/pm/LabeledIntent;

    .line 191
    .line 192
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 193
    .line 194
    iget v7, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 195
    .line 196
    iget v2, v2, Landroid/content/pm/ResolveInfo;->icon:I

    .line 197
    .line 198
    invoke-direct {v6, v5, v4, v7, v2}, Landroid/content/pm/LabeledIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;II)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_6
    new-instance p0, Landroid/content/Intent;

    .line 206
    .line 207
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-static {p0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    if-nez p0, :cond_7

    .line 215
    .line 216
    :goto_2
    const/4 p0, 0x0

    .line 217
    return-object p0

    .line 218
    :cond_7
    new-array p1, v3, [Landroid/os/Parcelable;

    .line 219
    .line 220
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    check-cast p1, [Landroid/os/Parcelable;

    .line 225
    .line 226
    const-string p2, "android.intent.extra.INITIAL_INTENTS"

    .line 227
    .line 228
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    .line 230
    .line 231
    return-object p0
.end method

.method public static getTooltip$default(Landroid/content/Context;Ljava/lang/String;ZIZZIII)Lcom/skydoves/balloon/Balloon;
    .locals 6

    .line 1
    and-int/lit8 p4, p8, 0x8

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move p3, v0

    .line 7
    :cond_0
    and-int/lit16 p4, p8, 0x80

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const p4, 0x7f120510

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const p4, 0x7f120305

    .line 16
    .line 17
    .line 18
    :goto_0
    and-int/lit16 v1, p8, 0x100

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    move p6, v0

    .line 23
    :cond_2
    and-int/lit16 p8, p8, 0x200

    .line 24
    .line 25
    if-eqz p8, :cond_3

    .line 26
    .line 27
    move p7, v0

    .line 28
    :cond_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 29
    .line 30
    .line 31
    move-result-object p8

    .line 32
    const v1, 0x7f0c05e5

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {p8, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p8

    .line 40
    const v1, 0x7f0900b5

    .line 41
    .line 42
    .line 43
    invoke-static {p8, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 48
    .line 49
    if-eqz v3, :cond_f

    .line 50
    .line 51
    const v1, 0x7f09017c

    .line 52
    .line 53
    .line 54
    invoke-static {p8, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Landroid/widget/TextView;

    .line 59
    .line 60
    if-eqz v4, :cond_f

    .line 61
    .line 62
    const v1, 0x7f0906a0

    .line 63
    .line 64
    .line 65
    invoke-static {p8, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Lorg/wikipedia/views/AppTextView;

    .line 70
    .line 71
    if-eqz v5, :cond_f

    .line 72
    .line 73
    check-cast p8, Landroid/widget/LinearLayout;

    .line 74
    .line 75
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    if-eqz p5, :cond_4

    .line 79
    .line 80
    move p1, v0

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    const/16 p1, 0x8

    .line 83
    .line 84
    :goto_1
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    new-instance p4, Landroid/graphics/Rect;

    .line 95
    .line 96
    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 100
    .line 101
    .line 102
    move-result-object p5

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {p5, p1, v0, v1, p4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    .line 115
    .line 116
    .line 117
    move-result p4

    .line 118
    const/high16 p5, 0x42200000    # 40.0f

    .line 119
    .line 120
    invoke-static {p5}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 121
    .line 122
    .line 123
    move-result p5

    .line 124
    add-int/2addr p5, p4

    .line 125
    iput p5, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 126
    .line 127
    invoke-virtual {v3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    .line 129
    .line 130
    const/4 p1, 0x1

    .line 131
    if-lez p7, :cond_5

    .line 132
    .line 133
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object p4

    .line 140
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object p5

    .line 144
    const/4 p6, 0x2

    .line 145
    new-array p6, p6, [Ljava/lang/Object;

    .line 146
    .line 147
    aput-object p4, p6, v0

    .line 148
    .line 149
    aput-object p5, p6, p1

    .line 150
    .line 151
    const p4, 0x7f120a96

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p4, p6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p4

    .line 158
    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    new-instance p4, Lcom/skydoves/balloon/Balloon$Builder;

    .line 162
    .line 163
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 164
    .line 165
    .line 166
    const/high16 p5, -0x80000000

    .line 167
    .line 168
    iput p5, p4, Lcom/skydoves/balloon/Balloon$Builder;->width:I

    .line 169
    .line 170
    new-instance p6, Landroid/graphics/Point;

    .line 171
    .line 172
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 173
    .line 174
    .line 175
    move-result-object p7

    .line 176
    invoke-virtual {p7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 177
    .line 178
    .line 179
    move-result-object p7

    .line 180
    iget p7, p7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 181
    .line 182
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 191
    .line 192
    invoke-direct {p6, p7, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 193
    .line 194
    .line 195
    iget p6, p6, Landroid/graphics/Point;->x:I

    .line 196
    .line 197
    iput p6, p4, Lcom/skydoves/balloon/Balloon$Builder;->maxWidth:I

    .line 198
    .line 199
    iput p5, p4, Lcom/skydoves/balloon/Balloon$Builder;->height:I

    .line 200
    .line 201
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 202
    .line 203
    .line 204
    move-result-object p6

    .line 205
    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 206
    .line 207
    .line 208
    move-result-object p6

    .line 209
    const/high16 p7, 0x41400000    # 12.0f

    .line 210
    .line 211
    invoke-static {p1, p7, p6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 212
    .line 213
    .line 214
    move-result p6

    .line 215
    invoke-static {p6}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 216
    .line 217
    .line 218
    move-result p6

    .line 219
    iput p6, p4, Lcom/skydoves/balloon/Balloon$Builder;->arrowSize:I

    .line 220
    .line 221
    iput p5, p4, Lcom/skydoves/balloon/Balloon$Builder;->arrowWidth:I

    .line 222
    .line 223
    iput p5, p4, Lcom/skydoves/balloon/Balloon$Builder;->arrowHeight:I

    .line 224
    .line 225
    sget-object p6, Lcom/skydoves/balloon/ArrowPositionRules;->ALIGN_BALLOON:Lcom/skydoves/balloon/ArrowPositionRules;

    .line 226
    .line 227
    iput-object p6, p4, Lcom/skydoves/balloon/Balloon$Builder;->arrowPositionRules:Lcom/skydoves/balloon/ArrowPositionRules;

    .line 228
    .line 229
    sget-object p6, Lcom/skydoves/balloon/ArrowOrientationRules;->ALIGN_ANCHOR:Lcom/skydoves/balloon/ArrowOrientationRules;

    .line 230
    .line 231
    iput-object p6, p4, Lcom/skydoves/balloon/Balloon$Builder;->arrowOrientationRules:Lcom/skydoves/balloon/ArrowOrientationRules;

    .line 232
    .line 233
    sget-object p7, Lcom/skydoves/balloon/ArrowOrientation;->BOTTOM:Lcom/skydoves/balloon/ArrowOrientation;

    .line 234
    .line 235
    iput-object p7, p4, Lcom/skydoves/balloon/Balloon$Builder;->arrowOrientation:Lcom/skydoves/balloon/ArrowOrientation;

    .line 236
    .line 237
    const/high16 p7, -0x1000000

    .line 238
    .line 239
    iput p7, p4, Lcom/skydoves/balloon/Balloon$Builder;->backgroundColor:I

    .line 240
    .line 241
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 242
    .line 243
    .line 244
    move-result-object p7

    .line 245
    invoke-virtual {p7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 246
    .line 247
    .line 248
    move-result-object p7

    .line 249
    const/high16 v1, 0x40a00000    # 5.0f

    .line 250
    .line 251
    invoke-static {p1, v1, p7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 252
    .line 253
    .line 254
    move-result p7

    .line 255
    iput p7, p4, Lcom/skydoves/balloon/Balloon$Builder;->cornerRadius:F

    .line 256
    .line 257
    sget-object p7, Lcom/skydoves/balloon/IconGravity;->START:Lcom/skydoves/balloon/IconGravity;

    .line 258
    .line 259
    iput-object p7, p4, Lcom/skydoves/balloon/Balloon$Builder;->iconGravity:Lcom/skydoves/balloon/IconGravity;

    .line 260
    .line 261
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 262
    .line 263
    .line 264
    move-result-object p7

    .line 265
    invoke-virtual {p7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 266
    .line 267
    .line 268
    move-result-object p7

    .line 269
    const/high16 v1, 0x41e00000    # 28.0f

    .line 270
    .line 271
    invoke-static {p1, v1, p7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 272
    .line 273
    .line 274
    move-result p7

    .line 275
    invoke-static {p7}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 276
    .line 277
    .line 278
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 279
    .line 280
    .line 281
    move-result-object p7

    .line 282
    invoke-virtual {p7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 283
    .line 284
    .line 285
    move-result-object p7

    .line 286
    invoke-static {p1, v1, p7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 287
    .line 288
    .line 289
    move-result p7

    .line 290
    invoke-static {p7}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 291
    .line 292
    .line 293
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 294
    .line 295
    .line 296
    move-result-object p7

    .line 297
    invoke-virtual {p7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 298
    .line 299
    .line 300
    move-result-object p7

    .line 301
    const/high16 v1, 0x41000000    # 8.0f

    .line 302
    .line 303
    invoke-static {p1, v1, p7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 304
    .line 305
    .line 306
    move-result p7

    .line 307
    invoke-static {p7}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 308
    .line 309
    .line 310
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 311
    .line 312
    .line 313
    move-result-object p7

    .line 314
    invoke-virtual {p7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 315
    .line 316
    .line 317
    move-result-object p7

    .line 318
    const/high16 v4, 0x40000000    # 2.0f

    .line 319
    .line 320
    invoke-static {p1, v4, p7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 321
    .line 322
    .line 323
    move-result p7

    .line 324
    iput p7, p4, Lcom/skydoves/balloon/Balloon$Builder;->elevation:F

    .line 325
    .line 326
    iput-boolean p1, p4, Lcom/skydoves/balloon/Balloon$Builder;->dismissWhenTouchOutside:Z

    .line 327
    .line 328
    sget-object p7, Lcom/skydoves/balloon/BalloonAnimation;->FADE:Lcom/skydoves/balloon/BalloonAnimation;

    .line 329
    .line 330
    iput-object p7, p4, Lcom/skydoves/balloon/Balloon$Builder;->balloonAnimation:Lcom/skydoves/balloon/BalloonAnimation;

    .line 331
    .line 332
    sget-object p7, Lcom/skydoves/balloon/overlay/BalloonOverlayAnimation;->FADE:Lcom/skydoves/balloon/overlay/BalloonOverlayAnimation;

    .line 333
    .line 334
    iput-object p7, p4, Lcom/skydoves/balloon/Balloon$Builder;->balloonOverlayAnimation:Lcom/skydoves/balloon/overlay/BalloonOverlayAnimation;

    .line 335
    .line 336
    sget-object p7, Lcom/skydoves/balloon/BalloonHighlightAnimation;->NONE:Lcom/skydoves/balloon/BalloonHighlightAnimation;

    .line 337
    .line 338
    iput-object p7, p4, Lcom/skydoves/balloon/Balloon$Builder;->balloonHighlightAnimation:Lcom/skydoves/balloon/BalloonHighlightAnimation;

    .line 339
    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 341
    .line 342
    .line 343
    move-result-object p7

    .line 344
    invoke-virtual {p7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 345
    .line 346
    .line 347
    move-result-object p7

    .line 348
    invoke-virtual {p7}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 349
    .line 350
    .line 351
    move-result p7

    .line 352
    if-ne p7, p1, :cond_6

    .line 353
    .line 354
    move v0, p1

    .line 355
    :cond_6
    iput-boolean v0, p4, Lcom/skydoves/balloon/Balloon$Builder;->isRtlLayout:Z

    .line 356
    .line 357
    if-eqz v0, :cond_7

    .line 358
    .line 359
    const/4 p7, -0x1

    .line 360
    goto :goto_2

    .line 361
    :cond_7
    move p7, p1

    .line 362
    :goto_2
    iput p7, p4, Lcom/skydoves/balloon/Balloon$Builder;->supportRtlLayoutFactor:I

    .line 363
    .line 364
    iput-boolean p1, p4, Lcom/skydoves/balloon/Balloon$Builder;->isFocusable:Z

    .line 365
    .line 366
    const p7, 0x7f080200

    .line 367
    .line 368
    .line 369
    invoke-static {p0, p7}, Lkotlin/TuplesKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 370
    .line 371
    .line 372
    move-result-object p7

    .line 373
    if-eqz p7, :cond_8

    .line 374
    .line 375
    invoke-virtual {p7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    goto :goto_3

    .line 380
    :cond_8
    move-object v0, v2

    .line 381
    :goto_3
    iput-object v0, p4, Lcom/skydoves/balloon/Balloon$Builder;->arrowDrawable:Landroid/graphics/drawable/Drawable;

    .line 382
    .line 383
    if-eqz p7, :cond_b

    .line 384
    .line 385
    iget v0, p4, Lcom/skydoves/balloon/Balloon$Builder;->arrowWidth:I

    .line 386
    .line 387
    if-ne v0, p5, :cond_9

    .line 388
    .line 389
    invoke-virtual {p7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-lez v0, :cond_9

    .line 394
    .line 395
    invoke-virtual {p7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    iput v0, p4, Lcom/skydoves/balloon/Balloon$Builder;->arrowWidth:I

    .line 400
    .line 401
    :cond_9
    iget v0, p4, Lcom/skydoves/balloon/Balloon$Builder;->arrowHeight:I

    .line 402
    .line 403
    if-ne v0, p5, :cond_a

    .line 404
    .line 405
    invoke-virtual {p7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    if-lez v0, :cond_a

    .line 410
    .line 411
    invoke-virtual {p7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    iput v0, p4, Lcom/skydoves/balloon/Balloon$Builder;->arrowHeight:I

    .line 416
    .line 417
    :cond_a
    iget v0, p4, Lcom/skydoves/balloon/Balloon$Builder;->arrowSize:I

    .line 418
    .line 419
    if-ne v0, p5, :cond_b

    .line 420
    .line 421
    invoke-virtual {p7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 422
    .line 423
    .line 424
    move-result p5

    .line 425
    invoke-virtual {p7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 426
    .line 427
    .line 428
    move-result p7

    .line 429
    invoke-static {p5, p7}, Ljava/lang/Math;->max(II)I

    .line 430
    .line 431
    .line 432
    move-result p5

    .line 433
    iput p5, p4, Lcom/skydoves/balloon/Balloon$Builder;->arrowSize:I

    .line 434
    .line 435
    :cond_b
    sget-object p5, Lcom/skydoves/balloon/ArrowPositionRules;->ALIGN_ANCHOR:Lcom/skydoves/balloon/ArrowPositionRules;

    .line 436
    .line 437
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    iput-object p5, p4, Lcom/skydoves/balloon/Balloon$Builder;->arrowPositionRules:Lcom/skydoves/balloon/ArrowPositionRules;

    .line 441
    .line 442
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    iput-object p6, p4, Lcom/skydoves/balloon/Balloon$Builder;->arrowOrientationRules:Lcom/skydoves/balloon/ArrowOrientationRules;

    .line 446
    .line 447
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 448
    .line 449
    .line 450
    move-result-object p5

    .line 451
    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 452
    .line 453
    .line 454
    move-result-object p5

    .line 455
    const/high16 p6, 0x41800000    # 16.0f

    .line 456
    .line 457
    invoke-static {p1, p6, p5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 458
    .line 459
    .line 460
    move-result p5

    .line 461
    invoke-static {p5}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 462
    .line 463
    .line 464
    move-result p5

    .line 465
    iput p5, p4, Lcom/skydoves/balloon/Balloon$Builder;->arrowSize:I

    .line 466
    .line 467
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 468
    .line 469
    .line 470
    move-result-object p5

    .line 471
    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 472
    .line 473
    .line 474
    move-result-object p5

    .line 475
    invoke-static {p1, v1, p5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 476
    .line 477
    .line 478
    move-result p5

    .line 479
    invoke-static {p5}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 480
    .line 481
    .line 482
    move-result p5

    .line 483
    iput p5, p4, Lcom/skydoves/balloon/Balloon$Builder;->marginLeft:I

    .line 484
    .line 485
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 486
    .line 487
    .line 488
    move-result-object p5

    .line 489
    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 490
    .line 491
    .line 492
    move-result-object p5

    .line 493
    invoke-static {p1, v1, p5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 494
    .line 495
    .line 496
    move-result p5

    .line 497
    invoke-static {p5}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 498
    .line 499
    .line 500
    move-result p5

    .line 501
    iput p5, p4, Lcom/skydoves/balloon/Balloon$Builder;->marginRight:I

    .line 502
    .line 503
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 504
    .line 505
    .line 506
    move-result-object p5

    .line 507
    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 508
    .line 509
    .line 510
    move-result-object p5

    .line 511
    const/4 p6, 0x0

    .line 512
    invoke-static {p1, p6, p5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 513
    .line 514
    .line 515
    move-result p5

    .line 516
    invoke-static {p5}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 517
    .line 518
    .line 519
    move-result p5

    .line 520
    iput p5, p4, Lcom/skydoves/balloon/Balloon$Builder;->marginTop:I

    .line 521
    .line 522
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 523
    .line 524
    .line 525
    move-result-object p5

    .line 526
    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 527
    .line 528
    .line 529
    move-result-object p5

    .line 530
    invoke-static {p1, p6, p5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 531
    .line 532
    .line 533
    move-result p5

    .line 534
    invoke-static {p5}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 535
    .line 536
    .line 537
    move-result p5

    .line 538
    iput p5, p4, Lcom/skydoves/balloon/Balloon$Builder;->marginBottom:I

    .line 539
    .line 540
    new-instance p5, Landroid/util/TypedValue;

    .line 541
    .line 542
    invoke-direct {p5}, Landroid/util/TypedValue;-><init>()V

    .line 543
    .line 544
    .line 545
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 546
    .line 547
    .line 548
    move-result-object p6

    .line 549
    const p7, 0x7f040520

    .line 550
    .line 551
    .line 552
    invoke-virtual {p6, p7, p5, p1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 553
    .line 554
    .line 555
    move-result p6

    .line 556
    if-eqz p6, :cond_c

    .line 557
    .line 558
    goto :goto_4

    .line 559
    :cond_c
    move-object p5, v2

    .line 560
    :goto_4
    if-eqz p5, :cond_e

    .line 561
    .line 562
    iget p5, p5, Landroid/util/TypedValue;->resourceId:I

    .line 563
    .line 564
    invoke-virtual {p0, p5}, Landroid/content/Context;->getColor(I)I

    .line 565
    .line 566
    .line 567
    move-result p5

    .line 568
    iput p5, p4, Lcom/skydoves/balloon/Balloon$Builder;->backgroundColor:I

    .line 569
    .line 570
    iput-boolean p2, p4, Lcom/skydoves/balloon/Balloon$Builder;->dismissWhenTouchOutside:Z

    .line 571
    .line 572
    if-nez p2, :cond_d

    .line 573
    .line 574
    iput-boolean p2, p4, Lcom/skydoves/balloon/Balloon$Builder;->isFocusable:Z

    .line 575
    .line 576
    :cond_d
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 577
    .line 578
    .line 579
    iput-object p8, p4, Lcom/skydoves/balloon/Balloon$Builder;->layout:Landroid/widget/LinearLayout;

    .line 580
    .line 581
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 582
    .line 583
    .line 584
    move-result-object p2

    .line 585
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 586
    .line 587
    .line 588
    move-result-object p2

    .line 589
    const/high16 p5, -0x31000000

    .line 590
    .line 591
    invoke-static {p1, p5, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 592
    .line 593
    .line 594
    move-result p2

    .line 595
    invoke-static {p2}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 596
    .line 597
    .line 598
    move-result p2

    .line 599
    iput p2, p4, Lcom/skydoves/balloon/Balloon$Builder;->width:I

    .line 600
    .line 601
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 602
    .line 603
    .line 604
    move-result-object p2

    .line 605
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 606
    .line 607
    .line 608
    move-result-object p2

    .line 609
    invoke-static {p1, p5, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 610
    .line 611
    .line 612
    move-result p2

    .line 613
    invoke-static {p2}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 614
    .line 615
    .line 616
    move-result p2

    .line 617
    iput p2, p4, Lcom/skydoves/balloon/Balloon$Builder;->height:I

    .line 618
    .line 619
    int-to-float p2, p3

    .line 620
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 621
    .line 622
    .line 623
    move-result-object p3

    .line 624
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 625
    .line 626
    .line 627
    move-result-object p3

    .line 628
    invoke-static {p1, p2, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 629
    .line 630
    .line 631
    move-result p2

    .line 632
    invoke-static {p2}, Lkotlin/UnsignedKt;->roundToInt(F)I

    .line 633
    .line 634
    .line 635
    move-result p2

    .line 636
    iput p2, p4, Lcom/skydoves/balloon/Balloon$Builder;->arrowAlignAnchorPadding:I

    .line 637
    .line 638
    new-instance p2, Lcom/skydoves/balloon/Balloon;

    .line 639
    .line 640
    invoke-direct {p2, p0, p4}, Lcom/skydoves/balloon/Balloon;-><init>(Landroid/content/Context;Lcom/skydoves/balloon/Balloon$Builder;)V

    .line 641
    .line 642
    .line 643
    new-instance p0, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda8;

    .line 644
    .line 645
    invoke-direct {p0, p2, p1}, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda8;-><init>(Lcom/skydoves/balloon/Balloon;I)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    .line 650
    .line 651
    return-object p2

    .line 652
    :cond_e
    const-string p0, "Attribute not found; ID=2130969888"

    .line 653
    .line 654
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    return-object v2

    .line 658
    :cond_f
    invoke-virtual {p8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 659
    .line 660
    .line 661
    move-result-object p0

    .line 662
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object p0

    .line 666
    const-string p1, "Missing required view with ID: "

    .line 667
    .line 668
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object p0

    .line 672
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    return-object v2
.end method

.method public static getTopmostBottomSheetFragment(Landroidx/fragment/app/Fragment;)Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mFragmentStore:Lcoil3/ImageLoader$Builder;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcoil3/ImageLoader$Builder;->getFragments()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lorg/wikipedia/util/ShareUtil;->getTopmostBottomSheetFragment(Landroidx/fragment/app/Fragment;)Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_2
    const/4 p0, 0x0

    .line 58
    return-object p0
.end method

.method public static isNetworkError(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Ljava/net/UnknownHostException;

    .line 5
    .line 6
    invoke-static {v0, p0}, Lorg/wikipedia/util/ShareUtil;->throwableContainsException(Ljava/lang/Class;Ljava/lang/Throwable;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-class v0, Ljava/util/concurrent/TimeoutException;

    .line 13
    .line 14
    invoke-static {v0, p0}, Lorg/wikipedia/util/ShareUtil;->throwableContainsException(Ljava/lang/Class;Ljava/lang/Throwable;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-class v0, Ljavax/net/ssl/SSLException;

    .line 21
    .line 22
    invoke-static {v0, p0}, Lorg/wikipedia/util/ShareUtil;->throwableContainsException(Ljava/lang/Class;Ljava/lang/Throwable;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 32
    return p0
.end method

.method public static makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;ILorg/wikipedia/dataclient/WikiSite;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    instance-of v0, p0, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    .line 218
    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mFragmentStore:Lcoil3/ImageLoader$Builder;

    invoke-virtual {v0}, Lcoil3/ImageLoader$Builder;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 219
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 220
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lorg/wikipedia/util/ShareUtil;->getTopmostBottomSheetFragment(Landroidx/fragment/app/Fragment;)Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v2

    :cond_2
    if-eqz v1, :cond_3

    .line 221
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object p0

    goto :goto_2

    .line 222
    :cond_3
    instance-of v0, p0, Lorg/wikipedia/main/MainActivity;

    if-eqz v0, :cond_4

    const v0, 0x7f09026e

    goto :goto_1

    .line 223
    :cond_4
    instance-of v0, p0, Lorg/wikipedia/page/PageActivity;

    if-eqz v0, :cond_5

    const v0, 0x7f090273

    goto :goto_1

    .line 224
    :cond_5
    instance-of v0, p0, Lorg/wikipedia/readinglist/ReadingListActivity;

    if-eqz v0, :cond_6

    const v0, 0x7f090275

    goto :goto_1

    .line 225
    :cond_6
    instance-of v0, p0, Lorg/wikipedia/suggestededits/SuggestionsActivity;

    if-eqz v0, :cond_7

    const v0, 0x7f09063b

    goto :goto_1

    .line 226
    :cond_7
    instance-of v0, p0, Lorg/wikipedia/page/edithistory/EditHistoryListActivity;

    if-eqz v0, :cond_8

    const v0, 0x7f0901fa

    goto :goto_1

    .line 227
    :cond_8
    instance-of v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity;

    if-eqz v0, :cond_9

    const v0, 0x7f090683

    goto :goto_1

    :cond_9
    const v0, 0x1020002

    .line 228
    :goto_1
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->requireViewById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    :goto_2
    invoke-static {p0, p1, p2, p3}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar(Landroid/view/View;Ljava/lang/CharSequence;ILorg/wikipedia/dataclient/WikiSite;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    return-object p0
.end method

.method public static makeSnackbar(Landroid/view/View;Ljava/lang/CharSequence;ILorg/wikipedia/dataclient/WikiSite;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_CONTENT_STYLE_ATTRS:[I

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    move-object v1, p0

    .line 25
    move-object v2, v0

    .line 26
    :cond_0
    instance-of v3, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    check-cast v1, Landroid/view/ViewGroup;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    instance-of v3, v1, Landroid/widget/FrameLayout;

    .line 34
    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const v3, 0x1020002

    .line 42
    .line 43
    .line 44
    if-ne v2, v3, :cond_2

    .line 45
    .line 46
    check-cast v1, Landroid/view/ViewGroup;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move-object v2, v1

    .line 50
    check-cast v2, Landroid/view/ViewGroup;

    .line 51
    .line 52
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    instance-of v3, v1, Landroid/view/View;

    .line 57
    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    check-cast v1, Landroid/view/View;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    move-object v1, v0

    .line 64
    :goto_0
    if-nez v1, :cond_0

    .line 65
    .line 66
    move-object v1, v2

    .line 67
    :goto_1
    if-eqz v1, :cond_9

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    sget-object v4, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_CONTENT_STYLE_ATTRS:[I

    .line 78
    .line 79
    invoke-virtual {v2, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v6, -0x1

    .line 85
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    const/4 v8, 0x1

    .line 90
    invoke-virtual {v4, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    .line 96
    .line 97
    if-eq v7, v6, :cond_5

    .line 98
    .line 99
    if-eq v9, v6, :cond_5

    .line 100
    .line 101
    const v4, 0x7f0c0354

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    const v4, 0x7f0c0167

    .line 106
    .line 107
    .line 108
    :goto_2
    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 113
    .line 114
    new-instance v4, Lcom/google/android/material/snackbar/Snackbar;

    .line 115
    .line 116
    invoke-direct {v4, v2, v1, v3, v3}, Lcom/google/android/material/snackbar/Snackbar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/material/snackbar/SnackbarContentLayout;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 120
    .line 121
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    iput p2, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->duration:I

    .line 135
    .line 136
    const p1, 0x7f090605

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Landroid/widget/TextView;

    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {p0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    const v2, 0x7f040520

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, v2, v1, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    if-eqz p0, :cond_6

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_6
    move-object v1, v0

    .line 168
    :goto_3
    if-eqz v1, :cond_8

    .line 169
    .line 170
    iget p0, v1, Landroid/util/TypedValue;->data:I

    .line 171
    .line 172
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 173
    .line 174
    .line 175
    sget p0, Lorg/wikipedia/page/LinkMovementMethodExt;->$r8$clinit:I

    .line 176
    .line 177
    new-instance p0, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 178
    .line 179
    new-instance v0, Lorg/wikipedia/page/LinkMovementMethodExt$ErrorLinkHandler;

    .line 180
    .line 181
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 182
    .line 183
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-direct {v0, v1}, Lorg/wikipedia/page/LinkHandler;-><init>(Landroid/content/Context;)V

    .line 188
    .line 189
    .line 190
    iput-object p3, v0, Lorg/wikipedia/page/LinkMovementMethodExt$ErrorLinkHandler;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 191
    .line 192
    invoke-direct {p0, v0}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithText;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 196
    .line 197
    .line 198
    const/4 p0, -0x2

    .line 199
    if-ne p2, p0, :cond_7

    .line 200
    .line 201
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 202
    .line 203
    .line 204
    :cond_7
    return-object v4

    .line 205
    :cond_8
    const-string p0, "Attribute not found; ID=2130969888"

    .line 206
    .line 207
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    return-object v0

    .line 211
    :cond_9
    const-string p0, "No suitable parent found from the given view. Please provide a valid view."

    .line 212
    .line 213
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    return-object v0
.end method

.method public static synthetic makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/16 p2, 0x1388

    .line 6
    .line 7
    :cond_0
    sget-object p3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 8
    .line 9
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p3}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-static {p0, p1, p2, p3}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;ILorg/wikipedia/dataclient/WikiSite;)Lcom/google/android/material/snackbar/Snackbar;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static synthetic makeSnackbar$default(Landroid/view/View;Ljava/lang/String;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 2

    .line 22
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-static {p0, p1, v1, v0}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar(Landroid/view/View;Ljava/lang/CharSequence;ILorg/wikipedia/dataclient/WikiSite;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    return-object p0
.end method

.method public static shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-string v1, "android.intent.action.SEND"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "android.intent.extra.SUBJECT"

    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string p1, "android.intent.extra.TEXT"

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string p1, "text/plain"

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const p1, 0x7f120863

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p0, v0, p1}, Lorg/wikipedia/util/ShareUtil;->getIntentChooser(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    const p1, 0x7f1201e0

    .line 40
    .line 41
    .line 42
    const/4 p2, 0x1

    .line 43
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 56
    .line 57
    const-string p1, "Transaction too large for share intent."

    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->logRemoteErrorIfProd(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static shareText$default(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const v1, 0x7f120705

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p1, "?wprov="

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p0, v0, p1}, Lorg/wikipedia/util/ShareUtil;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static showError(Landroid/app/Activity;Ljava/lang/Throwable;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object v0, p1

    .line 11
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p1}, Lorg/wikipedia/util/ShareUtil;->isNetworkError(Ljava/lang/Throwable;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    const/16 v4, 0xb

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    new-instance p1, Lkotlinx/coroutines/internal/Symbol;

    .line 36
    .line 37
    const v1, 0x7f1201e3

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-array v5, v2, [Ljava/lang/Object;

    .line 52
    .line 53
    aput-object v0, v5, v3

    .line 54
    .line 55
    const v0, 0x7f12024a

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, v4, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    instance-of v1, p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 70
    .line 71
    check-cast p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 72
    .line 73
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->getMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget p1, p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code:I

    .line 78
    .line 79
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v4, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    move-object p1, v0

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    instance-of v1, v0, Lorg/wikipedia/login/LoginFailedException;

    .line 88
    .line 89
    if-nez v1, :cond_5

    .line 90
    .line 91
    instance-of v1, v0, Lorg/wikipedia/createaccount/CreateAccountException;

    .line 92
    .line 93
    if-nez v1, :cond_5

    .line 94
    .line 95
    instance-of v1, v0, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 96
    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    const-class v1, Lorg/json/JSONException;

    .line 101
    .line 102
    invoke-static {v1, p1}, Lorg/wikipedia/util/ShareUtil;->throwableContainsException(Ljava/lang/Class;Ljava/lang/Throwable;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    new-instance p1, Lkotlinx/coroutines/internal/Symbol;

    .line 109
    .line 110
    const v1, 0x7f1201e7

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    invoke-direct {p1, v4, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    new-instance p1, Lkotlinx/coroutines/internal/Symbol;

    .line 128
    .line 129
    const v1, 0x7f1201e8

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    invoke-direct {p1, v4, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_5
    :goto_1
    new-instance p1, Lkotlinx/coroutines/internal/Symbol;

    .line 147
    .line 148
    check-cast v0, Ljava/lang/Exception;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-direct {p1, v4, v0}, Lkotlinx/coroutines/internal/Symbol;-><init>(ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :goto_2
    iget-object p1, p1, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    const/16 v1, 0xc8

    .line 167
    .line 168
    if-le v0, v1, :cond_6

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_6
    move v2, v3

    .line 172
    :goto_3
    if-eqz v2, :cond_7

    .line 173
    .line 174
    const/4 v0, -0x2

    .line 175
    goto :goto_4

    .line 176
    :cond_7
    const/16 v0, 0x1388

    .line 177
    .line 178
    :goto_4
    invoke-static {p0, p1, v0, p2}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar(Landroid/app/Activity;Ljava/lang/CharSequence;ILorg/wikipedia/dataclient/WikiSite;)Lcom/google/android/material/snackbar/Snackbar;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    if-eqz v2, :cond_8

    .line 183
    .line 184
    new-instance p1, Lorg/wikipedia/util/FeedbackUtil$$ExternalSyntheticLambda1;

    .line 185
    .line 186
    invoke-direct {p1, p0, v3}, Lorg/wikipedia/util/FeedbackUtil$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/snackbar/Snackbar;I)V

    .line 187
    .line 188
    .line 189
    const p2, 0x104000a

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 196
    .line 197
    .line 198
    return-void
.end method

.method public static synthetic showError$default(Landroid/app/Activity;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2
    .line 3
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p0, p1, v0}, Lorg/wikipedia/util/ShareUtil;->showError(Landroid/app/Activity;Ljava/lang/Throwable;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static showMessage(ILandroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-static {v0, p0, p1, v1}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static showMessage(Landroid/app/Activity;I)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showMessage(Landroid/app/Activity;Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x8

    .line 28
    invoke-static {p0, p1, p2, v0}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public static showMessage(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p0, p1, v0, v1}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method public static showToastOverView(Landroid/view/View;Ljava/lang/CharSequence;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f0c001b

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const v1, 0x7f090407

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/widget/TextView;

    .line 33
    .line 34
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    const p1, 0x7fffffff

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x2

    .line 57
    new-array p1, p1, [I

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    aget p0, p1, p0

    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    aget p1, p1, v0

    .line 67
    .line 68
    const v0, 0x800033

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v0, p0, p1}, Landroid/widget/Toast;->setGravity(III)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public static showTooltip$default(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;ZZI)Lcom/skydoves/balloon/Balloon;
    .locals 9

    .line 1
    and-int/lit16 p5, p5, 0x80

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    move v5, p4

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p5, 0x1

    .line 8
    move v5, p5

    .line 9
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    const/16 v8, 0x380

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    move-object v1, p2

    .line 25
    move v4, p3

    .line 26
    move v2, p4

    .line 27
    invoke-static/range {v0 .. v8}, Lorg/wikipedia/util/ShareUtil;->getTooltip$default(Landroid/content/Context;Ljava/lang/String;ZIZZIII)Lcom/skydoves/balloon/Balloon;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const/high16 p3, 0x41000000    # 8.0f

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    invoke-static {p3}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    new-instance p4, Lcom/skydoves/balloon/BalloonPlacement;

    .line 40
    .line 41
    sget-object p5, Lcom/skydoves/balloon/BalloonAlign;->TOP:Lcom/skydoves/balloon/BalloonAlign;

    .line 42
    .line 43
    invoke-direct {p4, p1, p5, p3}, Lcom/skydoves/balloon/BalloonPlacement;-><init>(Landroid/view/View;Lcom/skydoves/balloon/BalloonAlign;I)V

    .line 44
    .line 45
    .line 46
    iget-object p3, p4, Lcom/skydoves/balloon/BalloonPlacement;->anchor:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {p2, p3}, Lcom/skydoves/balloon/Balloon;->canShowBalloonWindow(Landroid/view/View;)Z

    .line 49
    .line 50
    .line 51
    move-result p5

    .line 52
    if-eqz p5, :cond_2

    .line 53
    .line 54
    new-instance p5, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 55
    .line 56
    const/4 v0, 0x7

    .line 57
    invoke-direct {p5, p2, p3, p4, v0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-static {p3}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    neg-int p3, p3

    .line 69
    invoke-virtual {p2, p1, p3}, Lcom/skydoves/balloon/Balloon;->showAlignBottom(Landroid/view/View;I)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_1
    if-nez v2, :cond_4

    .line 73
    .line 74
    move-object p3, p0

    .line 75
    check-cast p3, Lorg/wikipedia/activity/BaseActivity;

    .line 76
    .line 77
    iget-object p4, p3, Lorg/wikipedia/activity/BaseActivity;->currentTooltip:Lcom/skydoves/balloon/Balloon;

    .line 78
    .line 79
    if-eqz p4, :cond_3

    .line 80
    .line 81
    invoke-virtual {p4}, Lcom/skydoves/balloon/Balloon;->dismiss()V

    .line 82
    .line 83
    .line 84
    :cond_3
    iput-object p2, p3, Lorg/wikipedia/activity/BaseActivity;->currentTooltip:Lcom/skydoves/balloon/Balloon;

    .line 85
    .line 86
    :cond_4
    sget-object p3, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 87
    .line 88
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {p0, p1}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logTooltipShown(Landroid/content/Context;Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    return-object p2
.end method

.method public static throwableContainsException(Ljava/lang/Class;Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    :goto_0
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p0, 0x0

    .line 17
    return p0
.end method


# virtual methods
.method public getBlockMessageHtml(Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p3, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$1;-><init>(Lorg/wikipedia/util/ShareUtil;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-ne v1, v2, :cond_1

    .line 36
    .line 37
    iget-object p1, v0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 38
    .line 39
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_2
    invoke-static {p0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string v1, ""

    .line 54
    .line 55
    iput-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 56
    .line 57
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 58
    .line 59
    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 60
    .line 61
    new-instance v4, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;

    .line 62
    .line 63
    invoke-direct {v4, p0, p1, p2, v3}, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lorg/wikipedia/dataclient/mwapi/MwServiceError$BlockInfo;Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/Continuation;)V

    .line 64
    .line 65
    .line 66
    iput-object p0, v0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 67
    .line 68
    iput v2, v0, Lorg/wikipedia/util/ThrowableUtil$getBlockMessageHtml$1;->label:I

    .line 69
    .line 70
    invoke-static {v1, v4, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-ne p1, p3, :cond_3

    .line 75
    .line 76
    return-object p3

    .line 77
    :cond_3
    move-object p1, p0

    .line 78
    :goto_1
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 79
    .line 80
    return-object p0
.end method

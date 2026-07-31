.class public final Lorg/wikipedia/page/LinkMovementMethodExt;
.super Landroid/text/method/LinkMovementMethod;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final handler:Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;

.field public final handlerWithText:Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithText;

.field public final handlerWithTextAndCoords:Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithTextAndCoords;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/page/LinkMovementMethodExt;->handler:Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithText;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/wikipedia/page/LinkMovementMethodExt;->handlerWithText:Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithText;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithTextAndCoords;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/wikipedia/page/LinkMovementMethodExt;->handlerWithTextAndCoords:Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithTextAndCoords;

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_5

    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    float-to-int v0, v0

    .line 22
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    sub-int/2addr v0, v2

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    add-int/2addr v2, v0

    .line 32
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    float-to-int v0, v0

    .line 37
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    sub-int/2addr v0, v3

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    add-int/2addr v3, v0

    .line 47
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-ltz v3, :cond_4

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-gt v3, v5, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineLeft(I)F

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineRight(I)F

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    int-to-float v2, v2

    .line 72
    cmpg-float v3, v3, v2

    .line 73
    .line 74
    if-gtz v3, :cond_4

    .line 75
    .line 76
    cmpg-float v3, v2, v5

    .line 77
    .line 78
    if-gtz v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {v0, v4, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const-class v2, Landroid/text/style/URLSpan;

    .line 85
    .line 86
    invoke-interface {p2, v0, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-object v2, v0

    .line 94
    check-cast v2, [Landroid/text/style/URLSpan;

    .line 95
    .line 96
    array-length v0, v2

    .line 97
    if-nez v0, :cond_0

    .line 98
    .line 99
    goto/16 :goto_3

    .line 100
    .line 101
    :cond_0
    const/4 v3, 0x0

    .line 102
    :try_start_0
    aget-object v0, v2, v3

    .line 103
    .line 104
    invoke-interface {p2, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    aget-object v4, v2, v3

    .line 109
    .line 110
    invoke-interface {p2, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    invoke-interface {p2, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    move-object v9, p2

    .line 123
    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    move-object p2, v0

    .line 126
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    .line 128
    .line 129
    const-string p2, ""

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :goto_1
    invoke-static {v9}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    aget-object p2, v2, v3

    .line 136
    .line 137
    invoke-virtual {p2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    :try_start_1
    const-string v0, "+"

    .line 145
    .line 146
    const-string v2, "%2B"

    .line 147
    .line 148
    invoke-static {p2, v0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const-string v2, "UTF-8"

    .line 153
    .line 154
    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    .line 160
    .line 161
    move-object v7, v0

    .line 162
    goto :goto_2

    .line 163
    :catch_1
    move-exception v0

    .line 164
    move-object p0, v0

    .line 165
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    return v3

    .line 169
    :catch_2
    const-string v0, "URL decoding failed. String was: "

    .line 170
    .line 171
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    move-object v7, p2

    .line 179
    :goto_2
    sget-object p2, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-static {v0, p1}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logClick(Landroid/content/Context;Landroid/view/View;)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lorg/wikipedia/page/LinkMovementMethodExt;->handler:Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;

    .line 195
    .line 196
    if-eqz p1, :cond_1

    .line 197
    .line 198
    invoke-interface {p1, v7}, Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;->onUrlClick(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/page/LinkMovementMethodExt;->handlerWithText:Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithText;

    .line 202
    .line 203
    if-eqz p1, :cond_2

    .line 204
    .line 205
    invoke-static {v7}, Lorg/wikipedia/util/UriUtil;->getTitleFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-interface {p1, v7, p2, v9}, Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithText;->onUrlClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_2
    iget-object v4, p0, Lorg/wikipedia/page/LinkMovementMethodExt;->handlerWithTextAndCoords:Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithTextAndCoords;

    .line 213
    .line 214
    if-eqz v4, :cond_3

    .line 215
    .line 216
    invoke-static {v7}, Lorg/wikipedia/util/UriUtil;->getTitleFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v8

    .line 220
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    float-to-int v5, p0

    .line 225
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    .line 226
    .line 227
    .line 228
    move-result p0

    .line 229
    float-to-int v6, p0

    .line 230
    invoke-interface/range {v4 .. v9}, Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithTextAndCoords;->onUrlClick(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :cond_3
    return v1

    .line 234
    :cond_4
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 235
    .line 236
    .line 237
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    .line 238
    .line 239
    .line 240
    move-result p0

    .line 241
    return p0

    .line 242
    :cond_5
    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    .line 243
    .line 244
    .line 245
    move-result p0

    .line 246
    return p0
.end method

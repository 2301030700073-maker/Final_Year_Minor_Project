.class public final Lorg/wikipedia/commons/FilePageView;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\rB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\t\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/wikipedia/commons/FilePageView;",
        "Landroid/widget/LinearLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lorg/wikipedia/databinding/ViewFilePageBinding;",
        "binding",
        "Lorg/wikipedia/databinding/ViewFilePageBinding;",
        "getBinding",
        "()Lorg/wikipedia/databinding/ViewFilePageBinding;",
        "org/wikipedia/commons/FilePageFragment",
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


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final binding:Lorg/wikipedia/databinding/ViewFilePageBinding;

.field public final movementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const v0, 0x7f0c05ca

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    const p2, 0x7f0901ad

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v3, v0

    .line 25
    check-cast v3, Landroid/widget/LinearLayout;

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    const p2, 0x7f090239

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    move-object v4, v0

    .line 37
    check-cast v4, Lorg/wikipedia/views/ImageDetailView;

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    const p2, 0x7f0902de

    .line 42
    .line 43
    .line 44
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    move-object v5, v0

    .line 49
    check-cast v5, Landroid/widget/ImageView;

    .line 50
    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    const p2, 0x7f0902e1

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    move-object v6, v0

    .line 61
    check-cast v6, Landroid/widget/FrameLayout;

    .line 62
    .line 63
    if-eqz v6, :cond_0

    .line 64
    .line 65
    new-instance v1, Lorg/wikipedia/databinding/ViewFilePageBinding;

    .line 66
    .line 67
    move-object v2, p0

    .line 68
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/databinding/ViewFilePageBinding;-><init>(Lorg/wikipedia/commons/FilePageView;Landroid/widget/LinearLayout;Lorg/wikipedia/views/ImageDetailView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    .line 69
    .line 70
    .line 71
    iput-object v1, v2, Lorg/wikipedia/commons/FilePageView;->binding:Lorg/wikipedia/databinding/ViewFilePageBinding;

    .line 72
    .line 73
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    .line 74
    .line 75
    const/4 p2, -0x1

    .line 76
    const/4 v0, -0x2

    .line 77
    invoke-direct {p0, p2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    .line 82
    .line 83
    new-instance p0, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 84
    .line 85
    new-instance p2, Lorg/wikipedia/commons/FilePageView$$ExternalSyntheticLambda1;

    .line 86
    .line 87
    invoke-direct {p2, p1}, Lorg/wikipedia/commons/FilePageView$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, p2}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 91
    .line 92
    .line 93
    iput-object p0, v2, Lorg/wikipedia/commons/FilePageView;->movementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 94
    .line 95
    return-void

    .line 96
    :cond_0
    move-object v2, p0

    .line 97
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const-string p1, "Missing required view with ID: "

    .line 106
    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const/4 p0, 0x0

    .line 115
    throw p0
.end method

.method public static addDetail$default(Lorg/wikipedia/commons/FilePageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;I)V
    .locals 7

    .line 1
    and-int/lit8 v0, p5, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    and-int/lit8 v3, p5, 0x8

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    move-object p3, v4

    .line 16
    :cond_1
    and-int/lit8 p5, p5, 0x10

    .line 17
    .line 18
    if-eqz p5, :cond_2

    .line 19
    .line 20
    move-object p4, v4

    .line 21
    :cond_2
    if-eqz p2, :cond_a

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result p5

    .line 27
    if-nez p5, :cond_3

    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_3
    new-instance p5, Lorg/wikipedia/views/ImageDetailView;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-direct {p5, v3, v4}, Lorg/wikipedia/views/ImageDetailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p5}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-object v3, v3, Lorg/wikipedia/databinding/ViewImageDetailBinding;->titleText:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p5}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-object v3, v3, Lorg/wikipedia/databinding/ViewImageDetailBinding;->contentText:Landroid/widget/TextView;

    .line 57
    .line 58
    sget-object v5, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 59
    .line 60
    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    if-eqz p3, :cond_7

    .line 76
    .line 77
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-nez p2, :cond_4

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {p5}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iget-object p2, p2, Lorg/wikipedia/databinding/ViewImageDetailBinding;->contentText:Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v3}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const v6, 0x7f040520

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v6, v5, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_5

    .line 110
    .line 111
    move-object v4, v5

    .line 112
    :cond_5
    if-eqz v4, :cond_6

    .line 113
    .line 114
    iget v3, v4, Landroid/util/TypedValue;->data:I

    .line 115
    .line 116
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p5}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    iget-object p2, p2, Lorg/wikipedia/databinding/ViewImageDetailBinding;->contentText:Landroid/widget/TextView;

    .line 124
    .line 125
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p5}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    iget-object p2, p2, Lorg/wikipedia/databinding/ViewImageDetailBinding;->externalLink:Landroid/widget/ImageView;

    .line 133
    .line 134
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p5}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    iget-object p2, p2, Lorg/wikipedia/databinding/ViewImageDetailBinding;->contentContainer:Landroid/widget/LinearLayout;

    .line 142
    .line 143
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 144
    .line 145
    const/4 v4, 0x2

    .line 146
    invoke-direct {v3, v4, p0, p3}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_6
    const-string p0, "Attribute not found; ID=2130969888"

    .line 154
    .line 155
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :cond_7
    :goto_1
    invoke-virtual {p5}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    iget-object p2, p2, Lorg/wikipedia/databinding/ViewImageDetailBinding;->contentText:Landroid/widget/TextView;

    .line 164
    .line 165
    iget-object p3, p0, Lorg/wikipedia/commons/FilePageView;->movementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 166
    .line 167
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 168
    .line 169
    .line 170
    :goto_2
    if-nez v0, :cond_8

    .line 171
    .line 172
    invoke-virtual {p5}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    iget-object p2, p2, Lorg/wikipedia/databinding/ViewImageDetailBinding;->divider:Landroid/view/View;

    .line 177
    .line 178
    const/16 p3, 0x8

    .line 179
    .line 180
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    :cond_8
    if-eqz p4, :cond_9

    .line 184
    .line 185
    invoke-virtual {p5}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    iget-object p2, p2, Lorg/wikipedia/databinding/ViewImageDetailBinding;->editButton:Landroid/widget/ImageView;

    .line 190
    .line 191
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p5}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    iget-object p2, p2, Lorg/wikipedia/databinding/ViewImageDetailBinding;->editButton:Landroid/widget/ImageView;

    .line 199
    .line 200
    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p5}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    iget-object p2, p2, Lorg/wikipedia/databinding/ViewImageDetailBinding;->editButton:Landroid/widget/ImageView;

    .line 208
    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 210
    .line 211
    .line 212
    move-result-object p3

    .line 213
    new-array p4, v2, [Ljava/lang/Object;

    .line 214
    .line 215
    aput-object p1, p4, v1

    .line 216
    .line 217
    const p1, 0x7f120240

    .line 218
    .line 219
    .line 220
    invoke-virtual {p3, p1, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    :cond_9
    iget-object p0, p0, Lorg/wikipedia/commons/FilePageView;->binding:Lorg/wikipedia/databinding/ViewFilePageBinding;

    .line 228
    .line 229
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewFilePageBinding;->detailsContainer:Landroid/widget/LinearLayout;

    .line 230
    .line 231
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 232
    .line 233
    .line 234
    :cond_a
    :goto_3
    return-void
.end method

.method public static getProperLanguageCode(Lorg/wikipedia/suggestededits/PageSummaryForEdit;Z)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->lang:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "commons"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->lang:Ljava/lang/String;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 18
    .line 19
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static setup$default(Lorg/wikipedia/commons/FilePageView;Lorg/wikipedia/suggestededits/PageSummaryForEdit;Ljava/util/Map;Lorg/wikipedia/dataclient/mwapi/MwQueryPage;IIIZZZLorg/wikipedia/descriptions/DescriptionEditActivity$Action;Lorg/wikipedia/commons/FilePageFragment;I)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    move/from16 v1, p4

    .line 8
    .line 9
    move/from16 v8, p7

    .line 10
    .line 11
    move/from16 v2, p12

    .line 12
    .line 13
    and-int/lit16 v3, v2, 0x200

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    move-object v3, v9

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object/from16 v3, p10

    .line 21
    .line 22
    :goto_0
    and-int/lit16 v2, v2, 0x400

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    move-object v10, v9

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object/from16 v10, p11

    .line 29
    .line 30
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v2, v6, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->description:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v11, v6, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 36
    .line 37
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object v4, v0, Lorg/wikipedia/commons/FilePageView;->binding:Lorg/wikipedia/databinding/ViewFilePageBinding;

    .line 44
    .line 45
    iget-object v5, v4, Lorg/wikipedia/databinding/ViewFilePageBinding;->imageView:Landroid/widget/ImageView;

    .line 46
    .line 47
    iget-object v12, v4, Lorg/wikipedia/databinding/ViewFilePageBinding;->filenameView:Lorg/wikipedia/views/ImageDetailView;

    .line 48
    .line 49
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v13

    .line 53
    if-eqz v13, :cond_3

    .line 54
    .line 55
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v13

    .line 59
    instance-of v13, v13, Ljava/lang/Integer;

    .line 60
    .line 61
    if-nez v13, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v13

    .line 68
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    check-cast v13, Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    :goto_2
    const/4 v13, 0x0

    .line 79
    :goto_3
    const/4 v15, 0x1

    .line 80
    or-int/2addr v13, v15

    .line 81
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v13

    .line 85
    invoke-virtual {v5, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget-object v5, v4, Lorg/wikipedia/databinding/ViewFilePageBinding;->imageView:Landroid/widget/ImageView;

    .line 89
    .line 90
    sget-object v13, Lorg/wikipedia/util/ImageUrlUtil;->WIDTH_IN_IMAGE_URL_REGEX:Ljava/util/regex/Pattern;

    .line 91
    .line 92
    iget-object v13, v6, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->thumbnailUrl:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    const/16 v15, 0x500

    .line 98
    .line 99
    invoke-static {v15, v13}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(ILjava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    const/16 v15, 0x8

    .line 104
    .line 105
    invoke-static {v5, v13, v9, v15}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 106
    .line 107
    .line 108
    iget-object v5, v4, Lorg/wikipedia/databinding/ViewFilePageBinding;->imageViewPlaceholder:Landroid/widget/FrameLayout;

    .line 109
    .line 110
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 111
    .line 112
    int-to-float v9, v1

    .line 113
    move/from16 v15, p5

    .line 114
    .line 115
    int-to-float v15, v15

    .line 116
    move/from16 v14, p6

    .line 117
    .line 118
    int-to-float v14, v14

    .line 119
    const/high16 v16, 0x44a00000    # 1280.0f

    .line 120
    .line 121
    div-float v15, v16, v15

    .line 122
    .line 123
    mul-float/2addr v15, v14

    .line 124
    mul-float/2addr v15, v9

    .line 125
    div-float v15, v15, v16

    .line 126
    .line 127
    float-to-int v9, v15

    .line 128
    invoke-direct {v13, v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    .line 133
    .line 134
    const/4 v1, 0x3

    .line 135
    if-eqz p8, :cond_5

    .line 136
    .line 137
    const/4 v5, 0x0

    .line 138
    invoke-virtual {v12, v5}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v12}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    iget-object v5, v5, Lorg/wikipedia/databinding/ViewImageDetailBinding;->titleText:Landroid/widget/TextView;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    if-eqz v8, :cond_4

    .line 152
    .line 153
    const v13, 0x7f1208c8

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_4
    const v13, 0x7f1208cb

    .line 158
    .line 159
    .line 160
    :goto_4
    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v12}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    iget-object v5, v5, Lorg/wikipedia/databinding/ViewImageDetailBinding;->contentText:Landroid/widget/TextView;

    .line 172
    .line 173
    const/4 v9, 0x0

    .line 174
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v12}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    iget-object v5, v5, Lorg/wikipedia/databinding/ViewImageDetailBinding;->contentText:Landroid/widget/TextView;

    .line 182
    .line 183
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v12}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    iget-object v5, v5, Lorg/wikipedia/databinding/ViewImageDetailBinding;->contentText:Landroid/widget/TextView;

    .line 191
    .line 192
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 193
    .line 194
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v12}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    iget-object v5, v5, Lorg/wikipedia/databinding/ViewImageDetailBinding;->contentText:Landroid/widget/TextView;

    .line 202
    .line 203
    sget-object v9, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 204
    .line 205
    iget-object v9, v6, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->displayTitle:Ljava/lang/String;

    .line 206
    .line 207
    invoke-static {v9}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v12}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    iget-object v5, v5, Lorg/wikipedia/databinding/ViewImageDetailBinding;->divider:Landroid/view/View;

    .line 219
    .line 220
    const/16 v9, 0x8

    .line 221
    .line 222
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    :cond_5
    iget-object v4, v4, Lorg/wikipedia/databinding/ViewFilePageBinding;->detailsContainer:Landroid/widget/LinearLayout;

    .line 226
    .line 227
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 228
    .line 229
    .line 230
    iget-object v4, v11, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 231
    .line 232
    if-eqz v4, :cond_6

    .line 233
    .line 234
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-nez v4, :cond_8

    .line 239
    .line 240
    :cond_6
    if-eqz v2, :cond_7

    .line 241
    .line 242
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    if-nez v4, :cond_8

    .line 247
    .line 248
    :cond_7
    if-eqz p9, :cond_8

    .line 249
    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    const v3, 0x7f12023e

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 265
    .line 266
    invoke-direct {v3, v1, v10, v6}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v2, v3}, Lorg/wikipedia/commons/FilePageView;->addActionButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_9

    .line 273
    .line 274
    :cond_8
    sget-object v4, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->ADD_CAPTION:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 275
    .line 276
    if-eq v3, v4, :cond_9

    .line 277
    .line 278
    if-nez v3, :cond_a

    .line 279
    .line 280
    :cond_9
    iget-object v3, v11, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 281
    .line 282
    if-eqz v3, :cond_e

    .line 283
    .line 284
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    if-nez v3, :cond_a

    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 296
    .line 297
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    invoke-virtual {v4}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-static {v6, v8}, Lorg/wikipedia/commons/FilePageView;->getProperLanguageCode(Lorg/wikipedia/suggestededits/PageSummaryForEdit;Z)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-virtual {v4, v5}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    const/4 v5, 0x1

    .line 314
    new-array v9, v5, [Ljava/lang/Object;

    .line 315
    .line 316
    const/4 v5, 0x0

    .line 317
    aput-object v4, v9, v5

    .line 318
    .line 319
    const v4, 0x7f1208c6

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3, v4, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    iget-object v4, v11, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 330
    .line 331
    if-eqz v4, :cond_c

    .line 332
    .line 333
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    if-nez v4, :cond_b

    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_b
    iget-object v2, v11, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 341
    .line 342
    :cond_c
    :goto_5
    if-eqz p9, :cond_d

    .line 343
    .line 344
    new-instance v4, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 345
    .line 346
    invoke-direct {v4, v1, v10, v6}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_d
    const/4 v4, 0x0

    .line 351
    :goto_6
    const/16 v5, 0x9

    .line 352
    .line 353
    move-object v1, v3

    .line 354
    const/4 v3, 0x0

    .line 355
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/commons/FilePageView;->addDetail$default(Lorg/wikipedia/commons/FilePageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;I)V

    .line 356
    .line 357
    .line 358
    move-object/from16 v0, p0

    .line 359
    .line 360
    goto :goto_9

    .line 361
    :cond_e
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    const v2, 0x7f1200ff

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    iget-object v2, v6, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->description:Ljava/lang/String;

    .line 376
    .line 377
    if-eqz p9, :cond_f

    .line 378
    .line 379
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 380
    .line 381
    invoke-direct {v3, v1, v10, v6}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    move-object v4, v3

    .line 385
    goto :goto_8

    .line 386
    :cond_f
    const/4 v4, 0x0

    .line 387
    :goto_8
    const/16 v5, 0x9

    .line 388
    .line 389
    const/4 v3, 0x0

    .line 390
    move-object v1, v0

    .line 391
    move-object/from16 v0, p0

    .line 392
    .line 393
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/commons/FilePageView;->addDetail$default(Lorg/wikipedia/commons/FilePageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;I)V

    .line 394
    .line 395
    .line 396
    :goto_9
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    if-nez v1, :cond_10

    .line 401
    .line 402
    invoke-static {v6, v8}, Lorg/wikipedia/commons/FilePageView;->getProperLanguageCode(Lorg/wikipedia/suggestededits/PageSummaryForEdit;Z)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-nez v1, :cond_11

    .line 411
    .line 412
    :cond_10
    if-eqz p9, :cond_11

    .line 413
    .line 414
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    const v2, 0x7f12023f

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    new-instance v2, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 429
    .line 430
    const/4 v3, 0x4

    .line 431
    move-object/from16 v4, p3

    .line 432
    .line 433
    invoke-direct {v2, v3, v10, v4}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/commons/FilePageView;->addActionButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 437
    .line 438
    .line 439
    goto :goto_b

    .line 440
    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    const v2, 0x7f1208d3

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    .line 453
    .line 454
    invoke-static {v6, v8}, Lorg/wikipedia/commons/FilePageView;->getProperLanguageCode(Lorg/wikipedia/suggestededits/PageSummaryForEdit;Z)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result v3

    .line 462
    if-nez v3, :cond_13

    .line 463
    .line 464
    :cond_12
    const/4 v2, 0x0

    .line 465
    goto :goto_a

    .line 466
    :cond_13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 467
    .line 468
    const/16 v4, 0x1a

    .line 469
    .line 470
    if-lt v3, v4, :cond_14

    .line 471
    .line 472
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    .line 473
    .line 474
    .line 475
    move-result v3

    .line 476
    if-nez v3, :cond_14

    .line 477
    .line 478
    new-instance v3, Ljava/util/Locale;

    .line 479
    .line 480
    invoke-direct {v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-static {v3}, Landroid/icu/text/ListFormatter;->getInstance(Ljava/util/Locale;)Landroid/icu/text/ListFormatter;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    check-cast v2, Ljava/util/Collection;

    .line 492
    .line 493
    invoke-virtual {v3, v2}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    goto :goto_a

    .line 498
    :cond_14
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    move-object/from16 v16, v2

    .line 503
    .line 504
    check-cast v16, Ljava/util/List;

    .line 505
    .line 506
    if-eqz v16, :cond_12

    .line 507
    .line 508
    const/16 v20, 0x0

    .line 509
    .line 510
    const/16 v21, 0x3e

    .line 511
    .line 512
    const-string v17, "\n"

    .line 513
    .line 514
    const/16 v18, 0x0

    .line 515
    .line 516
    const/16 v19, 0x0

    .line 517
    .line 518
    invoke-static/range {v16 .. v21}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    :goto_a
    const/4 v4, 0x0

    .line 523
    const/16 v5, 0x19

    .line 524
    .line 525
    const/4 v3, 0x0

    .line 526
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/commons/FilePageView;->addDetail$default(Lorg/wikipedia/commons/FilePageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;I)V

    .line 527
    .line 528
    .line 529
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    const v1, 0x7f1208bd

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 541
    .line 542
    .line 543
    iget-object v0, v6, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 544
    .line 545
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 546
    .line 547
    .line 548
    iget-object v0, v0, Lorg/wikipedia/gallery/ExtMetadata;->artist:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 549
    .line 550
    if-eqz v0, :cond_15

    .line 551
    .line 552
    iget-object v0, v0, Lorg/wikipedia/gallery/ExtMetadata$Values;->value:Ljava/lang/String;

    .line 553
    .line 554
    goto :goto_c

    .line 555
    :cond_15
    const/4 v0, 0x0

    .line 556
    :goto_c
    const-string v7, ""

    .line 557
    .line 558
    if-nez v0, :cond_16

    .line 559
    .line 560
    move-object v2, v7

    .line 561
    goto :goto_d

    .line 562
    :cond_16
    move-object v2, v0

    .line 563
    :goto_d
    const/4 v4, 0x0

    .line 564
    const/16 v5, 0x19

    .line 565
    .line 566
    const/4 v3, 0x0

    .line 567
    move-object/from16 v0, p0

    .line 568
    .line 569
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/commons/FilePageView;->addDetail$default(Lorg/wikipedia/commons/FilePageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;I)V

    .line 570
    .line 571
    .line 572
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    const v1, 0x7f1208c7

    .line 577
    .line 578
    .line 579
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 584
    .line 585
    .line 586
    iget-object v0, v6, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 587
    .line 588
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 589
    .line 590
    .line 591
    iget-object v0, v0, Lorg/wikipedia/gallery/ExtMetadata;->dateTimeOriginal:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 592
    .line 593
    if-eqz v0, :cond_17

    .line 594
    .line 595
    iget-object v0, v0, Lorg/wikipedia/gallery/ExtMetadata$Values;->value:Ljava/lang/String;

    .line 596
    .line 597
    goto :goto_e

    .line 598
    :cond_17
    const/4 v0, 0x0

    .line 599
    :goto_e
    if-nez v0, :cond_18

    .line 600
    .line 601
    move-object v2, v7

    .line 602
    goto :goto_f

    .line 603
    :cond_18
    move-object v2, v0

    .line 604
    :goto_f
    const/4 v4, 0x0

    .line 605
    const/16 v5, 0x19

    .line 606
    .line 607
    const/4 v3, 0x0

    .line 608
    move-object/from16 v0, p0

    .line 609
    .line 610
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/commons/FilePageView;->addDetail$default(Lorg/wikipedia/commons/FilePageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;I)V

    .line 611
    .line 612
    .line 613
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    const v1, 0x7f1208c1

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 625
    .line 626
    .line 627
    iget-object v0, v6, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 628
    .line 629
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    .line 631
    .line 632
    iget-object v0, v0, Lorg/wikipedia/gallery/ExtMetadata;->credit:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 633
    .line 634
    if-eqz v0, :cond_19

    .line 635
    .line 636
    iget-object v0, v0, Lorg/wikipedia/gallery/ExtMetadata$Values;->value:Ljava/lang/String;

    .line 637
    .line 638
    goto :goto_10

    .line 639
    :cond_19
    const/4 v0, 0x0

    .line 640
    :goto_10
    if-nez v0, :cond_1a

    .line 641
    .line 642
    move-object v2, v7

    .line 643
    goto :goto_11

    .line 644
    :cond_1a
    move-object v2, v0

    .line 645
    :goto_11
    const/4 v4, 0x0

    .line 646
    const/16 v5, 0x19

    .line 647
    .line 648
    const/4 v3, 0x0

    .line 649
    move-object/from16 v0, p0

    .line 650
    .line 651
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/commons/FilePageView;->addDetail$default(Lorg/wikipedia/commons/FilePageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;I)V

    .line 652
    .line 653
    .line 654
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    const v1, 0x7f1208cc

    .line 659
    .line 660
    .line 661
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    .line 667
    .line 668
    iget-object v0, v6, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 669
    .line 670
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 671
    .line 672
    .line 673
    invoke-virtual {v0}, Lorg/wikipedia/gallery/ExtMetadata;->licenseShortName()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v2

    .line 677
    iget-object v0, v6, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 678
    .line 679
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 680
    .line 681
    .line 682
    iget-object v0, v0, Lorg/wikipedia/gallery/ExtMetadata;->licenseUrl:Lorg/wikipedia/gallery/ExtMetadata$Values;

    .line 683
    .line 684
    if-eqz v0, :cond_1b

    .line 685
    .line 686
    iget-object v9, v0, Lorg/wikipedia/gallery/ExtMetadata$Values;->value:Ljava/lang/String;

    .line 687
    .line 688
    goto :goto_12

    .line 689
    :cond_1b
    const/4 v9, 0x0

    .line 690
    :goto_12
    if-nez v9, :cond_1c

    .line 691
    .line 692
    move-object v3, v7

    .line 693
    goto :goto_13

    .line 694
    :cond_1c
    move-object v3, v9

    .line 695
    :goto_13
    const/4 v4, 0x0

    .line 696
    const/16 v5, 0x11

    .line 697
    .line 698
    move-object/from16 v0, p0

    .line 699
    .line 700
    invoke-static/range {v0 .. v5}, Lorg/wikipedia/commons/FilePageView;->addDetail$default(Lorg/wikipedia/commons/FilePageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;I)V

    .line 701
    .line 702
    .line 703
    const v0, 0x7f1208cd

    .line 704
    .line 705
    .line 706
    if-eqz v8, :cond_1d

    .line 707
    .line 708
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 709
    .line 710
    .line 711
    move-result-object v1

    .line 712
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 717
    .line 718
    .line 719
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    const v2, 0x7f1208c9

    .line 724
    .line 725
    .line 726
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    iget-object v3, v6, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->title:Ljava/lang/String;

    .line 735
    .line 736
    const/4 v5, 0x1

    .line 737
    new-array v4, v5, [Ljava/lang/Object;

    .line 738
    .line 739
    const/4 v5, 0x0

    .line 740
    aput-object v3, v4, v5

    .line 741
    .line 742
    const v3, 0x7f1208c4

    .line 743
    .line 744
    .line 745
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    const/4 v3, 0x0

    .line 750
    const/16 v4, 0x10

    .line 751
    .line 752
    move-object/from16 p1, p0

    .line 753
    .line 754
    move-object/from16 p2, v0

    .line 755
    .line 756
    move-object/from16 p3, v1

    .line 757
    .line 758
    move-object/from16 p4, v2

    .line 759
    .line 760
    move-object/from16 p5, v3

    .line 761
    .line 762
    move/from16 p6, v4

    .line 763
    .line 764
    invoke-static/range {p1 .. p6}, Lorg/wikipedia/commons/FilePageView;->addDetail$default(Lorg/wikipedia/commons/FilePageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;I)V

    .line 765
    .line 766
    .line 767
    goto :goto_14

    .line 768
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v0

    .line 776
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 777
    .line 778
    .line 779
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    const v2, 0x7f1208ca

    .line 784
    .line 785
    .line 786
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v1

    .line 790
    invoke-virtual {v11}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v2

    .line 794
    const/4 v3, 0x0

    .line 795
    const/16 v4, 0x10

    .line 796
    .line 797
    move-object/from16 p1, p0

    .line 798
    .line 799
    move-object/from16 p2, v0

    .line 800
    .line 801
    move-object/from16 p3, v1

    .line 802
    .line 803
    move-object/from16 p4, v2

    .line 804
    .line 805
    move-object/from16 p5, v3

    .line 806
    .line 807
    move/from16 p6, v4

    .line 808
    .line 809
    invoke-static/range {p1 .. p6}, Lorg/wikipedia/commons/FilePageView;->addDetail$default(Lorg/wikipedia/commons/FilePageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;I)V

    .line 810
    .line 811
    .line 812
    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    .line 813
    .line 814
    .line 815
    return-void
.end method


# virtual methods
.method public final addActionButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/wikipedia/views/ImageDetailView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, v1, v2}, Lorg/wikipedia/views/ImageDetailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewImageDetailBinding;->titleContainer:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewImageDetailBinding;->contentContainer:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewImageDetailBinding;->actionButton:Lcom/google/android/material/button/MaterialButton;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v1, v1, Lorg/wikipedia/databinding/ViewImageDetailBinding;->actionButton:Lcom/google/android/material/button/MaterialButton;

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lorg/wikipedia/views/ImageDetailView;->getBinding()Lorg/wikipedia/databinding/ViewImageDetailBinding;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewImageDetailBinding;->actionButton:Lcom/google/android/material/button/MaterialButton;

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lorg/wikipedia/commons/FilePageView;->binding:Lorg/wikipedia/databinding/ViewFilePageBinding;

    .line 63
    .line 64
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewFilePageBinding;->detailsContainer:Landroid/widget/LinearLayout;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final getBinding()Lorg/wikipedia/databinding/ViewFilePageBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/commons/FilePageView;->binding:Lorg/wikipedia/databinding/ViewFilePageBinding;

    .line 2
    .line 3
    return-object p0
.end method

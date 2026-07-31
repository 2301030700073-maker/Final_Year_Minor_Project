.class public final Lorg/wikipedia/descriptions/DescriptionEditLicenseView;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000fB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/wikipedia/descriptions/DescriptionEditLicenseView;",
        "Landroid/widget/LinearLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;",
        "callback",
        "Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;",
        "getCallback",
        "()Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;",
        "setCallback",
        "(Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;)V",
        "Callback",
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
.field public final binding:Lretrofit2/OkHttpCall$1;

.field public callback:Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

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
    const v0, 0x7f0c05bf

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    const p2, 0x7f090064

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const p2, 0x7f09032b

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/google/android/material/textview/MaterialTextView;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    new-instance p2, Lretrofit2/OkHttpCall$1;

    .line 41
    .line 42
    const/16 v3, 0xb

    .line 43
    .line 44
    invoke-direct {p2, p0, v0, v2, v3}, Lretrofit2/OkHttpCall$1;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;I)V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Lorg/wikipedia/descriptions/DescriptionEditLicenseView;->binding:Lretrofit2/OkHttpCall$1;

    .line 48
    .line 49
    new-instance p2, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 50
    .line 51
    new-instance v3, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 52
    .line 53
    const/4 v4, 0x3

    .line 54
    invoke-direct {v3, v4, p0, p1}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p2, v3}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_0

    .line 69
    .line 70
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 74
    .line 75
    .line 76
    const-string p1, "defaultNotice"

    .line 77
    .line 78
    invoke-virtual {p0, p1, v1}, Lorg/wikipedia/descriptions/DescriptionEditLicenseView;->buildLicenseNotice(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const-string p1, "Missing required view with ID: "

    .line 91
    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v1
.end method


# virtual methods
.method public final buildLicenseNotice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "articleDescriptionNotice"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    const v4, 0x7f1209aa

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    iget-object v6, p0, Lorg/wikipedia/descriptions/DescriptionEditLicenseView;->binding:Lretrofit2/OkHttpCall$1;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, "defaultNotice"

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    :cond_0
    if-nez p2, :cond_1

    .line 26
    .line 27
    const-string p2, ""

    .line 28
    .line 29
    :cond_1
    const-string v1, "en"

    .line 30
    .line 31
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_5

    .line 36
    .line 37
    const-string v1, "test"

    .line 38
    .line 39
    invoke-static {p2, v1, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-object p2, v6, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 49
    .line 50
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    const p1, 0x7f1208ea

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const-string v0, "imageCaptionNotice"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    const p1, 0x7f1208bb

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const p1, 0x7f12010f

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    const v7, 0x7f1200b9

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    new-array v3, v3, [Ljava/lang/Object;

    .line 101
    .line 102
    aput-object v0, v3, v5

    .line 103
    .line 104
    aput-object v4, v3, v2

    .line 105
    .line 106
    invoke-virtual {v1, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    :goto_1
    iget-object p1, v6, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 121
    .line 122
    sget-object p2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const v4, 0x7f1200ba

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    new-array v3, v3, [Ljava/lang/Object;

    .line 148
    .line 149
    aput-object v0, v3, v5

    .line 150
    .line 151
    aput-object v1, v3, v2

    .line 152
    .line 153
    const v0, 0x7f1201a9

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    :goto_2
    iget-object p1, v6, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast p1, Landroid/widget/TextView;

    .line 170
    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    const p2, 0x7f120196

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-static {p0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    iget-object p0, v6, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast p0, Landroid/widget/TextView;

    .line 192
    .line 193
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-nez p1, :cond_6

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_6
    const/16 v5, 0x8

    .line 201
    .line 202
    :goto_3
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method public final getCallback()Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditLicenseView;->callback:Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setCallback(Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditLicenseView;->callback:Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;

    .line 2
    .line 3
    return-void
.end method

.class public final Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001:\u0003\u0019\u001a\u001bB\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0010\u001a\u00060\u000fR\u00020\u00008\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001b\u0010\u0015\u001a\u00060\u0014R\u00020\u00008\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;",
        "Landroid/widget/LinearLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;",
        "callback",
        "Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;",
        "getCallback",
        "()Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;",
        "setCallback",
        "(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;)V",
        "Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;",
        "addToListCallback",
        "Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;",
        "getAddToListCallback",
        "()Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;",
        "Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;",
        "dismissCallback",
        "Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;",
        "getDismissCallback",
        "()Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;",
        "Callback",
        "OverlayViewAddToListCallback",
        "OverlayViewDismissCallback",
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
.field public final addToListCallback:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;

.field public final binding:Lorg/wikipedia/databinding/ItemCustomizeToolbarBinding;

.field public callback:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;

.field public final dismissCallback:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const p2, 0x7f0c05d2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    const p1, 0x7f090733

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Landroid/widget/ImageView;

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    const p1, 0x7f090734

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/TextView;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    new-instance p1, Lorg/wikipedia/databinding/ItemCustomizeToolbarBinding;

    .line 44
    .line 45
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/databinding/ItemCustomizeToolbarBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->binding:Lorg/wikipedia/databinding/ItemCustomizeToolbarBinding;

    .line 49
    .line 50
    new-instance p1, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;

    .line 51
    .line 52
    invoke-direct {p1, p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->addToListCallback:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;

    .line 56
    .line 57
    new-instance p1, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;

    .line 58
    .line 59
    invoke-direct {p1, p0}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->dismissCallback:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;

    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string p1, "Missing required view with ID: "

    .line 74
    .line 75
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 p0, 0x0

    .line 83
    throw p0
.end method


# virtual methods
.method public final getAddToListCallback()Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->addToListCallback:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCallback()Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->callback:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDismissCallback()Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->dismissCallback:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setCallback(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->callback:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;

    .line 2
    .line 3
    return-void
.end method

.method public final setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->Companion:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType$Companion;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType$Companion;->get(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;->binding:Lorg/wikipedia/databinding/ItemCustomizeToolbarBinding;

    .line 14
    .line 15
    iget-object v1, v0, Lorg/wikipedia/databinding/ItemCustomizeToolbarBinding;->dragHandle:Landroid/widget/ImageView;

    .line 16
    .line 17
    iget-object v0, v0, Lorg/wikipedia/databinding/ItemCustomizeToolbarBinding;->listItem:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->getIcon()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->OFFLINE:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 27
    .line 28
    if-ne p1, v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const p2, 0x7f120531

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const p2, 0x7f120530

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, "\n"

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_0
    sget-object v1, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->USER_PAGE_MISSING:Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;

    .line 81
    .line 82
    if-ne p1, v1, :cond_1

    .line 83
    .line 84
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->getText()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    const/16 v3, 0x3a

    .line 107
    .line 108
    invoke-static {p2, v3}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    const/4 v3, 0x3

    .line 113
    new-array v3, v3, [Ljava/lang/Object;

    .line 114
    .line 115
    const/4 v4, 0x0

    .line 116
    aput-object v1, v3, v4

    .line 117
    .line 118
    const/4 v1, 0x1

    .line 119
    aput-object v2, v3, v1

    .line 120
    .line 121
    const/4 v1, 0x2

    .line 122
    aput-object p2, v3, v1

    .line 123
    .line 124
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {p0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    sget p0, Lorg/wikipedia/page/LinkMovementMethodExt;->$r8$clinit:I

    .line 136
    .line 137
    invoke-static {}, Lokio/Path$Companion;->getExternalLinkMovementMethod$default()Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewErrorType;->getText()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

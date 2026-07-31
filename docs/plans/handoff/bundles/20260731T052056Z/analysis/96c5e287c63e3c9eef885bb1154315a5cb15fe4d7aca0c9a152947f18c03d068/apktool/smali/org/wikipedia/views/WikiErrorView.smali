.class public final Lorg/wikipedia/views/WikiErrorView;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001:\u0001+B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\r\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000cR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R$\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR$\u0010\u001c\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0017\u001a\u0004\u0008\u001d\u0010\u0019\"\u0004\u0008\u001e\u0010\u001bR$\u0010\u001f\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u0017\u001a\u0004\u0008 \u0010\u0019\"\u0004\u0008!\u0010\u001bR$\u0010\"\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u0017\u001a\u0004\u0008#\u0010\u0019\"\u0004\u0008$\u0010\u001bR\u0011\u0010(\u001a\u00020%8F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'R\u0011\u0010*\u001a\u00020%8F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\'\u00a8\u0006,"
    }
    d2 = {
        "Lorg/wikipedia/views/WikiErrorView;",
        "Landroid/widget/LinearLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "color",
        "",
        "setIconColorFilter",
        "(I)V",
        "setErrorTextColor",
        "Lorg/wikipedia/databinding/ViewWikiErrorBinding;",
        "binding",
        "Lorg/wikipedia/databinding/ViewWikiErrorBinding;",
        "getBinding",
        "()Lorg/wikipedia/databinding/ViewWikiErrorBinding;",
        "setBinding",
        "(Lorg/wikipedia/databinding/ViewWikiErrorBinding;)V",
        "Landroid/view/View$OnClickListener;",
        "retryClickListener",
        "Landroid/view/View$OnClickListener;",
        "getRetryClickListener",
        "()Landroid/view/View$OnClickListener;",
        "setRetryClickListener",
        "(Landroid/view/View$OnClickListener;)V",
        "backClickListener",
        "getBackClickListener",
        "setBackClickListener",
        "nextClickListener",
        "getNextClickListener",
        "setNextClickListener",
        "loginClickListener",
        "getLoginClickListener",
        "setLoginClickListener",
        "Landroid/widget/Space;",
        "getContentTopOffset",
        "()Landroid/widget/Space;",
        "contentTopOffset",
        "getTabLayoutOffset",
        "tabLayoutOffset",
        "ErrorType",
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
.field public backClickListener:Landroid/view/View$OnClickListener;

.field public binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

.field public loginClickListener:Landroid/view/View$OnClickListener;

.field public nextClickListener:Landroid/view/View$OnClickListener;

.field public retryClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

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
    const p2, 0x7f0c05fe

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    const p1, 0x7f090749

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    move-object v2, p2

    .line 29
    check-cast v2, Landroid/widget/Space;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const p1, 0x7f09074a

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    move-object v3, p2

    .line 41
    check-cast v3, Landroid/widget/Space;

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    const p1, 0x7f09074b

    .line 46
    .line 47
    .line 48
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    move-object v4, p2

    .line 53
    check-cast v4, Landroid/widget/Button;

    .line 54
    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    const p1, 0x7f09074c

    .line 58
    .line 59
    .line 60
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    move-object v5, p2

    .line 65
    check-cast v5, Landroid/widget/LinearLayout;

    .line 66
    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    const p1, 0x7f09074d

    .line 70
    .line 71
    .line 72
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    move-object v6, p2

    .line 77
    check-cast v6, Landroid/widget/TextView;

    .line 78
    .line 79
    if-eqz v6, :cond_1

    .line 80
    .line 81
    const p1, 0x7f09074e

    .line 82
    .line 83
    .line 84
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    move-object v7, p2

    .line 89
    check-cast v7, Landroid/widget/ImageView;

    .line 90
    .line 91
    if-eqz v7, :cond_1

    .line 92
    .line 93
    const p1, 0x7f09074f

    .line 94
    .line 95
    .line 96
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    move-object v8, p2

    .line 101
    check-cast v8, Landroid/widget/TextView;

    .line 102
    .line 103
    if-eqz v8, :cond_1

    .line 104
    .line 105
    new-instance v0, Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 106
    .line 107
    move-object v1, p0

    .line 108
    invoke-direct/range {v0 .. v8}, Lorg/wikipedia/databinding/ViewWikiErrorBinding;-><init>(Lorg/wikipedia/views/WikiErrorView;Landroid/widget/Space;Landroid/widget/Space;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 109
    .line 110
    .line 111
    iput-object v0, v1, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    if-nez p0, :cond_0

    .line 118
    .line 119
    sget p0, Lorg/wikipedia/page/LinkMovementMethodExt;->$r8$clinit:I

    .line 120
    .line 121
    invoke-static {}, Lokio/Path$Companion;->getExternalLinkMovementMethod$default()Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    iget-object p1, v1, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 126
    .line 127
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewWikiErrorBinding;->viewWikiErrorText:Landroid/widget/TextView;

    .line 128
    .line 129
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, v1, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 133
    .line 134
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewWikiErrorBinding;->viewWikiErrorFooterText:Landroid/widget/TextView;

    .line 135
    .line 136
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 137
    .line 138
    .line 139
    :cond_0
    return-void

    .line 140
    :cond_1
    move-object v1, p0

    .line 141
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    const-string p1, "Missing required view with ID: "

    .line 150
    .line 151
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const/4 p0, 0x0

    .line 159
    throw p0
.end method


# virtual methods
.method public final getBackClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/WikiErrorView;->backClickListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBinding()Lorg/wikipedia/databinding/ViewWikiErrorBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContentTopOffset()Landroid/widget/Space;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewWikiErrorBinding;->viewWikiErrorArticleContentTopOffset:Landroid/widget/Space;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getLoginClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/WikiErrorView;->loginClickListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNextClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/WikiErrorView;->nextClickListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRetryClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/WikiErrorView;->retryClickListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTabLayoutOffset()Landroid/widget/Space;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewWikiErrorBinding;->viewWikiErrorArticleTabLayoutOffset:Landroid/widget/Space;

    .line 4
    .line 5
    return-object p0
.end method

.method public final setBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/views/WikiErrorView;->backClickListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setBinding(Lorg/wikipedia/databinding/ViewWikiErrorBinding;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 5
    .line 6
    return-void
.end method

.method public final setError(Ljava/lang/Throwable;Lorg/wikipedia/page/PageTitle;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz p1, :cond_6

    .line 10
    .line 11
    instance-of v1, p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    move-object v1, p1

    .line 16
    check-cast v1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 17
    .line 18
    iget v1, v1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code:I

    .line 19
    .line 20
    const/16 v2, 0x194

    .line 21
    .line 22
    if-ne v1, v2, :cond_2

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    sget-object v2, Lorg/wikipedia/page/Namespace;->USER:Lorg/wikipedia/page/Namespace;

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    sget-object v1, Lorg/wikipedia/views/WikiErrorView$ErrorType;->USER_PAGE_MISSING:Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    sget-object v1, Lorg/wikipedia/views/WikiErrorView$ErrorType;->PAGE_MISSING:Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    sget-object v1, Lorg/wikipedia/views/WikiErrorView$ErrorType;->TIMEOUT:Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    instance-of v1, p1, Ljava/net/UnknownHostException;

    .line 50
    .line 51
    if-nez v1, :cond_5

    .line 52
    .line 53
    instance-of v1, p1, Ljava/net/SocketException;

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    instance-of v1, p1, Lorg/wikipedia/dataclient/mwapi/MwNotLoggedInException;

    .line 59
    .line 60
    if-eqz v1, :cond_6

    .line 61
    .line 62
    sget-object v1, Lorg/wikipedia/views/WikiErrorView$ErrorType;->LOGGED_OUT:Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_5
    :goto_1
    sget-object v1, Lorg/wikipedia/views/WikiErrorView$ErrorType;->OFFLINE:Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_6
    sget-object v1, Lorg/wikipedia/views/WikiErrorView$ErrorType;->GENERIC:Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 69
    .line 70
    :goto_2
    iget-object v2, p0, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 71
    .line 72
    iget-object v2, v2, Lorg/wikipedia/databinding/ViewWikiErrorBinding;->viewWikiErrorIcon:Landroid/widget/ImageView;

    .line 73
    .line 74
    invoke-virtual {v1}, Lorg/wikipedia/views/WikiErrorView$ErrorType;->getIcon()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    .line 80
    .line 81
    instance-of v2, p1, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    if-eqz v2, :cond_7

    .line 85
    .line 86
    iget-object p2, p0, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 87
    .line 88
    iget-object p2, p2, Lorg/wikipedia/databinding/ViewWikiErrorBinding;->viewWikiErrorText:Landroid/widget/TextView;

    .line 89
    .line 90
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 91
    .line 92
    move-object v2, p1

    .line 93
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 94
    .line 95
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwException;->error:Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 96
    .line 97
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->getMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_7
    sget-object v2, Lorg/wikipedia/views/WikiErrorView$ErrorType;->USER_PAGE_MISSING:Lorg/wikipedia/views/WikiErrorView$ErrorType;

    .line 110
    .line 111
    if-ne v1, v2, :cond_8

    .line 112
    .line 113
    if-eqz p2, :cond_8

    .line 114
    .line 115
    iget-object v2, p0, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 116
    .line 117
    iget-object v2, v2, Lorg/wikipedia/databinding/ViewWikiErrorBinding;->viewWikiErrorText:Landroid/widget/TextView;

    .line 118
    .line 119
    sget-object v4, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v1}, Lorg/wikipedia/views/WikiErrorView$ErrorType;->getText()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-virtual {p2}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    const/16 v8, 0x3a

    .line 142
    .line 143
    invoke-static {p2, v8}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    const/4 v8, 0x3

    .line 148
    new-array v8, v8, [Ljava/lang/Object;

    .line 149
    .line 150
    aput-object v6, v8, v3

    .line 151
    .line 152
    const/4 v6, 0x1

    .line 153
    aput-object v7, v8, v6

    .line 154
    .line 155
    const/4 v6, 0x2

    .line 156
    aput-object p2, v8, v6

    .line 157
    .line 158
    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    iget-object p2, p0, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 170
    .line 171
    iget-object p2, p2, Lorg/wikipedia/databinding/ViewWikiErrorBinding;->viewWikiErrorText:Landroid/widget/TextView;

    .line 172
    .line 173
    sget v2, Lorg/wikipedia/page/LinkMovementMethodExt;->$r8$clinit:I

    .line 174
    .line 175
    invoke-static {}, Lokio/Path$Companion;->getExternalLinkMovementMethod$default()Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_8
    iget-object p2, p0, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 184
    .line 185
    iget-object p2, p2, Lorg/wikipedia/databinding/ViewWikiErrorBinding;->viewWikiErrorText:Landroid/widget/TextView;

    .line 186
    .line 187
    invoke-virtual {v1}, Lorg/wikipedia/views/WikiErrorView$ErrorType;->getText()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    :goto_3
    iget-object p2, p0, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 199
    .line 200
    iget-object p2, p2, Lorg/wikipedia/databinding/ViewWikiErrorBinding;->viewWikiErrorButton:Landroid/widget/Button;

    .line 201
    .line 202
    invoke-virtual {v1}, Lorg/wikipedia/views/WikiErrorView$ErrorType;->getButtonText()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    iget-object p2, p0, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 214
    .line 215
    iget-object p2, p2, Lorg/wikipedia/databinding/ViewWikiErrorBinding;->viewWikiErrorButton:Landroid/widget/Button;

    .line 216
    .line 217
    invoke-virtual {v1, p0}, Lorg/wikipedia/views/WikiErrorView$ErrorType;->buttonClickListener(Lorg/wikipedia/views/WikiErrorView;)Landroid/view/View$OnClickListener;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Lorg/wikipedia/views/WikiErrorView$ErrorType;->getHasFooterText()Z

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    if-eqz p2, :cond_9

    .line 229
    .line 230
    iget-object p1, p0, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 231
    .line 232
    iget-object p1, p1, Lorg/wikipedia/databinding/ViewWikiErrorBinding;->viewWikiErrorFooterLayout:Landroid/widget/LinearLayout;

    .line 233
    .line 234
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    iget-object p0, p0, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 238
    .line 239
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewWikiErrorBinding;->viewWikiErrorFooterText:Landroid/widget/TextView;

    .line 240
    .line 241
    invoke-virtual {v1}, Lorg/wikipedia/views/WikiErrorView$ErrorType;->getFooterText()I

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :cond_9
    if-eqz p1, :cond_a

    .line 254
    .line 255
    instance-of p2, p1, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 256
    .line 257
    if-nez p2, :cond_a

    .line 258
    .line 259
    iget-object p2, p0, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 260
    .line 261
    iget-object p2, p2, Lorg/wikipedia/databinding/ViewWikiErrorBinding;->viewWikiErrorFooterLayout:Landroid/widget/LinearLayout;

    .line 262
    .line 263
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .line 265
    .line 266
    iget-object p0, p0, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 267
    .line 268
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewWikiErrorBinding;->viewWikiErrorFooterText:Landroid/widget/TextView;

    .line 269
    .line 270
    sget-object p2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 271
    .line 272
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :cond_a
    iget-object p0, p0, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 285
    .line 286
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewWikiErrorBinding;->viewWikiErrorFooterLayout:Landroid/widget/LinearLayout;

    .line 287
    .line 288
    const/16 p1, 0x8

    .line 289
    .line 290
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    .line 292
    .line 293
    return-void
.end method

.method public final setErrorTextColor(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewWikiErrorBinding;->viewWikiErrorText:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setIconColorFilter(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/WikiErrorView;->binding:Lorg/wikipedia/databinding/ViewWikiErrorBinding;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/databinding/ViewWikiErrorBinding;->viewWikiErrorIcon:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setLoginClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/views/WikiErrorView;->loginClickListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setNextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/views/WikiErrorView;->nextClickListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setRetryClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/views/WikiErrorView;->retryClickListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

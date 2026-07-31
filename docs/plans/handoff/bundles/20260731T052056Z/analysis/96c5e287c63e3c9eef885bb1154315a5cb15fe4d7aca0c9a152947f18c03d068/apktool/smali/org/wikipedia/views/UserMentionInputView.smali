.class public final Lorg/wikipedia/views/UserMentionInputView;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/views/UserMentionEditText$Listener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0003\'()B\u001b\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR$\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R(\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\"\u001a\u00020\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0011\u0010&\u001a\u00020#8F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%\u00a8\u0006*"
    }
    d2 = {
        "Lorg/wikipedia/views/UserMentionInputView;",
        "Landroid/widget/LinearLayout;",
        "Lorg/wikipedia/views/UserMentionEditText$Listener;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lorg/wikipedia/dataclient/WikiSite;",
        "wikiSite",
        "Lorg/wikipedia/dataclient/WikiSite;",
        "getWikiSite",
        "()Lorg/wikipedia/dataclient/WikiSite;",
        "setWikiSite",
        "(Lorg/wikipedia/dataclient/WikiSite;)V",
        "Lorg/wikipedia/views/UserMentionInputView$Listener;",
        "listener",
        "Lorg/wikipedia/views/UserMentionInputView$Listener;",
        "getListener",
        "()Lorg/wikipedia/views/UserMentionInputView$Listener;",
        "setListener",
        "(Lorg/wikipedia/views/UserMentionInputView$Listener;)V",
        "",
        "",
        "userNameHints",
        "Ljava/util/Set;",
        "getUserNameHints",
        "()Ljava/util/Set;",
        "setUserNameHints",
        "(Ljava/util/Set;)V",
        "Lorg/wikipedia/views/UserMentionEditText;",
        "getEditText",
        "()Lorg/wikipedia/views/UserMentionEditText;",
        "editText",
        "Lcom/google/android/material/textfield/TextInputLayout;",
        "getTextInputLayout",
        "()Lcom/google/android/material/textfield/TextInputLayout;",
        "textInputLayout",
        "Listener",
        "UserNameViewHolder",
        "DiffLinesAdapter",
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
.field public final binding:Lokhttp3/MultipartBody$Builder;

.field public clientJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public listener:Lorg/wikipedia/views/UserMentionInputView$Listener;

.field public userNameHints:Ljava/util/Set;

.field public final userNameList:Ljava/util/ArrayList;

.field public wikiSite:Lorg/wikipedia/dataclient/WikiSite;


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
    sget-object p2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 8
    .line 9
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iput-object p2, p0, Lorg/wikipedia/views/UserMentionInputView;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 18
    .line 19
    sget-object p2, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 20
    .line 21
    iput-object p2, p0, Lorg/wikipedia/views/UserMentionInputView;->userNameHints:Ljava/util/Set;

    .line 22
    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const v0, 0x7f0c05fa

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    const p2, 0x7f0902f1

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v3, v0

    .line 41
    check-cast v3, Lorg/wikipedia/views/UserMentionEditText;

    .line 42
    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    const p2, 0x7f0902f2

    .line 46
    .line 47
    .line 48
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    const p2, 0x7f0906ff

    .line 57
    .line 58
    .line 59
    invoke-static {p0, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    new-instance p2, Lokhttp3/MultipartBody$Builder;

    .line 68
    .line 69
    invoke-direct {p2, p0, v3, v0, v1}, Lokhttp3/MultipartBody$Builder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    iput-object p2, p0, Lorg/wikipedia/views/UserMentionInputView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 73
    .line 74
    new-instance p2, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p2, p0, Lorg/wikipedia/views/UserMentionInputView;->userNameList:Ljava/util/ArrayList;

    .line 80
    .line 81
    const/4 p2, 0x1

    .line 82
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, p0}, Lorg/wikipedia/views/UserMentionEditText;->setListener(Lorg/wikipedia/views/UserMentionEditText$Listener;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 89
    .line 90
    invoke-direct {v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 94
    .line 95
    .line 96
    new-instance p2, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 97
    .line 98
    const/16 v0, 0xe

    .line 99
    .line 100
    invoke-direct {p2, v0, p0}, Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;-><init>(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 104
    .line 105
    .line 106
    new-instance v1, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 107
    .line 108
    move-object v2, p1

    .line 109
    check-cast v2, Landroidx/activity/ComponentActivity;

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    const-wide/16 v5, 0xc8

    .line 113
    .line 114
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;-><init>(Landroidx/activity/ComponentActivity;Lorg/wikipedia/edit/SyntaxHighlightableEditText;Landroid/widget/ScrollView;J)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    const-string p1, "Missing required view with ID: "

    .line 127
    .line 128
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const/4 p0, 0x0

    .line 136
    throw p0
.end method


# virtual methods
.method public final getEditText()Lorg/wikipedia/views/UserMentionEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/UserMentionInputView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lorg/wikipedia/views/UserMentionEditText;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getListener()Lorg/wikipedia/views/UserMentionInputView$Listener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/UserMentionInputView;->listener:Lorg/wikipedia/views/UserMentionInputView$Listener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/UserMentionInputView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getUserNameHints()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/UserMentionInputView;->userNameHints:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getWikiSite()Lorg/wikipedia/dataclient/WikiSite;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/UserMentionInputView;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/views/UserMentionInputView;->clientJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onSearchResults()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/views/UserMentionInputView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    iget-object v1, v0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/views/UserMentionInputView;->listener:Lorg/wikipedia/views/UserMentionInputView$Listener;

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    check-cast p0, Lorg/wikipedia/talk/TalkReplyActivity;

    .line 29
    .line 30
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->talkScrollContainer:Landroid/view/View;

    .line 35
    .line 36
    check-cast v0, Landroid/widget/ScrollView;

    .line 37
    .line 38
    new-instance v1, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda11;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda11;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    const-string p0, "binding"

    .line 49
    .line 50
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    throw p0

    .line 55
    :cond_2
    return-void
.end method

.method public final setListener(Lorg/wikipedia/views/UserMentionInputView$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/views/UserMentionInputView;->listener:Lorg/wikipedia/views/UserMentionInputView$Listener;

    .line 2
    .line 3
    return-void
.end method

.method public final setUserNameHints(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/views/UserMentionInputView;->userNameHints:Ljava/util/Set;

    .line 5
    .line 6
    return-void
.end method

.method public final setWikiSite(Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/views/UserMentionInputView;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 5
    .line 6
    return-void
.end method

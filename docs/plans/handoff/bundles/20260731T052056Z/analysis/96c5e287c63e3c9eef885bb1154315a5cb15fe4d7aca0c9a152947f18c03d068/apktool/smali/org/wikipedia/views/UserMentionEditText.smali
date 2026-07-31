.class public final Lorg/wikipedia/views/UserMentionEditText;
.super Lorg/wikipedia/edit/SyntaxHighlightableEditText;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000fB\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/wikipedia/views/UserMentionEditText;",
        "Lorg/wikipedia/edit/SyntaxHighlightableEditText;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lorg/wikipedia/views/UserMentionEditText$Listener;",
        "listener",
        "Lorg/wikipedia/views/UserMentionEditText$Listener;",
        "getListener",
        "()Lorg/wikipedia/views/UserMentionEditText$Listener;",
        "setListener",
        "(Lorg/wikipedia/views/UserMentionEditText$Listener;)V",
        "Listener",
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
.field public isUserNameCommitting:Z

.field public listener:Lorg/wikipedia/views/UserMentionEditText$Listener;

.field public spacesPressedCount:I

.field public final textWatcher:Landroidx/appcompat/widget/SearchView$10;

.field public userNameEndPos:I

.field public userNameStartPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lorg/wikipedia/views/UserMentionEditText;->userNameStartPos:I

    .line 9
    .line 10
    iput p1, p0, Lorg/wikipedia/views/UserMentionEditText;->userNameEndPos:I

    .line 11
    .line 12
    new-instance p1, Landroidx/appcompat/widget/SearchView$10;

    .line 13
    .line 14
    const/16 p2, 0xe

    .line 15
    .line 16
    invoke-direct {p1, p2, p0}, Landroidx/appcompat/widget/SearchView$10;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lorg/wikipedia/views/UserMentionEditText;->textWatcher:Landroidx/appcompat/widget/SearchView$10;

    .line 23
    .line 24
    return-void
.end method

.method public static composeUserNameLink(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p1, p1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/wikipedia/staticdata/UserAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, ":"

    .line 8
    .line 9
    const-string/jumbo v1, "|"

    .line 10
    .line 11
    .line 12
    const-string v2, "@[["

    .line 13
    .line 14
    invoke-static {v2, p1, v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "]]"

    .line 19
    .line 20
    invoke-static {p1, p0, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method


# virtual methods
.method public final getListener()Lorg/wikipedia/views/UserMentionEditText$Listener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/UserMentionEditText;->listener:Lorg/wikipedia/views/UserMentionEditText$Listener;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onCancelUserNameEntry()V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/views/UserMentionEditText;->userNameStartPos:I

    .line 3
    .line 4
    iput v0, p0, Lorg/wikipedia/views/UserMentionEditText;->userNameEndPos:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/wikipedia/views/UserMentionEditText;->spacesPressedCount:I

    .line 8
    .line 9
    iget-object p0, p0, Lorg/wikipedia/views/UserMentionEditText;->listener:Lorg/wikipedia/views/UserMentionEditText$Listener;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    check-cast p0, Lorg/wikipedia/views/UserMentionInputView;

    .line 14
    .line 15
    iget-object v1, p0, Lorg/wikipedia/views/UserMentionInputView;->clientJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/views/UserMentionInputView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 24
    .line 25
    iget-object v1, v1, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    const/16 v2, 0x8

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lorg/wikipedia/views/UserMentionInputView;->listener:Lorg/wikipedia/views/UserMentionInputView$Listener;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    check-cast p0, Lorg/wikipedia/talk/TalkReplyActivity;

    .line 39
    .line 40
    iput-boolean v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->userMentionScrolled:Z

    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final onSelectionChanged(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/views/UserMentionEditText;->textWatcher:Landroidx/appcompat/widget/SearchView$10;

    .line 5
    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget-boolean v0, p0, Lorg/wikipedia/views/UserMentionEditText;->isUserNameCommitting:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lorg/wikipedia/views/UserMentionEditText;->userNameStartPos:I

    .line 15
    .line 16
    if-ltz v0, :cond_5

    .line 17
    .line 18
    if-lt p1, v0, :cond_4

    .line 19
    .line 20
    iget p1, p0, Lorg/wikipedia/views/UserMentionEditText;->userNameEndPos:I

    .line 21
    .line 22
    if-gt p2, p1, :cond_4

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-le p1, p2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget p2, p0, Lorg/wikipedia/views/UserMentionEditText;->userNameStartPos:I

    .line 40
    .line 41
    iget v0, p0, Lorg/wikipedia/views/UserMentionEditText;->userNameEndPos:I

    .line 42
    .line 43
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v0, "Entering username: "

    .line 54
    .line 55
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p2}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lorg/wikipedia/views/UserMentionEditText;->listener:Lorg/wikipedia/views/UserMentionEditText$Listener;

    .line 69
    .line 70
    if-eqz p0, :cond_5

    .line 71
    .line 72
    check-cast p0, Lorg/wikipedia/views/UserMentionInputView;

    .line 73
    .line 74
    iget-object p2, p0, Lorg/wikipedia/views/UserMentionInputView;->userNameList:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    const-string v0, "@"

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    const/4 v1, 0x1

    .line 93
    if-le v0, v1, :cond_3

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object p2, p0, Lorg/wikipedia/views/UserMentionInputView;->clientJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 100
    .line 101
    const/4 v0, 0x0

    .line 102
    if-eqz p2, :cond_2

    .line 103
    .line 104
    invoke-virtual {p2, v0}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-static {p0}, Lcoil3/util/BitmapsKt;->coroutineScope$default(Landroid/view/View;)Lkotlinx/coroutines/CoroutineScope;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    new-instance v1, Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

    .line 112
    .line 113
    invoke-direct {v1, p0}, Lorg/wikipedia/util/ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/views/UserMentionInputView;)V

    .line 114
    .line 115
    .line 116
    new-instance v2, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 117
    .line 118
    const/16 v3, 0xc

    .line 119
    .line 120
    invoke-direct {v2, p0, p1, v0, v3}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 121
    .line 122
    .line 123
    const/4 p1, 0x2

    .line 124
    invoke-static {p2, v1, v0, v2, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iput-object p1, p0, Lorg/wikipedia/views/UserMentionInputView;->clientJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 129
    .line 130
    return-void

    .line 131
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lorg/wikipedia/views/UserMentionInputView;->userNameHints:Ljava/util/Set;

    .line 135
    .line 136
    check-cast p1, Ljava/util/Collection;

    .line 137
    .line 138
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lorg/wikipedia/views/UserMentionInputView;->onSearchResults()V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lorg/wikipedia/views/UserMentionEditText;->onCancelUserNameEntry()V

    .line 146
    .line 147
    .line 148
    :cond_5
    :goto_1
    return-void
.end method

.method public final setListener(Lorg/wikipedia/views/UserMentionEditText$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/views/UserMentionEditText;->listener:Lorg/wikipedia/views/UserMentionEditText$Listener;

    .line 2
    .line 3
    return-void
.end method

.class public final Lorg/wikipedia/talk/TalkReplyActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/views/UserMentionInputView$Listener;
.implements Lorg/wikipedia/edit/preview/EditPreviewFragment$Callback;
.implements Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$DismissCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0007\u0008B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/wikipedia/talk/TalkReplyActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "Lorg/wikipedia/views/UserMentionInputView$Listener;",
        "Lorg/wikipedia/edit/preview/EditPreviewFragment$Callback;",
        "Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$DismissCallback;",
        "<init>",
        "()V",
        "TalkLinkHandler",
        "org/wikipedia/talk/UserTalkPopupHelper",
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
.field public static final draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;


# instance fields
.field public binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

.field public final licenseTextMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

.field public linkHandler:Lorg/wikipedia/talk/TalkReplyActivity$TalkLinkHandler;

.field public final linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

.field public messagePreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

.field public final onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

.field public final requestInsertMedia:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final requestLogin:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public savedSuccess:Z

.field public shouldWatchText:Z

.field public subjectOrBodyModified:Z

.field public textWatcher:Landroidx/appcompat/widget/SearchView$10;

.field public userMentionScrolled:Z

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lokhttp3/Request$Builder;

    .line 11
    .line 12
    const-class v3, Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 13
    .line 14
    sget-object v4, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v4, Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$viewModels$default$1;

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    invoke-direct {v4, p0, v5}, Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V

    .line 24
    .line 25
    .line 26
    new-instance v6, Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$viewModels$default$1;

    .line 27
    .line 28
    const/4 v7, 0x2

    .line 29
    invoke-direct {v6, p0, v7}, Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3, v4, v0, v6}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lorg/wikipedia/talk/TalkReplyActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 36
    .line 37
    iput-boolean v5, p0, Lorg/wikipedia/talk/TalkReplyActivity;->shouldWatchText:Z

    .line 38
    .line 39
    new-instance v0, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 40
    .line 41
    new-instance v2, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-direct {v2, p0, v1}, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v2}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithTextAndCoords;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 50
    .line 51
    new-instance v0, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 52
    .line 53
    new-instance v1, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    invoke-direct {v1, p0, v7}, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v1}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->licenseTextMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 62
    .line 63
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 64
    .line 65
    const/4 v1, 0x3

    .line 66
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    invoke-direct {v2, p0, v1}, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v2, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 79
    .line 80
    iput-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->requestLogin:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 81
    .line 82
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 83
    .line 84
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda0;

    .line 88
    .line 89
    const/4 v2, 0x4

    .line 90
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 98
    .line 99
    iput-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->requestInsertMedia:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 100
    .line 101
    new-instance v0, Landroidx/fragment/app/FragmentManager$1;

    .line 102
    .line 103
    const/16 v1, 0xc

    .line 104
    .line 105
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/FragmentManager$1;-><init>(ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iput-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 109
    .line 110
    return-void
.end method


# virtual methods
.method public final getParentPageTitle()Lorg/wikipedia/page/PageTitle;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getWikitextBody()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 6
    .line 7
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const v1, 0x7f1209dd

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v2, v2, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 44
    .line 45
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v3, v3, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 56
    .line 57
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const/16 v4, 0x3a

    .line 62
    .line 63
    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v4, "@"

    .line 68
    .line 69
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const/4 v4, 0x2

    .line 74
    new-array v4, v4, [Ljava/lang/Object;

    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    aput-object v2, v4, v5

    .line 78
    .line 79
    const/4 v2, 0x1

    .line 80
    aput-object v3, v4, v2

    .line 81
    .line 82
    const v2, 0x7f120a48

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const v1, 0x7f12085c

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const v1, 0x7f120153

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iget-object v2, v2, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 129
    .line 130
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    iget-wide v3, v3, Lorg/wikipedia/talk/TalkReplyViewModel;->toRevisionId:J

    .line 135
    .line 136
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    iget-wide v5, v5, Lorg/wikipedia/talk/TalkReplyViewModel;->fromRevisionId:J

    .line 141
    .line 142
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 147
    .line 148
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 149
    .line 150
    iget-object p0, p0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 151
    .line 152
    new-instance v7, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v8, "diff="

    .line 155
    .line 156
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v3, "&oldid="

    .line 163
    .line 164
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v3, "&variant="

    .line 171
    .line 172
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {v2, p0}, Lorg/wikipedia/page/PageTitle;->getWebApiUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-static {v0, v1, p0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    return-object p0

    .line 191
    :cond_0
    const-string p0, "binding"

    .line 192
    .line 193
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const/4 p0, 0x0

    .line 197
    throw p0
.end method

.method public final isNewPage()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->doesPageExist:Z

    .line 6
    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method public final launchLogin$1(Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lorg/wikipedia/login/LoginActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "login_request_source"

    .line 9
    .line 10
    const-string v2, "edit"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "create_account_first"

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->requestLogin:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 27
    .line 28
    invoke-virtual {p0, p1, v0}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const v2, 0x7f0c0035

    .line 11
    .line 12
    .line 13
    const/4 v11, 0x0

    .line 14
    const/4 v12, 0x0

    .line 15
    invoke-virtual {v0, v2, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v2, 0x7f090200

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    move-object v15, v3

    .line 27
    check-cast v15, Lorg/wikipedia/edit/WikiTextKeyboardView;

    .line 28
    .line 29
    if-eqz v15, :cond_3c

    .line 30
    .line 31
    const v2, 0x7f090201

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    move-object/from16 v16, v3

    .line 39
    .line 40
    check-cast v16, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;

    .line 41
    .line 42
    if-eqz v16, :cond_3c

    .line 43
    .line 44
    const v2, 0x7f090202

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    move-object/from16 v17, v3

    .line 52
    .line 53
    check-cast v17, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;

    .line 54
    .line 55
    if-eqz v17, :cond_3c

    .line 56
    .line 57
    const v2, 0x7f090263

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eqz v3, :cond_3c

    .line 65
    .line 66
    invoke-static {v3}, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->bind(Landroid/view/View;)Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 67
    .line 68
    .line 69
    move-result-object v18

    .line 70
    const v2, 0x7f090325

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    move-object/from16 v19, v3

    .line 78
    .line 79
    check-cast v19, Landroid/widget/TextView;

    .line 80
    .line 81
    if-eqz v19, :cond_3c

    .line 82
    .line 83
    const v2, 0x7f09040d

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Landroidx/fragment/app/FragmentContainerView;

    .line 91
    .line 92
    if-eqz v3, :cond_3b

    .line 93
    .line 94
    const v3, 0x7f090513

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    move-object/from16 v20, v4

    .line 102
    .line 103
    check-cast v20, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 104
    .line 105
    if-eqz v20, :cond_3a

    .line 106
    .line 107
    const v3, 0x7f09057b

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    move-object/from16 v21, v4

    .line 115
    .line 116
    check-cast v21, Lorg/wikipedia/views/UserMentionInputView;

    .line 117
    .line 118
    if-eqz v21, :cond_3a

    .line 119
    .line 120
    const v3, 0x7f09057c

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    move-object/from16 v22, v4

    .line 128
    .line 129
    check-cast v22, Landroid/widget/TextView;

    .line 130
    .line 131
    if-eqz v22, :cond_3a

    .line 132
    .line 133
    const v3, 0x7f09057d

    .line 134
    .line 135
    .line 136
    invoke-static {v0, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    move-object/from16 v23, v4

    .line 141
    .line 142
    check-cast v23, Lcom/google/android/material/textfield/TextInputLayout;

    .line 143
    .line 144
    if-eqz v23, :cond_3a

    .line 145
    .line 146
    const v3, 0x7f09057e

    .line 147
    .line 148
    .line 149
    invoke-static {v0, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    move-object/from16 v24, v4

    .line 154
    .line 155
    check-cast v24, Lorg/wikipedia/views/PlainPasteEditText;

    .line 156
    .line 157
    if-eqz v24, :cond_3a

    .line 158
    .line 159
    const v3, 0x7f09057f

    .line 160
    .line 161
    .line 162
    invoke-static {v0, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    move-object/from16 v25, v4

    .line 167
    .line 168
    check-cast v25, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 169
    .line 170
    if-eqz v25, :cond_3a

    .line 171
    .line 172
    const v3, 0x7f090679

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    move-object/from16 v26, v4

    .line 180
    .line 181
    check-cast v26, Landroid/widget/ScrollView;

    .line 182
    .line 183
    if-eqz v26, :cond_3a

    .line 184
    .line 185
    const v3, 0x7f0906bb

    .line 186
    .line 187
    .line 188
    invoke-static {v0, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    move-object/from16 v27, v4

    .line 193
    .line 194
    check-cast v27, Lorg/wikipedia/talk/TalkThreadItemView;

    .line 195
    .line 196
    if-eqz v27, :cond_3a

    .line 197
    .line 198
    new-instance v13, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 199
    .line 200
    move-object v14, v0

    .line 201
    check-cast v14, Landroid/widget/FrameLayout;

    .line 202
    .line 203
    invoke-direct/range {v13 .. v27}, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;-><init>(Landroid/widget/FrameLayout;Lorg/wikipedia/edit/WikiTextKeyboardView;Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;Landroid/widget/TextView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lorg/wikipedia/views/UserMentionInputView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputLayout;Lorg/wikipedia/views/PlainPasteEditText;Lcom/google/android/material/appbar/MaterialToolbar;Landroid/widget/ScrollView;Lorg/wikipedia/talk/TalkThreadItemView;)V

    .line 204
    .line 205
    .line 206
    iput-object v13, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 207
    .line 208
    invoke-virtual {v1, v14}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 212
    .line 213
    const-string v13, "binding"

    .line 214
    .line 215
    if-eqz v0, :cond_39

    .line 216
    .line 217
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyToolbar:Landroid/view/View;

    .line 218
    .line 219
    check-cast v0, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 220
    .line 221
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    const/4 v14, 0x1

    .line 229
    if-eqz v0, :cond_0

    .line 230
    .line 231
    invoke-virtual {v0, v14}, Lcoil3/util/ContextsKt;->setDisplayHomeAsUpEnabled(Z)V

    .line 232
    .line 233
    .line 234
    :cond_0
    const-string v0, ""

    .line 235
    .line 236
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iget-object v3, v1, Lorg/wikipedia/talk/TalkReplyActivity;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 244
    .line 245
    invoke-virtual {v0, v3, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/fragment/app/FragmentManager$1;Landroidx/lifecycle/LifecycleOwner;)V

    .line 246
    .line 247
    .line 248
    new-instance v0, Lorg/wikipedia/talk/TalkReplyActivity$TalkLinkHandler;

    .line 249
    .line 250
    invoke-direct {v0, v1, v1}, Lorg/wikipedia/talk/TalkReplyActivity$TalkLinkHandler;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;Lorg/wikipedia/talk/TalkReplyActivity;)V

    .line 251
    .line 252
    .line 253
    iput-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->linkHandler:Lorg/wikipedia/talk/TalkReplyActivity$TalkLinkHandler;

    .line 254
    .line 255
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    iget-object v3, v3, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 260
    .line 261
    iget-object v3, v3, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 262
    .line 263
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    iput-object v3, v0, Lorg/wikipedia/talk/TalkReplyActivity$TalkLinkHandler;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 267
    .line 268
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 269
    .line 270
    if-eqz v0, :cond_38

    .line 271
    .line 272
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectText:Landroid/view/View;

    .line 273
    .line 274
    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    .line 275
    .line 276
    new-instance v3, Landroidx/appcompat/widget/SearchView$10;

    .line 277
    .line 278
    const/16 v4, 0xa

    .line 279
    .line 280
    invoke-direct {v3, v4, v1}, Landroidx/appcompat/widget/SearchView$10;-><init>(ILjava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 284
    .line 285
    .line 286
    iput-object v3, v1, Lorg/wikipedia/talk/TalkReplyActivity;->textWatcher:Landroidx/appcompat/widget/SearchView$10;

    .line 287
    .line 288
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 289
    .line 290
    if-eqz v0, :cond_37

    .line 291
    .line 292
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 293
    .line 294
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 295
    .line 296
    invoke-virtual {v0}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    iget-object v3, v1, Lorg/wikipedia/talk/TalkReplyActivity;->textWatcher:Landroidx/appcompat/widget/SearchView$10;

    .line 301
    .line 302
    if-eqz v3, :cond_36

    .line 303
    .line 304
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 305
    .line 306
    .line 307
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 308
    .line 309
    if-eqz v0, :cond_35

    .line 310
    .line 311
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyNextButton:Landroid/widget/TextView;

    .line 312
    .line 313
    new-instance v3, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda4;

    .line 314
    .line 315
    invoke-direct {v3, v1, v12}, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    .line 320
    .line 321
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 322
    .line 323
    if-eqz v0, :cond_34

    .line 324
    .line 325
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->learnMoreButton:Landroid/widget/TextView;

    .line 326
    .line 327
    new-instance v3, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda4;

    .line 328
    .line 329
    invoke-direct {v3, v1, v14}, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    iget-boolean v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->isFromDiff:Z

    .line 340
    .line 341
    if-eqz v0, :cond_3

    .line 342
    .line 343
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 344
    .line 345
    if-eqz v0, :cond_2

    .line 346
    .line 347
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyNextButton:Landroid/widget/TextView;

    .line 348
    .line 349
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    iget-boolean v3, v3, Lorg/wikipedia/talk/TalkReplyViewModel;->templateManagementMode:Z

    .line 354
    .line 355
    if-eqz v3, :cond_1

    .line 356
    .line 357
    const v3, 0x7f120976

    .line 358
    .line 359
    .line 360
    goto :goto_0

    .line 361
    :cond_1
    const v3, 0x7f12019f

    .line 362
    .line 363
    .line 364
    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    .line 370
    .line 371
    goto :goto_1

    .line 372
    :cond_2
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw v11

    .line 376
    :cond_3
    :goto_1
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 377
    .line 378
    if-eqz v0, :cond_33

    .line 379
    .line 380
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 381
    .line 382
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 383
    .line 384
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    iget-object v3, v3, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 389
    .line 390
    iget-object v3, v3, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 391
    .line 392
    invoke-virtual {v0, v3}, Lorg/wikipedia/views/UserMentionInputView;->setWikiSite(Lorg/wikipedia/dataclient/WikiSite;)V

    .line 393
    .line 394
    .line 395
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 396
    .line 397
    if-eqz v0, :cond_32

    .line 398
    .line 399
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 400
    .line 401
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 402
    .line 403
    invoke-virtual {v0, v1}, Lorg/wikipedia/views/UserMentionInputView;->setListener(Lorg/wikipedia/views/UserMentionInputView$Listener;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 411
    .line 412
    iget-object v3, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 413
    .line 414
    const/16 v15, 0x8

    .line 415
    .line 416
    if-eqz v0, :cond_6

    .line 417
    .line 418
    if-eqz v3, :cond_5

    .line 419
    .line 420
    iget-object v0, v3, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->threadItemView:Landroid/view/View;

    .line 421
    .line 422
    check-cast v0, Lorg/wikipedia/talk/TalkThreadItemView;

    .line 423
    .line 424
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    iget-object v3, v3, Lorg/wikipedia/talk/TalkReplyViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 429
    .line 430
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    iget-object v4, v1, Lorg/wikipedia/talk/TalkReplyActivity;->linkMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 434
    .line 435
    invoke-static {v0, v3, v4, v11, v15}, Lorg/wikipedia/talk/TalkThreadItemView;->bindItem$default(Lorg/wikipedia/talk/TalkThreadItemView;Lorg/wikipedia/dataclient/discussiontools/ThreadItem;Landroid/text/method/MovementMethod;Ljava/lang/String;I)V

    .line 436
    .line 437
    .line 438
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 439
    .line 440
    if-eqz v0, :cond_4

    .line 441
    .line 442
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->threadItemView:Landroid/view/View;

    .line 443
    .line 444
    check-cast v0, Lorg/wikipedia/talk/TalkThreadItemView;

    .line 445
    .line 446
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 447
    .line 448
    .line 449
    goto :goto_2

    .line 450
    :cond_4
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    throw v11

    .line 454
    :cond_5
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    throw v11

    .line 458
    :cond_6
    if-eqz v3, :cond_31

    .line 459
    .line 460
    iget-object v0, v3, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->threadItemView:Landroid/view/View;

    .line 461
    .line 462
    check-cast v0, Lorg/wikipedia/talk/TalkThreadItemView;

    .line 463
    .line 464
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 465
    .line 466
    .line 467
    :goto_2
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->postReplyData:Lorg/wikipedia/util/SingleLiveData;

    .line 472
    .line 473
    new-instance v3, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda6;

    .line 474
    .line 475
    invoke-direct {v3, v1, v12}, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda6;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V

    .line 476
    .line 477
    .line 478
    new-instance v4, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;

    .line 479
    .line 480
    invoke-direct {v4, v3, v12}, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, v1, v4}, Lorg/wikipedia/util/SingleLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->saveTemplateData:Lorg/wikipedia/util/SingleLiveData;

    .line 491
    .line 492
    new-instance v3, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda6;

    .line 493
    .line 494
    invoke-direct {v3, v1, v14}, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda6;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V

    .line 495
    .line 496
    .line 497
    new-instance v4, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;

    .line 498
    .line 499
    invoke-direct {v4, v3, v12}, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v0, v1, v4}, Lorg/wikipedia/util/SingleLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->pageExistsData:Landroidx/lifecycle/MutableLiveData;

    .line 510
    .line 511
    new-instance v3, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda6;

    .line 512
    .line 513
    const/4 v4, 0x2

    .line 514
    invoke-direct {v3, v1, v4}, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda6;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V

    .line 515
    .line 516
    .line 517
    new-instance v5, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;

    .line 518
    .line 519
    invoke-direct {v5, v3, v12}, Lorg/wikipedia/talk/TalkReplyActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0, v1, v5}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->selectedTemplate:Lorg/wikipedia/talk/db/TalkTemplate;

    .line 530
    .line 531
    if-eqz v0, :cond_8

    .line 532
    .line 533
    iget-object v3, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 534
    .line 535
    if-eqz v3, :cond_7

    .line 536
    .line 537
    iget-object v3, v3, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->rootView:Landroid/view/View;

    .line 538
    .line 539
    check-cast v3, Landroid/widget/FrameLayout;

    .line 540
    .line 541
    new-instance v5, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 542
    .line 543
    const/16 v6, 0x1c

    .line 544
    .line 545
    invoke-direct {v5, v6, v1, v0}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v3, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 549
    .line 550
    .line 551
    goto :goto_3

    .line 552
    :cond_7
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    throw v11

    .line 556
    :cond_8
    :goto_3
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 561
    .line 562
    iget-object v3, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 563
    .line 564
    if-eqz v3, :cond_30

    .line 565
    .line 566
    iget-object v3, v3, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 567
    .line 568
    check-cast v3, Lorg/wikipedia/views/UserMentionInputView;

    .line 569
    .line 570
    invoke-virtual {v3}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    iget-object v5, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 575
    .line 576
    if-eqz v5, :cond_2f

    .line 577
    .line 578
    iget-object v6, v5, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlay:Landroid/view/ViewGroup;

    .line 579
    .line 580
    check-cast v6, Lorg/wikipedia/edit/WikiTextKeyboardView;

    .line 581
    .line 582
    if-eqz v5, :cond_2e

    .line 583
    .line 584
    iget-object v7, v5, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlayFormatting:Landroid/view/View;

    .line 585
    .line 586
    check-cast v7, Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;

    .line 587
    .line 588
    if-eqz v5, :cond_2d

    .line 589
    .line 590
    iget-object v5, v5, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlayHeadings:Landroid/view/View;

    .line 591
    .line 592
    check-cast v5, Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;

    .line 593
    .line 594
    move v8, v4

    .line 595
    move-object v4, v6

    .line 596
    move-object v6, v5

    .line 597
    move-object v5, v7

    .line 598
    sget-object v7, Lorg/wikipedia/Constants$InvokeSource;->TALK_REPLY_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 599
    .line 600
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 601
    .line 602
    .line 603
    move-result-object v9

    .line 604
    iget-boolean v9, v9, Lorg/wikipedia/talk/TalkReplyViewModel;->isFromDiff:Z

    .line 605
    .line 606
    move v10, v2

    .line 607
    move-object v2, v0

    .line 608
    new-instance v0, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;

    .line 609
    .line 610
    move/from16 v16, v10

    .line 611
    .line 612
    const/4 v10, 0x1

    .line 613
    move/from16 v17, v8

    .line 614
    .line 615
    iget-object v8, v1, Lorg/wikipedia/talk/TalkReplyActivity;->requestInsertMedia:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 616
    .line 617
    move-object/from16 p1, v11

    .line 618
    .line 619
    move/from16 v11, v16

    .line 620
    .line 621
    invoke-direct/range {v0 .. v10}, Lorg/wikipedia/edit/SyntaxHighlightViewAdapter;-><init>(Lorg/wikipedia/activity/BaseActivity;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/edit/SyntaxHighlightableEditText;Lorg/wikipedia/edit/WikiTextKeyboardView;Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;Lorg/wikipedia/Constants$InvokeSource;Landroidx/activity/result/ActivityResultRegistry$register$2;ZZ)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    invoke-virtual {v0, v11}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 633
    .line 634
    .line 635
    check-cast v0, Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 636
    .line 637
    iput-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->messagePreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 638
    .line 639
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 640
    .line 641
    if-eqz v0, :cond_2c

    .line 642
    .line 643
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->footerContainer:Ljava/lang/Object;

    .line 644
    .line 645
    check-cast v0, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;

    .line 646
    .line 647
    iget-object v0, v0, Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;->rootView:Landroid/widget/FrameLayout;

    .line 648
    .line 649
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 650
    .line 651
    .line 652
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 653
    .line 654
    if-eqz v0, :cond_2b

    .line 655
    .line 656
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->talkScrollContainer:Landroid/view/View;

    .line 657
    .line 658
    check-cast v0, Landroid/widget/ScrollView;

    .line 659
    .line 660
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    iget-object v2, v2, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 665
    .line 666
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 667
    .line 668
    iget-object v2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 669
    .line 670
    invoke-static {v0, v2}, Lcoil3/util/BitmapsKt;->setLayoutDirectionByLang(Landroid/view/View;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 674
    .line 675
    if-eqz v0, :cond_2a

    .line 676
    .line 677
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->learnMoreButton:Landroid/widget/TextView;

    .line 678
    .line 679
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 680
    .line 681
    .line 682
    move-result-object v2

    .line 683
    iget-boolean v2, v2, Lorg/wikipedia/talk/TalkReplyViewModel;->isFromDiff:Z

    .line 684
    .line 685
    if-eqz v2, :cond_9

    .line 686
    .line 687
    move v2, v12

    .line 688
    goto :goto_4

    .line 689
    :cond_9
    move v2, v15

    .line 690
    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 698
    .line 699
    if-eqz v0, :cond_b

    .line 700
    .line 701
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 702
    .line 703
    if-eqz v0, :cond_a

    .line 704
    .line 705
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 706
    .line 707
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 708
    .line 709
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 710
    .line 711
    .line 712
    move-result-object v2

    .line 713
    iget-object v2, v2, Lorg/wikipedia/talk/TalkReplyViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 714
    .line 715
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 716
    .line 717
    .line 718
    iget-object v2, v2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->author:Ljava/lang/String;

    .line 719
    .line 720
    invoke-static {v2}, Lkotlin/uuid/UuidKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 721
    .line 722
    .line 723
    move-result-object v2

    .line 724
    invoke-virtual {v0, v2}, Lorg/wikipedia/views/UserMentionInputView;->setUserNameHints(Ljava/util/Set;)V

    .line 725
    .line 726
    .line 727
    goto :goto_5

    .line 728
    :cond_a
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    throw p1

    .line 732
    :cond_b
    :goto_5
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 737
    .line 738
    if-nez v0, :cond_c

    .line 739
    .line 740
    move-object/from16 v0, p1

    .line 741
    .line 742
    goto :goto_7

    .line 743
    :cond_c
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 748
    .line 749
    if-eqz v0, :cond_d

    .line 750
    .line 751
    iget-object v0, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 752
    .line 753
    goto :goto_6

    .line 754
    :cond_d
    move-object/from16 v0, p1

    .line 755
    .line 756
    :goto_6
    sget-object v2, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 757
    .line 758
    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    check-cast v0, Ljava/lang/CharSequence;

    .line 763
    .line 764
    :goto_7
    if-eqz v0, :cond_12

    .line 765
    .line 766
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 767
    .line 768
    .line 769
    move-result v2

    .line 770
    if-nez v2, :cond_e

    .line 771
    .line 772
    goto :goto_8

    .line 773
    :cond_e
    iget-object v2, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 774
    .line 775
    if-eqz v2, :cond_11

    .line 776
    .line 777
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 778
    .line 779
    check-cast v2, Lorg/wikipedia/views/UserMentionInputView;

    .line 780
    .line 781
    invoke-virtual {v2}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 782
    .line 783
    .line 784
    move-result-object v2

    .line 785
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    .line 787
    .line 788
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 789
    .line 790
    if-eqz v0, :cond_10

    .line 791
    .line 792
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 793
    .line 794
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 795
    .line 796
    invoke-virtual {v0}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 797
    .line 798
    .line 799
    move-result-object v0

    .line 800
    iget-object v2, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 801
    .line 802
    if-eqz v2, :cond_f

    .line 803
    .line 804
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 805
    .line 806
    check-cast v2, Lorg/wikipedia/views/UserMentionInputView;

    .line 807
    .line 808
    invoke-virtual {v2}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 809
    .line 810
    .line 811
    move-result-object v2

    .line 812
    invoke-virtual {v2}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 813
    .line 814
    .line 815
    move-result-object v2

    .line 816
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v2

    .line 820
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 821
    .line 822
    .line 823
    move-result v2

    .line 824
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 825
    .line 826
    .line 827
    goto :goto_8

    .line 828
    :cond_f
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    throw p1

    .line 832
    :cond_10
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    throw p1

    .line 836
    :cond_11
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    throw p1

    .line 840
    :cond_12
    :goto_8
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 841
    .line 842
    if-eqz v0, :cond_29

    .line 843
    .line 844
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->progressBar:Landroid/view/View;

    .line 845
    .line 846
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 847
    .line 848
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 849
    .line 850
    .line 851
    iput-boolean v12, v1, Lorg/wikipedia/talk/TalkReplyActivity;->shouldWatchText:Z

    .line 852
    .line 853
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 854
    .line 855
    if-eqz v0, :cond_28

    .line 856
    .line 857
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectText:Landroid/view/View;

    .line 858
    .line 859
    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    .line 860
    .line 861
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 862
    .line 863
    .line 864
    move-result-object v2

    .line 865
    const-string v3, "subject"

    .line 866
    .line 867
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 868
    .line 869
    .line 870
    move-result-object v2

    .line 871
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    const-string v2, "body"

    .line 879
    .line 880
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 881
    .line 882
    .line 883
    move-result v0

    .line 884
    if-eqz v0, :cond_17

    .line 885
    .line 886
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 887
    .line 888
    if-eqz v0, :cond_16

    .line 889
    .line 890
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 891
    .line 892
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 893
    .line 894
    invoke-virtual {v0}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 895
    .line 896
    .line 897
    move-result-object v0

    .line 898
    invoke-virtual {v0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 903
    .line 904
    .line 905
    move-result v0

    .line 906
    if-nez v0, :cond_17

    .line 907
    .line 908
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 909
    .line 910
    if-eqz v0, :cond_15

    .line 911
    .line 912
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 913
    .line 914
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 915
    .line 916
    invoke-virtual {v0}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 921
    .line 922
    .line 923
    move-result-object v3

    .line 924
    invoke-virtual {v3, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 925
    .line 926
    .line 927
    move-result-object v2

    .line 928
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    .line 930
    .line 931
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 932
    .line 933
    if-eqz v0, :cond_14

    .line 934
    .line 935
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 936
    .line 937
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 938
    .line 939
    invoke-virtual {v0}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    iget-object v2, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 944
    .line 945
    if-eqz v2, :cond_13

    .line 946
    .line 947
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 948
    .line 949
    check-cast v2, Lorg/wikipedia/views/UserMentionInputView;

    .line 950
    .line 951
    invoke-virtual {v2}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 952
    .line 953
    .line 954
    move-result-object v2

    .line 955
    invoke-virtual {v2}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 956
    .line 957
    .line 958
    move-result-object v2

    .line 959
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v2

    .line 963
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 964
    .line 965
    .line 966
    move-result v2

    .line 967
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 968
    .line 969
    .line 970
    goto :goto_9

    .line 971
    :cond_13
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    throw p1

    .line 975
    :cond_14
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 976
    .line 977
    .line 978
    throw p1

    .line 979
    :cond_15
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 980
    .line 981
    .line 982
    throw p1

    .line 983
    :cond_16
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    throw p1

    .line 987
    :cond_17
    :goto_9
    iput-boolean v14, v1, Lorg/wikipedia/talk/TalkReplyActivity;->shouldWatchText:Z

    .line 988
    .line 989
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 990
    .line 991
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 992
    .line 993
    .line 994
    move-result-object v2

    .line 995
    iget-object v2, v2, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 996
    .line 997
    const-string/jumbo v3, "wikitext"

    .line 998
    .line 999
    .line 1000
    const-string v4, "init"

    .line 1001
    .line 1002
    invoke-static {v0, v2, v4, v3, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 1003
    .line 1004
    .line 1005
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 1006
    .line 1007
    if-eqz v0, :cond_27

    .line 1008
    .line 1009
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 1010
    .line 1011
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 1012
    .line 1013
    invoke-virtual {v0}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v0

    .line 1017
    invoke-virtual {v0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v0

    .line 1021
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 1022
    .line 1023
    .line 1024
    move-result v0

    .line 1025
    if-lez v0, :cond_18

    .line 1026
    .line 1027
    move v0, v14

    .line 1028
    goto :goto_a

    .line 1029
    :cond_18
    move v0, v12

    .line 1030
    :goto_a
    invoke-virtual {v1, v0}, Lorg/wikipedia/talk/TalkReplyActivity;->setSaveButtonEnabled(Z)V

    .line 1031
    .line 1032
    .line 1033
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v0

    .line 1037
    iget-boolean v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->isNewTopic:Z

    .line 1038
    .line 1039
    if-nez v0, :cond_20

    .line 1040
    .line 1041
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v0

    .line 1045
    iget-boolean v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->isFromDiff:Z

    .line 1046
    .line 1047
    if-eqz v0, :cond_19

    .line 1048
    .line 1049
    goto/16 :goto_b

    .line 1050
    .line 1051
    :cond_19
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 1052
    .line 1053
    if-eqz v0, :cond_1f

    .line 1054
    .line 1055
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectLayout:Landroid/view/View;

    .line 1056
    .line 1057
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 1058
    .line 1059
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    .line 1061
    .line 1062
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 1063
    .line 1064
    if-eqz v0, :cond_1e

    .line 1065
    .line 1066
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 1067
    .line 1068
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 1069
    .line 1070
    invoke-virtual {v0}, Lorg/wikipedia/views/UserMentionInputView;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v0

    .line 1074
    const v2, 0x7f120958

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v2

    .line 1081
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 1082
    .line 1083
    .line 1084
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 1085
    .line 1086
    if-eqz v0, :cond_1d

    .line 1087
    .line 1088
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->talkScrollContainer:Landroid/view/View;

    .line 1089
    .line 1090
    check-cast v0, Landroid/widget/ScrollView;

    .line 1091
    .line 1092
    const/16 v2, 0x82

    .line 1093
    .line 1094
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 1095
    .line 1096
    .line 1097
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 1098
    .line 1099
    if-eqz v0, :cond_1c

    .line 1100
    .line 1101
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 1102
    .line 1103
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 1104
    .line 1105
    invoke-static {}, Lokhttp3/Headers$Companion;->getUserName()Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v2

    .line 1109
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v3

    .line 1113
    iget-object v3, v3, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 1114
    .line 1115
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1116
    .line 1117
    .line 1118
    iget-object v4, v0, Lorg/wikipedia/views/UserMentionInputView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 1119
    .line 1120
    iget-object v5, v4, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 1121
    .line 1122
    check-cast v5, Lorg/wikipedia/views/UserMentionEditText;

    .line 1123
    .line 1124
    invoke-virtual {v5}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v5

    .line 1128
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 1129
    .line 1130
    .line 1131
    move-result v5

    .line 1132
    if-nez v5, :cond_1a

    .line 1133
    .line 1134
    iget-object v5, v0, Lorg/wikipedia/views/UserMentionInputView;->userNameHints:Ljava/util/Set;

    .line 1135
    .line 1136
    check-cast v5, Ljava/util/Collection;

    .line 1137
    .line 1138
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 1139
    .line 1140
    .line 1141
    move-result v5

    .line 1142
    if-nez v5, :cond_1a

    .line 1143
    .line 1144
    iget-object v5, v0, Lorg/wikipedia/views/UserMentionInputView;->userNameHints:Ljava/util/Set;

    .line 1145
    .line 1146
    check-cast v5, Ljava/lang/Iterable;

    .line 1147
    .line 1148
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v5

    .line 1152
    check-cast v5, Ljava/lang/String;

    .line 1153
    .line 1154
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1155
    .line 1156
    .line 1157
    move-result v2

    .line 1158
    if-nez v2, :cond_1a

    .line 1159
    .line 1160
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 1161
    .line 1162
    invoke-static {v5}, Lorg/wikipedia/util/StringUtil;->addUnderscores(Ljava/lang/String;)Ljava/lang/String;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v2

    .line 1166
    invoke-virtual {v3}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v3

    .line 1170
    const-string v6, "_"

    .line 1171
    .line 1172
    const-string v7, " "

    .line 1173
    .line 1174
    invoke-static {v3, v7, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v3

    .line 1178
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1179
    .line 1180
    .line 1181
    move-result v2

    .line 1182
    if-nez v2, :cond_1a

    .line 1183
    .line 1184
    iget-object v2, v4, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 1185
    .line 1186
    check-cast v2, Lorg/wikipedia/views/UserMentionEditText;

    .line 1187
    .line 1188
    iget-object v0, v0, Lorg/wikipedia/views/UserMentionInputView;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 1189
    .line 1190
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1194
    .line 1195
    .line 1196
    iput-boolean v14, v2, Lorg/wikipedia/views/UserMentionEditText;->isUserNameCommitting:Z

    .line 1197
    .line 1198
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 1199
    .line 1200
    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1201
    .line 1202
    .line 1203
    invoke-static {v5, v0}, Lorg/wikipedia/views/UserMentionEditText;->composeUserNameLink(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v0

    .line 1207
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1211
    .line 1212
    .line 1213
    new-instance v0, Landroid/text/SpannedString;

    .line 1214
    .line 1215
    invoke-direct {v0, v3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    .line 1220
    .line 1221
    iput-boolean v12, v2, Lorg/wikipedia/views/UserMentionEditText;->isUserNameCommitting:Z

    .line 1222
    .line 1223
    invoke-virtual {v0}, Landroid/text/SpannedString;->length()I

    .line 1224
    .line 1225
    .line 1226
    move-result v0

    .line 1227
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1228
    .line 1229
    .line 1230
    :cond_1a
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 1231
    .line 1232
    if-eqz v0, :cond_1b

    .line 1233
    .line 1234
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->talkScrollContainer:Landroid/view/View;

    .line 1235
    .line 1236
    check-cast v0, Landroid/widget/ScrollView;

    .line 1237
    .line 1238
    new-instance v2, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda11;

    .line 1239
    .line 1240
    const/4 v8, 0x2

    .line 1241
    invoke-direct {v2, v1, v8}, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda11;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1245
    .line 1246
    .line 1247
    goto :goto_c

    .line 1248
    :cond_1b
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1249
    .line 1250
    .line 1251
    throw p1

    .line 1252
    :cond_1c
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1253
    .line 1254
    .line 1255
    throw p1

    .line 1256
    :cond_1d
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1257
    .line 1258
    .line 1259
    throw p1

    .line 1260
    :cond_1e
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1261
    .line 1262
    .line 1263
    throw p1

    .line 1264
    :cond_1f
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1265
    .line 1266
    .line 1267
    throw p1

    .line 1268
    :cond_20
    :goto_b
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v0

    .line 1272
    iget-boolean v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->isNewTopic:Z

    .line 1273
    .line 1274
    if-eqz v0, :cond_21

    .line 1275
    .line 1276
    const v0, 0x7f12094a

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v0

    .line 1283
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1284
    .line 1285
    .line 1286
    :cond_21
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 1287
    .line 1288
    if-eqz v0, :cond_26

    .line 1289
    .line 1290
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 1291
    .line 1292
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 1293
    .line 1294
    invoke-virtual {v0}, Lorg/wikipedia/views/UserMentionInputView;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v0

    .line 1298
    const v2, 0x7f120949

    .line 1299
    .line 1300
    .line 1301
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v2

    .line 1305
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 1306
    .line 1307
    .line 1308
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 1309
    .line 1310
    if-eqz v0, :cond_25

    .line 1311
    .line 1312
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectLayout:Landroid/view/View;

    .line 1313
    .line 1314
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 1315
    .line 1316
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1317
    .line 1318
    .line 1319
    iget-object v0, v1, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 1320
    .line 1321
    if-eqz v0, :cond_24

    .line 1322
    .line 1323
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectLayout:Landroid/view/View;

    .line 1324
    .line 1325
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 1326
    .line 1327
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1328
    .line 1329
    .line 1330
    :goto_c
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v0

    .line 1334
    iget-boolean v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->templateManagementMode:Z

    .line 1335
    .line 1336
    if-eqz v0, :cond_23

    .line 1337
    .line 1338
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v0

    .line 1342
    if-eqz v0, :cond_23

    .line 1343
    .line 1344
    invoke-virtual {v1}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v2

    .line 1348
    iget-object v2, v2, Lorg/wikipedia/talk/TalkReplyViewModel;->selectedTemplate:Lorg/wikipedia/talk/db/TalkTemplate;

    .line 1349
    .line 1350
    if-nez v2, :cond_22

    .line 1351
    .line 1352
    const v2, 0x7f120979

    .line 1353
    .line 1354
    .line 1355
    :goto_d
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v1

    .line 1359
    goto :goto_e

    .line 1360
    :cond_22
    const v2, 0x7f120967

    .line 1361
    .line 1362
    .line 1363
    goto :goto_d

    .line 1364
    :goto_e
    invoke-virtual {v0, v1}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 1365
    .line 1366
    .line 1367
    :cond_23
    return-void

    .line 1368
    :cond_24
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1369
    .line 1370
    .line 1371
    throw p1

    .line 1372
    :cond_25
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1373
    .line 1374
    .line 1375
    throw p1

    .line 1376
    :cond_26
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1377
    .line 1378
    .line 1379
    throw p1

    .line 1380
    :cond_27
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1381
    .line 1382
    .line 1383
    throw p1

    .line 1384
    :cond_28
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1385
    .line 1386
    .line 1387
    throw p1

    .line 1388
    :cond_29
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1389
    .line 1390
    .line 1391
    throw p1

    .line 1392
    :cond_2a
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1393
    .line 1394
    .line 1395
    throw p1

    .line 1396
    :cond_2b
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1397
    .line 1398
    .line 1399
    throw p1

    .line 1400
    :cond_2c
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1401
    .line 1402
    .line 1403
    throw p1

    .line 1404
    :cond_2d
    move-object/from16 p1, v11

    .line 1405
    .line 1406
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1407
    .line 1408
    .line 1409
    throw p1

    .line 1410
    :cond_2e
    move-object/from16 p1, v11

    .line 1411
    .line 1412
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1413
    .line 1414
    .line 1415
    throw p1

    .line 1416
    :cond_2f
    move-object/from16 p1, v11

    .line 1417
    .line 1418
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1419
    .line 1420
    .line 1421
    throw p1

    .line 1422
    :cond_30
    move-object/from16 p1, v11

    .line 1423
    .line 1424
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1425
    .line 1426
    .line 1427
    throw p1

    .line 1428
    :cond_31
    move-object/from16 p1, v11

    .line 1429
    .line 1430
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1431
    .line 1432
    .line 1433
    throw p1

    .line 1434
    :cond_32
    move-object/from16 p1, v11

    .line 1435
    .line 1436
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1437
    .line 1438
    .line 1439
    throw p1

    .line 1440
    :cond_33
    move-object/from16 p1, v11

    .line 1441
    .line 1442
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1443
    .line 1444
    .line 1445
    throw p1

    .line 1446
    :cond_34
    move-object/from16 p1, v11

    .line 1447
    .line 1448
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1449
    .line 1450
    .line 1451
    throw p1

    .line 1452
    :cond_35
    move-object/from16 p1, v11

    .line 1453
    .line 1454
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1455
    .line 1456
    .line 1457
    throw p1

    .line 1458
    :cond_36
    move-object/from16 p1, v11

    .line 1459
    .line 1460
    const-string v0, "textWatcher"

    .line 1461
    .line 1462
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1463
    .line 1464
    .line 1465
    throw p1

    .line 1466
    :cond_37
    move-object/from16 p1, v11

    .line 1467
    .line 1468
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1469
    .line 1470
    .line 1471
    throw p1

    .line 1472
    :cond_38
    move-object/from16 p1, v11

    .line 1473
    .line 1474
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1475
    .line 1476
    .line 1477
    throw p1

    .line 1478
    :cond_39
    move-object/from16 p1, v11

    .line 1479
    .line 1480
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1481
    .line 1482
    .line 1483
    throw p1

    .line 1484
    :cond_3a
    move v2, v3

    .line 1485
    goto :goto_f

    .line 1486
    :cond_3b
    move v11, v2

    .line 1487
    :cond_3c
    :goto_f
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v0

    .line 1491
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v0

    .line 1495
    const-string v1, "Missing required view with ID: "

    .line 1496
    .line 1497
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v0

    .line 1501
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 1502
    .line 1503
    .line 1504
    return-void
.end method

.method public final onDestroy()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->savedSuccess:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "binding"

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 13
    .line 14
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v3, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 50
    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    iget-object v3, v3, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 54
    .line 55
    check-cast v3, Lorg/wikipedia/views/UserMentionInputView;

    .line 56
    .line 57
    invoke-virtual {v3}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    sget-object v4, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 66
    .line 67
    invoke-virtual {v4, v0, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v1

    .line 75
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v1

    .line 79
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 80
    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectText:Landroid/view/View;

    .line 84
    .line 85
    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    .line 86
    .line 87
    iget-object v3, p0, Lorg/wikipedia/talk/TalkReplyActivity;->textWatcher:Landroidx/appcompat/widget/SearchView$10;

    .line 88
    .line 89
    const-string v4, "textWatcher"

    .line 90
    .line 91
    if-eqz v3, :cond_5

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 101
    .line 102
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 103
    .line 104
    invoke-virtual {v0}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v2, p0, Lorg/wikipedia/talk/TalkReplyActivity;->textWatcher:Landroidx/appcompat/widget/SearchView$10;

    .line 109
    .line 110
    if-eqz v2, :cond_3

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    .line 114
    .line 115
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onDestroy()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v1

    .line 123
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v1

    .line 127
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v1

    .line 131
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v1
.end method

.method public final onLinkPreviewDismiss()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 12
    .line 13
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda11;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda11;-><init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v2, 0xc8

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const-string p0, "binding"

    .line 32
    .line 33
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    throw p0

    .line 38
    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/wikipedia/activity/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkReplyActivity;->setToolbarTitle$2(Lorg/wikipedia/page/PageTitle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->updateEditLicenseText$1()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final sendPatrollerExperienceEvent$2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->isFromDiff:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 10
    .line 11
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 12
    .line 13
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 14
    .line 15
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 20
    .line 21
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const-string v6, "app_patroller_experience"

    .line 26
    .line 27
    const-string v2, "pt_warning_messages"

    .line 28
    .line 29
    move-object v1, p1

    .line 30
    move-object v3, p2

    .line 31
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final setSaveButtonEnabled(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 2
    .line 3
    const-string v1, "binding"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyNextButton:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyNextButton:Landroid/widget/TextView;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const p1, 0x7f040520

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const p1, 0x7f0402dd

    .line 26
    .line 27
    .line 28
    :goto_0
    new-instance v1, Landroid/util/TypedValue;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-virtual {p0, p1, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    move-object v2, v1

    .line 45
    :cond_1
    if-eqz v2, :cond_2

    .line 46
    .line 47
    iget p0, v2, Landroid/util/TypedValue;->data:I

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    const-string p0, "Attribute not found; ID="

    .line 54
    .line 55
    invoke-static {p1, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v2

    .line 67
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v2
.end method

.method public final setToolbarTitle$2(Lorg/wikipedia/page/PageTitle;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->templateManagementMode:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const v0, 0x7f12098a

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-boolean v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->isNewTopic:Z

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-boolean v0, v0, Lorg/wikipedia/talk/TalkReplyViewModel;->isFromDiff:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "parentSubject"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    const-string v0, ""

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getNamespace()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    iget-object v0, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 65
    .line 66
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v0}, Lorg/wikipedia/staticdata/TalkAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :cond_3
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/16 v2, 0x3a

    .line 77
    .line 78
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, ": <a href=\'#\'>"

    .line 91
    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, "</a>"

    .line 99
    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :cond_4
    :goto_1
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_5

    .line 120
    .line 121
    const v0, 0x7f12094e

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    :cond_5
    :goto_2
    iget-object v1, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 132
    .line 133
    const/4 v2, 0x0

    .line 134
    if-eqz v1, :cond_c

    .line 135
    .line 136
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyToolbar:Landroid/view/View;

    .line 137
    .line 138
    check-cast v1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 139
    .line 140
    const/4 v3, 0x0

    .line 141
    move v4, v3

    .line 142
    :goto_3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-ge v4, v5, :cond_6

    .line 147
    .line 148
    const/4 v5, 0x1

    .line 149
    goto :goto_4

    .line 150
    :cond_6
    move v5, v3

    .line 151
    :goto_4
    if-eqz v5, :cond_9

    .line 152
    .line 153
    add-int/lit8 v5, v4, 0x1

    .line 154
    .line 155
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    if-eqz v4, :cond_8

    .line 160
    .line 161
    instance-of v6, v4, Landroid/widget/TextView;

    .line 162
    .line 163
    if-eqz v6, :cond_7

    .line 164
    .line 165
    move-object v2, v4

    .line 166
    check-cast v2, Landroid/widget/TextView;

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_7
    move v4, v5

    .line 170
    goto :goto_3

    .line 171
    :cond_8
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 172
    .line 173
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :cond_9
    :goto_5
    if-eqz v2, :cond_a

    .line 178
    .line 179
    new-instance v1, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 180
    .line 181
    new-instance v3, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 182
    .line 183
    const/16 v4, 0xe

    .line 184
    .line 185
    invoke-direct {v3, v4, p1, p0}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-direct {v1, v3}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 192
    .line 193
    .line 194
    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    if-eqz p0, :cond_b

    .line 199
    .line 200
    invoke-virtual {p0, v0}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    :cond_b
    return-void

    .line 204
    :cond_c
    const-string p0, "binding"

    .line 205
    .line 206
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v2
.end method

.method public final showEditPreview()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Landroidx/paging/HintHandler;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v3, 0x23

    .line 20
    .line 21
    if-lt v1, v3, :cond_0

    .line 22
    .line 23
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 24
    .line 25
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v3, 0x1e

    .line 30
    .line 31
    if-lt v1, v3, :cond_1

    .line 32
    .line 33
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 34
    .line 35
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/16 v3, 0x1a

    .line 40
    .line 41
    if-lt v1, v3, :cond_2

    .line 42
    .line 43
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 44
    .line 45
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 50
    .line 51
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {v1}, Lcoil3/util/UtilsKt;->hide()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    const-string v2, "binding"

    .line 61
    .line 62
    if-eqz v0, :cond_8

    .line 63
    .line 64
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->talkScrollContainer:Landroid/view/View;

    .line 65
    .line 66
    check-cast v0, Landroid/widget/ScrollView;

    .line 67
    .line 68
    const/16 v3, 0x8

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->updateEditLicenseText$1()V

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Lorg/wikipedia/talk/TalkReplyActivity;->setSaveButtonEnabled(Z)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    const v3, 0x7f1201a4

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v0, v3}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 97
    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyNextButton:Landroid/widget/TextView;

    .line 101
    .line 102
    const v3, 0x7f120118

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->messagePreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 113
    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    iget-object v3, v3, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 121
    .line 122
    iget-object v4, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 123
    .line 124
    if-eqz v4, :cond_5

    .line 125
    .line 126
    iget-object v1, v4, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectText:Landroid/view/View;

    .line 127
    .line 128
    check-cast v1, Lorg/wikipedia/views/PlainPasteEditText;

    .line 129
    .line 130
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getWikitextBody()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-lez v4, :cond_4

    .line 155
    .line 156
    const-string v4, "=="

    .line 157
    .line 158
    const-string v5, "==\n"

    .line 159
    .line 160
    invoke-static {v4, v1, v5, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    :cond_4
    invoke-virtual {v0, v3, v2}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->showPreview(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;

    .line 168
    .line 169
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 174
    .line 175
    const-string/jumbo v1, "wikitext"

    .line 176
    .line 177
    .line 178
    const-string v2, "saveIntent"

    .line 179
    .line 180
    invoke-static {v0, p0, v2, v1, p0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/analytics/eventplatform/EditAttemptStepEvent$Companion;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v1

    .line 188
    :cond_6
    const-string p0, "messagePreviewFragment"

    .line 189
    .line 190
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v1

    .line 194
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw v1

    .line 198
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw v1
.end method

.method public final showProgressBar$1(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->progressBar:Landroid/view/View;

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 p1, 0x8

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const-string p0, "binding"

    .line 23
    .line 24
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    throw p0
.end method

.method public final updateEditLicenseText$1()V
    .locals 5

    .line 1
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 2
    .line 3
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const v0, 0x7f1201a9

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const v0, 0x7f1201a8

    .line 14
    .line 15
    .line 16
    :goto_0
    const v1, 0x7f1209aa

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const v2, 0x7f1200ba

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x2

    .line 31
    new-array v3, v3, [Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    aput-object v1, v3, v4

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    aput-object v2, v3, v1

    .line 38
    .line 39
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lorg/wikipedia/talk/TalkReplyActivity;->messagePreviewFragment:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    const v2, 0x7f09032b

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/widget/TextView;

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->licenseTextMovementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 70
    .line 71
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void

    .line 75
    :cond_2
    const-string p0, "messagePreviewFragment"

    .line 76
    .line 77
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    throw p0
.end method

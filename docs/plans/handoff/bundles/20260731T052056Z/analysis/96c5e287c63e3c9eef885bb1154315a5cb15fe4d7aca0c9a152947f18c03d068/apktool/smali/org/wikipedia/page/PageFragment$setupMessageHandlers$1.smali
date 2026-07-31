.class public final Lorg/wikipedia/page/PageFragment$setupMessageHandlers$1;
.super Lorg/wikipedia/page/LinkHandler;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageFragment;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$setupMessageHandlers$1;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lorg/wikipedia/page/LinkHandler;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getWikiSite()Lorg/wikipedia/dataclient/WikiSite;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$setupMessageHandlers$1;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-object p0

    .line 17
    :cond_1
    :goto_0
    sget-object p0, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string p0, "en"

    .line 23
    .line 24
    invoke-static {p0}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final onDiffLinkClicked(Lorg/wikipedia/page/PageTitle;J)V
    .locals 10

    .line 1
    sget-object v0, Lorg/wikipedia/diff/ArticleEditDetailsActivity;->Companion:Lokio/ByteString$Companion;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$setupMessageHandlers$1;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v8, 0x0

    .line 10
    const/16 v9, 0x20

    .line 11
    .line 12
    const/4 v3, -0x1

    .line 13
    const-wide/16 v4, -0x1

    .line 14
    .line 15
    move-object v2, p1

    .line 16
    move-wide v6, p2

    .line 17
    invoke-static/range {v0 .. v9}, Lokio/ByteString$Companion;->newIntent$default(Lokio/ByteString$Companion;Landroid/content/Context;Lorg/wikipedia/page/PageTitle;IJJLorg/wikipedia/Constants$InvokeSource;I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onInternalLinkClicked(Lorg/wikipedia/page/PageTitle;)V
    .locals 7

    .line 1
    sget v0, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$setupMessageHandlers$1;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 6
    .line 7
    iget v1, p0, Landroidx/fragment/app/Fragment;->mState:I

    .line 8
    .line 9
    const/4 v2, 0x7

    .line 10
    if-lt v1, v2, :cond_a

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eq v1, v2, :cond_9

    .line 20
    .line 21
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget-object v2, Lorg/wikipedia/page/Namespace;->TALK:Lorg/wikipedia/page/Namespace;

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-object v2, Lorg/wikipedia/page/Namespace;->CATEGORY:Lorg/wikipedia/page/Namespace;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    sget v0, Lorg/wikipedia/categories/CategoryActivity;->$r8$clinit:I

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1, v4}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->dismissBottomSheet()V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    .line 58
    .line 59
    const/4 v2, 0x2

    .line 60
    invoke-direct {v1, v2, p1}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 61
    .line 62
    .line 63
    iget-object v5, v0, Lorg/wikipedia/page/PageViewModel;->curEntry:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v5, Lorg/wikipedia/history/HistoryEntry;

    .line 66
    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    iget-wide v5, v5, Lorg/wikipedia/history/HistoryEntry;->id:J

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const-wide/16 v5, -0x1

    .line 73
    .line 74
    :goto_0
    iput-wide v5, v1, Lorg/wikipedia/history/HistoryEntry;->prevId:J

    .line 75
    .line 76
    iget-object v5, v0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v5, Lorg/wikipedia/page/PageTitle;

    .line 79
    .line 80
    invoke-virtual {p1, v5}, Lorg/wikipedia/page/PageTitle;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_4

    .line 85
    .line 86
    iget-object v5, p1, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v5, :cond_4

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-nez v5, :cond_3

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    iget-object p1, p1, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/PageFragment;->scrollToSection(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_4
    :goto_1
    iget-object v0, v0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iput-object v0, v1, Lorg/wikipedia/history/HistoryEntry;->referrer:Ljava/lang/String;

    .line 117
    .line 118
    :cond_5
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    sget-object v5, Lorg/wikipedia/page/Namespace;->MAIN:Lorg/wikipedia/page/Namespace;

    .line 123
    .line 124
    if-ne v0, v5, :cond_7

    .line 125
    .line 126
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 127
    .line 128
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isLinkPreviewEnabled()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_6

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_6
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    if-eqz p0, :cond_8

    .line 140
    .line 141
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 142
    .line 143
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    new-instance p1, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    .line 148
    .line 149
    invoke-direct {p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;-><init>()V

    .line 150
    .line 151
    .line 152
    new-instance v0, Lkotlin/Pair;

    .line 153
    .line 154
    const-string v5, "entry"

    .line 155
    .line 156
    invoke-direct {v0, v5, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    new-instance v1, Lkotlin/Pair;

    .line 160
    .line 161
    const-string v5, "location"

    .line 162
    .line 163
    invoke-direct {v1, v5, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    new-instance v5, Lkotlin/Pair;

    .line 167
    .line 168
    const-string v6, "lastKnownLocation"

    .line 169
    .line 170
    invoke-direct {v5, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    const/4 v4, 0x3

    .line 174
    new-array v4, v4, [Lkotlin/Pair;

    .line 175
    .line 176
    aput-object v0, v4, v3

    .line 177
    .line 178
    const/4 v0, 0x1

    .line 179
    aput-object v1, v4, v0

    .line 180
    .line 181
    aput-object v5, v4, v2

    .line 182
    .line 183
    invoke-static {v4}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 188
    .line 189
    .line 190
    invoke-static {p0, p1}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    if-eqz p0, :cond_8

    .line 199
    .line 200
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 201
    .line 202
    sget-object v0, Lorg/wikipedia/page/PageActivity$TabPosition;->CURRENT_TAB:Lorg/wikipedia/page/PageActivity$TabPosition;

    .line 203
    .line 204
    invoke-virtual {p0, p1, v1, v0}, Lorg/wikipedia/page/PageActivity;->loadPage(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageActivity$TabPosition;)V

    .line 205
    .line 206
    .line 207
    :cond_8
    return-void

    .line 208
    :cond_9
    :goto_3
    invoke-virtual {p0, p1, v3}, Lorg/wikipedia/page/PageFragment;->startTalkTopicsActivity(Lorg/wikipedia/page/PageTitle;Z)V

    .line 209
    .line 210
    .line 211
    :cond_a
    return-void
.end method

.method public final onMediaLinkClicked(Lorg/wikipedia/page/PageTitle;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget v0, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$setupMessageHandlers$1;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 8
    .line 9
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lorg/wikipedia/views/ObservableWebView;->getLastTouchX()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-static {v2}, Lokio/Okio__OkioKt;->roundedPxToDp(F)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lorg/wikipedia/views/ObservableWebView;->getLastTouchY()F

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v3}, Lokio/Okio__OkioKt;->roundedPxToDp(F)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v5, "(function() {  let element = document.elementFromPoint("

    .line 49
    .line 50
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, ", "

    .line 57
    .line 58
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ");  let result = {};  result.left = element.getBoundingClientRect().left;  result.top = element.getBoundingClientRect().top;  result.width = element.clientWidth;  result.height = element.clientHeight;  result.src = element.src;  return result;})();"

    .line 65
    .line 66
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    new-instance v3, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda21;

    .line 74
    .line 75
    invoke-direct {v3, v1, p0, p1}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda21;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2, v3}, Lorg/wikipedia/bridge/CommunicationBridge;->evaluate(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_0
    const-string p0, "bridge"

    .line 83
    .line 84
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 p0, 0x0

    .line 88
    throw p0

    .line 89
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const v0, 0x7f120255

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    const/16 v0, 0xc

    .line 104
    .line 105
    invoke-static {p1, p0, v1, v0}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    new-instance p1, Lorg/wikipedia/util/FeedbackUtil$$ExternalSyntheticLambda1;

    .line 110
    .line 111
    const/4 v0, 0x1

    .line 112
    invoke-direct {p1, p0, v0}, Lorg/wikipedia/util/FeedbackUtil$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/snackbar/Snackbar;I)V

    .line 113
    .line 114
    .line 115
    const v0, 0x7f120256

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public final onPageLinkClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget p2, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$setupMessageHandlers$1;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->dismissBottomSheet()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const-string p2, "\""

    .line 16
    .line 17
    const-string v0, "\\\""

    .line 18
    .line 19
    invoke-static {p1, p2, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v0, "pcs.c1.Page.prepareForScrollToAnchor(\""

    .line 26
    .line 27
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, "\", { highlight: true } )"

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    const-string p0, "bridge"

    .line 47
    .line 48
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    throw p0
.end method

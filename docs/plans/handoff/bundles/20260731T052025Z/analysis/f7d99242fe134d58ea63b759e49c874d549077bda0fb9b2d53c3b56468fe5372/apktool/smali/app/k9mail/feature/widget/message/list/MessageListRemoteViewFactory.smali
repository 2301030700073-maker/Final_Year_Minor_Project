.class public final Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Lorg/koin/core/component/KoinComponent;


# instance fields
.field public final context:Landroid/content/Context;

.field public final coreResourceProvider$delegate:Lkotlin/Lazy;

.field public final generalSettingsManager$delegate:Lkotlin/Lazy;

.field public messageListItems:Ljava/util/List;

.field public final messageListLoader$delegate:Lkotlin/Lazy;

.field public readTextColor:I

.field public senderAboveSubject:Z

.field public unifiedInboxFolders:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

.field public unreadTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->context:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-direct {p1, p0, v0}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->messageListLoader$delegate:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance p1, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-direct {p1, p0, v1}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 31
    .line 32
    new-instance p1, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 33
    .line 34
    const/4 v1, 0x5

    .line 35
    invoke-direct {p1, p0, v1}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 43
    .line 44
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 45
    .line 46
    iput-object p1, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->messageListItems:Ljava/util/List;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->messageListItems:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->messageListItems:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;

    .line 8
    .line 9
    iget-wide p0, p0, Lapp/k9mail/feature/widget/message/list/MessageListItem;->uniqueId:J

    .line 10
    .line 11
    return-wide p0
.end method

.method public final bridge getKoin()Lorg/koin/core/Koin;
    .locals 0

    .line 1
    invoke-static {}, Lkotlinx/io/Sink$-CC;->$default$getKoin()Lorg/koin/core/Koin;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RemoteViews;

    .line 2
    .line 3
    iget-object p0, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x7f0c02dc

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    const v1, 0x7f120459

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const v1, 0x7f090261

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, p0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final getViewAt(I)Landroid/widget/RemoteViews;
    .locals 12

    .line 1
    new-instance v0, Landroid/widget/RemoteViews;

    .line 2
    .line 3
    iget-object v1, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x7f0c02db

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->messageListItems:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;

    .line 22
    .line 23
    iget-boolean v1, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->isRead:Z

    .line 24
    .line 25
    iget-object v2, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->displayName:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v5, Landroid/text/SpannableString;

    .line 33
    .line 34
    invoke-direct {v5, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    new-instance v6, Landroid/text/style/StyleSpan;

    .line 38
    .line 39
    invoke-direct {v6, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v5, v6, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 47
    .line 48
    .line 49
    move-object v2, v5

    .line 50
    :goto_0
    iget-object v5, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->subject:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    new-instance v6, Landroid/text/SpannableString;

    .line 56
    .line 57
    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    new-instance v7, Landroid/text/style/StyleSpan;

    .line 61
    .line 62
    invoke-direct {v7, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    invoke-virtual {v6, v7, v4, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 70
    .line 71
    .line 72
    move-object v5, v6

    .line 73
    :goto_1
    iget-boolean v6, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->senderAboveSubject:Z

    .line 74
    .line 75
    const v7, 0x7f090269

    .line 76
    .line 77
    .line 78
    const v8, 0x7f0903a8

    .line 79
    .line 80
    .line 81
    if-eqz v6, :cond_2

    .line 82
    .line 83
    invoke-virtual {v0, v8, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v7, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    invoke-virtual {v0, v8, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    :goto_2
    iget-object v2, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->displayDate:Ljava/lang/String;

    .line 97
    .line 98
    const v5, 0x7f090266

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    iget-object v2, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->preview:Ljava/lang/String;

    .line 105
    .line 106
    const v6, 0x7f090268

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    iget v2, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->threadCount:I

    .line 113
    .line 114
    const/16 v9, 0x8

    .line 115
    .line 116
    const v10, 0x7f090433

    .line 117
    .line 118
    .line 119
    const-string v11, "setVisibility"

    .line 120
    .line 121
    if-le v2, v3, :cond_3

    .line 122
    .line 123
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v0, v10, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v10, v11, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_3
    invoke-virtual {v0, v10, v11, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    :goto_3
    if-eqz v1, :cond_4

    .line 138
    .line 139
    iget p0, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->readTextColor:I

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_4
    iget p0, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->unreadTextColor:I

    .line 143
    .line 144
    :goto_4
    invoke-virtual {v0, v8, p0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v7, p0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v5, p0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v6, p0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 154
    .line 155
    .line 156
    iget-boolean p0, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->hasAttachments:Z

    .line 157
    .line 158
    const v1, 0x7f090085

    .line 159
    .line 160
    .line 161
    if-eqz p0, :cond_5

    .line 162
    .line 163
    invoke-virtual {v0, v1, v11, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_5
    invoke-virtual {v0, v1, v11, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    :goto_5
    sget-object p0, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 171
    .line 172
    iget-object p0, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 173
    .line 174
    new-instance v1, Landroid/content/Intent;

    .line 175
    .line 176
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v2, "message_reference"

    .line 180
    .line 181
    invoke-virtual {p0}, Lapp/k9mail/legacy/message/controller/MessageReference;->toIdentityString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    const p0, 0x7f090267

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, p0, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 192
    .line 193
    .line 194
    const-string p0, "setBackgroundColor"

    .line 195
    .line 196
    iget p1, p1, Lapp/k9mail/feature/widget/message/list/MessageListItem;->accountColor:I

    .line 197
    .line 198
    const v1, 0x7f090130

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1, p0, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    return-object v0
.end method

.method public final getViewTypeCount()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method

.method public final hasStableIds()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onCreate()V
    .locals 4

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/fsck/k9/resources/K9CoreResourceProvider;->searchUnifiedFoldersTitle()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/fsck/k9/resources/K9CoreResourceProvider;->searchUnifiedFoldersDetail()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    new-instance v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 22
    .line 23
    invoke-direct {v0}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "unified_folders"

    .line 27
    .line 28
    iput-object v1, v0, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 29
    .line 30
    sget-object v1, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->INTEGRATE:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 31
    .line 32
    const-string v2, "1"

    .line 33
    .line 34
    sget-object v3, Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;->EQUALS:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->and(Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;Ljava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->unifiedInboxFolders:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 40
    .line 41
    iget-object v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 42
    .line 43
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 48
    .line 49
    check-cast v0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v0, v0, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 56
    .line 57
    iget-object v0, v0, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 58
    .line 59
    iget-boolean v0, v0, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isMessageListSenderAboveSubject:Z

    .line 60
    .line 61
    iput-boolean v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->senderAboveSubject:Z

    .line 62
    .line 63
    const v0, 0x7f0604d7

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->context:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->readTextColor:I

    .line 73
    .line 74
    const v0, 0x7f0604d8

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->unreadTextColor:I

    .line 82
    .line 83
    return-void
.end method

.method public final onDataSetChanged()V
    .locals 3

    .line 1
    new-instance v0, Lapp/k9mail/feature/widget/message/list/MessageListConfig;

    .line 2
    .line 3
    iget-object v1, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->unifiedInboxFolders:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 8
    .line 9
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 14
    .line 15
    check-cast v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v2, v2, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 22
    .line 23
    iget-object v2, v2, Lnet/thunderbird/core/preference/display/DisplaySettings;->inboxSettings:Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;

    .line 24
    .line 25
    iget-boolean v2, v2, Lnet/thunderbird/core/preference/display/inboxSettings/DisplayInboxSettings;->isThreadedViewEnabled:Z

    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Lapp/k9mail/feature/widget/message/list/MessageListConfig;-><init>(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Z)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->messageListLoader$delegate:Lkotlin/Lazy;

    .line 31
    .line 32
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lapp/k9mail/feature/widget/message/list/MessageListLoader;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-virtual {v1, v0}, Lapp/k9mail/feature/widget/message/list/MessageListLoader;->getMessageListInfo(Lapp/k9mail/feature/widget/message/list/MessageListConfig;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const/4 v1, 0x0

    .line 48
    new-array v1, v1, [Ljava/lang/Object;

    .line 49
    .line 50
    const-string v2, "Error while fetching message list"

    .line 51
    .line 52
    invoke-static {v0, v2, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 56
    .line 57
    :goto_0
    iput-object v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListRemoteViewFactory;->messageListItems:Ljava/util/List;

    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    const-string p0, "unifiedInboxFolders"

    .line 61
    .line 62
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    throw p0
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    return-void
.end method

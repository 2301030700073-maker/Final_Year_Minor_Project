.class public final Lcom/fsck/k9/widget/list/MessageListWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# instance fields
.field public final coreResourceProvider$delegate:Lkotlin/Lazy;

.field public final messageListWidgetManager$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/fsck/k9/widget/list/MessageListWidgetProvider;->messageListWidgetManager$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/fsck/k9/widget/list/MessageListWidgetProvider;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
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

.method public final onDisabled(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/widget/list/MessageListWidgetProvider;->messageListWidgetManager$delegate:Lkotlin/Lazy;

    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string p1, "Message list widget removed"

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    new-array v1, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {p1, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->getAppWidgetIds()[I

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    array-length p1, p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move p1, v0

    .line 33
    :goto_0
    if-eqz p1, :cond_2

    .line 34
    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    iget-boolean p1, p0, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->listenerAdded:Z

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iput-boolean v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->listenerAdded:Z

    .line 41
    .line 42
    iget-object p1, p0, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 43
    .line 44
    iget-object v1, p0, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->listener:Lcom/fsck/k9/ui/messagelist/MessageListLiveData$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;->removeListener(Lapp/k9mail/legacy/mailstore/MessageListChangedListener;)V

    .line 47
    .line 48
    .line 49
    const-string p1, "Message list widget stopped listening for message list changes."

    .line 50
    .line 51
    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-static {p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    :goto_1
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p1

    .line 63
    :cond_2
    return-void
.end method

.method public final onEnabled(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/widget/list/MessageListWidgetProvider;->messageListWidgetManager$delegate:Lkotlin/Lazy;

    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    new-array p1, p1, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v0, "Message list widget added"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->registerMessageListChangedListener()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 11

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
    array-length v0, p3

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    if-ge v2, v0, :cond_0

    .line 14
    .line 15
    aget v3, p3, v2

    .line 16
    .line 17
    new-instance v4, Landroid/widget/RemoteViews;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const v6, 0x7f0c02da

    .line 24
    .line 25
    .line 26
    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const v5, 0x7f120456

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const v6, 0x7f0901f8

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    new-instance v5, Landroid/content/Intent;

    .line 43
    .line 44
    const-class v6, Lapp/k9mail/feature/widget/message/list/MessageListWidgetService;

    .line 45
    .line 46
    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .line 48
    .line 49
    const v6, 0x7f09025d

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v6, v5}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 53
    .line 54
    .line 55
    sget-object v5, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 56
    .line 57
    const/4 v5, 0x1

    .line 58
    invoke-static {p1, v5, v5}, Lcom/fsck/k9/activity/MessageHomeActivity$Companion;->actionDisplayMessageTemplateIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const/high16 v8, 0x8000000

    .line 63
    .line 64
    invoke-static {p1, v5, v7, v8, v5}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 72
    .line 73
    .line 74
    new-instance v6, Landroid/content/Intent;

    .line 75
    .line 76
    const-class v7, Lcom/fsck/k9/activity/MessageCompose;

    .line 77
    .line 78
    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .line 80
    .line 81
    const-string v7, "com.fsck.k9.intent.action.COMPOSE"

    .line 82
    .line 83
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    invoke-static {p1, v1, v6, v8, v1}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    const v7, 0x7f0902f8

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 97
    .line 98
    .line 99
    iget-object v6, p0, Lcom/fsck/k9/widget/list/MessageListWidgetProvider;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 100
    .line 101
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    check-cast v7, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 106
    .line 107
    invoke-virtual {v7}, Lcom/fsck/k9/resources/K9CoreResourceProvider;->searchUnifiedFoldersTitle()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    check-cast v6, Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 115
    .line 116
    invoke-virtual {v6}, Lcom/fsck/k9/resources/K9CoreResourceProvider;->searchUnifiedFoldersDetail()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    new-instance v6, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 120
    .line 121
    invoke-direct {v6}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v7, "unified_folders"

    .line 125
    .line 126
    iput-object v7, v6, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->id:Ljava/lang/String;

    .line 127
    .line 128
    sget-object v7, Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;->INTEGRATE:Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;

    .line 129
    .line 130
    const-string v9, "1"

    .line 131
    .line 132
    sget-object v10, Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;->EQUALS:Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;

    .line 133
    .line 134
    invoke-virtual {v6, v7, v9, v10}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->and(Lnet/thunderbird/feature/search/legacy/api/MessageSearchField;Ljava/lang/String;Lnet/thunderbird/feature/search/legacy/api/SearchAttribute;)V

    .line 135
    .line 136
    .line 137
    invoke-static {p1, v6, v5, v5}, Lcom/fsck/k9/activity/MessageHomeActivity$Companion;->intentDisplaySearch(Landroid/content/Context;Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;ZZ)Landroid/content/Intent;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    const/4 v6, -0x1

    .line 142
    invoke-static {p1, v6, v5, v8, v1}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    const v6, 0x7f09044b

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v6, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, v3, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 156
    .line 157
    .line 158
    add-int/lit8 v2, v2, 0x1

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_0
    return-void
.end method

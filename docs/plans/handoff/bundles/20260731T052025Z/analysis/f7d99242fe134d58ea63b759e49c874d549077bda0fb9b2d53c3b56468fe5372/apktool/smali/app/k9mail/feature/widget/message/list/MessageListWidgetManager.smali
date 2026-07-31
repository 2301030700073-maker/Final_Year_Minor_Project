.class public final Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public final context:Landroid/content/Context;

.field public final listener:Lcom/fsck/k9/ui/messagelist/MessageListLiveData$$ExternalSyntheticLambda0;

.field public listenerAdded:Z

.field public final messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/mailstore/DefaultMessageListRepository;Lapp/k9mail/widget/K9MessageListWidgetConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 7
    .line 8
    new-instance p1, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    invoke-direct {p1, p2, p0}, Lcom/fsck/k9/ui/messagelist/MessageListLiveData$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->listener:Lcom/fsck/k9/ui/messagelist/MessageListLiveData$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getAppWidgetIds()[I
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    iget-object v1, p0, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->context:Landroid/content/Context;

    .line 4
    .line 5
    const-class v2, Lcom/fsck/k9/widget/list/MessageListWidgetProvider;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-object p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 23
    new-array p0, p0, [I

    .line 24
    .line 25
    return-object p0
.end method

.method public final declared-synchronized registerMessageListChangedListener()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->listenerAdded:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->listenerAdded:Z

    .line 8
    .line 9
    iget-object v0, p0, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->messageListRepository:Lcom/fsck/k9/mailstore/DefaultMessageListRepository;

    .line 10
    .line 11
    iget-object v1, p0, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;->listener:Lcom/fsck/k9/ui/messagelist/MessageListLiveData$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/fsck/k9/mailstore/DefaultMessageListRepository;->globalListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    const-string v0, "Message list widget is now listening for message list changes\u2026"

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v0
.end method

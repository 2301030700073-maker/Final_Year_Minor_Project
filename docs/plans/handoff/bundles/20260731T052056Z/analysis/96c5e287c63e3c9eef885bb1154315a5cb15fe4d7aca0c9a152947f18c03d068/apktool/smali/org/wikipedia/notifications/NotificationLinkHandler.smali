.class public final Lorg/wikipedia/notifications/NotificationLinkHandler;
.super Lorg/wikipedia/page/LinkHandler;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final category:Lorg/wikipedia/notifications/NotificationCategory;

.field public wikiSite:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/wikipedia/notifications/NotificationCategory;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/wikipedia/page/LinkHandler;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/wikipedia/notifications/NotificationLinkHandler;->category:Lorg/wikipedia/notifications/NotificationCategory;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getWikiSite()Lorg/wikipedia/dataclient/WikiSite;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationLinkHandler;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string/jumbo p0, "wikiSite"

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    throw p0
.end method

.method public final onDiffLinkClicked(Lorg/wikipedia/page/PageTitle;J)V
    .locals 10

    .line 1
    sget-object v0, Lorg/wikipedia/diff/ArticleEditDetailsActivity;->Companion:Lokio/ByteString$Companion;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const/16 v9, 0x20

    .line 5
    .line 6
    iget-object v1, p0, Lorg/wikipedia/page/LinkHandler;->context:Landroid/content/Context;

    .line 7
    .line 8
    const/4 v3, -0x1

    .line 9
    const-wide/16 v4, -0x1

    .line 10
    .line 11
    move-object v2, p1

    .line 12
    move-wide v6, p2

    .line 13
    invoke-static/range {v0 .. v9}, Lokio/ByteString$Companion;->newIntent$default(Lokio/ByteString$Companion;Landroid/content/Context;Lorg/wikipedia/page/PageTitle;IJJLorg/wikipedia/Constants$InvokeSource;I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onExternalLinkClicked(Landroid/net/Uri;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lorg/wikipedia/page/LinkHandler;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lokio/Okio__JvmOkioKt;->openInCustomTab(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p0

    .line 15
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onInternalLinkClicked(Lorg/wikipedia/page/PageTitle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationLinkHandler;->category:Lorg/wikipedia/notifications/NotificationCategory;

    .line 2
    .line 3
    sget-object v1, Lorg/wikipedia/notifications/NotificationCategory;->LOGIN_FAIL:Lorg/wikipedia/notifications/NotificationCategory;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getUri()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lorg/wikipedia/notifications/NotificationLinkHandler;->onExternalLinkClicked(Landroid/net/Uri;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    sget v0, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 23
    .line 24
    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    .line 25
    .line 26
    const/16 v1, 0x19

    .line 27
    .line 28
    invoke-direct {v0, v1, p1}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    iget-object p0, p0, Lorg/wikipedia/page/LinkHandler;->context:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {p0, v0, p1, v1}, Lorg/wikipedia/login/LoginClient;->newIntentForCurrentTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onMediaLinkClicked(Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPageLinkClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

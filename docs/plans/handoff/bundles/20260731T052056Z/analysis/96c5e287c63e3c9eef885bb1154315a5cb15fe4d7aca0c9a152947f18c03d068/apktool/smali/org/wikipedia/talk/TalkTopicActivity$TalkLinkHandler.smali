.class public final Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;
.super Lorg/wikipedia/page/LinkHandler;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public lastX:I

.field public lastY:I

.field public final synthetic this$0:Lorg/wikipedia/talk/TalkTopicActivity;

.field public wikiSite:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public constructor <init>(Lorg/wikipedia/talk/TalkTopicActivity;Lorg/wikipedia/talk/TalkTopicActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

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
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

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
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

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

.method public final onInternalLinkClicked(Lorg/wikipedia/page/PageTitle;)V
    .locals 12

    .line 1
    sget-object v0, Lorg/wikipedia/talk/UserTalkPopupHelper;->INSTANCE:Lorg/wikipedia/talk/UserTalkPopupHelper;

    .line 2
    .line 3
    iget v4, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;->lastX:I

    .line 4
    .line 5
    iget v5, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;->lastY:I

    .line 6
    .line 7
    sget-object v6, Lorg/wikipedia/Constants$InvokeSource;->TALK_TOPICS_ACTIVITY:Lorg/wikipedia/Constants$InvokeSource;

    .line 8
    .line 9
    const/4 v10, 0x0

    .line 10
    const/16 v11, 0x780

    .line 11
    .line 12
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/16 v7, 0x1f

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x0

    .line 19
    move-object v2, p1

    .line 20
    invoke-static/range {v0 .. v11}, Lorg/wikipedia/talk/UserTalkPopupHelper;->show$default(Lorg/wikipedia/talk/UserTalkPopupHelper;Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/page/PageTitle;ZIILorg/wikipedia/Constants$InvokeSource;IZLjava/lang/Long;Ljava/lang/Integer;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onMediaLinkClicked(Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    .line 1
    sget v0, Lorg/wikipedia/commons/FilePageActivity;->$r8$clinit:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity$TalkLinkHandler;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 5
    .line 6
    invoke-static {p0, p1, v0}, Lokio/Path$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Z)Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
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

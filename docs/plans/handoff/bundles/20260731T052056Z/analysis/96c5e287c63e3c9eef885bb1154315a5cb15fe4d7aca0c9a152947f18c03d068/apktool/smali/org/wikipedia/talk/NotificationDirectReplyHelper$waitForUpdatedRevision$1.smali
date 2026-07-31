.class public final Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public I$0:I

.field public I$1:I

.field public J$0:J

.field public L$0:Landroid/content/Context;

.field public L$1:Lorg/wikipedia/dataclient/WikiSite;

.field public L$2:Lorg/wikipedia/page/PageTitle;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lorg/wikipedia/talk/UserTalkPopupHelper;


# direct methods
.method public constructor <init>(Lorg/wikipedia/talk/UserTalkPopupHelper;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->this$0:Lorg/wikipedia/talk/UserTalkPopupHelper;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iput-object p1, p0, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->label:I

    .line 9
    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    iget-object v0, p0, Lorg/wikipedia/talk/NotificationDirectReplyHelper$waitForUpdatedRevision$1;->this$0:Lorg/wikipedia/talk/UserTalkPopupHelper;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    move-object v7, p0

    .line 19
    invoke-virtual/range {v0 .. v7}, Lorg/wikipedia/talk/UserTalkPopupHelper;->waitForUpdatedRevision(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/PageTitle;JILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

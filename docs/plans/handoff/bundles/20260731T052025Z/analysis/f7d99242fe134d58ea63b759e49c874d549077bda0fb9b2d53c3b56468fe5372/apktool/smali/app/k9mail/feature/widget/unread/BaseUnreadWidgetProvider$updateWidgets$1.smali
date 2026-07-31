.class public final Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public I$0:I

.field public I$1:I

.field public L$0:Landroid/content/Context;

.field public L$1:Landroid/appwidget/AppWidgetManager;

.field public L$2:[I

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/fsck/k9/provider/UnreadWidgetProvider;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/provider/UnreadWidgetProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->this$0:Lcom/fsck/k9/provider/UnreadWidgetProvider;

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
    .locals 1

    .line 1
    iput-object p1, p0, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->this$0:Lcom/fsck/k9/provider/UnreadWidgetProvider;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0, v0, v0, p0}, Lcom/fsck/k9/provider/UnreadWidgetProvider;->access$updateWidgets(Lcom/fsck/k9/provider/UnreadWidgetProvider;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

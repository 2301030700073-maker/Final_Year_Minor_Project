.class public final Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$onSnackbarInAppNotificationEvent$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$onSnackbarInAppNotificationEvent$1;->this$0:Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;

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
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$onSnackbarInAppNotificationEvent$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$onSnackbarInAppNotificationEvent$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$onSnackbarInAppNotificationEvent$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment$onSnackbarInAppNotificationEvent$1;->this$0:Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;

    .line 11
    .line 12
    invoke-static {p1, p0}, Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;->access$onSnackbarInAppNotificationEvent(Lcom/fsck/k9/activity/compose/MessageComposeInAppNotificationFragment;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

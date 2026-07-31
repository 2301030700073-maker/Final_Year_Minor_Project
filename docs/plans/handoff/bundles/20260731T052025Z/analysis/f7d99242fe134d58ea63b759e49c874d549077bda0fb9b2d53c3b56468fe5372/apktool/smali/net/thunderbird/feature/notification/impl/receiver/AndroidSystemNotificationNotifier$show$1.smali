.class public final Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public I$0:I

.field public L$0:Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;->this$0:Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;

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
    iput-object p1, p0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier$show$1;->this$0:Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Lnet/thunderbird/feature/notification/impl/receiver/AndroidSystemNotificationNotifier;->show-MQcfKRA(Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Comparable;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

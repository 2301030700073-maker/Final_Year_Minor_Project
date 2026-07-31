.class public final Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public I$0:I

.field public I$1:I

.field public L$0:Ljava/lang/String;

.field public L$1:Ljava/lang/String;

.field public L$2:Ljava/lang/String;

.field public L$3:Ljava/lang/String;

.field public Z$0:Z

.field public Z$1:Z

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lokio/Path$Companion;


# direct methods
.method public constructor <init>(Lokio/Path$Companion;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->this$0:Lokio/Path$Companion;

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
    .locals 6

    .line 1
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->label:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    iget-object v0, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification$Companion$invoke$1;->this$0:Lokio/Path$Companion;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    move-object v5, p0

    .line 17
    invoke-virtual/range {v0 .. v5}, Lokio/Path$Companion;->invoke(Ljava/lang/String;Ljava/lang/String;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

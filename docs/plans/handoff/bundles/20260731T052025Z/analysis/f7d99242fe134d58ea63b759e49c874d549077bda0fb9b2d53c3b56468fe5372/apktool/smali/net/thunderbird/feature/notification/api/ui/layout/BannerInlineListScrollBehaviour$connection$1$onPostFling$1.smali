.class public final Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public F$0:F

.field public F$1:F

.field public J$0:J

.field public J$1:J

.field public J$2:J

.field public L$0:Lkotlin/jvm/internal/Ref$FloatRef;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->this$0:Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1;

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
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->label:I

    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    iget-object v0, p0, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1$onPostFling$1;->this$0:Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1;

    .line 15
    .line 16
    move-object v5, p0

    .line 17
    invoke-virtual/range {v0 .. v5}, Lnet/thunderbird/feature/notification/api/ui/layout/BannerInlineListScrollBehaviour$connection$1;->onPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.class public final Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public L$0:Lapp/k9mail/autodiscovery/autoconfig/HttpFetchResult$SuccessResponse;

.field public L$2:Lokhttp3/HttpUrl;

.field public L$3:Ljava/io/InputStream;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/beetstra/jutf7/Base64Util;


# direct methods
.method public constructor <init>(Lcom/beetstra/jutf7/Base64Util;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;->this$0:Lcom/beetstra/jutf7/Base64Util;

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
    iput-object p1, p0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Lapp/k9mail/autodiscovery/autoconfig/RealAutoconfigFetcher$parseSettings$1;->this$0:Lcom/beetstra/jutf7/Base64Util;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, v0, v0, p0}, Lcom/beetstra/jutf7/Base64Util;->parseSettings(Lapp/k9mail/autodiscovery/autoconfig/HttpFetchResult$SuccessResponse;Lnet/thunderbird/core/common/mail/EmailAddress;Lokhttp3/HttpUrl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

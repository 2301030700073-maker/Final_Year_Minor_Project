.class public final Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$initDiscovery$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lapp/k9mail/autodiscovery/api/AutoDiscoveryRunnable;


# instance fields
.field public final synthetic $email:Lnet/thunderbird/core/common/mail/EmailAddress;

.field public final synthetic this$0:Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;


# direct methods
.method public constructor <init>(Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;Lnet/thunderbird/core/common/mail/EmailAddress;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$initDiscovery$1;->this$0:Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$initDiscovery$1;->$email:Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run(Lcom/fsck/k9/Preferences$getAccountFlow$1;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$initDiscovery$1;->this$0:Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;

    .line 2
    .line 3
    iget-object p0, p0, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery$initDiscovery$1;->$email:Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 4
    .line 5
    invoke-static {v0, p0, p1}, Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;->access$mxLookupAutoconfig(Lapp/k9mail/autodiscovery/autoconfig/MxLookupAutoconfigDiscovery;Lnet/thunderbird/core/common/mail/EmailAddress;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

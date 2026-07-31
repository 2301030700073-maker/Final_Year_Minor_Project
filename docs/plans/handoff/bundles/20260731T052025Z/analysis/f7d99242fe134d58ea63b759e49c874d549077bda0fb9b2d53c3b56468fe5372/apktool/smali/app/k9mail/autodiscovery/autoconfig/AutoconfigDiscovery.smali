.class public final Lapp/k9mail/autodiscovery/autoconfig/AutoconfigDiscovery;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lapp/k9mail/autodiscovery/api/AutoDiscovery;


# instance fields
.field public final autoconfigFetcher:Lcom/beetstra/jutf7/Base64Util;

.field public final urlProvider:Lapp/k9mail/autodiscovery/autoconfig/AutoconfigUrlProvider;


# direct methods
.method public constructor <init>(Lapp/k9mail/autodiscovery/autoconfig/AutoconfigUrlProvider;Lcom/beetstra/jutf7/Base64Util;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigDiscovery;->urlProvider:Lapp/k9mail/autodiscovery/autoconfig/AutoconfigUrlProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigDiscovery;->autoconfigFetcher:Lcom/beetstra/jutf7/Base64Util;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final initDiscovery(Lnet/thunderbird/core/common/mail/EmailAddress;)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p1, Lnet/thunderbird/core/common/mail/EmailAddress;->domain:Lnet/thunderbird/core/common/mail/EmailDomain;

    .line 2
    .line 3
    iget-object v0, v0, Lnet/thunderbird/core/common/mail/EmailDomain;->value:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lnet/thunderbird/core/common/net/Domain;->constructor-impl(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigDiscovery;->urlProvider:Lapp/k9mail/autodiscovery/autoconfig/AutoconfigUrlProvider;

    .line 9
    .line 10
    invoke-interface {v1, v0, p1}, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigUrlProvider;->getAutoconfigUrls-s1GoCZM(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddress;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    const/16 v2, 0xa

    .line 17
    .line 18
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lokhttp3/HttpUrl;

    .line 40
    .line 41
    new-instance v3, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigDiscovery$initDiscovery$1$1;

    .line 42
    .line 43
    invoke-direct {v3, p0, v2, p1}, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigDiscovery$initDiscovery$1$1;-><init>(Lapp/k9mail/autodiscovery/autoconfig/AutoconfigDiscovery;Lokhttp3/HttpUrl;Lnet/thunderbird/core/common/mail/EmailAddress;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-object v1
.end method

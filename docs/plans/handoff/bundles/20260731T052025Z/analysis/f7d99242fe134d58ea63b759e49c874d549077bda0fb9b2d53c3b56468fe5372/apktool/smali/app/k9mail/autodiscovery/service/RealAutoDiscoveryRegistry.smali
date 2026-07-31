.class public final Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryRegistry;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final defaultAutoconfigUrlConfig:Lapp/k9mail/autodiscovery/autoconfig/AutoconfigUrlConfig;


# instance fields
.field public final autoDiscoveries:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lapp/k9mail/autodiscovery/autoconfig/AutoconfigUrlConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryRegistry;->defaultAutoconfigUrlConfig:Lapp/k9mail/autodiscovery/autoconfig/AutoconfigUrlConfig;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/autodiscovery/service/RealAutoDiscoveryRegistry;->autoDiscoveries:Ljava/util/ArrayList;

    .line 5
    .line 6
    return-void
.end method

.class public final Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountColors:Lkotlinx/collections/immutable/ImmutableList;

.field public final featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

.field public final iconCatalog:Lnet/thunderbird/feature/account/avatar/DefaultAvatarIconCatalog;

.field public final resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

.field public final validator:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsValidator;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/common/resources/StringsResourceManager;Lkotlinx/collections/immutable/ImmutableList;Lnet/thunderbird/feature/account/avatar/DefaultAvatarMonogramCreator;Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsValidator;Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;Lnet/thunderbird/feature/account/avatar/DefaultAvatarIconCatalog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;->resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;->accountColors:Lkotlinx/collections/immutable/ImmutableList;

    .line 7
    .line 8
    iput-object p4, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;->validator:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsValidator;

    .line 9
    .line 10
    iput-object p5, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;->featureFlagProvider:Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 11
    .line 12
    iput-object p6, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsBuilder;->iconCatalog:Lnet/thunderbird/feature/account/avatar/DefaultAvatarIconCatalog;

    .line 13
    .line 14
    return-void
.end method

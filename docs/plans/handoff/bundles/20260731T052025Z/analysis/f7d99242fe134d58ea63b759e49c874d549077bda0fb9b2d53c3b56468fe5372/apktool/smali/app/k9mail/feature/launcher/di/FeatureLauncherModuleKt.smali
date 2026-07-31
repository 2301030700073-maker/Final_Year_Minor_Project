.class public abstract Lapp/k9mail/feature/launcher/di/FeatureLauncherModuleKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final featureLauncherModule:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/koin/core/module/Module;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/koin/core/module/Module;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    new-array v1, v1, [Lorg/koin/core/module/Module;

    .line 8
    .line 9
    sget-object v2, Lapp/k9mail/feature/onboarding/main/OnboardingModuleKt;->featureOnboardingModule:Lorg/koin/core/module/Module;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v2, v1, v3

    .line 13
    .line 14
    sget-object v2, Lapp/k9mail/feature/settings/import/SettingsImportModuleKt;->featureSettingsImportModule:Lorg/koin/core/module/Module;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    aput-object v2, v1, v3

    .line 18
    .line 19
    sget-object v2, Lapp/k9mail/feature/account/setup/AccountSetupModuleKt;->featureAccountSetupModule:Lorg/koin/core/module/Module;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    aput-object v2, v1, v3

    .line 23
    .line 24
    sget-object v2, Lapp/k9mail/feature/account/edit/AccountEditModuleKt;->featureAccountEditModule:Lorg/koin/core/module/Module;

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    aput-object v2, v1, v3

    .line 28
    .line 29
    sget-object v2, Lnet/thunderbird/feature/debug/settings/inject/FeatureDebugSettingsModuleKt;->featureDebugSettingsModule:Lorg/koin/core/module/Module;

    .line 30
    .line 31
    const/4 v3, 0x4

    .line 32
    aput-object v2, v1, v3

    .line 33
    .line 34
    iget-object v2, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lapp/k9mail/feature/launcher/di/FeatureLauncherModuleKt;->featureLauncherModule:Lorg/koin/core/module/Module;

    .line 40
    .line 41
    return-void
.end method

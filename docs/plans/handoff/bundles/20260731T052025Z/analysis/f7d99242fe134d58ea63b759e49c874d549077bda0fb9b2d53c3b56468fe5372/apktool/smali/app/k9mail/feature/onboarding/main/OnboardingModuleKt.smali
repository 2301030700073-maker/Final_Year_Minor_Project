.class public abstract Lapp/k9mail/feature/onboarding/main/OnboardingModuleKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final featureOnboardingModule:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/koin/core/module/Module;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/koin/core/module/Module;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v5, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    const/16 v1, 0x19

    .line 9
    .line 10
    invoke-direct {v5, v1}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 14
    .line 15
    const-class v2, Lapp/k9mail/feature/onboarding/main/navigation/DefaultOnboardingNavigation;

    .line 16
    .line 17
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    sget-object v2, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    sget-object v6, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 25
    .line 26
    invoke-direct/range {v1 .. v6}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    new-array v1, v1, [Lorg/koin/core/module/Module;

    .line 34
    .line 35
    sget-object v2, Lapp/k9mail/feature/onboarding/permissions/PermissionsModuleKt;->featureOnboardingPermissionsModule:Lorg/koin/core/module/Module;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    aput-object v2, v1, v3

    .line 39
    .line 40
    iget-object v2, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lapp/k9mail/feature/onboarding/main/OnboardingModuleKt;->featureOnboardingModule:Lorg/koin/core/module/Module;

    .line 46
    .line 47
    return-void
.end method

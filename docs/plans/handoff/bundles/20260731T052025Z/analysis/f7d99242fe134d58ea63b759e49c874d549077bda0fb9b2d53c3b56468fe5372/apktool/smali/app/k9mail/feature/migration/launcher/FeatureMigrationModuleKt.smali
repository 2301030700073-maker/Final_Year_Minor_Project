.class public abstract Lapp/k9mail/feature/migration/launcher/FeatureMigrationModuleKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final featureMigrationModule:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/koin/core/module/Module;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/koin/core/module/Module;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Lorg/koin/core/module/Module;

    .line 8
    .line 9
    sget-object v2, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt;->qrCodeModule:Lorg/koin/core/module/Module;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v2, v1, v3

    .line 13
    .line 14
    iget-object v2, v0, Lorg/koin/core/module/Module;->includedModules:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance v7, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;

    .line 20
    .line 21
    const/16 v1, 0x10

    .line 22
    .line 23
    invoke-direct {v7, v1}, Lapp/k9mail/feature/migration/qrcode/QrCodeModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Lorg/koin/core/definition/BeanDefinition;

    .line 27
    .line 28
    const-class v1, Lapp/k9mail/feature/migration/launcher/k9/K9MigrationManager;

    .line 29
    .line 30
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    sget-object v4, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    sget-object v8, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 38
    .line 39
    invoke-direct/range {v3 .. v8}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lapp/k9mail/feature/migration/launcher/FeatureMigrationModuleKt;->featureMigrationModule:Lorg/koin/core/module/Module;

    .line 46
    .line 47
    return-void
.end method

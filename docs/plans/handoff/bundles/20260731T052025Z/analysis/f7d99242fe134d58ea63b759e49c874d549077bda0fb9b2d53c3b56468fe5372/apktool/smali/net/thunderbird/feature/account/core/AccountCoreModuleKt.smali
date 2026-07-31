.class public abstract Lnet/thunderbird/feature/account/core/AccountCoreModuleKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final featureAccountCoreModule:Lorg/koin/core/module/Module;


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
    new-instance v5, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v5, v1}, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 13
    .line 14
    const-class v2, Lnet/thunderbird/feature/account/core/data/DefaultAccountProfileRepository;

    .line 15
    .line 16
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    sget-object v2, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    sget-object v6, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 24
    .line 25
    invoke-direct/range {v1 .. v6}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lnet/thunderbird/feature/account/core/AccountCoreModuleKt;->featureAccountCoreModule:Lorg/koin/core/module/Module;

    .line 32
    .line 33
    return-void
.end method

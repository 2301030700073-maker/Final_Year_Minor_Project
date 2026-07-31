.class public abstract Lcom/fsck/k9/ui/messagesource/KoinModuleKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final messageSourceModule:Lorg/koin/core/module/Module;


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
    new-instance v5, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    const/16 v1, 0x1b

    .line 9
    .line 10
    invoke-direct {v5, v1}, Lcom/fsck/k9/ui/base/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 14
    .line 15
    const-class v2, Lcom/fsck/k9/ui/messagesource/MessageHeadersViewModel;

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
    sget-object v6, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 25
    .line 26
    invoke-direct/range {v1 .. v6}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/fsck/k9/ui/messagesource/KoinModuleKt;->messageSourceModule:Lorg/koin/core/module/Module;

    .line 33
    .line 34
    return-void
.end method

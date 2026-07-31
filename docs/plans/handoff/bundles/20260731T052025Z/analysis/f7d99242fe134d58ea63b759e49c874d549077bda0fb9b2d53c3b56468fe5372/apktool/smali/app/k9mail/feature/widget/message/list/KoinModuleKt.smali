.class public abstract Lapp/k9mail/feature/widget/message/list/KoinModuleKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final messageListWidgetModule:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lorg/koin/core/module/Module;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/koin/core/module/Module;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v5, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    const/4 v1, 0x5

    .line 9
    invoke-direct {v5, v1}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lorg/koin/core/definition/BeanDefinition;

    .line 13
    .line 14
    const-class v2, Lapp/k9mail/feature/widget/message/list/MessageListWidgetManager;

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
    new-instance v3, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 29
    .line 30
    invoke-direct {v3, v1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 34
    .line 35
    .line 36
    new-instance v10, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 37
    .line 38
    const/4 v1, 0x6

    .line 39
    invoke-direct {v10, v1}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 40
    .line 41
    .line 42
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 43
    .line 44
    const-class v1, Lapp/k9mail/feature/widget/message/list/MessageListLoader;

    .line 45
    .line 46
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    const/4 v9, 0x0

    .line 51
    sget-object v11, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    .line 52
    .line 53
    move-object v7, v2

    .line 54
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v6, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m$1(Lorg/koin/core/definition/BeanDefinition;Lorg/koin/core/module/Module;)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lapp/k9mail/feature/widget/message/list/KoinModuleKt;->messageListWidgetModule:Lorg/koin/core/module/Module;

    .line 61
    .line 62
    return-void
.end method

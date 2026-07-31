.class public final Lcom/fsck/k9/Core$special$$inlined$inject$default$4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $qualifier:Lorg/koin/core/qualifier/StringQualifier;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/StringQualifier;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/fsck/k9/Core$special$$inlined$inject$default$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fsck/k9/Core$special$$inlined$inject$default$4;->$qualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/Core$special$$inlined$inject$default$4;->$r8$classId:I

    .line 2
    .line 3
    const-class v1, Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/fsck/k9/Core$special$$inlined$inject$default$4;->$qualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlinx/io/Sink$-CC;->$default$getKoin()Lorg/koin/core/Koin;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 16
    .line 17
    iget-object v0, v0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 18
    .line 19
    const-class v1, Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 20
    .line 21
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, p0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_0
    invoke-static {}, Lkotlinx/io/Sink$-CC;->$default$getKoin()Lorg/koin/core/Koin;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v0, v0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 38
    .line 39
    iget-object v0, v0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 40
    .line 41
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v2, p0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_1
    invoke-static {}, Lkotlinx/io/Sink$-CC;->$default$getKoin()Lorg/koin/core/Koin;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v0, v0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 58
    .line 59
    iget-object v0, v0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 60
    .line 61
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1, v2, p0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :pswitch_2
    invoke-static {}, Lkotlinx/io/Sink$-CC;->$default$getKoin()Lorg/koin/core/Koin;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v0, v0, Lorg/koin/core/Koin;->scopeRegistry:Lorg/koin/core/registry/ScopeRegistry;

    .line 78
    .line 79
    iget-object v0, v0, Lorg/koin/core/registry/ScopeRegistry;->rootScope:Lorg/koin/core/scope/Scope;

    .line 80
    .line 81
    const-class v1, Lkotlinx/coroutines/CoroutineScope;

    .line 82
    .line 83
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1, v2, p0}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public abstract Lorg/koin/compose/KoinApplicationKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final LocalKoinScopeContext:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/LazyValueHolder;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/compose/runtime/LazyValueHolder;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/16 v1, 0xc

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroidx/compose/runtime/LazyValueHolder;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Landroidx/compose/runtime/LazyValueHolder;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/16 v1, 0xd

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 35
    .line 36
    .line 37
    sput-object v1, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScopeContext:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 38
    .line 39
    new-instance v0, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const/16 v1, 0xe

    .line 42
    .line 43
    invoke-direct {v0, v1}, Lorg/koin/java/KoinJavaComponent$$ExternalSyntheticLambda0;-><init>(I)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Landroidx/compose/runtime/LazyValueHolder;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Landroidx/compose/runtime/LazyValueHolder;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static final currentKoinScope(Landroidx/compose/runtime/Composer;)Lorg/koin/core/scope/Scope;
    .locals 3

    .line 1
    sget-object v0, Lorg/koin/compose/KoinApplicationKt;->LocalKoinScopeContext:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 2
    .line 3
    :try_start_0
    move-object v1, p0

    .line 4
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lorg/koin/compose/ComposeContextWrapper;

    .line 11
    .line 12
    iget-object v2, v1, Lorg/koin/compose/ComposeContextWrapper;->_value:Ljava/lang/Object;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iget-object v2, v1, Lorg/koin/compose/ComposeContextWrapper;->setValue:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, v1, Lorg/koin/compose/ComposeContextWrapper;->_value:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_0
    iget-object v1, v1, Lorg/koin/compose/ComposeContextWrapper;->_value:Ljava/lang/Object;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    check-cast v1, Lorg/koin/core/scope/Scope;

    .line 29
    .line 30
    return-object v1

    .line 31
    :catch_0
    move-exception v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v2, "Can\'t retrieve Koin context value. Ensure Koin is properly initialized with startKoin() or KoinApplication."

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Lorg/koin/compose/ComposeContextWrapper;

    .line 48
    .line 49
    iget-object v0, p0, Lorg/koin/compose/ComposeContextWrapper;->setValue:Lkotlin/jvm/functions/Function0;

    .line 50
    .line 51
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lorg/koin/compose/ComposeContextWrapper;->_value:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_2
    const-string p0, "Can\'t get Koin scope due to error: "

    .line 63
    .line 64
    invoke-static {v1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    return-object p0
.end method

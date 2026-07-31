.class public final Lcom/bumptech/glide/GlideContext;
.super Landroid/content/ContextWrapper;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DEFAULT_TRANSITION_OPTIONS:Lcom/bumptech/glide/GenericTransitionOptions;


# instance fields
.field public final arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

.field public final defaultRequestListeners:Ljava/util/List;

.field public defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

.field public final defaultRequestOptionsFactory:Lcom/bumptech/glide/GlideBuilder$1;

.field public final defaultTransitionOptions:Landroidx/collection/ArrayMap;

.field public final engine:Lcom/bumptech/glide/load/engine/Engine;

.field public final experiments:Lcom/bumptech/glide/GlideExperiments;

.field public final imageViewTargetFactory:Landroidx/transition/Transition$1;

.field public final logLevel:I

.field public final registry:Lcom/bumptech/glide/util/GlideSuppliers$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/GenericTransitionOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/bumptech/glide/request/transition/NoTransition;->NO_ANIMATION_FACTORY:Lcom/bumptech/glide/request/transition/NoTransition$NoAnimationFactory;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/bumptech/glide/GenericTransitionOptions;->transitionFactory:Lcom/bumptech/glide/request/transition/NoTransition$NoAnimationFactory;

    .line 9
    .line 10
    sput-object v0, Lcom/bumptech/glide/GlideContext;->DEFAULT_TRANSITION_OPTIONS:Lcom/bumptech/glide/GenericTransitionOptions;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;Landroidx/compose/runtime/Latch;Landroidx/transition/Transition$1;Lcom/bumptech/glide/GlideBuilder$1;Landroidx/collection/ArrayMap;Ljava/util/List;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/GlideExperiments;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/bumptech/glide/GlideContext;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/bumptech/glide/GlideContext;->imageViewTargetFactory:Landroidx/transition/Transition$1;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/bumptech/glide/GlideContext;->defaultRequestOptionsFactory:Lcom/bumptech/glide/GlideBuilder$1;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/bumptech/glide/GlideContext;->defaultRequestListeners:Ljava/util/List;

    .line 15
    .line 16
    iput-object p6, p0, Lcom/bumptech/glide/GlideContext;->defaultTransitionOptions:Landroidx/collection/ArrayMap;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/bumptech/glide/GlideContext;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/bumptech/glide/GlideContext;->experiments:Lcom/bumptech/glide/GlideExperiments;

    .line 21
    .line 22
    iput p10, p0, Lcom/bumptech/glide/GlideContext;->logLevel:I

    .line 23
    .line 24
    new-instance p1, Lcom/bumptech/glide/util/GlideSuppliers$1;

    .line 25
    .line 26
    invoke-direct {p1, p3}, Lcom/bumptech/glide/util/GlideSuppliers$1;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/GlideContext;->registry:Lcom/bumptech/glide/util/GlideSuppliers$1;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final declared-synchronized getDefaultRequestOptions()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->defaultRequestOptionsFactory:Lcom/bumptech/glide/GlideBuilder$1;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Lcom/bumptech/glide/request/BaseRequestOptions;->isLocked:Z

    .line 18
    .line 19
    iput-object v0, p0, Lcom/bumptech/glide/GlideContext;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/GlideContext;->defaultRequestOptions:Lcom/bumptech/glide/request/RequestOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0
.end method

.method public final getRegistry()Lcom/bumptech/glide/Registry;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/GlideContext;->registry:Lcom/bumptech/glide/util/GlideSuppliers$1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/bumptech/glide/util/GlideSuppliers$1;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/bumptech/glide/Registry;

    .line 8
    .line 9
    return-object p0
.end method

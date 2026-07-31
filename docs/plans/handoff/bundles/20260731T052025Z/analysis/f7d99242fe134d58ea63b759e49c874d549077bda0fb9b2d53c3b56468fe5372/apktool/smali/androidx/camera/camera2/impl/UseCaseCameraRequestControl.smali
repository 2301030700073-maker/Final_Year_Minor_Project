.class public interface abstract Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public abstract awaitSurfaceSetup(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
.end method

.method public abstract cancelFocusAndMeteringAsync()Lkotlinx/coroutines/Deferred;
.end method

.method public abstract close()V
.end method

.method public abstract removeParametersAsync(Ljava/util/List;)Lkotlinx/coroutines/Deferred;
.end method

.method public abstract setParametersAsync(Ljava/util/Map;Landroidx/camera/core/impl/Config$OptionPriority;)Lkotlinx/coroutines/Deferred;
.end method

.method public abstract setTorchOffAsync-MtizInI(I)Lkotlinx/coroutines/Deferred;
.end method

.method public abstract setTorchOnAsync()Lkotlinx/coroutines/Deferred;
.end method

.method public abstract submitParameters(Ljava/util/Map;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Landroidx/camera/core/impl/Config$OptionPriority;)Lkotlinx/coroutines/Deferred;
.end method

.method public abstract updateCamera2ConfigAsync(Landroidx/camera/camera2/impl/Camera2ImplConfig;Ljava/util/Map;)Lkotlinx/coroutines/Deferred;
.end method

.method public abstract updateRepeatingRequestAsync(Ljava/util/LinkedHashSet;Z)Lkotlinx/coroutines/Deferred;
.end method

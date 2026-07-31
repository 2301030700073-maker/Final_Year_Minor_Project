.class public abstract Landroidx/camera/camera2/impl/UseCaseCameraKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final defaultOptionPriority:Landroidx/camera/core/impl/Config$OptionPriority;

.field public static final useCaseCameraIds:Lkotlinx/atomicfu/AtomicInt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Landroidx/camera/camera2/impl/UseCaseCameraKt;->useCaseCameraIds:Lkotlinx/atomicfu/AtomicInt;

    .line 7
    .line 8
    sget-object v0, Landroidx/camera/core/impl/Config$OptionPriority;->OPTIONAL:Landroidx/camera/core/impl/Config$OptionPriority;

    .line 9
    .line 10
    sput-object v0, Landroidx/camera/camera2/impl/UseCaseCameraKt;->defaultOptionPriority:Landroidx/camera/core/impl/Config$OptionPriority;

    .line 11
    .line 12
    return-void
.end method

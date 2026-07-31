.class public abstract Landroidx/camera/camera2/pipe/compat/VirtualCameraKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final androidCameraDebugIds:Lkotlinx/atomicfu/AtomicInt;

.field public static final virtualCameraDebugIds:Lkotlinx/atomicfu/AtomicInt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sput-object v1, Landroidx/camera/camera2/pipe/compat/VirtualCameraKt;->virtualCameraDebugIds:Lkotlinx/atomicfu/AtomicInt;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Landroidx/camera/camera2/pipe/compat/VirtualCameraKt;->androidCameraDebugIds:Lkotlinx/atomicfu/AtomicInt;

    .line 13
    .line 14
    return-void
.end method

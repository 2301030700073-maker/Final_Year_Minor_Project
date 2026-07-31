.class public abstract Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final captureSequenceDebugIds:Lkotlinx/atomicfu/AtomicLong;

.field public static final captureSequenceProcessorDebugIds:Lkotlinx/atomicfu/AtomicInt;

.field public static final requestTags:Lkotlinx/atomicfu/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->captureSequenceProcessorDebugIds:Lkotlinx/atomicfu/AtomicInt;

    .line 7
    .line 8
    new-instance v0, Lkotlinx/atomicfu/AtomicLong;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    iput-wide v1, v0, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 16
    .line 17
    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->captureSequenceDebugIds:Lkotlinx/atomicfu/AtomicLong;

    .line 18
    .line 19
    new-instance v0, Lkotlinx/atomicfu/AtomicLong;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-wide v1, v0, Lkotlinx/atomicfu/AtomicLong;->value:J

    .line 25
    .line 26
    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorKt;->requestTags:Lkotlinx/atomicfu/AtomicLong;

    .line 27
    .line 28
    return-void
.end method

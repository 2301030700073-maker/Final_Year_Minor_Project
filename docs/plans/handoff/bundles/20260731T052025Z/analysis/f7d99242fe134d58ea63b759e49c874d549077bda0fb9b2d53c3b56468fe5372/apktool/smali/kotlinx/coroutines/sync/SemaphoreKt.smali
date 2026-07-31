.class public abstract Lkotlinx/coroutines/sync/SemaphoreKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final BROKEN:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public static final CANCELLED:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public static final MAX_SPIN_CYCLES:I

.field public static final PERMIT:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public static final SEGMENT_SIZE:I

.field public static final TAKEN:Lcom/fsck/k9/mailstore/LocalStore$8;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    const-string v1, "kotlinx.coroutines.semaphore.maxSpinCycles"

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/internal/InlineList;->systemProp$default(ILjava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Lkotlinx/coroutines/sync/SemaphoreKt;->MAX_SPIN_CYCLES:I

    .line 12
    .line 13
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    const/4 v3, 0x0

    .line 17
    const-string v4, "PERMIT"

    .line 18
    .line 19
    invoke-direct {v0, v1, v4, v3}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->PERMIT:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 23
    .line 24
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 25
    .line 26
    const-string v4, "TAKEN"

    .line 27
    .line 28
    invoke-direct {v0, v1, v4, v3}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->TAKEN:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 32
    .line 33
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 34
    .line 35
    const-string v4, "BROKEN"

    .line 36
    .line 37
    invoke-direct {v0, v1, v4, v3}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->BROKEN:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 41
    .line 42
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 43
    .line 44
    const-string v4, "CANCELLED"

    .line 45
    .line 46
    invoke-direct {v0, v1, v4, v3}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(ILjava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->CANCELLED:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 50
    .line 51
    const-string v0, "kotlinx.coroutines.semaphore.segmentSize"

    .line 52
    .line 53
    const/16 v1, 0x10

    .line 54
    .line 55
    invoke-static {v1, v0, v2}, Lkotlinx/coroutines/internal/InlineList;->systemProp$default(ILjava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    sput v0, Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I

    .line 60
    .line 61
    return-void
.end method

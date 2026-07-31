.class public abstract Lkotlinx/coroutines/sync/SemaphoreKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final BROKEN:Lcom/google/common/base/Joiner;

.field public static final CANCELLED:Lcom/google/common/base/Joiner;

.field public static final MAX_SPIN_CYCLES:I

.field public static final PERMIT:Lcom/google/common/base/Joiner;

.field public static final SEGMENT_SIZE:I

.field public static final TAKEN:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    const-string v2, "kotlinx.coroutines.semaphore.maxSpinCycles"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/internal/InlineList;->systemProp$default(IILjava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Lkotlinx/coroutines/sync/SemaphoreKt;->MAX_SPIN_CYCLES:I

    .line 12
    .line 13
    new-instance v0, Lcom/google/common/base/Joiner;

    .line 14
    .line 15
    const-string v2, "PERMIT"

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    invoke-direct {v0, v2, v3}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->PERMIT:Lcom/google/common/base/Joiner;

    .line 22
    .line 23
    new-instance v0, Lcom/google/common/base/Joiner;

    .line 24
    .line 25
    const-string v2, "TAKEN"

    .line 26
    .line 27
    invoke-direct {v0, v2, v3}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->TAKEN:Lcom/google/common/base/Joiner;

    .line 31
    .line 32
    new-instance v0, Lcom/google/common/base/Joiner;

    .line 33
    .line 34
    const-string v2, "BROKEN"

    .line 35
    .line 36
    invoke-direct {v0, v2, v3}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->BROKEN:Lcom/google/common/base/Joiner;

    .line 40
    .line 41
    new-instance v0, Lcom/google/common/base/Joiner;

    .line 42
    .line 43
    const-string v2, "CANCELLED"

    .line 44
    .line 45
    invoke-direct {v0, v2, v3}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->CANCELLED:Lcom/google/common/base/Joiner;

    .line 49
    .line 50
    const-string v0, "kotlinx.coroutines.semaphore.segmentSize"

    .line 51
    .line 52
    const/16 v2, 0x10

    .line 53
    .line 54
    invoke-static {v2, v1, v0}, Lkotlinx/coroutines/internal/InlineList;->systemProp$default(IILjava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sput v0, Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I

    .line 59
    .line 60
    return-void
.end method

.class public final Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/logging/LogLevelProvider;


# instance fields
.field public final defaultLevel:Lnet/thunderbird/core/logging/LogLevel;

.field public final logLevel:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnet/thunderbird/core/logging/LogLevel;->INFO:Lnet/thunderbird/core/logging/LogLevel;

    .line 5
    .line 6
    iput-object v0, p0, Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;->defaultLevel:Lnet/thunderbird/core/logging/LogLevel;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;->logLevel:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 13
    .line 14
    return-void
.end method

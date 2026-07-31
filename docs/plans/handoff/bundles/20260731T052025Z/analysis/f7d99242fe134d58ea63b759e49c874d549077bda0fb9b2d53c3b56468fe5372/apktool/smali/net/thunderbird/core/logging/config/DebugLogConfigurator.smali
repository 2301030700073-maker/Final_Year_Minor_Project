.class public final Lnet/thunderbird/core/logging/config/DebugLogConfigurator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final platformInitializer:Lnet/thunderbird/core/logging/config/PlatformInitializer;

.field public final syncDebugCompositeSink:Lnet/thunderbird/core/logging/composite/CompositeLogSink;

.field public final syncDebugFileLogSink:Lnet/thunderbird/core/logging/file/FileLogSink;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/composite/CompositeLogSink;Lnet/thunderbird/core/logging/file/FileLogSink;Lnet/thunderbird/core/logging/config/PlatformInitializer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/logging/config/DebugLogConfigurator;->syncDebugCompositeSink:Lnet/thunderbird/core/logging/composite/CompositeLogSink;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/core/logging/config/DebugLogConfigurator;->syncDebugFileLogSink:Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/core/logging/config/DebugLogConfigurator;->platformInitializer:Lnet/thunderbird/core/logging/config/PlatformInitializer;

    .line 9
    .line 10
    return-void
.end method

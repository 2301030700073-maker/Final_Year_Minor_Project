.class public final Lcom/allproperty/android/consumer/MainApplication$Companion;
.super Ljava/lang/Object;
.source "MainApplication.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allproperty/android/consumer/MainApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/MainApplication$Companion;",
        "",
        "<init>",
        "()V",
        "nativeStartTime",
        "",
        "getNativeStartTime",
        "()J",
        "setNativeStartTime",
        "(J)V",
        "performanceMonitor",
        "Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;",
        "getPerformanceMonitor",
        "()Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;",
        "app_myPublicRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/allproperty/android/consumer/MainApplication$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNativeStartTime()J
    .locals 2

    .line 28
    invoke-static {}, Lcom/allproperty/android/consumer/MainApplication;->access$getNativeStartTime$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPerformanceMonitor()Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;
    .locals 1

    .line 29
    invoke-static {}, Lcom/allproperty/android/consumer/MainApplication;->access$getPerformanceMonitor$cp()Lcom/allproperty/android/consumer/modules/performance/PerformanceMonitor;

    move-result-object v0

    return-object v0
.end method

.method public final setNativeStartTime(J)V
    .locals 0

    .line 28
    invoke-static {p1, p2}, Lcom/allproperty/android/consumer/MainApplication;->access$setNativeStartTime$cp(J)V

    return-void
.end method

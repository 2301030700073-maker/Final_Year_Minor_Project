.class public final Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics$Companion;
.super Ljava/lang/Object;
.source "AppMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppMetrics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppMetrics.kt\ncom/allproperty/android/consumer/modules/appmetrics/AppMetrics$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,26:1\n1#2:27\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics$Companion;",
        "",
        "<init>",
        "()V",
        "INSTANCE",
        "Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;",
        "getInstance",
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

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;
    .locals 2

    .line 12
    invoke-static {}, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;->access$getINSTANCE$cp()Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    .line 13
    :try_start_0
    invoke-static {}, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;->access$getINSTANCE$cp()Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;->Companion:Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics$Companion;

    invoke-static {v0}, Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;->access$setINSTANCE$cp(Lcom/allproperty/android/consumer/modules/appmetrics/AppMetrics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

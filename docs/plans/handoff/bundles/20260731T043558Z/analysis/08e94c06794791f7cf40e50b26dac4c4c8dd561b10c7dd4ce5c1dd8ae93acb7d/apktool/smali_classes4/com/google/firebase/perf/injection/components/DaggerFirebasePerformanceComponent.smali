.class public final Lcom/google/firebase/perf/injection/components/DaggerFirebasePerformanceComponent;
.super Ljava/lang/Object;
.source "DaggerFirebasePerformanceComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/injection/components/DaggerFirebasePerformanceComponent$Builder;,
        Lcom/google/firebase/perf/injection/components/DaggerFirebasePerformanceComponent$FirebasePerformanceComponentImpl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/firebase/perf/injection/components/DaggerFirebasePerformanceComponent$Builder;
    .locals 2

    .line 39
    new-instance v0, Lcom/google/firebase/perf/injection/components/DaggerFirebasePerformanceComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/perf/injection/components/DaggerFirebasePerformanceComponent$Builder;-><init>(Lcom/google/firebase/perf/injection/components/DaggerFirebasePerformanceComponent$1;)V

    return-object v0
.end method

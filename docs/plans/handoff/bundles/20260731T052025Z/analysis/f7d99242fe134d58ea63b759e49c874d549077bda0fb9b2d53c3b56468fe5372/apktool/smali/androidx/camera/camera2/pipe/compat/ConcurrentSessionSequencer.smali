.class public abstract Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final activeResumeCameraRetryThresholds:[Landroidx/camera/camera2/pipe/core/DurationNs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/camera/camera2/pipe/core/DurationNs;

    .line 2
    .line 3
    const-wide v1, 0x1bf08eb000L

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/pipe/core/DurationNs;-><init>(J)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroidx/camera/camera2/pipe/core/DurationNs;

    .line 12
    .line 13
    const-wide v2, 0x45d964b800L

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2, v3}, Landroidx/camera/camera2/pipe/core/DurationNs;-><init>(J)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    new-array v2, v2, [Landroidx/camera/camera2/pipe/core/DurationNs;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    aput-object v0, v2, v3

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    aput-object v1, v2, v0

    .line 29
    .line 30
    sput-object v2, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;->activeResumeCameraRetryThresholds:[Landroidx/camera/camera2/pipe/core/DurationNs;

    .line 31
    .line 32
    return-void
.end method

.class public final Landroidx/camera/core/RotationProvider;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final listeners:Ljava/util/LinkedHashMap;

.field public final lock:Ljava/lang/Object;

.field public final orientationListener:Landroidx/camera/core/RotationProvider$1;

.field public volatile rotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/camera/core/RotationProvider;->lock:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/camera/core/RotationProvider;->listeners:Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Landroidx/camera/core/RotationProvider;->rotation:I

    .line 23
    .line 24
    new-instance v0, Landroidx/camera/core/RotationProvider$1;

    .line 25
    .line 26
    invoke-direct {v0, p1, p0}, Landroidx/camera/core/RotationProvider$1;-><init>(Landroid/content/Context;Landroidx/camera/core/RotationProvider;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Landroidx/camera/core/RotationProvider;->orientationListener:Landroidx/camera/core/RotationProvider$1;

    .line 30
    .line 31
    return-void
.end method

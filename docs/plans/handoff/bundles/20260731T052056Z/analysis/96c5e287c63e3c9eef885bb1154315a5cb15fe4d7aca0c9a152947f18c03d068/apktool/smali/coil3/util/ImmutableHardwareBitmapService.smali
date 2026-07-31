.class public final Lcoil3/util/ImmutableHardwareBitmapService;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcoil3/util/HardwareBitmapService;


# instance fields
.field public final allowHardware:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcoil3/util/ImmutableHardwareBitmapService;->allowHardware:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final allowHardwareMainThread(Lcoil3/size/Size;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcoil3/util/ImmutableHardwareBitmapService;->allowHardware:Z

    .line 2
    .line 3
    return p0
.end method

.method public final allowHardwareWorkerThread()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcoil3/util/ImmutableHardwareBitmapService;->allowHardware:Z

    .line 2
    .line 3
    return p0
.end method

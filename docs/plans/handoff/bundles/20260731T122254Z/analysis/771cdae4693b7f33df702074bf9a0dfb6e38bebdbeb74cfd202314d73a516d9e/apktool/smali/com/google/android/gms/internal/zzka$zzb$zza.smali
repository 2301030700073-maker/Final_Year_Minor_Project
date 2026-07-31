.class public final Lcom/google/android/gms/internal/zzka$zzb$zza;
.super Lcom/google/android/gms/internal/zzka$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzka$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzVA:Lcom/google/android/gms/internal/zzka$zzb;

.field private final zzVz:Lcom/google/android/gms/internal/zzkb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzka$zzb;Lcom/google/android/gms/internal/zzkb;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzka$zzb$zza;->zzVA:Lcom/google/android/gms/internal/zzka$zzb;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzka$zzb;->zzVx:Lcom/google/android/gms/internal/zzka;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzka$zza;-><init>(Lcom/google/android/gms/internal/zzka;Lcom/google/android/gms/internal/zzka$1;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzka$zzb$zza;->zzVz:Lcom/google/android/gms/internal/zzkb;

    return-void
.end method

.method private zzi(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    mul-int/lit16 p1, p1, 0x140

    div-int/lit16 p1, p1, 0x438

    return p1
.end method


# virtual methods
.method public onError(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzka;->zzln()Lcom/google/android/gms/cast/internal/zzl;

    move-result-object v0

    const-string v1, "onError: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzka$zzb$zza;->zzVA:Lcom/google/android/gms/internal/zzka$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzka$zzb;->zzVx:Lcom/google/android/gms/internal/zzka;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzka;->zza(Lcom/google/android/gms/internal/zzka;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzka$zzb$zza;->zzVA:Lcom/google/android/gms/internal/zzka$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzka$zzc;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzXR:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzka$zzc;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzka$zzb;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public zza(IILandroid/view/Surface;)V
    .locals 10

    invoke-static {}, Lcom/google/android/gms/internal/zzka;->zzln()Lcom/google/android/gms/cast/internal/zzl;

    move-result-object v0

    const-string v1, "onConnected"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzka$zzb$zza;->zzVz:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkb;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/hardware/display/DisplayManager;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzka;->zzln()Lcom/google/android/gms/cast/internal/zzl;

    move-result-object p1

    const-string p2, "Unable to get the display manager"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/cast/internal/zzl;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzka$zzb$zza;->zzVA:Lcom/google/android/gms/internal/zzka$zzb;

    new-instance p2, Lcom/google/android/gms/internal/zzka$zzc;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->zzXR:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzka$zzc;-><init>(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzka$zzb;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzka$zzb$zza;->zzVA:Lcom/google/android/gms/internal/zzka$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzka$zzb;->zzVx:Lcom/google/android/gms/internal/zzka;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzka;->zza(Lcom/google/android/gms/internal/zzka;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzka$zzb$zza;->zzi(II)I

    move-result v7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzka$zzb$zza;->zzVA:Lcom/google/android/gms/internal/zzka$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzka$zzb;->zzVx:Lcom/google/android/gms/internal/zzka;

    const-string v4, "private_display"

    const/4 v9, 0x2

    move v5, p1

    move v6, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzka;->zza(Lcom/google/android/gms/internal/zzka;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzka$zzb$zza;->zzVA:Lcom/google/android/gms/internal/zzka$zzb;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzka$zzb;->zzVx:Lcom/google/android/gms/internal/zzka;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzka;->zzd(Lcom/google/android/gms/internal/zzka;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzka;->zzln()Lcom/google/android/gms/cast/internal/zzl;

    move-result-object p1

    const-string p2, "Unable to create virtual display"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/cast/internal/zzl;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzka$zzb$zza;->zzVA:Lcom/google/android/gms/internal/zzka$zzb;

    new-instance p2, Lcom/google/android/gms/internal/zzka$zzc;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->zzXR:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzka$zzc;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzka$zzb$zza;->zzVA:Lcom/google/android/gms/internal/zzka$zzb;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzka$zzb;->zzVx:Lcom/google/android/gms/internal/zzka;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzka;->zzd(Lcom/google/android/gms/internal/zzka;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzka;->zzln()Lcom/google/android/gms/cast/internal/zzl;

    move-result-object p1

    const-string p2, "Virtual display does not have a display"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/cast/internal/zzl;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzka$zzb$zza;->zzVA:Lcom/google/android/gms/internal/zzka$zzb;

    new-instance p2, Lcom/google/android/gms/internal/zzka$zzc;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->zzXR:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzka$zzc;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzka$zzb$zza;->zzVz:Lcom/google/android/gms/internal/zzkb;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzka$zzb$zza;->zzVA:Lcom/google/android/gms/internal/zzka$zzb;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzka$zzb;->zzVx:Lcom/google/android/gms/internal/zzka;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzka;->zzd(Lcom/google/android/gms/internal/zzka;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/zzkb;->zza(Lcom/google/android/gms/internal/zzkc;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzka$zzb$zza;->zzVA:Lcom/google/android/gms/internal/zzka$zzb;

    new-instance p2, Lcom/google/android/gms/internal/zzka$zzc;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->zzXR:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzka$zzc;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzka$zzb;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public zzmg()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/zzka;->zzln()Lcom/google/android/gms/cast/internal/zzl;

    move-result-object v0

    const-string v1, "onConnectedWithDisplay"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzka$zzb$zza;->zzVA:Lcom/google/android/gms/internal/zzka$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzka$zzb;->zzVx:Lcom/google/android/gms/internal/zzka;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzka;->zzd(Lcom/google/android/gms/internal/zzka;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzka$zzb$zza;->zzVA:Lcom/google/android/gms/internal/zzka$zzb;

    new-instance v2, Lcom/google/android/gms/internal/zzka$zzc;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzka$zzc;-><init>(Landroid/view/Display;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzka$zzb;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzka;->zzln()Lcom/google/android/gms/cast/internal/zzl;

    move-result-object v0

    const-string v1, "Virtual display no longer has a display"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzka$zzb$zza;->zzVA:Lcom/google/android/gms/internal/zzka$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzka$zzc;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzXR:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzka$zzc;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzka$zzb;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

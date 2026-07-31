.class final Lcom/google/android/gms/location/internal/zzj$zzb;
.super Lcom/google/android/gms/location/internal/zzf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzb"
.end annotation


# instance fields
.field private zzayV:Lcom/google/android/gms/location/zze$zza;

.field private zzayW:Lcom/google/android/gms/location/zze$zzb;

.field private zzayX:Lcom/google/android/gms/location/internal/zzj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/zze$zza;Lcom/google/android/gms/location/internal/zzj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/internal/zzf$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayV:Lcom/google/android/gms/location/zze$zza;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayW:Lcom/google/android/gms/location/zze$zzb;

    iput-object p2, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayX:Lcom/google/android/gms/location/internal/zzj;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/zze$zzb;Lcom/google/android/gms/location/internal/zzj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/internal/zzf$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayW:Lcom/google/android/gms/location/zze$zzb;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayV:Lcom/google/android/gms/location/zze$zza;

    iput-object p2, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayX:Lcom/google/android/gms/location/internal/zzj;

    return-void
.end method


# virtual methods
.method public zza(ILandroid/app/PendingIntent;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayX:Lcom/google/android/gms/location/internal/zzj;

    if-nez v0, :cond_0

    const-string p1, "LocationClientImpl"

    const-string p2, "onRemoveGeofencesByPendingIntentResult called multiple times"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayX:Lcom/google/android/gms/location/internal/zzj;

    new-instance v7, Lcom/google/android/gms/location/internal/zzj$zzc;

    iget-object v2, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayX:Lcom/google/android/gms/location/internal/zzj;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayW:Lcom/google/android/gms/location/zze$zzb;

    move-object v1, v7

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/location/internal/zzj$zzc;-><init>(Lcom/google/android/gms/location/internal/zzj;ILcom/google/android/gms/location/zze$zzb;ILandroid/app/PendingIntent;)V

    invoke-virtual {v0, v7}, Lcom/google/android/gms/location/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzi$zzc;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayX:Lcom/google/android/gms/location/internal/zzj;

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayV:Lcom/google/android/gms/location/zze$zza;

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayW:Lcom/google/android/gms/location/zze$zzb;

    return-void
.end method

.method public zza(I[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayX:Lcom/google/android/gms/location/internal/zzj;

    if-nez v0, :cond_0

    const-string p1, "LocationClientImpl"

    const-string p2, "onAddGeofenceResult called multiple times"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayX:Lcom/google/android/gms/location/internal/zzj;

    new-instance v1, Lcom/google/android/gms/location/internal/zzj$zza;

    iget-object v2, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayX:Lcom/google/android/gms/location/internal/zzj;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayV:Lcom/google/android/gms/location/zze$zza;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/location/internal/zzj$zza;-><init>(Lcom/google/android/gms/location/internal/zzj;Lcom/google/android/gms/location/zze$zza;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzi$zzc;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayX:Lcom/google/android/gms/location/internal/zzj;

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayV:Lcom/google/android/gms/location/zze$zza;

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayW:Lcom/google/android/gms/location/zze$zzb;

    return-void
.end method

.method public zzb(I[Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayX:Lcom/google/android/gms/location/internal/zzj;

    if-nez v0, :cond_0

    const-string p1, "LocationClientImpl"

    const-string p2, "onRemoveGeofencesByRequestIdsResult called multiple times"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayX:Lcom/google/android/gms/location/internal/zzj;

    new-instance v7, Lcom/google/android/gms/location/internal/zzj$zzc;

    iget-object v2, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayX:Lcom/google/android/gms/location/internal/zzj;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayW:Lcom/google/android/gms/location/zze$zzb;

    move-object v1, v7

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/location/internal/zzj$zzc;-><init>(Lcom/google/android/gms/location/internal/zzj;ILcom/google/android/gms/location/zze$zzb;I[Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/google/android/gms/location/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzi$zzc;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayX:Lcom/google/android/gms/location/internal/zzj;

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayV:Lcom/google/android/gms/location/zze$zza;

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzj$zzb;->zzayW:Lcom/google/android/gms/location/zze$zzb;

    return-void
.end method

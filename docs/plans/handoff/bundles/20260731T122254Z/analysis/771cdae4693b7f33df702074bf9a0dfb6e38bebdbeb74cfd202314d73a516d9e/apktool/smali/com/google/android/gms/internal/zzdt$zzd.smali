.class public Lcom/google/android/gms/internal/zzdt$zzd;
.super Lcom/google/android/gms/internal/zzhy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzhy<",
        "Lcom/google/android/gms/internal/zzbe;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzqt:Ljava/lang/Object;

.field private final zzxe:Lcom/google/android/gms/internal/zzdt$zze;

.field private zzxf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdt$zze;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhy;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdt$zzd;->zzqt:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdt$zzd;->zzxe:Lcom/google/android/gms/internal/zzdt$zze;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdt$zzd;)Lcom/google/android/gms/internal/zzdt$zze;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdt$zzd;->zzxe:Lcom/google/android/gms/internal/zzdt$zze;

    return-object p0
.end method


# virtual methods
.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdt$zzd;->zzqt:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzdt$zzd;->zzxf:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzdt$zzd;->zzxf:Z

    new-instance v1, Lcom/google/android/gms/internal/zzdt$zzd$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdt$zzd$1;-><init>(Lcom/google/android/gms/internal/zzdt$zzd;)V

    new-instance v2, Lcom/google/android/gms/internal/zzhx$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzhx$zzb;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzdt$zzd;->zza(Lcom/google/android/gms/internal/zzhx$zzc;Lcom/google/android/gms/internal/zzhx$zza;)V

    new-instance v1, Lcom/google/android/gms/internal/zzdt$zzd$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdt$zzd$2;-><init>(Lcom/google/android/gms/internal/zzdt$zzd;)V

    new-instance v2, Lcom/google/android/gms/internal/zzdt$zzd$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzdt$zzd$3;-><init>(Lcom/google/android/gms/internal/zzdt$zzd;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzdt$zzd;->zza(Lcom/google/android/gms/internal/zzhx$zzc;Lcom/google/android/gms/internal/zzhx$zza;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

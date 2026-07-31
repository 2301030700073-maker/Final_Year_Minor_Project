.class Lcom/google/android/gms/internal/zzdt$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdt$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzwV:Lcom/google/android/gms/internal/zzbb;

.field final synthetic zzwW:Lcom/google/android/gms/internal/zzdt$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdt$1;Lcom/google/android/gms/internal/zzbb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdt$1$2;->zzwW:Lcom/google/android/gms/internal/zzdt$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdt$1$2;->zzwV:Lcom/google/android/gms/internal/zzbb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzid;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzid;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdt$1$2;->zzwW:Lcom/google/android/gms/internal/zzdt$1;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzdt$1;->zzwU:Lcom/google/android/gms/internal/zzdt;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdt;->zzc(Lcom/google/android/gms/internal/zzdt;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzdt$1$2;->zzwW:Lcom/google/android/gms/internal/zzdt$1;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzdt$1;->zzwT:Lcom/google/android/gms/internal/zzdt$zze;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzdt$zze;->getStatus()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzdt$1$2;->zzwW:Lcom/google/android/gms/internal/zzdt$1;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzdt$1;->zzwT:Lcom/google/android/gms/internal/zzdt$zze;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzdt$zze;->getStatus()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzdt$1$2;->zzwW:Lcom/google/android/gms/internal/zzdt$1;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzdt$1;->zzwU:Lcom/google/android/gms/internal/zzdt;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzdt;->zza(Lcom/google/android/gms/internal/zzdt;I)I

    iget-object p2, p0, Lcom/google/android/gms/internal/zzdt$1$2;->zzwW:Lcom/google/android/gms/internal/zzdt$1;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzdt$1;->zzwU:Lcom/google/android/gms/internal/zzdt;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzdt;->zzd(Lcom/google/android/gms/internal/zzdt;)Lcom/google/android/gms/internal/zzdt$zzb;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdt$1$2;->zzwV:Lcom/google/android/gms/internal/zzbb;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/zzdt$zzb;->zzc(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzdt$1$2;->zzwW:Lcom/google/android/gms/internal/zzdt$1;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzdt$1;->zzwT:Lcom/google/android/gms/internal/zzdt$zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdt$1$2;->zzwV:Lcom/google/android/gms/internal/zzbb;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzdt$zze;->zzg(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzdt$1$2;->zzwW:Lcom/google/android/gms/internal/zzdt$1;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzdt$1;->zzwU:Lcom/google/android/gms/internal/zzdt;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdt$1$2;->zzwW:Lcom/google/android/gms/internal/zzdt$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdt$1;->zzwT:Lcom/google/android/gms/internal/zzdt$zze;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzdt;->zza(Lcom/google/android/gms/internal/zzdt;Lcom/google/android/gms/internal/zzdt$zze;)Lcom/google/android/gms/internal/zzdt$zze;

    const-string p2, "Successfully loaded JS Engine."

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaB(Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

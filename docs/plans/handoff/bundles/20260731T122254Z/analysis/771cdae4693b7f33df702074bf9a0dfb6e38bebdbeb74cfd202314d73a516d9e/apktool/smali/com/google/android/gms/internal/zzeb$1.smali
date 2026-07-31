.class Lcom/google/android/gms/internal/zzeb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzeb;->zzb(JJ)Lcom/google/android/gms/internal/zzec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzxW:Lcom/google/android/gms/internal/zzea;

.field final synthetic zzxX:Lcom/google/android/gms/internal/zzeb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeb;Lcom/google/android/gms/internal/zzea;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeb$1;->zzxX:Lcom/google/android/gms/internal/zzeb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeb$1;->zzxW:Lcom/google/android/gms/internal/zzea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeb$1;->zzxX:Lcom/google/android/gms/internal/zzeb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeb;->zza(Lcom/google/android/gms/internal/zzeb;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb$1;->zzxX:Lcom/google/android/gms/internal/zzeb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeb;->zzb(Lcom/google/android/gms/internal/zzeb;)I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb$1;->zzxX:Lcom/google/android/gms/internal/zzeb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeb$1;->zzxX:Lcom/google/android/gms/internal/zzeb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeb;->zzc(Lcom/google/android/gms/internal/zzeb;)Lcom/google/android/gms/internal/zzeg;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzeb;->zza(Lcom/google/android/gms/internal/zzeb;Lcom/google/android/gms/internal/zzeg;)Lcom/google/android/gms/internal/zzeg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb$1;->zzxX:Lcom/google/android/gms/internal/zzeb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeb;->zzd(Lcom/google/android/gms/internal/zzeb;)Lcom/google/android/gms/internal/zzeg;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb$1;->zzxX:Lcom/google/android/gms/internal/zzeb;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzeb;->zzs(I)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb$1;->zzxW:Lcom/google/android/gms/internal/zzea;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeb$1;->zzxX:Lcom/google/android/gms/internal/zzeb;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzea;->zza(Lcom/google/android/gms/internal/zzec$zza;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeb$1;->zzxX:Lcom/google/android/gms/internal/zzeb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeb$1;->zzxW:Lcom/google/android/gms/internal/zzea;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzeb;->zza(Lcom/google/android/gms/internal/zzeb;Lcom/google/android/gms/internal/zzea;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

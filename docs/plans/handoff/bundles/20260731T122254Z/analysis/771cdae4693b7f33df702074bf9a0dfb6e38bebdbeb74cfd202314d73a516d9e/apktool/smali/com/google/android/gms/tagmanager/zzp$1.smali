.class Lcom/google/android/gms/tagmanager/zzp$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqa$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzp;->load(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaKY:Ljava/lang/String;

.field final synthetic zzaKZ:Lcom/google/android/gms/tagmanager/zzp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzp;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp$1;->zzaKZ:Lcom/google/android/gms/tagmanager/zzp;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzp$1;->zzaKY:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqe;)V
    .locals 11

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzXP:Lcom/google/android/gms/common/api/Status;

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Load request failed for the container "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$1;->zzaKZ:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/tagmanager/zzp;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbg;->zzaz(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzp$1;->zzaKZ:Lcom/google/android/gms/tagmanager/zzp;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$1;->zzaKZ:Lcom/google/android/gms/tagmanager/zzp;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzXR:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzp;->zzaU(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tagmanager/zzp;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe;->zzAg()Lcom/google/android/gms/internal/zzqe$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqe$zza;->zzAk()Lcom/google/android/gms/internal/zzqf$zzc;

    move-result-object v7

    if-nez v7, :cond_1

    const-string p1, "Response doesn\'t have the requested container"

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbg;->zzaz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$1;->zzaKZ:Lcom/google/android/gms/tagmanager/zzp;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp$1;->zzaKZ:Lcom/google/android/gms/tagmanager/zzp;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tagmanager/zzp;->zzaU(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzp;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe;->zzAg()Lcom/google/android/gms/internal/zzqe$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqe$zza;->zzAl()J

    move-result-wide v5

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzp$1;->zzaKZ:Lcom/google/android/gms/tagmanager/zzp;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzo;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp$1;->zzaKZ:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v8

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp$1;->zzaKZ:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzp;->zzc(Lcom/google/android/gms/tagmanager/zzp;)Landroid/os/Looper;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/tagmanager/Container;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp$1;->zzaKZ:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzp;->zzd(Lcom/google/android/gms/tagmanager/zzp;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp$1;->zzaKZ:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp$1;->zzaKZ:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/tagmanager/zzp;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v10

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/zzqf$zzc;)V

    new-instance v1, Lcom/google/android/gms/tagmanager/zzp$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/zzp$1$1;-><init>(Lcom/google/android/gms/tagmanager/zzp$1;)V

    invoke-direct {v0, v8, v9, v10, v1}, Lcom/google/android/gms/tagmanager/zzo;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/zzo$zza;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/tagmanager/zzo;)Lcom/google/android/gms/tagmanager/zzo;

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzp$1;->zzaKZ:Lcom/google/android/gms/tagmanager/zzp;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$1;->zzaKZ:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzf(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tagmanager/zzp;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.class Lcom/google/android/gms/internal/zzpw$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpw;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/tagmanager/ContainerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaOY:Lcom/google/android/gms/internal/zzpw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpw$1;->zzaOY:Lcom/google/android/gms/internal/zzpw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpw$1;->zza(Lcom/google/android/gms/tagmanager/ContainerHolder;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/tagmanager/ContainerHolder;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzpu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpw$1;->zzaOY:Lcom/google/android/gms/internal/zzpw;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpw;->zza(Lcom/google/android/gms/internal/zzpw;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpw$1;->zzaOY:Lcom/google/android/gms/internal/zzpw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzpw;->zzzX()Lcom/google/android/gms/internal/zzpv;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzpu;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/internal/zzpv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzpw$1;->zzaOY:Lcom/google/android/gms/internal/zzpw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpu;->zzzR()Lcom/google/android/gms/internal/zzpv;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzpw;->zza(Lcom/google/android/gms/internal/zzpw;Lcom/google/android/gms/internal/zzpv;)Lcom/google/android/gms/internal/zzpv;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzpw$1;->zzaOY:Lcom/google/android/gms/internal/zzpw;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpw;->zzb(Lcom/google/android/gms/internal/zzpw;)V

    return-void
.end method

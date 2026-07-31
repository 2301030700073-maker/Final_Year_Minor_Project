.class Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzli()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzRp:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$5;->zzRp:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$5;->zza(Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzln()Lcom/google/android/gms/cast/internal/zzl;

    move-result-object p1

    const-string v1, "Unable to stop the remote display, result unsuccessful"

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzln()Lcom/google/android/gms/cast/internal/zzl;

    move-result-object p1

    const-string v1, "remote display stopped"

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$5;->zzRp:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->zzb(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Landroid/view/Display;)Landroid/view/Display;

    return-void
.end method

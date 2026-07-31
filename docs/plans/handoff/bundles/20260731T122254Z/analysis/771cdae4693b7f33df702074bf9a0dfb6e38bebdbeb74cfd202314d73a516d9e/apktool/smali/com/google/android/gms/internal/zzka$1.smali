.class Lcom/google/android/gms/internal/zzka$1;
.super Lcom/google/android/gms/internal/zzke$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzka;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzVx:Lcom/google/android/gms/internal/zzka;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzka;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzka$1;->zzVx:Lcom/google/android/gms/internal/zzka;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzke$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzaR(I)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzka;->zzln()Lcom/google/android/gms/cast/internal/zzl;

    move-result-object p1

    const-string v0, "onRemoteDisplayEnded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzka$1;->zzVx:Lcom/google/android/gms/internal/zzka;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzka;->zza(Lcom/google/android/gms/internal/zzka;)V

    return-void
.end method

.class Lcom/google/android/gms/internal/zzfy$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfy;->zza(Lcom/google/android/gms/ads/internal/formats/zzg$zza;Lcom/google/android/gms/internal/zzbb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzBO:Lcom/google/android/gms/internal/zzfy;

.field final synthetic zzBR:Lcom/google/android/gms/ads/internal/formats/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfy;Lcom/google/android/gms/ads/internal/formats/zzf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfy$3;->zzBO:Lcom/google/android/gms/internal/zzfy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfy$3;->zzBR:Lcom/google/android/gms/ads/internal/formats/zzf;

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

    const-string p1, "asset"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzfy$3;->zzBO:Lcom/google/android/gms/internal/zzfy;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfy$3;->zzBR:Lcom/google/android/gms/ads/internal/formats/zzf;

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/zzfy;->zza(Lcom/google/android/gms/internal/zzfy;Lcom/google/android/gms/internal/zzcs;Ljava/lang/String;)V

    return-void
.end method

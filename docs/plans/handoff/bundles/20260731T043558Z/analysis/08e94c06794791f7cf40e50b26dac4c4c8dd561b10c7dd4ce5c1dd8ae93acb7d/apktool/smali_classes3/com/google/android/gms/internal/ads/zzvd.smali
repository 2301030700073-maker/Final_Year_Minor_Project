.class final synthetic Lcom/google/android/gms/internal/ads/zzvd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdg;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzve;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzul;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzuq;

.field private final synthetic zzd:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/internal/ads/zzul;Lcom/google/android/gms/internal/ads/zzuq;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvd;->zza:Lcom/google/android/gms/internal/ads/zzve;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvd;->zzb:Lcom/google/android/gms/internal/ads/zzul;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvd;->zzc:Lcom/google/android/gms/internal/ads/zzuq;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzvd;->zzd:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvd;->zza:Lcom/google/android/gms/internal/ads/zzve;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzve;->zzb:Lcom/google/android/gms/internal/ads/zzuu;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvf;

    .line 1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvd;->zzb:Lcom/google/android/gms/internal/ads/zzul;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzvd;->zzc:Lcom/google/android/gms/internal/ads/zzuq;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzvd;->zzd:I

    const/4 v2, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzvf;->zzcT(ILcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/internal/ads/zzul;Lcom/google/android/gms/internal/ads/zzuq;I)V

    return-void
.end method

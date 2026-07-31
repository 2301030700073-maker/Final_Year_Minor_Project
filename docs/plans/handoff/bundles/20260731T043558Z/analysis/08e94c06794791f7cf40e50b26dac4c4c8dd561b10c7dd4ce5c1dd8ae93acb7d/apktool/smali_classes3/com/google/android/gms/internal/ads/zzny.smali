.class final synthetic Lcom/google/android/gms/internal/ads/zzny;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdn;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzmj;

.field private final synthetic zzb:I

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzba;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzba;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzmj;ILcom/google/android/gms/internal/ads/zzba;Lcom/google/android/gms/internal/ads/zzba;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzny;->zza:Lcom/google/android/gms/internal/ads/zzmj;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzny;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzny;->zzc:Lcom/google/android/gms/internal/ads/zzba;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzny;->zzd:Lcom/google/android/gms/internal/ads/zzba;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzml;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zzc:Lcom/google/android/gms/internal/ads/zzba;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzny;->zzd:Lcom/google/android/gms/internal/ads/zzba;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzny;->zzb:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzny;->zza:Lcom/google/android/gms/internal/ads/zzmj;

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzml;->zzdj(Lcom/google/android/gms/internal/ads/zzmj;Lcom/google/android/gms/internal/ads/zzba;Lcom/google/android/gms/internal/ads/zzba;I)V

    return-void
.end method

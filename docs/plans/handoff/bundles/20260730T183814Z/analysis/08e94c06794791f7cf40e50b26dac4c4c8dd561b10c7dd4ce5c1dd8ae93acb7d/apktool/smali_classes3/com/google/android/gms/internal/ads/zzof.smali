.class final synthetic Lcom/google/android/gms/internal/ads/zzof;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdn;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzmj;

.field private final synthetic zzb:I

.field private final synthetic zzc:J

.field private final synthetic zzd:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzmj;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzof;->zza:Lcom/google/android/gms/internal/ads/zzmj;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzof;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzof;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzof;->zzd:J

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzml;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzof;->zza:Lcom/google/android/gms/internal/ads/zzmj;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzof;->zzb:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzof;->zzc:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzof;->zzd:J

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzml;->zzdl(Lcom/google/android/gms/internal/ads/zzmj;IJJ)V

    return-void
.end method

.class public abstract Lcom/google/android/gms/internal/ads/zzhff;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhsz;

.field private final zzb:Ljava/lang/Class;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhsz;Ljava/lang/Class;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhff;->zza:Lcom/google/android/gms/internal/ads/zzhsz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhff;->zzb:Ljava/lang/Class;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzhfe;Lcom/google/android/gms/internal/ads/zzhsz;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhff;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhfd;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzhfd;-><init>(Lcom/google/android/gms/internal/ads/zzhsz;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhfe;)V

    return-object v0
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/ads/zzhgb;)Lcom/google/android/gms/internal/ads/zzgwj;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzhsz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhff;->zza:Lcom/google/android/gms/internal/ads/zzhsz;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhff;->zzb:Ljava/lang/Class;

    return-object v0
.end method

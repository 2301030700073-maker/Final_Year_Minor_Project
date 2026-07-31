.class public abstract Lcom/google/android/gms/internal/ads/zzhec;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Ljava/lang/Class;

.field private final zzb:Ljava/lang/Class;


# direct methods
.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Class;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhec;->zza:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhec;->zzb:Ljava/lang/Class;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzheb;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhec;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhea;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzhea;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzheb;)V

    return-object v0
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/ads/zzgvt;Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhgb;
    .param p2    # Lcom/google/android/gms/internal/ads/zzgwn;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhec;->zza:Ljava/lang/Class;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhec;->zzb:Ljava/lang/Class;

    return-object v0
.end method

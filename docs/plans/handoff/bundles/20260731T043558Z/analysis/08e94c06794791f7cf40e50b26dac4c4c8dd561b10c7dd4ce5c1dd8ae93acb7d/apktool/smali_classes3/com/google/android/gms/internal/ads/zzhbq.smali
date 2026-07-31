.class final Lcom/google/android/gms/internal/ads/zzhbq;
.super Ljava/lang/ThreadLocal;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method protected static final zza()Ljavax/crypto/Cipher;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhrz;->zza:Lcom/google/android/gms/internal/ads/zzhrz;

    const-string v2, "ChaCha20-Poly1305"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhrz;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhbr;->zze(Ljavax/crypto/Cipher;)Z

    move-result v2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :catch_0
    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbq;->zza()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

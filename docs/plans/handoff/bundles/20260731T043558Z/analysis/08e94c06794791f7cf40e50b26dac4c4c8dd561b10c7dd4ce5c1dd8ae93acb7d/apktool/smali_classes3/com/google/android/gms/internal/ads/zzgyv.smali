.class public final Lcom/google/android/gms/internal/ads/zzgyv;
.super Lcom/google/android/gms/internal/ads/zzgxb;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgyu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgyu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zza:Lcom/google/android/gms/internal/ads/zzgyu;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgyu;)Lcom/google/android/gms/internal/ads/zzgyv;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgyv;-><init>(Lcom/google/android/gms/internal/ads/zzgyu;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgyv;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgyv;->zza:Lcom/google/android/gms/internal/ads/zzgyu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zza:Lcom/google/android/gms/internal/ads/zzgyu;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgyv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zza:Lcom/google/android/gms/internal/ads/zzgyu;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zza:Lcom/google/android/gms/internal/ads/zzgyu;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x27

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ChaCha20Poly1305 Parameters (variant: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zza:Lcom/google/android/gms/internal/ads/zzgyu;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgyu;->zzc:Lcom/google/android/gms/internal/ads/zzgyu;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzgyu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyv;->zza:Lcom/google/android/gms/internal/ads/zzgyu;

    return-object v0
.end method

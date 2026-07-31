.class final synthetic Lcom/google/android/gms/internal/ads/zzgxt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzheq;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzgxt;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgxt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgxt;->zza:Lcom/google/android/gms/internal/ads/zzgxt;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzgwj;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgvt;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxx;

    sget v0, Lcom/google/android/gms/internal/ads/zzgxu;->zza:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxx;->zzc()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxq;-><init>([B)V

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxq;->zza(Lcom/google/android/gms/internal/ads/zzgxx;)Lcom/google/android/gms/internal/ads/zzgxq;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzgxq;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgxq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxx;->zzc()I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhtb;->zzb(I)Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxq;->zzb(Lcom/google/android/gms/internal/ads/zzhtb;)Lcom/google/android/gms/internal/ads/zzgxq;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxq;->zzd()Lcom/google/android/gms/internal/ads/zzgxr;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "192 bit AES GCM Parameters are not valid"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

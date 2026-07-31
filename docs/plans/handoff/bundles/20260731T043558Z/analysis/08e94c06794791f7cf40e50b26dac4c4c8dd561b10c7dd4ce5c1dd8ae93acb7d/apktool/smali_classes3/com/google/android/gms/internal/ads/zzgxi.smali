.class final synthetic Lcom/google/android/gms/internal/ads/zzgxi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzheq;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzgxi;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgxi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgxi;->zza:Lcom/google/android/gms/internal/ads/zzgxi;

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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxp;

    sget v0, Lcom/google/android/gms/internal/ads/zzgxl;->zza:I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzc()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzc()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "AES key size must be 16 or 32 bytes"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxg;-><init>([B)V

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxg;->zza(Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzgxg;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzgxg;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgxg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzc()I

    move-result p2

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhtb;->zzb(I)Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzgxg;->zzb(Lcom/google/android/gms/internal/ads/zzhtb;)Lcom/google/android/gms/internal/ads/zzgxg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhtb;->zzb(I)Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxg;->zzc(Lcom/google/android/gms/internal/ads/zzhtb;)Lcom/google/android/gms/internal/ads/zzgxg;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxg;->zze()Lcom/google/android/gms/internal/ads/zzgxh;

    move-result-object p1

    return-object p1
.end method

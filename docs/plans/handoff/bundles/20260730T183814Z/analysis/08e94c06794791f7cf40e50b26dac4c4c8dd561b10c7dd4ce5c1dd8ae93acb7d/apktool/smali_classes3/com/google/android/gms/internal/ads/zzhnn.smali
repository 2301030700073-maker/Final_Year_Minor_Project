.class final synthetic Lcom/google/android/gms/internal/ads/zzhnn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzheq;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhnn;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhnn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhnn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhnn;->zza:Lcom/google/android/gms/internal/ads/zzhnn;

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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhnl;

    sget v0, Lcom/google/android/gms/internal/ads/zzhnr;->zza:I

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhro;->zzc()Lcom/google/android/gms/internal/ads/zzhro;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhnl;->zzc()Lcom/google/android/gms/internal/ads/zzhnk;

    move-result-object p1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhro;->zza()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhsz;->zza([B)Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object v1

    .line 3
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzhns;->zzc(Lcom/google/android/gms/internal/ads/zzhnk;Lcom/google/android/gms/internal/ads/zzhsz;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhns;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhro;->zzb()[B

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvr;->zza()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzhtb;->zza([BLcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object p2

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzhnm;->zzc(Lcom/google/android/gms/internal/ads/zzhns;Lcom/google/android/gms/internal/ads/zzhtb;)Lcom/google/android/gms/internal/ads/zzhnm;

    move-result-object p1

    return-object p1
.end method

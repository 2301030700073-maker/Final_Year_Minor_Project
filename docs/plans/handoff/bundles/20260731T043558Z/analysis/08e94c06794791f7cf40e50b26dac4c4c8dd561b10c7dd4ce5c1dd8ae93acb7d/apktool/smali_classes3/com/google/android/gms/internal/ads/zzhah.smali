.class final synthetic Lcom/google/android/gms/internal/ads/zzhah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzheq;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhah;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhah;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhah;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhah;->zza:Lcom/google/android/gms/internal/ads/zzhah;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzgwj;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgvt;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhak;

    const/16 v0, 0x20

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhtb;->zzb(I)Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzhaf;->zzd(Lcom/google/android/gms/internal/ads/zzhak;Lcom/google/android/gms/internal/ads/zzhtb;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhaf;

    move-result-object p1

    return-object p1
.end method

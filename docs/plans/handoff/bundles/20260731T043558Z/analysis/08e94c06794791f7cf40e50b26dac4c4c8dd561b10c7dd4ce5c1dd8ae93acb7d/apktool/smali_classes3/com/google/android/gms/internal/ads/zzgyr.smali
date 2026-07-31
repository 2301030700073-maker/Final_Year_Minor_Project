.class final synthetic Lcom/google/android/gms/internal/ads/zzgyr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzheq;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzgyr;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgyr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgyr;->zza:Lcom/google/android/gms/internal/ads/zzgyr;

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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyv;

    sget v0, Lcom/google/android/gms/internal/ads/zzgyt;->zza:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgyv;->zzc()Lcom/google/android/gms/internal/ads/zzgyu;

    move-result-object p1

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhtb;->zzb(I)Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object v0

    .line 2
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgyq;->zzd(Lcom/google/android/gms/internal/ads/zzgyu;Lcom/google/android/gms/internal/ads/zzhtb;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgyq;

    move-result-object p1

    return-object p1
.end method

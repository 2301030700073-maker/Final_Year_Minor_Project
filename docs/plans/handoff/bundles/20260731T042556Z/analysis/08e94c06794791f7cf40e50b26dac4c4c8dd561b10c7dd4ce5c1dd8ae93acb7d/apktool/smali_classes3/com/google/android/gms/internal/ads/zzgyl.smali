.class final synthetic Lcom/google/android/gms/internal/ads/zzgyl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzheq;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzgyl;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgyl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgyl;->zza:Lcom/google/android/gms/internal/ads/zzgyl;

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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyp;

    sget v0, Lcom/google/android/gms/internal/ads/zzgym;->zza:I

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgyh;-><init>([B)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgyh;->zza(Lcom/google/android/gms/internal/ads/zzgyp;)Lcom/google/android/gms/internal/ads/zzgyh;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzgyh;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgyh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgyp;->zzc()I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhtb;->zzb(I)Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgyh;->zzb(Lcom/google/android/gms/internal/ads/zzhtb;)Lcom/google/android/gms/internal/ads/zzgyh;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyh;->zzd()Lcom/google/android/gms/internal/ads/zzgyi;

    move-result-object p1

    return-object p1
.end method

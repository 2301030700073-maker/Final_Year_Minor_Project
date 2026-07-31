.class final synthetic Lcom/google/android/gms/internal/ads/zzgys;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfo;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzgys;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgys;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgys;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgys;->zza:Lcom/google/android/gms/internal/ads/zzgys;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzgvt;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyq;

    sget v0, Lcom/google/android/gms/internal/ads/zzgyt;->zza:I

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbr;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhbr;->zzb(Lcom/google/android/gms/internal/ads/zzgyq;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhrn;->zzb(Lcom/google/android/gms/internal/ads/zzgyq;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p1

    :goto_0
    return-object p1
.end method

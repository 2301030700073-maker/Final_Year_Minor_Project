.class final synthetic Lcom/google/android/gms/internal/ads/zzgyx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfo;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzgyx;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgyx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgyx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgyx;->zza:Lcom/google/android/gms/internal/ads/zzgyx;

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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgzd;

    sget v0, Lcom/google/android/gms/internal/ads/zzgyy;->zza:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgzd;->zze()Lcom/google/android/gms/internal/ads/zzgzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzf;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgwh;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgwg;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgzd;->zze()Lcom/google/android/gms/internal/ads/zzgzf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgwg;->zzb()Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgzd;->zzc()Lcom/google/android/gms/internal/ads/zzhsz;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhce;->zzc(Lcom/google/android/gms/internal/ads/zzgvm;Lcom/google/android/gms/internal/ads/zzhsz;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p1

    return-object p1
.end method

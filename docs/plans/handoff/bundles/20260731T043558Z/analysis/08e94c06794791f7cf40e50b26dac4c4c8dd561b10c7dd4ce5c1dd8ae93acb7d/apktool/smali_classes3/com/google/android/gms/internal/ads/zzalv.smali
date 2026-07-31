.class final Lcom/google/android/gms/internal/ads/zzalv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field private static final zza:Ljava/util/Comparator;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzalw;

.field private final zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzalu;->zza:Lcom/google/android/gms/internal/ads/zzalu;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzalv;->zza:Ljava/util/Comparator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzalw;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalv;->zzb:Lcom/google/android/gms/internal/ads/zzalw;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzalv;->zzc:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzalv;Lcom/google/android/gms/internal/ads/zzalv;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzalv;->zzb:Lcom/google/android/gms/internal/ads/zzalw;

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzb:I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzalv;->zzb:Lcom/google/android/gms/internal/ads/zzalw;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzalw;->zzb:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic zzb()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzalv;->zza:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzalw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalv;->zzb:Lcom/google/android/gms/internal/ads/zzalw;

    return-object v0
.end method

.method final synthetic zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalv;->zzc:I

    return v0
.end method

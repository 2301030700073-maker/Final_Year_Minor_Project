.class public final enum Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhws;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzhws;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

.field public static final zzd:I = 0x0

.field public static final zze:I = 0x1

.field public static final zzf:I = 0x2

.field private static final zzg:Lcom/google/android/gms/internal/ads/zzhwt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzhwt<",
            "Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzi:[Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;


# instance fields
.field private final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

    const-string v1, "NETWORKTYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;->zza:Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

    const-string v1, "CELL"

    const/4 v2, 0x1

    .line 2
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;->zzb:Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

    const-string v1, "WIFI"

    const/4 v2, 0x2

    .line 3
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;->zzc:Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;->zzf()[Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;->zzi:[Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;->zzg:Lcom/google/android/gms/internal/ads/zzhwt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;->zzh:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;->zzi:[Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

    return-object p0
.end method

.method public static zzc(I)Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;->zzc:Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;->zzb:Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;->zza:Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

    return-object p0
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzhwt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzhwt<",
            "Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;->zzg:Lcom/google/android/gms/internal/ads/zzhwt;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzhwu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc$zza;->zza:Lcom/google/android/gms/internal/ads/zzhwu;

    return-object v0
.end method

.method private static synthetic zzf()[Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;->zza:Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;->zzb:Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;->zzc:Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;->zzh:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzab$zzc;->zzh:I

    return v0
.end method

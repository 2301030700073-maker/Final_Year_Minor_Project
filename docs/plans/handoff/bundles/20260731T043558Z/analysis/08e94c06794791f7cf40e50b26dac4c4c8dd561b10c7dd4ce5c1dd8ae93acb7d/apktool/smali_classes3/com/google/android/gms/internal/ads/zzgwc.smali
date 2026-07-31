.class public final Lcom/google/android/gms/internal/ads/zzgwc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgwa;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzgvt;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgvv;

.field private final zzd:I

.field private final zze:Z

.field private final zzf:Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzgwa;

.field private final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwb;->zza:Lcom/google/android/gms/internal/ads/zzgwb;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgwc;->zza:Lcom/google/android/gms/internal/ads/zzgwa;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgvt;IIZZLcom/google/android/gms/internal/ads/zzgwa;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzb:Lcom/google/android/gms/internal/ads/zzgvt;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzh:I

    add-int/lit8 p2, p2, -0x2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgvv;->zzb:Lcom/google/android/gms/internal/ads/zzgvv;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgvv;->zzc:Lcom/google/android/gms/internal/ads/zzgvv;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgvv;->zza:Lcom/google/android/gms/internal/ads/zzgvv;

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzc:Lcom/google/android/gms/internal/ads/zzgvv;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzd:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zze:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzf:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzg:Lcom/google/android/gms/internal/ads/zzgwa;

    return-void
.end method

.method static synthetic zze()Lcom/google/android/gms/internal/ads/zzgwa;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwc;->zza:Lcom/google/android/gms/internal/ads/zzgwa;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgvt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzg:Lcom/google/android/gms/internal/ads/zzgwa;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzgwa;->zza(Lcom/google/android/gms/internal/ads/zzgwc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzb:Lcom/google/android/gms/internal/ads/zzgvt;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzgvv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzc:Lcom/google/android/gms/internal/ads/zzgvv;

    return-object v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzd:I

    return v0
.end method

.method public final zzd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zze:Z

    return v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzgvt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzb:Lcom/google/android/gms/internal/ads/zzgvt;

    return-object v0
.end method

.method final synthetic zzg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzd:I

    return v0
.end method

.method final synthetic zzh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zze:Z

    return v0
.end method

.method final synthetic zzi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzf:Z

    return v0
.end method

.method final synthetic zzj()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzh:I

    return v0
.end method

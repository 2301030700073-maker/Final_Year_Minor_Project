.class public final Lcom/google/android/gms/internal/ads/zzalp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaki;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzalo;

.field private zzd:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalp;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeg;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalp;->zzb:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzalo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzalo;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalp;->zzc:Lcom/google/android/gms/internal/ads/zzalo;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzalo;->zza(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzdg;)V
    .locals 7

    add-int/2addr p3, p2

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzalp;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {p4, p1, p3}, Lcom/google/android/gms/internal/ads/zzeg;->zzb([BI)V

    .line 2
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalp;->zzd:Ljava/util/zip/Inflater;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/zip/Inflater;

    .line 3
    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalp;->zzd:Ljava/util/zip/Inflater;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalp;->zzb:Lcom/google/android/gms/internal/ads/zzeg;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzalp;->zzd:Ljava/util/zip/Inflater;

    .line 4
    invoke-static {p4, p1, p2}, Lcom/google/android/gms/internal/ads/zzep;->zzM(Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzeg;Ljava/util/zip/Inflater;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result p1

    .line 5
    invoke-virtual {p4, p2, p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzb([BI)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalp;->zzc:Lcom/google/android/gms/internal/ads/zzalo;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzalo;->zzd()V

    .line 7
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result p2

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-lt p2, p3, :cond_3

    .line 8
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzeg;->zzt()I

    move-result p3

    if-eq p3, p2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzalo;->zzb(Lcom/google/android/gms/internal/ads/zzeg;)V

    .line 10
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzalo;->zzc(Lcom/google/android/gms/internal/ads/zzeg;)Lcom/google/android/gms/internal/ads/zzcm;

    move-result-object v0

    .line 8
    :cond_3
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaka;

    if-eqz v0, :cond_4

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p2

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpe;->zzi()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p2

    :goto_1
    move-object v2, p2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/32 v5, 0x4c4b40

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzaka;-><init>(Ljava/util/List;JJ)V

    .line 12
    invoke-interface {p5, p1}, Lcom/google/android/gms/internal/ads/zzdg;->zza(Ljava/lang/Object;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/ads/zzgga;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzarn;

.field private final zzb:J

.field private final zzc:J

.field private final zzd:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzarn;JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgga;->zza:Lcom/google/android/gms/internal/ads/zzarn;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgga;->zzb:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzgga;->zzc:J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzgga;->zzd:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzarn;[B)Lcom/google/android/gms/internal/ads/zzgga;
    .locals 10

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzarn;->zza()V

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzarn;->zzb([B)V

    .line 3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzarn;->zzc(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v2, 0x2

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 7
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    invoke-interface {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzarn;->zzd(JLjava/util/Optional;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzarq;->zza()[B

    move-result-object v0

    .line 9
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v0, "3."

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgga;

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzgga;-><init>(Lcom/google/android/gms/internal/ads/zzarn;JJLjava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method final synthetic zzb(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgga;->zza:Lcom/google/android/gms/internal/ads/zzarn;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgga;->zzb:J

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzarn;->zzd(JLjava/util/Optional;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfyo;->zza([BZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Ljava/util/Map;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgga;->zza:Lcom/google/android/gms/internal/ads/zzarn;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgga;->zzc:J

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzarn;->zzd(JLjava/util/Optional;)Ljava/lang/Object;

    return-void
.end method

.method final synthetic zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgga;->zzd:Ljava/lang/String;

    return-object v0
.end method

.class public final Lcom/google/android/gms/internal/ads/zzahk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzada;


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[B

.field private static final zzc:[B

.field private static final zzd:[B

.field private static final zze:[B

.field private static final zzf:Ljava/util/UUID;

.field private static final zzg:Ljava/util/Map;


# instance fields
.field private zzA:J

.field private zzB:J

.field private zzC:Z

.field private zzD:Z

.field private zzE:Lcom/google/android/gms/internal/ads/zzahj;

.field private zzF:Z

.field private zzG:I

.field private zzH:J

.field private final zzI:Landroid/util/SparseArray;

.field private zzJ:Z

.field private zzK:J

.field private zzL:I

.field private zzM:J

.field private zzN:I

.field private zzO:Z

.field private zzP:J

.field private zzQ:J

.field private zzR:J

.field private zzS:Z

.field private zzT:I

.field private zzU:J

.field private zzV:J

.field private zzW:I

.field private zzX:I

.field private zzY:[I

.field private zzZ:I

.field private zzaa:I

.field private zzab:I

.field private zzac:I

.field private zzad:Z

.field private zzae:J

.field private zzaf:I

.field private zzag:I

.field private zzah:I

.field private zzai:Z

.field private zzaj:Z

.field private zzak:Z

.field private zzal:I

.field private zzam:B

.field private zzan:Z

.field private zzao:Lcom/google/android/gms/internal/ads/zzadd;

.field private final zzap:Lcom/google/android/gms/internal/ads/zzahd;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzahm;

.field private final zzi:Landroid/util/SparseArray;

.field private final zzj:Z

.field private final zzk:Z

.field private final zzl:Lcom/google/android/gms/internal/ads/zzakg;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzr:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzs:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzt:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzu:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzv:Lcom/google/android/gms/internal/ads/zzeg;

.field private zzw:Ljava/nio/ByteBuffer;

.field private zzx:J

.field private zzy:J

.field private zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget v0, Lcom/google/android/gms/internal/ads/zzahg;->zza:I

    const/16 v0, 0x20

    .line 1
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzahk;->zzb:[B

    sget-object v1, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    .line 2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzahk;->zzc:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahk;->zzd:[B

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahk;->zze:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    .line 3
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahk;->zzf:Ljava/util/UUID;

    new-instance v0, Ljava/util/HashMap;

    .line 4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-000"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-090"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb4

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10e

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-270"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahk;->zzg:Ljava/util/Map;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzahd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzahd;-><init>()V

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzakg;->zza:Lcom/google/android/gms/internal/ads/zzakg;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzahk;-><init>(Lcom/google/android/gms/internal/ads/zzahd;ILcom/google/android/gms/internal/ads/zzakg;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzahd;ILcom/google/android/gms/internal/ads/zzakg;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzy:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzz:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzA:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzB:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzK:J

    const/4 v4, -0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzL:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzM:J

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzN:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzP:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzQ:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzR:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzap:Lcom/google/android/gms/internal/ads/zzahd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzahf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzahf;-><init>(Lcom/google/android/gms/internal/ads/zzahk;[B)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzahd;->zza(Lcom/google/android/gms/internal/ads/zzahe;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzl:Lcom/google/android/gms/internal/ads/zzakg;

    new-instance p1, Landroid/util/SparseArray;

    .line 3
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzI:Landroid/util/SparseArray;

    and-int/lit8 p1, p2, 0x1

    const/4 p3, 0x1

    xor-int/2addr p1, p3

    const/4 v0, 0x0

    if-eq p3, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzj:Z

    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_1

    move v0, p3

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzk:Z

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzahm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzahm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzh:Lcom/google/android/gms/internal/ads/zzahm;

    new-instance p1, Landroid/util/SparseArray;

    .line 5
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzi:Landroid/util/SparseArray;

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzo:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    .line 7
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzeg;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzp:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    .line 8
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzq:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfm;->zza:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzeg;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzm:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    .line 10
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzn:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    .line 11
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzr:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    .line 12
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzs:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    const/16 p2, 0x8

    .line 13
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzt:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    .line 14
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzu:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    .line 15
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzv:Lcom/google/android/gms/internal/ads/zzeg;

    new-array p1, p3, [I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzY:[I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzD:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakg;I)V
    .locals 1

    .line 16
    new-instance p2, Lcom/google/android/gms/internal/ads/zzahd;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzahd;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzahk;-><init>(Lcom/google/android/gms/internal/ads/zzahd;ILcom/google/android/gms/internal/ads/zzakg;)V

    return-void
.end method

.method private final zzA()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzD:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzi:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzahj;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzahj;->zzV:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzao:Lcom/google/android/gms/internal/ads/zzadd;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzadd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadd;->zzv()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzD:Z

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic zzm()[B
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzahk;->zzc:[B

    return-object v0
.end method

.method static synthetic zzn()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzahk;->zzf:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic zzo()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzahk;->zzg:Ljava/util/Map;

    return-object v0
.end method

.method private final zzp(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzat;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "currentTrack"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Element "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a TrackEntry"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1
.end method

.method private final zzq(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzat;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzJ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1a

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Element "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a Cues"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1
.end method

.method private final zzr(Lcom/google/android/gms/internal/ads/zzahj;JIII)V
    .locals 17
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.output"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzahj;->zzU:Lcom/google/android/gms/internal/ads/zzaen;

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    .line 2
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzahj;->zzY:Lcom/google/android/gms/internal/ads/zzaem;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzahj;->zzj:Lcom/google/android/gms/internal/ads/zzael;

    move-object v1, v2

    move-object v2, v3

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzaen;->zzc(Lcom/google/android/gms/internal/ads/zzaem;JIIILcom/google/android/gms/internal/ads/zzael;)V

    goto/16 :goto_8

    .line 3
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzahj;->zzc:Ljava/lang/String;

    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "S_TEXT/WEBVTT"

    const-string v5, "S_TEXT/SSA"

    const-string v6, "S_TEXT/ASS"

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzahj;->zzc:Ljava/lang/String;

    .line 4
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzahj;->zzc:Ljava/lang/String;

    .line 5
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzahj;->zzc:Ljava/lang/String;

    .line 6
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahk;->zzX:I

    const-string v10, "MatroskaExtractor"

    if-le v2, v9, :cond_2

    const-string v2, "Skipping subtitle sample in laced block."

    .line 7
    invoke-static {v10, v2}, Lcom/google/android/gms/internal/ads/zzdt;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_2
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzahk;->zzV:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v11, v13

    if-nez v2, :cond_4

    const-string v2, "Skipping subtitle sample with no duration."

    .line 8
    invoke-static {v10, v2}, Lcom/google/android/gms/internal/ads/zzdt;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    move/from16 v2, p5

    goto/16 :goto_6

    .line 9
    :cond_4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzahj;->zzc:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzahk;->zzs:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v13

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v15, 0x3

    sparse-switch v14, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v7

    goto :goto_2

    :sswitch_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v15

    goto :goto_2

    :sswitch_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v8

    goto :goto_2

    :sswitch_3
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v9

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v2, -0x1

    :goto_2
    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_8

    if-eq v2, v9, :cond_7

    if-eq v2, v8, :cond_7

    if-ne v2, v15, :cond_6

    const-string v2, "%02d:%02d:%02d.%03d"

    .line 11
    invoke-static {v11, v12, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzahk;->zzw(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x19

    goto :goto_3

    .line 10
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 24
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 19
    :cond_7
    const-string v2, "%01d:%02d:%02d:%02d"

    const-wide/16 v3, 0x2710

    .line 12
    invoke-static {v11, v12, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzahk;->zzw(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x15

    goto :goto_3

    :cond_8
    const-string v2, "%02d:%02d:%02d,%03d"

    .line 13
    invoke-static {v11, v12, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzahk;->zzw(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x13

    .line 14
    :goto_3
    array-length v4, v2

    invoke-static {v2, v7, v13, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v2

    :goto_4
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 16
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v3

    aget-byte v3, v3, v2

    if-nez v3, :cond_9

    .line 17
    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzf(I)V

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 18
    :cond_a
    :goto_5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzahj;->zzY:Lcom/google/android/gms/internal/ads/zzaem;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result v3

    invoke-interface {v2, v10, v3}, Lcom/google/android/gms/internal/ads/zzaem;->zzz(Lcom/google/android/gms/internal/ads/zzeg;I)V

    .line 19
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result v2

    add-int v2, p5, v2

    :goto_6
    const/high16 v3, 0x10000000

    and-int v3, p4, v3

    if-eqz v3, :cond_c

    .line 7
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahk;->zzX:I

    if-le v3, v9, :cond_b

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahk;->zzv:Lcom/google/android/gms/internal/ads/zzeg;

    .line 20
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzeg;->zza(I)V

    goto :goto_7

    .line 23
    :cond_b
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahk;->zzv:Lcom/google/android/gms/internal/ads/zzeg;

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result v4

    .line 22
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzahj;->zzY:Lcom/google/android/gms/internal/ads/zzaem;

    invoke-interface {v5, v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzaem;->zzw(Lcom/google/android/gms/internal/ads/zzeg;II)V

    add-int/2addr v2, v4

    :cond_c
    :goto_7
    move v14, v2

    .line 23
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzahj;->zzY:Lcom/google/android/gms/internal/ads/zzaem;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzahj;->zzj:Lcom/google/android/gms/internal/ads/zzael;

    move-wide/from16 v11, p2

    move/from16 v13, p4

    move/from16 v15, p6

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzaem;->zzx(JIIILcom/google/android/gms/internal/ads/zzael;)V

    .line 2
    :goto_8
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzahk;->zzS:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c0618eb -> :sswitch_3
        0x2c065c6b -> :sswitch_2
        0x3e4ca2d8 -> :sswitch_1
        0x54c61e47 -> :sswitch_0
    .end sparse-switch
.end method

.method private final zzs(Lcom/google/android/gms/internal/ads/zzadb;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzo:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result v1

    if-lt v1, p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzj()I

    move-result v1

    if-ge v1, p2, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzj()I

    move-result v1

    add-int/2addr v1, v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzc(I)V

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result v3

    sub-int v3, p2, v3

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadb;->zzc([BII)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzeg;->zzf(I)V

    return-void
.end method

.method private final zzt(Lcom/google/android/gms/internal/ads/zzadb;Lcom/google/android/gms/internal/ads/zzahj;IZ)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#2.output"
        }
    .end annotation

    .line 1
    const-string v0, "S_TEXT/UTF8"

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzahk;->zzb:[B

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzahk;->zzv(Lcom/google/android/gms/internal/ads/zzadb;[BI)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahk;->zzu()V

    return p1

    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzc:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzc:Ljava/lang/String;

    const-string v1, "S_TEXT/SSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_c

    .line 6
    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzc:Ljava/lang/String;

    const-string v1, "S_TEXT/WEBVTT"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzahk;->zze:[B

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzahk;->zzv(Lcom/google/android/gms/internal/ads/zzadb;[BI)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahk;->zzu()V

    return p1

    :cond_2
    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzV:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget v0, Lcom/google/android/gms/internal/ads/zzacz;->zza:I

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeg;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v4

    .line 12
    invoke-interface {p1, v4, v3, p3, v2}, Lcom/google/android/gms/internal/ads/zzadb;->zzh([BIIZ)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzl()V

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzr()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzacz;->zza(I)I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_4

    new-array v4, v5, [B

    .line 16
    invoke-virtual {v0, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    .line 17
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 18
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzacz;->zzc([B)I

    move-result v4

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v5

    add-int/lit8 v6, v4, 0x4

    if-lt v5, v6, :cond_4

    .line 20
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzB()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzacz;->zza(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 84
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v0

    const-string v4, "audio/vnd.dts.hd"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    .line 12
    :cond_4
    :goto_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzY:Lcom/google/android/gms/internal/ads/zzaem;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    .line 23
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/zzaem;->zzu(Lcom/google/android/gms/internal/ads/zzv;)V

    iput-boolean v3, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzV:Z

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahk;->zzA()V

    :cond_5
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzY:Lcom/google/android/gms/internal/ads/zzaem;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzai:Z

    const/4 v5, 0x4

    if-nez v4, :cond_14

    iget-boolean v4, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzh:Z

    if-eqz v4, :cond_10

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzab:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v4, v6

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzab:I

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaj:Z

    const/16 v6, 0x80

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzo:Lcom/google/android/gms/internal/ads/zzeg;

    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v7

    invoke-interface {p1, v7, v3, v2}, Lcom/google/android/gms/internal/ads/zzadb;->zzc([BII)V

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaf:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaf:I

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v7

    aget-byte v7, v7, v3

    and-int/2addr v7, v6

    if-eq v7, v6, :cond_6

    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v4

    aget-byte v4, v4, v3

    iput-byte v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzam:B

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaj:Z

    goto :goto_1

    .line 26
    :cond_6
    const-string p1, "Extension bit is set in signal byte"

    const/4 p2, 0x0

    .line 27
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    .line 28
    :cond_7
    :goto_1
    iget-byte v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzam:B

    and-int/lit8 v7, v4, 0x1

    if-ne v7, v2, :cond_11

    and-int/2addr v4, v1

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzab:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzab:I

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzan:Z

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzt:Lcom/google/android/gms/internal/ads/zzeg;

    .line 29
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v8

    const/16 v9, 0x8

    invoke-interface {p1, v8, v3, v9}, Lcom/google/android/gms/internal/ads/zzadb;->zzc([BII)V

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaf:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaf:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzan:Z

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzo:Lcom/google/android/gms/internal/ads/zzeg;

    if-ne v4, v1, :cond_8

    goto :goto_2

    :cond_8
    move v6, v3

    :goto_2
    or-int/2addr v6, v9

    .line 30
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v10

    int-to-byte v6, v6

    .line 31
    aput-byte v6, v10, v3

    .line 32
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 33
    invoke-interface {v0, v8, v2, v2}, Lcom/google/android/gms/internal/ads/zzaem;->zzw(Lcom/google/android/gms/internal/ads/zzeg;II)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    .line 34
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 35
    invoke-interface {v0, v7, v9, v2}, Lcom/google/android/gms/internal/ads/zzaem;->zzw(Lcom/google/android/gms/internal/ads/zzeg;II)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    add-int/2addr v6, v9

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    :cond_9
    if-ne v4, v1, :cond_11

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzak:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzo:Lcom/google/android/gms/internal/ads/zzeg;

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v6

    invoke-interface {p1, v6, v3, v2}, Lcom/google/android/gms/internal/ads/zzadb;->zzc([BII)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaf:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaf:I

    .line 37
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v4

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzal:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzak:Z

    :cond_a
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzal:I

    mul-int/2addr v4, v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzo:Lcom/google/android/gms/internal/ads/zzeg;

    .line 39
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzeg;->zza(I)V

    .line 40
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v7

    invoke-interface {p1, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzadb;->zzc([BII)V

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaf:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaf:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzal:I

    shr-int/2addr v4, v2

    add-int/2addr v4, v2

    mul-int/lit8 v7, v4, 0x6

    add-int/2addr v7, v1

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzw:Ljava/nio/ByteBuffer;

    if-eqz v8, :cond_b

    .line 41
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    if-ge v8, v7, :cond_c

    .line 42
    :cond_b
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzw:Ljava/nio/ByteBuffer;

    :cond_c
    int-to-short v4, v4

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzw:Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzw:Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {v8, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v4, v3

    move v8, v4

    :goto_3
    iget v9, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzal:I

    if-ge v4, v9, :cond_e

    .line 45
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzeg;->zzH()I

    move-result v9

    sub-int v8, v9, v8

    rem-int/lit8 v10, v4, 0x2

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzw:Ljava/nio/ByteBuffer;

    int-to-short v8, v8

    .line 46
    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_d
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzw:Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v8, v9

    goto :goto_3

    :cond_e
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaf:I

    sub-int v4, p3, v4

    sub-int/2addr v4, v8

    and-int/lit8 v6, v9, 0x1

    if-ne v6, v2, :cond_f

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzw:Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 78
    :cond_f
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzw:Ljava/nio/ByteBuffer;

    int-to-short v4, v4

    .line 49
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzw:Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 48
    :goto_5
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzu:Lcom/google/android/gms/internal/ads/zzeg;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzw:Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzeg;->zzb([BI)V

    .line 52
    invoke-interface {v0, v4, v7, v2}, Lcom/google/android/gms/internal/ads/zzaem;->zzw(Lcom/google/android/gms/internal/ads/zzeg;II)V

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    add-int/2addr v4, v7

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    goto :goto_6

    .line 50
    :cond_10
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzi:[B

    if-eqz v4, :cond_11

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzr:Lcom/google/android/gms/internal/ads/zzeg;

    array-length v7, v4

    .line 53
    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/internal/ads/zzeg;->zzb([BI)V

    .line 52
    :cond_11
    :goto_6
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzc:Ljava/lang/String;

    const-string v6, "A_OPUS"

    .line 54
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz p4, :cond_13

    goto :goto_7

    .line 78
    :cond_12
    iget p4, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzg:I

    if-lez p4, :cond_13

    .line 54
    :goto_7
    iget p4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzab:I

    const/high16 v4, 0x10000000

    or-int/2addr p4, v4

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzab:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzv:Lcom/google/android/gms/internal/ads/zzeg;

    .line 55
    invoke-virtual {p4, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zza(I)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzr:Lcom/google/android/gms/internal/ads/zzeg;

    .line 56
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result p4

    add-int/2addr p4, p3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaf:I

    sub-int/2addr p4, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzo:Lcom/google/android/gms/internal/ads/zzeg;

    .line 57
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzeg;->zza(I)V

    shr-int/lit8 v6, p4, 0x18

    .line 58
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v7

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v7, v3

    .line 59
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v6

    shr-int/lit8 v7, p4, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    shr-int/lit8 v6, p4, 0x8

    .line 60
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v7

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v7, v1

    .line 61
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v6

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    const/4 v7, 0x3

    aput-byte p4, v6, v7

    .line 62
    invoke-interface {v0, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzaem;->zzw(Lcom/google/android/gms/internal/ads/zzeg;II)V

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    add-int/2addr p4, v5

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    :cond_13
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzai:Z

    :cond_14
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzr:Lcom/google/android/gms/internal/ads/zzeg;

    .line 63
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result v4

    add-int/2addr p3, v4

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzc:Ljava/lang/String;

    const-string v6, "V_MPEG4/ISO/AVC"

    .line 64
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzc:Ljava/lang/String;

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_a

    .line 83
    :cond_15
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzU:Lcom/google/android/gms/internal/ads/zzaen;

    if-nez v1, :cond_16

    goto :goto_9

    .line 77
    :cond_16
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result p4

    if-nez p4, :cond_17

    goto :goto_8

    :cond_17
    move v2, v3

    :goto_8
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzU:Lcom/google/android/gms/internal/ads/zzaen;

    .line 78
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzaen;->zzb(Lcom/google/android/gms/internal/ads/zzadb;)V

    .line 83
    :goto_9
    iget p4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaf:I

    if-ge p4, p3, :cond_1b

    sub-int p4, p3, p4

    .line 79
    invoke-direct {p0, p1, v0, p4}, Lcom/google/android/gms/internal/ads/zzahk;->zzx(Lcom/google/android/gms/internal/ads/zzadb;Lcom/google/android/gms/internal/ads/zzaem;I)I

    move-result p4

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaf:I

    add-int/2addr v1, p4

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaf:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    add-int/2addr v1, p4

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    goto :goto_9

    .line 64
    :cond_18
    :goto_a
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzn:Lcom/google/android/gms/internal/ads/zzeg;

    .line 65
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v6

    .line 66
    aput-byte v3, v6, v3

    .line 67
    aput-byte v3, v6, v2

    .line 68
    aput-byte v3, v6, v1

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzaa:I

    rsub-int/lit8 v2, v1, 0x4

    :goto_b
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaf:I

    if-ge v7, p3, :cond_1b

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzah:I

    if-nez v7, :cond_1a

    .line 69
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v8, v2, v7

    sub-int v9, v1, v7

    .line 70
    invoke-interface {p1, v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzadb;->zzc([BII)V

    if-lez v7, :cond_19

    .line 71
    invoke-virtual {p4, v6, v2, v7}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    :cond_19
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaf:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaf:I

    .line 72
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 73
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzH()I

    move-result v7

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzah:I

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzm:Lcom/google/android/gms/internal/ads/zzeg;

    .line 74
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 75
    invoke-interface {v0, v7, v5}, Lcom/google/android/gms/internal/ads/zzaem;->zzz(Lcom/google/android/gms/internal/ads/zzeg;I)V

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    goto :goto_b

    .line 76
    :cond_1a
    invoke-direct {p0, p1, v0, v7}, Lcom/google/android/gms/internal/ads/zzahk;->zzx(Lcom/google/android/gms/internal/ads/zzadb;Lcom/google/android/gms/internal/ads/zzaem;I)I

    move-result v7

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaf:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaf:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzah:I

    sub-int/2addr v8, v7

    iput v8, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzah:I

    goto :goto_b

    :cond_1b
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzc:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzp:Lcom/google/android/gms/internal/ads/zzeg;

    .line 81
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 82
    invoke-interface {v0, p1, v5}, Lcom/google/android/gms/internal/ads/zzaem;->zzz(Lcom/google/android/gms/internal/ads/zzeg;I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    :cond_1c
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    .line 83
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahk;->zzu()V

    return p1

    .line 4
    :cond_1d
    :goto_c
    sget-object p2, Lcom/google/android/gms/internal/ads/zzahk;->zzd:[B

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzahk;->zzv(Lcom/google/android/gms/internal/ads/zzadb;[BI)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahk;->zzu()V

    return p1
.end method

.method private final zzu()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzag:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzah:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzai:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzaj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzak:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzal:I

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzam:B

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzan:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzr:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zza(I)V

    return-void
.end method

.method private final zzv(Lcom/google/android/gms/internal/ads/zzadb;[BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p2

    add-int v1, v0, p3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzs:Lcom/google/android/gms/internal/ads/zzeg;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzj()I

    move-result v3

    const/4 v4, 0x0

    if-ge v3, v1, :cond_0

    add-int v3, v1, p3

    .line 3
    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    .line 4
    array-length v3, p2

    invoke-virtual {v2, p2, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzb([BI)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v3

    invoke-static {p2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object p2

    invoke-interface {p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzadb;->zzc([BII)V

    .line 7
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzf(I)V

    return-void
.end method

.method private static zzw(JLjava/lang/String;J)[B
    .locals 9

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmd;->zza(Z)V

    const-wide v0, 0xd693a400L

    div-long v2, p0, v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-int v2, v2

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v5, v2

    mul-long/2addr v5, v0

    sub-long/2addr p0, v5

    const-wide/32 v0, 0x3938700

    div-long v5, p0, v0

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    int-to-long v6, v2

    mul-long/2addr v6, v0

    sub-long/2addr p0, v6

    const-wide/32 v0, 0xf4240

    div-long v6, p0, v0

    long-to-int v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    int-to-long v7, v2

    mul-long/2addr v7, v0

    sub-long/2addr p0, v7

    div-long/2addr p0, p3

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v3, v5, v6, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    .line 4
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private final zzx(Lcom/google/android/gms/internal/ads/zzadb;Lcom/google/android/gms/internal/ads/zzaem;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzr:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v1

    if-lez v1, :cond_0

    .line 2
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3
    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzaem;->zzz(Lcom/google/android/gms/internal/ads/zzeg;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzaem;->zzy(Lcom/google/android/gms/internal/ads/zzj;IZ)I

    move-result p1

    :goto_0
    return p1
.end method

.method private final zzy(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzat;
        }
    .end annotation

    .line 1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzz:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v0, p1

    .line 2
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzep;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide p1

    return-wide p1

    .line 1
    :cond_0
    const-string p1, "Can\'t scale timecode prior to timecodeScale being set."

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1
.end method

.method private static zzz([II)[I
    .locals 1

    if-nez p0, :cond_0

    new-array p0, p1, [I

    return-object p0

    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    :cond_1
    add-int/2addr v0, v0

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzadb;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzahl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzahl;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzahl;->zza(Lcom/google/android/gms/internal/ads/zzadb;)Z

    move-result p1

    return p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzadd;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzk:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzl:Lcom/google/android/gms/internal/ads/zzakg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzakj;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzakj;-><init>(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzakg;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzao:Lcom/google/android/gms/internal/ads/zzadd;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzadb;Lcom/google/android/gms/internal/ads/zzaea;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzS:Z

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzS:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzap:Lcom/google/android/gms/internal/ads/zzahd;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzahd;->zzc(Lcom/google/android/gms/internal/ads/zzadb;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzn()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzO:Z

    if-eqz v3, :cond_1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzQ:J

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzP:J

    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzaea;->zza:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzO:Z

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzF:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzQ:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzaea;->zza:J

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzQ:J

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzi:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_4

    .line 3
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzahj;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzahj;->zzb()V

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzU:Lcom/google/android/gms/internal/ads/zzaen;

    if-eqz p2, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzY:Lcom/google/android/gms/internal/ads/zzaem;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzj:Lcom/google/android/gms/internal/ads/zzael;

    .line 5
    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzaen;->zzd(Lcom/google/android/gms/internal/ads/zzaem;Lcom/google/android/gms/internal/ads/zzael;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    return p1

    :cond_5
    return v0
.end method

.method public final zze(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzR:J

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzT:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzap:Lcom/google/android/gms/internal/ads/zzahd;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzahd;->zzb()V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzh:Lcom/google/android/gms/internal/ads/zzahm;

    .line 2
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzahm;->zza()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahk;->zzu()V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzJ:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzK:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzL:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzM:J

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzi:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p3, p2, :cond_1

    .line 5
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzahj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzU:Lcom/google/android/gms/internal/ads/zzaen;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaen;->zza()V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final zzg(IJJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzat;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzao:Lcom/google/android/gms/internal/ads/zzadd;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xa0

    const-wide/16 v2, 0x0

    if-eq p1, v1, :cond_d

    const/16 v1, 0xae

    if-eq p1, v1, :cond_c

    const/16 v1, 0xb7

    const/4 v4, -0x1

    const-wide/16 v5, -0x1

    if-eq p1, v1, :cond_b

    const/16 v1, 0xbb

    if-eq p1, v1, :cond_a

    const/16 v1, 0x4dbb

    if-eq p1, v1, :cond_9

    const/16 v1, 0x5035

    const/4 v4, 0x1

    if-eq p1, v1, :cond_8

    const/16 v1, 0x55d0

    if-eq p1, v1, :cond_7

    const v1, 0x18538067

    if-eq p1, v1, :cond_4

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_3

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzF:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzj:Z

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzP:J

    cmp-long p1, p1, v5

    if-eqz p1, :cond_1

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzO:Z

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaec;

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzB:J

    .line 5
    invoke-direct {p1, p2, p3, v2, v3}, Lcom/google/android/gms/internal/ads/zzaec;-><init>(JJ)V

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzw(Lcom/google/android/gms/internal/ads/zzaed;)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzF:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzJ:Z

    return-void

    .line 2
    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzy:J

    cmp-long p1, v0, v5

    if-eqz p1, :cond_6

    cmp-long p1, v0, p2

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const-string p1, "Multiple Segment elements not supported"

    const/4 p2, 0x0

    .line 7
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :cond_6
    :goto_1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzy:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzx:J

    return-void

    .line 3
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 4
    iput-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzy:Z

    return-void

    .line 1
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 2
    iput-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzh:Z

    return-void

    .line 6
    :cond_9
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzG:I

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzH:J

    return-void

    .line 8
    :cond_a
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzq(I)V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzK:J

    return-void

    .line 9
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzq(I)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzL:I

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzM:J

    return-void

    :cond_c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzahj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzahj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzC:Z

    .line 10
    iput-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zza:Z

    return-void

    :cond_d
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzad:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzae:J

    return-void
.end method

.method protected final zzh(I)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzat;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p1

    .line 26
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzao:Lcom/google/android/gms/internal/ads/zzadd;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xa0

    const/16 v3, 0x8

    .line 26
    const-string v4, "A_OPUS"

    const-wide/16 v5, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v0, v2, :cond_1f

    const/16 v2, 0xae

    const/4 v11, 0x0

    const/4 v12, -0x1

    if-eq v0, v2, :cond_1c

    const/16 v1, 0xb7

    const-wide/16 v2, -0x1

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x4dbb

    const v4, 0x1c53bb6b

    if-eq v0, v1, :cond_18

    const/16 v1, 0x6240

    if-eq v0, v1, :cond_16

    const/16 v1, 0x6d80

    if-eq v0, v1, :cond_14

    const v1, 0x1549a966

    if-eq v0, v1, :cond_12

    const v1, 0x1654ae6b

    if-eq v0, v1, :cond_6

    if-eq v0, v4, :cond_0

    goto/16 :goto_d

    .line 30
    :cond_0
    iget-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzF:Z

    if-nez v0, :cond_5

    move v0, v10

    :goto_0
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzI:Landroid/util/SparseArray;

    .line 1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 2
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzB:J

    cmp-long v0, v2, v13

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    move v0, v10

    .line 3
    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 4
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzahi;

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzB:J

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzN:I

    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzy:J

    iget-wide v11, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzx:J

    move-object v15, v0

    move-object/from16 v16, v1

    move-wide/from16 v17, v2

    move/from16 v19, v4

    move-wide/from16 v20, v5

    move-wide/from16 v22, v11

    .line 5
    invoke-direct/range {v15 .. v23}, Lcom/google/android/gms/internal/ads/zzahi;-><init>(Landroid/util/SparseArray;JIJJ)V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzao:Lcom/google/android/gms/internal/ads/zzadd;

    .line 6
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzadd;->zzw(Lcom/google/android/gms/internal/ads/zzaed;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_4
    :goto_2
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzao:Lcom/google/android/gms/internal/ads/zzadd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaec;

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzB:J

    .line 7
    invoke-direct {v1, v2, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzaec;-><init>(JJ)V

    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzadd;->zzw(Lcom/google/android/gms/internal/ads/zzaed;)V

    :goto_3
    iput-boolean v9, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzF:Z

    :cond_5
    iput-boolean v10, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzJ:Z

    return-void

    .line 6
    :cond_6
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzi:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_11

    move v1, v10

    move v2, v12

    move v3, v2

    move v4, v3

    move v5, v4

    .line 10
    :goto_4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_b

    .line 11
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzahj;

    .line 12
    iget v11, v6, Lcom/google/android/gms/internal/ads/zzahj;->zze:I

    if-ne v11, v8, :cond_8

    .line 13
    iget-boolean v11, v6, Lcom/google/android/gms/internal/ads/zzahj;->zzX:Z

    if-eqz v11, :cond_7

    .line 14
    iget v2, v6, Lcom/google/android/gms/internal/ads/zzahj;->zzd:I

    :cond_7
    if-ne v3, v12, :cond_a

    .line 15
    iget v3, v6, Lcom/google/android/gms/internal/ads/zzahj;->zzd:I

    goto :goto_5

    :cond_8
    if-ne v11, v9, :cond_a

    .line 16
    iget-boolean v11, v6, Lcom/google/android/gms/internal/ads/zzahj;->zzX:Z

    if-eqz v11, :cond_9

    .line 17
    iget v4, v6, Lcom/google/android/gms/internal/ads/zzahj;->zzd:I

    :cond_9
    if-ne v5, v12, :cond_a

    .line 18
    iget v5, v6, Lcom/google/android/gms/internal/ads/zzahj;->zzd:I

    :cond_a
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    if-eq v2, v12, :cond_c

    iput v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzN:I

    goto :goto_6

    :cond_c
    if-eq v3, v12, :cond_d

    .line 20
    iput v3, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzN:I

    goto :goto_6

    :cond_d
    if-eq v4, v12, :cond_e

    iput v4, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzN:I

    goto :goto_6

    :cond_e
    if-eq v5, v12, :cond_f

    iput v5, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzN:I

    goto :goto_6

    .line 19
    :cond_f
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_10

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzahj;

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzd:I

    :cond_10
    iput v12, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzN:I

    .line 20
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahk;->zzA()V

    return-void

    .line 56
    :cond_11
    const-string v0, "No valid tracks were found"

    .line 21
    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    .line 19
    :cond_12
    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzz:J

    cmp-long v0, v0, v13

    if-nez v0, :cond_13

    const-wide/32 v0, 0xf4240

    iput-wide v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzz:J

    :cond_13
    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzA:J

    cmp-long v2, v0, v13

    if-eqz v2, :cond_25

    .line 22
    invoke-direct {v7, v0, v1}, Lcom/google/android/gms/internal/ads/zzahk;->zzy(J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzB:J

    return-void

    .line 23
    :cond_14
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 24
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzh:Z

    if-eqz v1, :cond_25

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzi:[B

    if-nez v0, :cond_15

    goto/16 :goto_d

    :cond_15
    const-string v0, "Combining encryption and compression is not supported"

    .line 25
    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    .line 26
    :cond_16
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 27
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzh:Z

    if-eqz v1, :cond_25

    .line 28
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzj:Lcom/google/android/gms/internal/ads/zzael;

    if-eqz v1, :cond_17

    .line 29
    new-instance v1, Lcom/google/android/gms/internal/ads/zzq;

    new-array v2, v9, [Lcom/google/android/gms/internal/ads/zzp;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzp;

    .line 30
    sget-object v4, Lcom/google/android/gms/internal/ads/zzg;->zza:Ljava/util/UUID;

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzahj;->zzj:Lcom/google/android/gms/internal/ads/zzael;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzael;->zzb:[B

    const-string v6, "video/webm"

    .line 31
    invoke-direct {v3, v4, v11, v6, v5}, Lcom/google/android/gms/internal/ads/zzp;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    aput-object v3, v2, v10

    .line 32
    invoke-direct {v1, v11, v2}, Lcom/google/android/gms/internal/ads/zzq;-><init>(Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzp;)V

    .line 30
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzl:Lcom/google/android/gms/internal/ads/zzq;

    return-void

    .line 28
    :cond_17
    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    .line 29
    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    .line 38
    :cond_18
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzG:I

    if-eq v0, v12, :cond_19

    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzH:J

    cmp-long v1, v5, v2

    if-eqz v1, :cond_19

    if-ne v0, v4, :cond_25

    .line 33
    iput-wide v5, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzP:J

    return-void

    .line 38
    :cond_19
    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    .line 33
    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    .line 34
    :cond_1a
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzq(I)V

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzK:J

    cmp-long v0, v0, v13

    if-eqz v0, :cond_25

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzL:I

    if-eq v0, v12, :cond_25

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzM:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_25

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzI:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/util/ArrayList;

    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzL:I

    .line 37
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzahh;

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzK:J

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzy:J

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzM:J

    add-long/2addr v4, v8

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzahh;-><init>(JJ)V

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 33
    :cond_1c
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzahj;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzc:Ljava/lang/String;

    if-eqz v2, :cond_1e

    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_7

    .line 42
    :sswitch_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0xb

    goto/16 :goto_8

    :sswitch_1
    const-string v3, "A_FLAC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x16

    goto/16 :goto_8

    :sswitch_2
    const-string v3, "A_EAC3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x11

    goto/16 :goto_8

    :sswitch_3
    const-string v3, "V_MPEG2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v3, 0x3

    goto/16 :goto_8

    :sswitch_4
    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x1b

    goto/16 :goto_8

    :sswitch_5
    const-string v3, "S_TEXT/WEBVTT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x1e

    goto/16 :goto_8

    :sswitch_6
    const-string v4, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto/16 :goto_8

    :sswitch_7
    const-string v3, "S_TEXT/SSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x1d

    goto/16 :goto_8

    :sswitch_8
    const-string v3, "S_TEXT/ASS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x1c

    goto/16 :goto_8

    :sswitch_9
    const-string v3, "A_PCM/INT/LIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x18

    goto/16 :goto_8

    :sswitch_a
    const-string v3, "A_PCM/INT/BIG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x19

    goto/16 :goto_8

    :sswitch_b
    const-string v3, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x1a

    goto/16 :goto_8

    :sswitch_c
    const-string v3, "A_DTS/EXPRESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x14

    goto/16 :goto_8

    :sswitch_d
    const-string v3, "V_THEORA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0xa

    goto/16 :goto_8

    :sswitch_e
    const-string v3, "S_HDMV/PGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x20

    goto/16 :goto_8

    :sswitch_f
    const-string v3, "V_VP9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move v3, v9

    goto/16 :goto_8

    :sswitch_10
    const-string v3, "V_VP8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move v3, v10

    goto/16 :goto_8

    :sswitch_11
    const-string v3, "V_AV1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move v3, v8

    goto/16 :goto_8

    :sswitch_12
    const-string v3, "A_DTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x13

    goto/16 :goto_8

    :sswitch_13
    const-string v3, "A_AC3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x10

    goto/16 :goto_8

    :sswitch_14
    const-string v3, "A_AAC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0xd

    goto/16 :goto_8

    :sswitch_15
    const-string v3, "A_DTS/LOSSLESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x15

    goto/16 :goto_8

    :sswitch_16
    const-string v3, "S_VOBSUB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x1f

    goto/16 :goto_8

    :sswitch_17
    const-string v3, "V_MPEG4/ISO/AVC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v3, 0x7

    goto/16 :goto_8

    :sswitch_18
    const-string v3, "V_MPEG4/ISO/ASP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v3, 0x5

    goto/16 :goto_8

    :sswitch_19
    const-string v3, "S_DVBSUB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x21

    goto :goto_8

    :sswitch_1a
    const-string v3, "V_MS/VFW/FOURCC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x9

    goto :goto_8

    :sswitch_1b
    const-string v3, "A_MPEG/L3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0xf

    goto :goto_8

    :sswitch_1c
    const-string v3, "A_MPEG/L2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0xe

    goto :goto_8

    :sswitch_1d
    const-string v3, "A_VORBIS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0xc

    goto :goto_8

    :sswitch_1e
    const-string v3, "A_TRUEHD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x12

    goto :goto_8

    :sswitch_1f
    const-string v3, "A_MS/ACM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v3, 0x17

    goto :goto_8

    :sswitch_20
    const-string v3, "V_MPEG4/ISO/SP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v3, 0x4

    goto :goto_8

    :sswitch_21
    const-string v3, "V_MPEG4/ISO/AP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v3, 0x6

    goto :goto_8

    :cond_1d
    :goto_7
    move v3, v12

    :goto_8
    packed-switch v3, :pswitch_data_0

    goto :goto_9

    .line 40
    :pswitch_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzd:I

    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzahj;->zza(Lcom/google/android/gms/internal/ads/zzadd;I)V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzi:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzd:I

    .line 42
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_9
    iput-object v11, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    return-void

    .line 39
    :cond_1e
    const-string v0, "CodecId is missing in TrackEntry element"

    .line 40
    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    .line 42
    :cond_1f
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzT:I

    if-ne v0, v8, :cond_25

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzi:Landroid/util/SparseArray;

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzZ:I

    .line 44
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/ads/zzahj;

    .line 45
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzahj;->zzb()V

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzae:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_20

    .line 46
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzahj;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzv:Lcom/google/android/gms/internal/ads/zzeg;

    .line 47
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 48
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzae:J

    .line 49
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 51
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzb([BI)V

    :cond_20
    move v0, v10

    move v1, v0

    :goto_a
    iget v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzX:I

    if-ge v0, v2, :cond_21

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzY:[I

    .line 52
    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_21
    move v0, v10

    :goto_b
    iget v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzX:I

    if-ge v0, v2, :cond_24

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzU:J

    .line 53
    iget v4, v8, Lcom/google/android/gms/internal/ads/zzahj;->zzf:I

    mul-int/2addr v4, v0

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzab:I

    if-nez v0, :cond_23

    iget-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzad:Z

    if-nez v0, :cond_22

    or-int/lit8 v0, v4, 0x1

    move v4, v0

    :cond_22
    move v11, v10

    goto :goto_c

    :cond_23
    move v11, v0

    :goto_c
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzY:[I

    .line 54
    aget v5, v0, v11

    sub-int v12, v1, v5

    move-object/from16 v0, p0

    move-object v1, v8

    move v6, v12

    .line 55
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzahk;->zzr(Lcom/google/android/gms/internal/ads/zzahj;JIII)V

    add-int/lit8 v0, v11, 0x1

    move v1, v12

    goto :goto_b

    :cond_24
    iput v10, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzT:I

    :cond_25
    :goto_d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_21
        -0x7ce7f3b0 -> :sswitch_20
        -0x76567dc0 -> :sswitch_1f
        -0x6a615338 -> :sswitch_1e
        -0x672350af -> :sswitch_1d
        -0x585f4fce -> :sswitch_1c
        -0x585f4fcd -> :sswitch_1b
        -0x51dc40b2 -> :sswitch_1a
        -0x37a9c464 -> :sswitch_19
        -0x2016c535 -> :sswitch_18
        -0x2016c4e5 -> :sswitch_17
        -0x19552dbd -> :sswitch_16
        -0x1538b2ba -> :sswitch_15
        0x3c02325 -> :sswitch_14
        0x3c02353 -> :sswitch_13
        0x3c030c5 -> :sswitch_12
        0x4e81333 -> :sswitch_11
        0x4e86155 -> :sswitch_10
        0x4e86156 -> :sswitch_f
        0x5e8da3e -> :sswitch_e
        0x1a8350d6 -> :sswitch_d
        0x2056f406 -> :sswitch_c
        0x25e26ee2 -> :sswitch_b
        0x2b45174d -> :sswitch_a
        0x2b453ce4 -> :sswitch_9
        0x2c0618eb -> :sswitch_8
        0x2c065c6b -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final zzi(IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzat;
        }
    .end annotation

    const/16 v0, 0x5031

    const/4 v1, 0x0

    .line 40
    const-string v2, " not supported"

    if-eq p1, v0, :cond_17

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_15

    const/16 v0, 0x21

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    long-to-int p2, p2

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 24
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzD:I

    return-void

    :pswitch_1
    long-to-int p2, p2

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 22
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzC:I

    return-void

    :pswitch_2
    long-to-int p2, p2

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 41
    iput-boolean v9, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzy:Z

    .line 42
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)I

    move-result p1

    if-eq p1, v5, :cond_18

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 43
    iput p1, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzz:I

    return-void

    :pswitch_3
    long-to-int p2, p2

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    .line 45
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)I

    move-result p1

    if-eq p1, v5, :cond_18

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 46
    iput p1, p2, Lcom/google/android/gms/internal/ads/zzahj;->zzA:I

    return-void

    :pswitch_4
    long-to-int p2, p2

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    if-eq p2, v9, :cond_1

    if-eq p2, v8, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 48
    iput v9, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzB:I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 49
    iput v8, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzB:I

    return-void

    .line 34
    :sswitch_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzz:J

    return-void

    :sswitch_1
    long-to-int p2, p2

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 34
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzf:I

    return-void

    :sswitch_2
    long-to-int p2, p2

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    if-eqz p2, :cond_5

    if-eq p2, v9, :cond_4

    if-eq p2, v8, :cond_3

    if-eq p2, v7, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 36
    iput v7, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzs:I

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 37
    iput v8, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzs:I

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 38
    iput v9, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzs:I

    return-void

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 39
    iput v6, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzs:I

    return-void

    :sswitch_3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzae:J

    return-void

    :sswitch_4
    long-to-int p2, p2

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 32
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzQ:I

    return-void

    .line 29
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 30
    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzT:J

    return-void

    .line 27
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 28
    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzS:J

    return-void

    :sswitch_7
    long-to-int p2, p2

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 26
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzg:I

    return-void

    :sswitch_8
    long-to-int p2, p2

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 51
    iput-boolean v9, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzy:Z

    .line 52
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzo:I

    return-void

    :sswitch_9
    cmp-long p2, p2, v3

    if-nez p2, :cond_6

    move v6, v9

    .line 19
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 20
    iput-boolean v6, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzW:Z

    return-void

    :sswitch_a
    long-to-int p2, p2

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 18
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzq:I

    return-void

    :sswitch_b
    long-to-int p2, p2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 16
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzr:I

    return-void

    :sswitch_c
    long-to-int p2, p2

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 14
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzp:I

    return-void

    :sswitch_d
    long-to-int p2, p2

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    if-eqz p2, :cond_a

    if-eq p2, v9, :cond_9

    if-eq p2, v7, :cond_8

    const/16 p1, 0xf

    if-eq p2, p1, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 54
    iput v7, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzx:I

    return-void

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 55
    iput v9, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzx:I

    return-void

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 56
    iput v8, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzx:I

    return-void

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 57
    iput v6, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzx:I

    return-void

    :sswitch_e
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzy:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzH:J

    return-void

    :sswitch_f
    cmp-long p1, p2, v3

    if-nez p1, :cond_b

    goto/16 :goto_0

    .line 60
    :cond_b
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x24

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "AESSettingsCipherMode "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :sswitch_10
    const-wide/16 v3, 0x5

    cmp-long p1, p2, v3

    if-nez p1, :cond_c

    goto/16 :goto_0

    .line 61
    :cond_c
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1d

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "ContentEncAlgo "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :sswitch_11
    cmp-long p1, p2, v3

    if-nez p1, :cond_d

    goto/16 :goto_0

    .line 62
    :cond_d
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "EBMLReadVersion "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :sswitch_12
    cmp-long p1, p2, v3

    if-ltz p1, :cond_e

    const-wide/16 v3, 0x2

    cmp-long p1, p2, v3

    if-gtz p1, :cond_e

    goto/16 :goto_0

    .line 63
    :cond_e
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr p1, v0

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "DocTypeReadVersion "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :sswitch_13
    const-wide/16 v3, 0x3

    cmp-long p1, p2, v3

    if-nez p1, :cond_f

    goto/16 :goto_0

    .line 64
    :cond_f
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "ContentCompAlgo "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :sswitch_14
    long-to-int p2, p2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzahj;->zzd(I)V

    return-void

    .line 64
    :sswitch_15
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzad:Z

    return-void

    :sswitch_16
    long-to-int p2, p2

    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzq(I)V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzL:I

    return-void

    .line 66
    :sswitch_17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzq(I)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzM:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_18

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzM:J

    return-void

    :sswitch_18
    long-to-int p1, p2

    .line 69
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzac:I

    return-void

    .line 67
    :sswitch_19
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzahk;->zzy(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzR:J

    return-void

    :sswitch_1a
    long-to-int p2, p2

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 10
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzd:I

    return-void

    :sswitch_1b
    long-to-int p2, p2

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 8
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzn:I

    return-void

    .line 68
    :sswitch_1c
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzq(I)V

    .line 69
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzahk;->zzy(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzK:J

    return-void

    :sswitch_1d
    long-to-int p2, p2

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 6
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzm:I

    return-void

    :sswitch_1e
    long-to-int p2, p2

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 4
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzP:I

    return-void

    .line 70
    :sswitch_1f
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzahk;->zzy(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzV:J

    return-void

    :sswitch_20
    cmp-long p2, p2, v3

    if-nez p2, :cond_10

    move v6, v9

    .line 1
    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 2
    iput-boolean v6, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzX:Z

    return-void

    :sswitch_21
    long-to-int p2, p2

    if-eq p2, v9, :cond_14

    if-eq p2, v8, :cond_13

    const/16 p3, 0x11

    if-eq p2, p3, :cond_12

    if-eq p2, v0, :cond_11

    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 72
    iput v5, p1, Lcom/google/android/gms/internal/ads/zzahj;->zze:I

    return-void

    .line 79
    :cond_11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    const/4 p2, 0x5

    .line 80
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zze:I

    return-void

    .line 77
    :cond_12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 78
    iput v7, p1, Lcom/google/android/gms/internal/ads/zzahj;->zze:I

    return-void

    .line 75
    :cond_13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 76
    iput v9, p1, Lcom/google/android/gms/internal/ads/zzahj;->zze:I

    return-void

    .line 73
    :cond_14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 74
    iput v8, p1, Lcom/google/android/gms/internal/ads/zzahj;->zze:I

    return-void

    :cond_15
    cmp-long p1, p2, v3

    if-nez p1, :cond_16

    goto :goto_0

    .line 58
    :cond_16
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "ContentEncodingScope "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :cond_17
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-nez p1, :cond_19

    :cond_18
    :goto_0
    return-void

    .line 59
    :cond_19
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "ContentEncodingOrder "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_21
        0x88 -> :sswitch_20
        0x9b -> :sswitch_1f
        0x9f -> :sswitch_1e
        0xb0 -> :sswitch_1d
        0xb3 -> :sswitch_1c
        0xba -> :sswitch_1b
        0xd7 -> :sswitch_1a
        0xe7 -> :sswitch_19
        0xee -> :sswitch_18
        0xf1 -> :sswitch_17
        0xf7 -> :sswitch_16
        0xfb -> :sswitch_15
        0x41e7 -> :sswitch_14
        0x4254 -> :sswitch_13
        0x4285 -> :sswitch_12
        0x42f7 -> :sswitch_11
        0x47e1 -> :sswitch_10
        0x47e8 -> :sswitch_f
        0x53ac -> :sswitch_e
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_c
        0x54b2 -> :sswitch_b
        0x54ba -> :sswitch_a
        0x55aa -> :sswitch_9
        0x55b2 -> :sswitch_8
        0x55ee -> :sswitch_7
        0x56aa -> :sswitch_6
        0x56bb -> :sswitch_5
        0x6264 -> :sswitch_4
        0x75a2 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final zzj(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzat;
        }
    .end annotation

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_0
    double-to-float p2, p2

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 28
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzv:F

    return-void

    :pswitch_1
    double-to-float p2, p2

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 26
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzu:F

    return-void

    :pswitch_2
    double-to-float p2, p2

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 24
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzt:F

    return-void

    :pswitch_3
    double-to-float p2, p2

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 22
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzN:F

    return-void

    :pswitch_4
    double-to-float p2, p2

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 20
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzM:F

    return-void

    :pswitch_5
    double-to-float p2, p2

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 18
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzL:F

    return-void

    :pswitch_6
    double-to-float p2, p2

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 16
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzK:F

    return-void

    :pswitch_7
    double-to-float p2, p2

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 14
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzJ:F

    return-void

    :pswitch_8
    double-to-float p2, p2

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 12
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzI:F

    return-void

    :pswitch_9
    double-to-float p2, p2

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 10
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzH:F

    return-void

    :pswitch_a
    double-to-float p2, p2

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 8
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzG:F

    return-void

    :pswitch_b
    double-to-float p2, p2

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 6
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzF:F

    return-void

    :pswitch_c
    double-to-float p2, p2

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 4
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzE:F

    return-void

    :cond_0
    double-to-long p1, p2

    .line 28
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzA:J

    return-void

    .line 1
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    double-to-int p2, p2

    .line 2
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzR:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final zzk(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzat;
        }
    .end annotation

    const/16 v0, 0x86

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_2

    const/16 v0, 0x536e

    if-eq p1, v0, :cond_1

    const v0, 0x22b59c

    if-eq p1, v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzahj;->zze(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 4
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzb:Ljava/lang/String;

    return-void

    .line 7
    :cond_2
    const-string p1, "webm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "matroska"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x16

    .line 9
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "DocType "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    .line 8
    :cond_4
    :goto_0
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzC:Z

    return-void

    .line 1
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 2
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzahj;->zzc:Ljava/lang/String;

    return-void
.end method

.method protected final zzl(IILcom/google/android/gms/internal/ads/zzadb;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v8, p3

    const/16 v2, 0xa1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/16 v6, 0xa3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v0, v2, :cond_b

    if-eq v0, v6, :cond_b

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_8

    const/16 v2, 0x41ed

    if-eq v0, v2, :cond_5

    const/16 v2, 0x4255

    if-eq v0, v2, :cond_4

    const/16 v2, 0x47e2

    if-eq v0, v2, :cond_3

    const/16 v2, 0x53ab

    if-eq v0, v2, :cond_2

    const/16 v2, 0x63a2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7672

    if-ne v0, v2, :cond_0

    .line 6
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 7
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzw:[B

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzw:[B

    invoke-interface {v8, v0, v10, v1}, Lcom/google/android/gms/internal/ads/zzadb;->zzc([BII)V

    return-void

    .line 69
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0xf

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected id: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    .line 9
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 10
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzk:[B

    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzk:[B

    invoke-interface {v8, v0, v10, v1}, Lcom/google/android/gms/internal/ads/zzadb;->zzc([BII)V

    return-void

    .line 5
    :cond_2
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzq:Lcom/google/android/gms/internal/ads/zzeg;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v2

    invoke-static {v2, v10}, Ljava/util/Arrays;->fill([BB)V

    rsub-int/lit8 v2, v1, 0x4

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v3

    invoke-interface {v8, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzadb;->zzc([BII)V

    .line 14
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzz()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzG:I

    return-void

    .line 16
    :cond_3
    new-array v2, v1, [B

    .line 17
    invoke-interface {v8, v2, v10, v1}, Lcom/google/android/gms/internal/ads/zzadb;->zzc([BII)V

    .line 18
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzael;

    invoke-direct {v1, v9, v2, v10, v10}, Lcom/google/android/gms/internal/ads/zzael;-><init>(I[BII)V

    .line 19
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzj:Lcom/google/android/gms/internal/ads/zzael;

    return-void

    .line 20
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 21
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzi:[B

    .line 22
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzi:[B

    invoke-interface {v8, v0, v10, v1}, Lcom/google/android/gms/internal/ads/zzadb;->zzc([BII)V

    return-void

    .line 1
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahk;->zzp(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzE:Lcom/google/android/gms/internal/ads/zzahj;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzahj;->zzc()I

    move-result v2

    const v3, 0x64767643

    if-eq v2, v3, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzahj;->zzc()I

    move-result v2

    const v3, 0x64766343

    if-ne v2, v3, :cond_6

    goto :goto_0

    .line 5
    :cond_6
    invoke-interface {v8, v1}, Lcom/google/android/gms/internal/ads/zzadb;->zzf(I)V

    return-void

    .line 3
    :cond_7
    :goto_0
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzO:[B

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzO:[B

    invoke-interface {v8, v0, v10, v1}, Lcom/google/android/gms/internal/ads/zzadb;->zzc([BII)V

    return-void

    .line 22
    :cond_8
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzT:I

    if-eq v0, v5, :cond_9

    goto/16 :goto_f

    :cond_9
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzi:Landroid/util/SparseArray;

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzZ:I

    .line 23
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzahj;

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzac:I

    if-ne v2, v4, :cond_a

    .line 24
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahj;->zzc:Ljava/lang/String;

    const-string v2, "V_VP9"

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzv:Lcom/google/android/gms/internal/ads/zzeg;

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zza(I)V

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v0

    invoke-interface {v8, v0, v10, v1}, Lcom/google/android/gms/internal/ads/zzadb;->zzc([BII)V

    return-void

    .line 26
    :cond_a
    invoke-interface {v8, v1}, Lcom/google/android/gms/internal/ads/zzadb;->zzf(I)V

    return-void

    :cond_b
    iget v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzT:I

    const/16 v11, 0x8

    if-nez v2, :cond_c

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzh:Lcom/google/android/gms/internal/ads/zzahm;

    .line 29
    invoke-virtual {v2, v8, v10, v9, v11}, Lcom/google/android/gms/internal/ads/zzahm;->zzb(Lcom/google/android/gms/internal/ads/zzadb;ZZI)J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzZ:I

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzahm;->zzc()I

    move-result v2

    iput v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzaa:I

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v12, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzV:J

    iput v9, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzT:I

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzo:Lcom/google/android/gms/internal/ads/zzeg;

    .line 31
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzeg;->zza(I)V

    :cond_c
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzi:Landroid/util/SparseArray;

    iget v12, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzZ:I

    .line 32
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/google/android/gms/internal/ads/zzahj;

    if-nez v12, :cond_d

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzaa:I

    sub-int v0, v1, v0

    .line 33
    invoke-interface {v8, v0}, Lcom/google/android/gms/internal/ads/zzadb;->zzf(I)V

    iput v10, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzT:I

    return-void

    .line 34
    :cond_d
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzahj;->zzb()V

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzT:I

    if-ne v2, v9, :cond_1f

    const/4 v2, 0x3

    .line 35
    invoke-direct {v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzahk;->zzs(Lcom/google/android/gms/internal/ads/zzadb;I)V

    iget-object v13, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzo:Lcom/google/android/gms/internal/ads/zzeg;

    .line 36
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v14

    aget-byte v14, v14, v5

    and-int/lit8 v14, v14, 0x6

    shr-int/2addr v14, v9

    const/16 v15, 0xff

    if-nez v14, :cond_e

    iput v9, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzX:I

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzY:[I

    .line 37
    invoke-static {v2, v9}, Lcom/google/android/gms/internal/ads/zzahk;->zzz([II)[I

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzY:[I

    iget v3, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzaa:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x3

    .line 38
    aput v1, v2, v10

    :goto_1
    move-object/from16 v21, v12

    goto/16 :goto_8

    .line 39
    :cond_e
    invoke-direct {v7, v8, v4}, Lcom/google/android/gms/internal/ads/zzahk;->zzs(Lcom/google/android/gms/internal/ads/zzadb;I)V

    .line 40
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v16

    aget-byte v4, v16, v2

    and-int/2addr v4, v15

    add-int/2addr v4, v9

    iput v4, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzX:I

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzY:[I

    .line 41
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/ads/zzahk;->zzz([II)[I

    move-result-object v4

    iput-object v4, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzY:[I

    if-ne v14, v5, :cond_f

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzaa:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x4

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzX:I

    .line 42
    div-int/2addr v1, v2

    .line 43
    invoke-static {v4, v10, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_1

    :cond_f
    if-ne v14, v9, :cond_12

    move v2, v10

    move v3, v2

    const/4 v4, 0x4

    :goto_2
    iget v6, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzX:I

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_11

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzY:[I

    .line 44
    aput v10, v6, v2

    :goto_3
    add-int/lit8 v6, v4, 0x1

    .line 45
    invoke-direct {v7, v8, v6}, Lcom/google/android/gms/internal/ads/zzahk;->zzs(Lcom/google/android/gms/internal/ads/zzadb;I)V

    .line 46
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v14

    aget-byte v4, v14, v4

    and-int/2addr v4, v15

    iget-object v14, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzY:[I

    .line 47
    aget v17, v14, v2

    add-int v17, v17, v4

    aput v17, v14, v2

    if-eq v4, v15, :cond_10

    add-int v3, v3, v17

    add-int/lit8 v2, v2, 0x1

    move v4, v6

    goto :goto_2

    :cond_10
    move v4, v6

    goto :goto_3

    :cond_11
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzY:[I

    iget v14, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzaa:I

    sub-int/2addr v1, v14

    sub-int/2addr v1, v4

    sub-int/2addr v1, v3

    .line 48
    aput v1, v2, v6

    goto :goto_1

    :cond_12
    if-ne v14, v2, :cond_1e

    move v2, v10

    move v6, v2

    const/4 v4, 0x4

    :goto_4
    iget v14, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzX:I

    add-int/lit8 v14, v14, -0x1

    if-ge v2, v14, :cond_1a

    iget-object v14, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzY:[I

    .line 49
    aput v10, v14, v2

    add-int/lit8 v14, v4, 0x1

    .line 50
    invoke-direct {v7, v8, v14}, Lcom/google/android/gms/internal/ads/zzahk;->zzs(Lcom/google/android/gms/internal/ads/zzadb;I)V

    .line 51
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v17

    aget-byte v17, v17, v4

    if-eqz v17, :cond_19

    move v5, v10

    :goto_5
    if-ge v5, v11, :cond_15

    rsub-int/lit8 v18, v5, 0x7

    shl-int v10, v9, v18

    .line 52
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v18

    aget-byte v18, v18, v4

    and-int v18, v18, v10

    if-eqz v18, :cond_14

    add-int/2addr v14, v5

    .line 53
    invoke-direct {v7, v8, v14}, Lcom/google/android/gms/internal/ads/zzahk;->zzs(Lcom/google/android/gms/internal/ads/zzadb;I)V

    .line 54
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v18

    add-int/lit8 v19, v4, 0x1

    aget-byte v4, v18, v4

    and-int/2addr v4, v15

    not-int v10, v10

    and-int/2addr v4, v10

    int-to-long v9, v4

    move/from16 v4, v19

    :goto_6
    if-ge v4, v14, :cond_13

    shl-long/2addr v9, v11

    .line 55
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v19

    add-int/lit8 v20, v4, 0x1

    aget-byte v4, v19, v4

    and-int/2addr v4, v15

    move-object/from16 v21, v12

    int-to-long v11, v4

    or-long/2addr v9, v11

    move/from16 v4, v20

    move-object/from16 v12, v21

    const/16 v11, 0x8

    goto :goto_6

    :cond_13
    move-object/from16 v21, v12

    if-lez v2, :cond_16

    mul-int/lit8 v5, v5, 0x7

    add-int/lit8 v5, v5, 0x6

    const-wide/16 v11, 0x1

    shl-long v4, v11, v5

    const-wide/16 v11, -0x1

    add-long/2addr v4, v11

    sub-long/2addr v9, v4

    goto :goto_7

    :cond_14
    move-object/from16 v21, v12

    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    goto :goto_5

    :cond_15
    move-object/from16 v21, v12

    const-wide/16 v9, 0x0

    :cond_16
    :goto_7
    move v4, v14

    const-wide/32 v11, -0x80000000

    cmp-long v5, v9, v11

    if-ltz v5, :cond_18

    const-wide/32 v11, 0x7fffffff

    cmp-long v5, v9, v11

    if-gtz v5, :cond_18

    .line 57
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzY:[I

    long-to-int v9, v9

    if-eqz v2, :cond_17

    add-int/lit8 v10, v2, -0x1

    .line 56
    aget v10, v5, v10

    add-int/2addr v9, v10

    :cond_17
    aput v9, v5, v2

    add-int/2addr v6, v9

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, v21

    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    goto/16 :goto_4

    .line 55
    :cond_18
    const-string v0, "EBML lacing sample size out of range."

    .line 57
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    .line 59
    :cond_19
    const-string v0, "No valid varint length mask found"

    .line 58
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_1a
    move-object/from16 v21, v12

    .line 56
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzY:[I

    iget v3, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzaa:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    sub-int/2addr v1, v6

    .line 59
    aput v1, v2, v14

    .line 60
    :goto_8
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/16 v2, 0x8

    shl-int/2addr v1, v2

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/2addr v2, v15

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzR:J

    or-int/2addr v1, v2

    int-to-long v1, v1

    .line 61
    invoke-direct {v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzahk;->zzy(J)J

    move-result-wide v1

    add-long/2addr v4, v1

    iput-wide v4, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzU:J

    move-object/from16 v9, v21

    iget v1, v9, Lcom/google/android/gms/internal/ads/zzahj;->zze:I

    if-eq v1, v3, :cond_1d

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_1c

    .line 62
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1b

    const/16 v0, 0xa3

    goto :goto_a

    :cond_1b
    const/16 v0, 0xa3

    goto :goto_9

    :cond_1c
    const/4 v1, 0x2

    :goto_9
    const/4 v2, 0x0

    goto :goto_b

    :cond_1d
    const/4 v1, 0x2

    :goto_a
    const/4 v2, 0x1

    :goto_b
    iput v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzab:I

    iput v1, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzT:I

    const/4 v1, 0x0

    iput v1, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzW:I

    const/16 v1, 0xa3

    goto :goto_c

    .line 69
    :cond_1e
    const-string v0, "Unexpected lacing value: 2"

    .line 68
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_1f
    move-object v9, v12

    move v1, v6

    :goto_c
    if-ne v0, v1, :cond_21

    .line 62
    :goto_d
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzW:I

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzX:I

    if-ge v0, v1, :cond_20

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzY:[I

    .line 65
    aget v0, v1, v0

    const/4 v1, 0x0

    .line 66
    invoke-direct {v7, v8, v9, v0, v1}, Lcom/google/android/gms/internal/ads/zzahk;->zzt(Lcom/google/android/gms/internal/ads/zzadb;Lcom/google/android/gms/internal/ads/zzahj;IZ)I

    move-result v5

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzU:J

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzW:I

    iget v3, v9, Lcom/google/android/gms/internal/ads/zzahj;->zzf:I

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v2, v0

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzab:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    .line 67
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzahk;->zzr(Lcom/google/android/gms/internal/ads/zzahj;JIII)V

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzW:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzW:I

    goto :goto_d

    :cond_20
    const/4 v0, 0x0

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzT:I

    return-void

    :cond_21
    const/4 v1, 0x1

    :goto_e
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzW:I

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzX:I

    if-ge v0, v2, :cond_22

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzY:[I

    .line 63
    aget v3, v2, v0

    .line 64
    invoke-direct {v7, v8, v9, v3, v1}, Lcom/google/android/gms/internal/ads/zzahk;->zzt(Lcom/google/android/gms/internal/ads/zzadb;Lcom/google/android/gms/internal/ads/zzahj;IZ)I

    move-result v3

    aput v3, v2, v0

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzW:I

    add-int/2addr v0, v1

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzahk;->zzW:I

    goto :goto_e

    :cond_22
    :goto_f
    return-void
.end method

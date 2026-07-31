.class public Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final zzCY:I

.field private final zzMZ:Ljava/lang/String;

.field private final zzajF:Lcom/google/android/gms/fitness/data/DataType;

.field private final zzajG:Lcom/google/android/gms/fitness/data/DataSource;

.field private final zzakP:J

.field private final zzakQ:I

.field private final zzalN:Lcom/google/android/gms/internal/zzmu;

.field private zzamr:Lcom/google/android/gms/fitness/data/zzj;

.field zzams:I

.field zzamt:I

.field private final zzamu:J

.field private final zzamv:J

.field private final zzamw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final zzamx:J

.field private final zzamy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Landroid/os/IBinder;IIJJLandroid/app/PendingIntent;JILjava/util/List;JLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            "Lcom/google/android/gms/fitness/data/DataType;",
            "Landroid/os/IBinder;",
            "IIJJ",
            "Landroid/app/PendingIntent;",
            "JI",
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;J",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzCY:I

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzajG:Lcom/google/android/gms/fitness/data/DataSource;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzajF:Lcom/google/android/gms/fitness/data/DataType;

    if-nez p4, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/fitness/data/zzj$zza;->zzbh(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/data/zzj;

    move-result-object v6

    :goto_0
    iput-object v6, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamr:Lcom/google/android/gms/fitness/data/zzj;

    const-wide/16 v6, 0x0

    cmp-long v8, p7, v6

    if-nez v8, :cond_1

    move/from16 v8, p5

    int-to-long v9, v8

    goto :goto_1

    :cond_1
    move/from16 v8, p5

    move-wide/from16 v9, p7

    :goto_1
    iput-wide v9, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzakP:J

    move-wide/from16 v9, p12

    iput-wide v9, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamv:J

    cmp-long v11, p9, v6

    if-nez v11, :cond_2

    move/from16 v6, p6

    int-to-long v4, v6

    goto :goto_2

    :cond_2
    move/from16 v6, p6

    move-wide/from16 v4, p9

    :goto_2
    iput-wide v4, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamu:J

    move-object/from16 v4, p15

    iput-object v4, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamw:Ljava/util/List;

    move-object/from16 v5, p11

    iput-object v5, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->mPendingIntent:Landroid/app/PendingIntent;

    move/from16 v7, p14

    iput v7, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzakQ:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    iput-object v11, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamy:Ljava/util/List;

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamx:J

    if-nez p18, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-static/range {p18 .. p18}, Lcom/google/android/gms/internal/zzmu$zza;->zzbF(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzmu;

    move-result-object v12

    move-object v1, v12

    :goto_3
    iput-object v1, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzalN:Lcom/google/android/gms/internal/zzmu;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzMZ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/zzj;Landroid/app/PendingIntent;JJJILjava/util/List;Ljava/util/List;JLcom/google/android/gms/internal/zzmu;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            "Lcom/google/android/gms/fitness/data/DataType;",
            "Lcom/google/android/gms/fitness/data/zzj;",
            "Landroid/app/PendingIntent;",
            "JJJI",
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;J",
            "Lcom/google/android/gms/internal/zzmu;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzCY:I

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzajG:Lcom/google/android/gms/fitness/data/DataSource;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzajF:Lcom/google/android/gms/fitness/data/DataType;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamr:Lcom/google/android/gms/fitness/data/zzj;

    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->mPendingIntent:Landroid/app/PendingIntent;

    move-wide/from16 v5, p5

    iput-wide v5, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzakP:J

    move-wide/from16 v7, p7

    iput-wide v7, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamv:J

    move-wide/from16 v9, p9

    iput-wide v9, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamu:J

    move/from16 v11, p11

    iput v11, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzakQ:I

    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamw:Ljava/util/List;

    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamy:Ljava/util/List;

    move-wide/from16 v14, p14

    iput-wide v14, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamx:J

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzalN:Lcom/google/android/gms/internal/zzmu;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzMZ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/zzj;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzmu;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getSamplingRate(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getFastestRate(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getMaxDeliveryLatency(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getAccuracyMode()I

    move-result v12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->zzrm()J

    move-result-wide v15

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    invoke-direct/range {v1 .. v18}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/zzj;Landroid/app/PendingIntent;JJJILjava/util/List;Ljava/util/List;JLcom/google/android/gms/internal/zzmu;Ljava/lang/String;)V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzajG:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzajG:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzajF:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzajF:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzakP:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzakP:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamv:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamv:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamu:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamu:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzakQ:I

    iget v1, p1, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzakQ:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamw:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamw:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzb(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAccuracyMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzakQ:I

    return v0
.end method

.method public getDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzajG:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public getDataType()Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzajF:Lcom/google/android/gms/fitness/data/DataType;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzMZ:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzCY:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzajG:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzajF:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamr:Lcom/google/android/gms/fitness/data/zzj;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzakP:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamv:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamu:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzakQ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamw:Ljava/util/List;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzt;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "SensorRegistrationRequest{type %s source %s interval %s fastest %s latency %s}"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzajF:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzajG:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzakP:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamv:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamu:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzs;->zza(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzqL()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzakP:J

    return-wide v0
.end method

.method public zzqU()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzalN:Lcom/google/android/gms/internal/zzmu;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzalN:Lcom/google/android/gms/internal/zzmu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmu;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public zzrg()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public zzrh()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamv:J

    return-wide v0
.end method

.method public zzri()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamu:J

    return-wide v0
.end method

.method public zzrj()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamw:Ljava/util/List;

    return-object v0
.end method

.method public zzrk()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamx:J

    return-wide v0
.end method

.method zzrl()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamr:Lcom/google/android/gms/fitness/data/zzj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->zzamr:Lcom/google/android/gms/fitness/data/zzj;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/data/zzj;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

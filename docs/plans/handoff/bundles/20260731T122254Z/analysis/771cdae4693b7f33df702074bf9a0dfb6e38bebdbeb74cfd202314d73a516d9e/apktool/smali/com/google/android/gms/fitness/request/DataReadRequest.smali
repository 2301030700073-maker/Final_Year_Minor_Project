.class public Lcom/google/android/gms/fitness/request/DataReadRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/DataReadRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_LIMIT:I


# instance fields
.field private final zzCY:I

.field private final zzKT:J

.field private final zzMZ:Ljava/lang/String;

.field private final zzajH:J

.field private final zzajQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private final zzajT:I

.field private final zzalP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final zzalU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private final zzalV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final zzalW:J

.field private final zzalX:Lcom/google/android/gms/fitness/data/DataSource;

.field private final zzalY:I

.field private final zzalZ:Z

.field private final zzama:Z

.field private final zzamb:Lcom/google/android/gms/internal/zzmf;

.field private final zzamc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/Device;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/util/List;JJLjava/util/List;Ljava/util/List;IJLcom/google/android/gms/fitness/data/DataSource;IZZLandroid/os/IBinder;Ljava/lang/String;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;JJ",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;IJ",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            "IZZ",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/Device;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzCY:I

    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajQ:Ljava/util/List;

    invoke-static/range {p3 .. p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalP:Ljava/util/List;

    move-wide/from16 v2, p4

    iput-wide v2, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzKT:J

    move-wide/from16 v4, p6

    iput-wide v4, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajH:J

    invoke-static/range {p8 .. p8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalU:Ljava/util/List;

    invoke-static/range {p9 .. p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalV:Ljava/util/List;

    move/from16 v6, p10

    iput v6, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajT:I

    move-wide/from16 v7, p11

    iput-wide v7, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalW:J

    move-object/from16 v9, p13

    iput-object v9, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalX:Lcom/google/android/gms/fitness/data/DataSource;

    move/from16 v10, p14

    iput v10, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalY:I

    move/from16 v11, p15

    iput-boolean v11, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalZ:Z

    move/from16 v12, p16

    iput-boolean v12, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzama:Z

    if-nez p17, :cond_0

    const/4 v13, 0x0

    goto :goto_0

    :cond_0
    invoke-static/range {p17 .. p17}, Lcom/google/android/gms/internal/zzmf$zza;->zzbq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzmf;

    move-result-object v13

    :goto_0
    iput-object v13, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzamb:Lcom/google/android/gms/internal/zzmf;

    move-object/from16 v13, p18

    iput-object v13, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzMZ:Ljava/lang/String;

    if-nez p19, :cond_1

    sget-object v14, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v1, v14

    goto :goto_1

    :cond_1
    move-object/from16 v1, p19

    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzamc:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)V
    .locals 19

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zza(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzb(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzc(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzd(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)J

    move-result-wide v5

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zze(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzf(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzg(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzh(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)J

    move-result-wide v10

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzi(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzj(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)I

    move-result v13

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzk(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Z

    move-result v14

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzl(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Z

    move-result v15

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;->zzm(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)Ljava/util/List;

    move-result-object v18

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v18}, Lcom/google/android/gms/fitness/request/DataReadRequest;-><init>(Ljava/util/List;Ljava/util/List;JJLjava/util/List;Ljava/util/List;IJLcom/google/android/gms/fitness/data/DataSource;IZZLcom/google/android/gms/internal/zzmf;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;Lcom/google/android/gms/fitness/request/DataReadRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/DataReadRequest;-><init>(Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/DataReadRequest;Lcom/google/android/gms/internal/zzmf;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajQ:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalP:Ljava/util/List;

    iget-wide v4, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzKT:J

    iget-wide v6, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajH:J

    iget-object v8, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalU:Ljava/util/List;

    iget-object v9, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalV:Ljava/util/List;

    iget v10, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajT:I

    iget-wide v11, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalW:J

    iget-object v13, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalX:Lcom/google/android/gms/fitness/data/DataSource;

    iget v14, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalY:I

    iget-boolean v15, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalZ:Z

    iget-boolean v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzama:Z

    move/from16 v20, v15

    iget-object v15, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzamc:Ljava/util/List;

    move/from16 v16, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v15

    move/from16 v15, v20

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/fitness/request/DataReadRequest;-><init>(Ljava/util/List;Ljava/util/List;JJLjava/util/List;Ljava/util/List;IJLcom/google/android/gms/fitness/data/DataSource;IZZLcom/google/android/gms/internal/zzmf;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;JJLjava/util/List;Ljava/util/List;IJLcom/google/android/gms/fitness/data/DataSource;IZZLcom/google/android/gms/internal/zzmf;Ljava/lang/String;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;JJ",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;IJ",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            "IZZ",
            "Lcom/google/android/gms/internal/zzmf;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/Device;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzCY:I

    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajQ:Ljava/util/List;

    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalP:Ljava/util/List;

    move-wide/from16 v1, p3

    iput-wide v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzKT:J

    move-wide/from16 v3, p5

    iput-wide v3, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajH:J

    invoke-static/range {p7 .. p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalU:Ljava/util/List;

    invoke-static/range {p8 .. p8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalV:Ljava/util/List;

    move/from16 v5, p9

    iput v5, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajT:I

    move-wide/from16 v6, p10

    iput-wide v6, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalW:J

    move-object/from16 v8, p12

    iput-object v8, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalX:Lcom/google/android/gms/fitness/data/DataSource;

    move/from16 v9, p13

    iput v9, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalY:I

    move/from16 v10, p14

    iput-boolean v10, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalZ:Z

    move/from16 v11, p15

    iput-boolean v11, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzama:Z

    move-object/from16 v12, p16

    iput-object v12, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzamb:Lcom/google/android/gms/internal/zzmf;

    move-object/from16 v13, p17

    iput-object v13, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzMZ:Ljava/lang/String;

    move-object/from16 v14, p18

    iput-object v14, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzamc:Ljava/util/List;

    return-void
.end method

.method private zzb(Lcom/google/android/gms/fitness/request/DataReadRequest;)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajQ:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajQ:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalP:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalP:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzKT:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzKT:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajH:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajH:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajT:I

    iget v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajT:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalV:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalV:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalU:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalX:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalX:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalW:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalW:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzama:Z

    iget-boolean p1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzama:Z

    if-ne v0, p1, :cond_0

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

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzb(Lcom/google/android/gms/fitness/request/DataReadRequest;)Z

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

.method public getActivityDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalX:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public getAggregatedDataSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalV:Ljava/util/List;

    return-object v0
.end method

.method public getAggregatedDataTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalU:Ljava/util/List;

    return-object v0
.end method

.method public getBucketDuration(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalW:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBucketType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajT:I

    return v0
.end method

.method public getDataSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalP:Ljava/util/List;

    return-object v0
.end method

.method public getDataTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajQ:Ljava/util/List;

    return-object v0
.end method

.method public getEndTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajH:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLimit()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalY:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzMZ:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzKT:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzCY:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzKT:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajH:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzt;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataReadRequest{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajQ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajQ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->zzqD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalP:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalP:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataSource;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajT:I

    if-eqz v1, :cond_3

    const-string v1, "bucket by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajT:I

    invoke-static {v1}, Lcom/google/android/gms/fitness/data/Bucket;->zzeb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalW:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    const-string v1, " >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalW:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalU:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataType;->zzqD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalV:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalV:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataSource;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const-string v1, "(%tF %tT - %tF %tT)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzKT:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzKT:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajH:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajH:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalX:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v1, :cond_6

    const-string v1, "activities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalX:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSource;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzama:Z

    if-eqz v1, :cond_7

    const-string v1, " +server"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/zzf;->zza(Lcom/google/android/gms/fitness/request/DataReadRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzkt()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzKT:J

    return-wide v0
.end method

.method public zzqU()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzamb:Lcom/google/android/gms/internal/zzmf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzamb:Lcom/google/android/gms/internal/zzmf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmf;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public zzqZ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzama:Z

    return v0
.end method

.method public zzqs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzajH:J

    return-wide v0
.end method

.method public zzra()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalZ:Z

    return v0
.end method

.method public zzrb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzalW:J

    return-wide v0
.end method

.method public zzrc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/Device;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzamc:Ljava/util/List;

    return-object v0
.end method

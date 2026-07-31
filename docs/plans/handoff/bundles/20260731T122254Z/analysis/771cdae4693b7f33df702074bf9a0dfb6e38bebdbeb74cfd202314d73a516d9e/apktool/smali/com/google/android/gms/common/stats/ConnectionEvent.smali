.class public final Lcom/google/android/gms/common/stats/ConnectionEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/stats/ConnectionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzCY:I

.field private final zzabZ:J

.field private zzaca:I

.field private final zzacb:Ljava/lang/String;

.field private final zzacc:Ljava/lang/String;

.field private final zzacd:Ljava/lang/String;

.field private final zzace:Ljava/lang/String;

.field private final zzacf:Ljava/lang/String;

.field private final zzacg:Ljava/lang/String;

.field private final zzach:J

.field private final zzaci:J

.field private zzacj:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/stats/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 15

    move-object v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzCY:I

    move-wide/from16 v2, p2

    iput-wide v2, v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzabZ:J

    move/from16 v4, p4

    iput v4, v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzaca:I

    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzacb:Ljava/lang/String;

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzacc:Ljava/lang/String;

    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzacd:Ljava/lang/String;

    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzace:Ljava/lang/String;

    const-wide/16 v9, -0x1

    iput-wide v9, v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzacj:J

    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzacf:Ljava/lang/String;

    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzacg:Ljava/lang/String;

    move-wide/from16 v11, p11

    iput-wide v11, v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzach:J

    move-wide/from16 v13, p13

    iput-wide v13, v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzaci:J

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 15

    const/4 v1, 0x1

    move-object v0, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/common/stats/ConnectionEvent;-><init>(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEventType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzaca:I

    return v0
.end method

.method public getTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzabZ:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/stats/zza;->zza(Lcom/google/android/gms/common/stats/ConnectionEvent;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzoG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzacb:Ljava/lang/String;

    return-object v0
.end method

.method public zzoH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzacc:Ljava/lang/String;

    return-object v0
.end method

.method public zzoI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzacd:Ljava/lang/String;

    return-object v0
.end method

.method public zzoJ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzace:Ljava/lang/String;

    return-object v0
.end method

.method public zzoK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzacf:Ljava/lang/String;

    return-object v0
.end method

.method public zzoL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzacg:Ljava/lang/String;

    return-object v0
.end method

.method public zzoM()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzaci:J

    return-wide v0
.end method

.method public zzoN()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzach:J

    return-wide v0
.end method

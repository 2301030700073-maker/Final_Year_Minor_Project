.class public Lcom/google/android/gms/internal/zzha;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzha$zza;
    }
.end annotation


# instance fields
.field public final errorCode:I

.field public final orientation:I

.field public final zzCC:Ljava/lang/String;

.field public final zzCJ:J

.field public final zzCK:Z

.field public final zzCL:J

.field public final zzCM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzCP:Ljava/lang/String;

.field public final zzCm:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field public final zzCp:Ljava/lang/String;

.field public final zzFl:Lorg/json/JSONObject;

.field public final zzFm:Lcom/google/android/gms/internal/zzdy;

.field public final zzFn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public final zzFo:J

.field public final zzFp:J

.field public final zzFq:Lcom/google/android/gms/ads/internal/formats/zzg$zza;

.field public final zzxF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzxG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzxJ:J

.field public final zzxZ:Lcom/google/android/gms/internal/zzdx;

.field public final zzya:Lcom/google/android/gms/internal/zzeg;

.field public final zzyb:Ljava/lang/String;

.field public final zzyc:Lcom/google/android/gms/internal/zzea;

.field public final zzzE:Lcom/google/android/gms/internal/zzid;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzid;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzdy;Lcom/google/android/gms/internal/zzea;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzg$zza;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/client/AdRequestParcel;",
            "Lcom/google/android/gms/internal/zzid;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/zzdx;",
            "Lcom/google/android/gms/internal/zzeg;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdy;",
            "Lcom/google/android/gms/internal/zzea;",
            "J",
            "Lcom/google/android/gms/ads/internal/client/AdSizeParcel;",
            "JJJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/google/android/gms/ads/internal/formats/zzg$zza;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzha;->zzCm:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/zzha;->zzzE:Lcom/google/android/gms/internal/zzid;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, v0, Lcom/google/android/gms/internal/zzha;->zzxF:Ljava/util/List;

    move v2, p4

    iput v2, v0, Lcom/google/android/gms/internal/zzha;->errorCode:I

    if-eqz p5, :cond_1

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iput-object v2, v0, Lcom/google/android/gms/internal/zzha;->zzxG:Ljava/util/List;

    if-eqz p6, :cond_2

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :cond_2
    iput-object v1, v0, Lcom/google/android/gms/internal/zzha;->zzCM:Ljava/util/List;

    move v1, p7

    iput v1, v0, Lcom/google/android/gms/internal/zzha;->orientation:I

    move-wide v1, p8

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzha;->zzxJ:J

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/zzha;->zzCp:Ljava/lang/String;

    move v1, p11

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzha;->zzCK:Z

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/zzha;->zzxZ:Lcom/google/android/gms/internal/zzdx;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/zzha;->zzya:Lcom/google/android/gms/internal/zzeg;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/zzha;->zzyb:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/zzha;->zzFm:Lcom/google/android/gms/internal/zzdy;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/zzha;->zzyc:Lcom/google/android/gms/internal/zzea;

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzha;->zzCL:J

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/gms/internal/zzha;->zzFn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-wide/from16 v1, p20

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzha;->zzCJ:J

    move-wide/from16 v1, p22

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzha;->zzFo:J

    move-wide/from16 v1, p24

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzha;->zzFp:J

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/google/android/gms/internal/zzha;->zzCP:Ljava/lang/String;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/google/android/gms/internal/zzha;->zzFl:Lorg/json/JSONObject;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/google/android/gms/internal/zzha;->zzFq:Lcom/google/android/gms/ads/internal/formats/zzg$zza;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/google/android/gms/internal/zzha;->zzCC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzha$zza;Lcom/google/android/gms/internal/zzid;Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzea;Lcom/google/android/gms/ads/internal/formats/zzg$zza;)V
    .locals 39

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzha$zza;->zzFr:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCm:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzha$zza;->zzFs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzxF:Ljava/util/List;

    iget v6, v0, Lcom/google/android/gms/internal/zzha$zza;->errorCode:I

    iget-object v1, v0, Lcom/google/android/gms/internal/zzha$zza;->zzFs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzxG:Ljava/util/List;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzha$zza;->zzFs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCM:Ljava/util/List;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzha$zza;->zzFs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    iget-object v1, v0, Lcom/google/android/gms/internal/zzha$zza;->zzFs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzxJ:J

    iget-object v1, v0, Lcom/google/android/gms/internal/zzha$zza;->zzFr:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCp:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzha$zza;->zzFs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v13, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCK:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/zzha$zza;->zzFm:Lcom/google/android/gms/internal/zzdy;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzha$zza;->zzFs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v14, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCL:J

    iget-object v4, v0, Lcom/google/android/gms/internal/zzha$zza;->zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzha$zza;->zzFs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-wide/from16 v32, v14

    iget-wide v14, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCJ:J

    move-wide/from16 v34, v14

    iget-wide v14, v0, Lcom/google/android/gms/internal/zzha$zza;->zzFo:J

    move-wide/from16 v36, v14

    iget-wide v14, v0, Lcom/google/android/gms/internal/zzha$zza;->zzFp:J

    iget-object v2, v0, Lcom/google/android/gms/internal/zzha$zza;->zzFs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCP:Ljava/lang/String;

    move-object/from16 v38, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzha$zza;->zzFl:Lorg/json/JSONObject;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzha$zza;->zzFr:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzCC:Ljava/lang/String;

    move-object/from16 v28, v2

    move-object/from16 v2, p0

    move-object/from16 v21, v4

    move-object/from16 v4, p2

    move-wide/from16 v26, v14

    move-wide/from16 v19, v32

    move-wide/from16 v22, v34

    move-wide/from16 v24, v36

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, v38

    move-object/from16 v18, p6

    move-object/from16 v29, v1

    move-object/from16 v30, p7

    move-object/from16 v31, v0

    invoke-direct/range {v2 .. v31}, Lcom/google/android/gms/internal/zzha;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzid;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Lcom/google/android/gms/internal/zzdy;Lcom/google/android/gms/internal/zzea;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzg$zza;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public zzbU()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzzE:Lcom/google/android/gms/internal/zzid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzzE:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzid;->zzgF()Lcom/google/android/gms/internal/zzie;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzzE:Lcom/google/android/gms/internal/zzid;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzid;->zzgF()Lcom/google/android/gms/internal/zzie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzie;->zzbU()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

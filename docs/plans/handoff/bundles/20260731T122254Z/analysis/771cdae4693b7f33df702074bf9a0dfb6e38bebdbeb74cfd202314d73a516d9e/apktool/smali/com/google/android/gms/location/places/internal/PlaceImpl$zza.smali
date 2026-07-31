.class public Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/internal/PlaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private zzCY:I

.field private zzKI:Ljava/lang/String;

.field private zzaAA:J

.field private zzaAC:Ljava/lang/String;

.field private zzaAD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzaAE:Z

.field private zzaAI:Landroid/os/Bundle;

.field private zzaAJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzaAu:F

.field private zzaAv:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private zzaAw:Ljava/lang/String;

.field private zzaAx:Z

.field private zzaAy:F

.field private zzaAz:I

.field private zzajO:Ljava/lang/String;

.field private zzazn:Lcom/google/android/gms/maps/model/LatLng;

.field private zzazp:Ljava/lang/String;

.field private zzazq:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzCY:I

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzazn:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAv:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0
.end method

.method public zzad(Z)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAx:Z

    return-object p0
.end method

.method public zzae(Z)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAE:Z

    return-object p0
.end method

.method public zzdq(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzKI:Ljava/lang/String;

    return-object p0
.end method

.method public zzdr(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public zzds(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzajO:Ljava/lang/String;

    return-object p0
.end method

.method public zzdt(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzazp:Ljava/lang/String;

    return-object p0
.end method

.method public zzf(F)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAu:F

    return-object p0
.end method

.method public zzg(F)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAy:F

    return-object p0
.end method

.method public zzgX(I)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAz:I

    return-object p0
.end method

.method public zzk(Landroid/net/Uri;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzazq:Landroid/net/Uri;

    return-object p0
.end method

.method public zzm(Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAJ:Ljava/util/List;

    return-object p0
.end method

.method public zzn(Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAD:Ljava/util/List;

    return-object p0
.end method

.method public zzuX()Lcom/google/android/gms/location/places/internal/PlaceImpl;
    .locals 36

    move-object/from16 v0, p0

    new-instance v24, Lcom/google/android/gms/location/places/internal/PlaceImpl;

    iget v2, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzCY:I

    iget-object v3, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzKI:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAJ:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAI:Landroid/os/Bundle;

    iget-object v7, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->mName:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzajO:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzazp:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAC:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAD:Ljava/util/List;

    iget-object v12, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzazn:Lcom/google/android/gms/maps/model/LatLng;

    iget v13, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAu:F

    iget-object v14, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAv:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v15, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAw:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzazq:Landroid/net/Uri;

    move-object/from16 v25, v15

    iget-boolean v15, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAx:Z

    move/from16 v26, v15

    iget v15, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAy:F

    move/from16 v27, v15

    iget v15, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAz:I

    move-object/from16 v28, v14

    move/from16 v29, v15

    iget-wide v14, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAA:J

    move-wide/from16 v30, v14

    iget-boolean v15, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAE:Z

    iget-object v14, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->mName:Ljava/lang/String;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzajO:Ljava/lang/String;

    move/from16 v33, v15

    iget-object v15, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzazp:Ljava/lang/String;

    move/from16 v34, v13

    iget-object v13, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAC:Ljava/lang/String;

    move-object/from16 v35, v12

    iget-object v12, v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzaAD:Ljava/util/List;

    invoke-static {v14, v1, v15, v13, v12}, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceLocalization;

    move-result-object v23

    move-object/from16 v16, v32

    move-object/from16 v1, v24

    move-object/from16 v12, v35

    move/from16 v13, v34

    move-wide/from16 v20, v30

    move-object/from16 v14, v28

    move/from16 v17, v26

    move/from16 v18, v27

    move/from16 v19, v29

    move/from16 v22, v33

    move-object/from16 v15, v25

    invoke-direct/range {v1 .. v23}, Lcom/google/android/gms/location/places/internal/PlaceImpl;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFIJZLcom/google/android/gms/location/places/internal/PlaceLocalization;)V

    return-object v24
.end method

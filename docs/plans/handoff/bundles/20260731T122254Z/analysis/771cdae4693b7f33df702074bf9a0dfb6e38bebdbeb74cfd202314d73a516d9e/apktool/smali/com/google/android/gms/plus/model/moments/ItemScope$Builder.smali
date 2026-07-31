.class public Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/moments/ItemScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private zzEl:Ljava/lang/String;

.field private zzF:Ljava/lang/String;

.field private zzKI:Ljava/lang/String;

.field private final zzaHQ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzaHR:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaHS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzaHT:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaHU:Ljava/lang/String;

.field private zzaHV:Ljava/lang/String;

.field private zzaHW:Ljava/lang/String;

.field private zzaHX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;",
            ">;"
        }
    .end annotation
.end field

.field private zzaHY:I

.field private zzaHZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;",
            ">;"
        }
    .end annotation
.end field

.field private zzaIA:Ljava/lang/String;

.field private zzaIB:Ljava/lang/String;

.field private zzaIC:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaID:Ljava/lang/String;

.field private zzaIE:Ljava/lang/String;

.field private zzaIF:Ljava/lang/String;

.field private zzaIG:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaIH:Ljava/lang/String;

.field private zzaII:Ljava/lang/String;

.field private zzaIJ:Ljava/lang/String;

.field private zzaIK:Ljava/lang/String;

.field private zzaIa:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaIb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;",
            ">;"
        }
    .end annotation
.end field

.field private zzaIc:Ljava/lang/String;

.field private zzaId:Ljava/lang/String;

.field private zzaIe:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaIf:Ljava/lang/String;

.field private zzaIg:Ljava/lang/String;

.field private zzaIh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;",
            ">;"
        }
    .end annotation
.end field

.field private zzaIi:Ljava/lang/String;

.field private zzaIj:Ljava/lang/String;

.field private zzaIk:Ljava/lang/String;

.field private zzaIl:Ljava/lang/String;

.field private zzaIm:Ljava/lang/String;

.field private zzaIn:Ljava/lang/String;

.field private zzaIo:Ljava/lang/String;

.field private zzaIp:Ljava/lang/String;

.field private zzaIq:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaIr:Ljava/lang/String;

.field private zzaIs:Ljava/lang/String;

.field private zzaIt:Ljava/lang/String;

.field private zzaIu:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaIv:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaIw:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

.field private zzaIx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;",
            ">;"
        }
    .end annotation
.end field

.field private zzaIy:Ljava/lang/String;

.field private zzaIz:Ljava/lang/String;

.field private zzakM:Ljava/lang/String;

.field private zzaxB:D

.field private zzaxC:D

.field private zzsB:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 102

    move-object/from16 v0, p0

    new-instance v59, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v2, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    iget-object v3, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHR:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v4, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHS:Ljava/util/List;

    iget-object v5, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHT:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v6, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHU:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHV:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHW:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHX:Ljava/util/List;

    iget v10, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHY:I

    iget-object v11, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHZ:Ljava/util/List;

    iget-object v12, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIa:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v13, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIb:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIc:Ljava/lang/String;

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaId:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIe:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v60, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIf:Ljava/lang/String;

    move-object/from16 v61, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIg:Ljava/lang/String;

    move-object/from16 v62, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzsB:Ljava/lang/String;

    move-object/from16 v63, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIh:Ljava/util/List;

    move-object/from16 v64, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIi:Ljava/lang/String;

    move-object/from16 v65, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIj:Ljava/lang/String;

    move-object/from16 v66, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIk:Ljava/lang/String;

    move-object/from16 v67, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzakM:Ljava/lang/String;

    move-object/from16 v68, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIl:Ljava/lang/String;

    move-object/from16 v69, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIm:Ljava/lang/String;

    move-object/from16 v70, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIn:Ljava/lang/String;

    move-object/from16 v71, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIo:Ljava/lang/String;

    move-object/from16 v72, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIp:Ljava/lang/String;

    move-object/from16 v73, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIq:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v74, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIr:Ljava/lang/String;

    move-object/from16 v75, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIs:Ljava/lang/String;

    move-object/from16 v76, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzKI:Ljava/lang/String;

    move-object/from16 v77, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIt:Ljava/lang/String;

    move-object/from16 v78, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIu:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v79, v14

    move-object/from16 v80, v15

    iget-wide v14, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaxB:D

    move-wide/from16 v81, v14

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIv:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v83, v15

    iget-wide v14, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaxC:D

    move-wide/from16 v84, v14

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->mName:Ljava/lang/String;

    iget-object v14, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIw:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v86, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIx:Ljava/util/List;

    move-object/from16 v87, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIy:Ljava/lang/String;

    move-object/from16 v88, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIz:Ljava/lang/String;

    move-object/from16 v89, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIA:Ljava/lang/String;

    move-object/from16 v90, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIB:Ljava/lang/String;

    move-object/from16 v91, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIC:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v92, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaID:Ljava/lang/String;

    move-object/from16 v93, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIE:Ljava/lang/String;

    move-object/from16 v94, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIF:Ljava/lang/String;

    move-object/from16 v95, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIG:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    move-object/from16 v96, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIH:Ljava/lang/String;

    move-object/from16 v97, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaII:Ljava/lang/String;

    move-object/from16 v98, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzEl:Ljava/lang/String;

    move-object/from16 v99, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzF:Ljava/lang/String;

    move-object/from16 v100, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIJ:Ljava/lang/String;

    move-object/from16 v101, v15

    iget-object v15, v0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIK:Ljava/lang/String;

    move-object/from16 v16, v1

    move-object/from16 v1, v59

    move-object/from16 v42, v14

    move-wide/from16 v36, v81

    move-wide/from16 v39, v84

    move-object/from16 v14, v79

    move-object/from16 v58, v15

    move-object/from16 v17, v61

    move-object/from16 v18, v62

    move-object/from16 v19, v63

    move-object/from16 v20, v64

    move-object/from16 v21, v65

    move-object/from16 v22, v66

    move-object/from16 v23, v67

    move-object/from16 v24, v68

    move-object/from16 v25, v69

    move-object/from16 v26, v70

    move-object/from16 v27, v71

    move-object/from16 v28, v72

    move-object/from16 v29, v73

    move-object/from16 v30, v74

    move-object/from16 v31, v75

    move-object/from16 v32, v76

    move-object/from16 v33, v77

    move-object/from16 v34, v78

    move-object/from16 v35, v80

    move-object/from16 v38, v83

    move-object/from16 v41, v86

    move-object/from16 v43, v87

    move-object/from16 v44, v88

    move-object/from16 v45, v89

    move-object/from16 v46, v90

    move-object/from16 v47, v91

    move-object/from16 v48, v92

    move-object/from16 v49, v93

    move-object/from16 v50, v94

    move-object/from16 v51, v95

    move-object/from16 v52, v96

    move-object/from16 v53, v97

    move-object/from16 v54, v98

    move-object/from16 v55, v99

    move-object/from16 v56, v100

    move-object/from16 v57, v101

    move-object/from16 v15, v60

    invoke-direct/range {v1 .. v58}, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;-><init>(Ljava/util/Set;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/util/List;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;DLcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;DLjava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v59
.end method

.method public setAbout(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHR:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAdditionalName(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHS:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAddress(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHT:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAddressCountry(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHU:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAddressLocality(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHV:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAddressRegion(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHW:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAssociated_media(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHX:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAttendeeCount(I)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHY:I

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAttendees(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHZ:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAudio(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIa:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAuthor(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIb:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setBestRating(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIc:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setBirthDate(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaId:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setByArtist(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIe:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setCaption(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIf:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setContentSize(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIg:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzsB:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setContributor(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIh:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDateCreated(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIi:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDateModified(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIj:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDatePublished(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIk:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzakM:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDuration(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIl:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setEmbedUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIm:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setEndDate(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIn:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setFamilyName(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIo:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setGender(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIp:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setGeo(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIq:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setGivenName(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIr:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setHeight(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIs:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzKI:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setImage(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIt:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setInAlbum(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIu:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setLatitude(D)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-wide p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaxB:D

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setLocation(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIv:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setLongitude(D)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-wide p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaxC:D

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPartOfTVSeries(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIw:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPerformers(Ljava/util/List;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/plus/model/moments/ItemScope;",
            ">;)",
            "Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIx:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPlayerType(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIy:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPostOfficeBoxNumber(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIz:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIA:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setRatingValue(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIB:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setReviewRating(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIC:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setStartDate(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaID:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setStreetAddress(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIE:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIF:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setThumbnail(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iput-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIG:Lcom/google/android/gms/plus/internal/model/moments/ItemScopeEntity;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIH:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setTickerSymbol(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaII:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzEl:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzF:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setWidth(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIJ:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setWorstRating(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaIK:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/ItemScope$Builder;->zzaHQ:Ljava/util/Set;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

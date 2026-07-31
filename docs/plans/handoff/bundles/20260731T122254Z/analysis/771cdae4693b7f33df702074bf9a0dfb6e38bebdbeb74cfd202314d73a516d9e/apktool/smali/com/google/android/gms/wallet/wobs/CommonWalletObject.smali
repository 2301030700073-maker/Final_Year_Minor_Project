.class public Lcom/google/android/gms/wallet/wobs/CommonWalletObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wallet/wobs/CommonWalletObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field name:Ljava/lang/String;

.field state:I

.field private final zzCY:I

.field zzaQN:Ljava/lang/String;

.field zzaQP:Ljava/lang/String;

.field zzaQQ:Ljava/lang/String;

.field zzaQR:Ljava/lang/String;

.field zzaQS:Ljava/lang/String;

.field zzaQT:Ljava/lang/String;

.field zzaQU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;",
            ">;"
        }
    .end annotation
.end field

.field zzaQV:Lcom/google/android/gms/wallet/wobs/TimeInterval;

.field zzaQW:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field zzaQX:Ljava/lang/String;

.field zzaQY:Ljava/lang/String;

.field zzaQZ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/wallet/wobs/LabelValueRow;",
            ">;"
        }
    .end annotation
.end field

.field zzaRa:Z

.field zzaRb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/wallet/wobs/UriData;",
            ">;"
        }
    .end annotation
.end field

.field zzaRc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/wallet/wobs/TextModuleData;",
            ">;"
        }
    .end annotation
.end field

.field zzaRd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/wallet/wobs/UriData;",
            ">;"
        }
    .end annotation
.end field

.field zzhI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/zza;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzCY:I

    invoke-static {}, Lcom/google/android/gms/internal/zzkx;->zzoP()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaQU:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzkx;->zzoP()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaQW:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzkx;->zzoP()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaQZ:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzkx;->zzoP()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaRb:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzkx;->zzoP()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaRc:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzkx;->zzoP()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaRd:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Lcom/google/android/gms/wallet/wobs/TimeInterval;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;",
            ">;",
            "Lcom/google/android/gms/wallet/wobs/TimeInterval;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/wallet/wobs/LabelValueRow;",
            ">;Z",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/wallet/wobs/UriData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/wallet/wobs/TextModuleData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/wallet/wobs/UriData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzCY:I

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzhI:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaQT:Ljava/lang/String;

    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->name:Ljava/lang/String;

    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaQN:Ljava/lang/String;

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaQP:Ljava/lang/String;

    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaQQ:Ljava/lang/String;

    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaQR:Ljava/lang/String;

    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaQS:Ljava/lang/String;

    move/from16 v10, p10

    iput v10, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->state:I

    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaQU:Ljava/util/ArrayList;

    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaQV:Lcom/google/android/gms/wallet/wobs/TimeInterval;

    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaQW:Ljava/util/ArrayList;

    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaQX:Ljava/lang/String;

    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaQY:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaQZ:Ljava/util/ArrayList;

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaRa:Z

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaRb:Ljava/util/ArrayList;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaRc:Ljava/util/ArrayList;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzaRd:Ljava/util/ArrayList;

    return-void
.end method

.method public static zzAN()Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;
    .locals 3

    new-instance v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    new-instance v1, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;-><init>(Lcom/google/android/gms/wallet/wobs/CommonWalletObject;Lcom/google/android/gms/wallet/wobs/CommonWalletObject$1;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzhI:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzCY:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/zza;->zza(Lcom/google/android/gms/wallet/wobs/CommonWalletObject;Landroid/os/Parcel;I)V

    return-void
.end method

.class public final Lcom/google/android/gms/wallet/LoyaltyWalletObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wallet/LoyaltyWalletObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field state:I

.field private final zzCY:I

.field zzaBb:Ljava/lang/String;

.field zzaQM:Ljava/lang/String;

.field zzaQN:Ljava/lang/String;

.field zzaQO:Ljava/lang/String;

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

.field zzaRe:Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;

.field zzhI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzCY:I

    invoke-static {}, Lcom/google/android/gms/internal/zzkx;->zzoP()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQU:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzkx;->zzoP()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQW:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzkx;->zzoP()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQZ:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzkx;->zzoP()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaRb:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzkx;->zzoP()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaRc:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzkx;->zzoP()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaRd:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Lcom/google/android/gms/wallet/wobs/TimeInterval;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;)V
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
            ">;",
            "Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzCY:I

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzhI:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQM:Ljava/lang/String;

    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQN:Ljava/lang/String;

    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQO:Ljava/lang/String;

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaBb:Ljava/lang/String;

    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQP:Ljava/lang/String;

    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQQ:Ljava/lang/String;

    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQR:Ljava/lang/String;

    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQS:Ljava/lang/String;

    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQT:Ljava/lang/String;

    move/from16 v12, p12

    iput v12, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->state:I

    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQU:Ljava/util/ArrayList;

    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQV:Lcom/google/android/gms/wallet/wobs/TimeInterval;

    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQW:Ljava/util/ArrayList;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQX:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQY:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQZ:Ljava/util/ArrayList;

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaRa:Z

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaRb:Ljava/util/ArrayList;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaRc:Ljava/util/ArrayList;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaRd:Ljava/util/ArrayList;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaRe:Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQM:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaBb:Ljava/lang/String;

    return-object v0
.end method

.method public getBarcodeAlternateText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQP:Ljava/lang/String;

    return-object v0
.end method

.method public getBarcodeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQQ:Ljava/lang/String;

    return-object v0
.end method

.method public getBarcodeValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQR:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzhI:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQN:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaQO:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzCY:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzj;->zza(Lcom/google/android/gms/wallet/LoyaltyWalletObject;Landroid/os/Parcel;I)V

    return-void
.end method

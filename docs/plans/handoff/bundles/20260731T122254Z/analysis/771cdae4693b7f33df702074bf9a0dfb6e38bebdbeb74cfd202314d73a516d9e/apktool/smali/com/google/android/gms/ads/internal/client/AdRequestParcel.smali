.class public final Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/ads/internal/client/zzf;


# instance fields
.field public final extras:Landroid/os/Bundle;

.field public final versionCode:I

.field public final zzrX:J

.field public final zzrY:I

.field public final zzrZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzsa:Z

.field public final zzsb:I

.field public final zzsc:Z

.field public final zzsd:Ljava/lang/String;

.field public final zzse:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

.field public final zzsf:Landroid/location/Location;

.field public final zzsg:Ljava/lang/String;

.field public final zzsh:Landroid/os/Bundle;

.field public final zzsi:Landroid/os/Bundle;

.field public final zzsj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzsk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->CREATOR:Lcom/google/android/gms/ads/internal/client/zzf;

    return-void
.end method

.method public constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZIZ",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->versionCode:I

    move-wide/from16 v2, p2

    iput-wide v2, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrX:J

    if-nez p4, :cond_0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p4

    :goto_0
    iput-object v4, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    move/from16 v4, p5

    iput v4, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrY:I

    move-object/from16 v5, p6

    iput-object v5, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzrZ:Ljava/util/List;

    move/from16 v6, p7

    iput-boolean v6, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsa:Z

    move/from16 v7, p8

    iput v7, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsb:I

    move/from16 v8, p9

    iput-boolean v8, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsc:Z

    move-object/from16 v9, p10

    iput-object v9, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsd:Ljava/lang/String;

    move-object/from16 v10, p11

    iput-object v10, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzse:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    move-object/from16 v11, p12

    iput-object v11, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsf:Landroid/location/Location;

    move-object/from16 v12, p13

    iput-object v12, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsg:Ljava/lang/String;

    move-object/from16 v13, p14

    iput-object v13, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsh:Landroid/os/Bundle;

    move-object/from16 v14, p15

    iput-object v14, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsi:Landroid/os/Bundle;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsj:Ljava/util/List;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzsk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzf;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Landroid/os/Parcel;I)V

    return-void
.end method

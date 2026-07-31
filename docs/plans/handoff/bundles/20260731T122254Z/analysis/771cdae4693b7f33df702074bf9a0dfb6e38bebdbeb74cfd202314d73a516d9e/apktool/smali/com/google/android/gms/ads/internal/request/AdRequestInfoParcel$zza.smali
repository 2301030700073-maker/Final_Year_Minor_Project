.class public final Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final zzCA:Z

.field public final zzCB:I

.field public final zzCD:J

.field public final zzCE:Ljava/lang/String;

.field public final zzCF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzCG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzCl:Landroid/os/Bundle;

.field public final zzCm:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field public final zzCn:Landroid/content/pm/PackageInfo;

.field public final zzCp:Ljava/lang/String;

.field public final zzCq:Ljava/lang/String;

.field public final zzCr:Landroid/os/Bundle;

.field public final zzCs:I

.field public final zzCt:Landroid/os/Bundle;

.field public final zzCu:Z

.field public final zzCv:Landroid/os/Messenger;

.field public final zzCw:I

.field public final zzCx:I

.field public final zzCy:F

.field public final zzCz:Ljava/lang/String;

.field public final zzpF:Ljava/lang/String;

.field public final zzpG:Ljava/lang/String;

.field public final zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public final zzqb:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field public final zzqd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZLandroid/os/Messenger;IIFLjava/lang/String;ZIJLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/ads/internal/client/AdRequestParcel;",
            "Lcom/google/android/gms/ads/internal/client/AdSizeParcel;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Z",
            "Landroid/os/Messenger;",
            "IIF",
            "Ljava/lang/String;",
            "ZIJ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p11

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCl:Landroid/os/Bundle;

    move-object v2, p2

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCm:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object v2, p3

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzpN:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object v2, p4

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzpG:Ljava/lang/String;

    move-object v2, p5

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v2, p6

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCn:Landroid/content/pm/PackageInfo;

    move-object v2, p7

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCp:Ljava/lang/String;

    move-object v2, p8

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCq:Ljava/lang/String;

    move-object v2, p9

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzpJ:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object v2, p10

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCr:Landroid/os/Bundle;

    move/from16 v2, p14

    iput-boolean v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCu:Z

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCv:Landroid/os/Messenger;

    move/from16 v2, p16

    iput v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCw:I

    move/from16 v2, p17

    iput v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCx:I

    move/from16 v2, p18

    iput v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCy:F

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x3

    iput v2, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCs:I

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzqd:Ljava/util/List;

    move-object v1, p12

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCs:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzqd:Ljava/util/List;

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCG:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCt:Landroid/os/Bundle;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCz:Ljava/lang/String;

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCA:Z

    move/from16 v1, p21

    iput v1, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCB:I

    move-wide/from16 v1, p22

    iput-wide v1, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCD:J

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCE:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzCF:Ljava/util/List;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzpF:Ljava/lang/String;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzqb:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    return-void
.end method

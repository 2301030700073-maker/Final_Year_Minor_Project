.class public final Lcom/google/android/gms/internal/ads/zzbxj;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzbxj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Landroid/os/Bundle;

.field public final zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final zzc:Landroid/content/pm/ApplicationInfo;

.field public final zzd:Ljava/lang/String;

.field public final zze:Ljava/util/List;

.field public final zzf:Landroid/content/pm/PackageInfo;

.field public final zzg:Ljava/lang/String;

.field public final zzh:Ljava/lang/String;

.field public zzi:Lcom/google/android/gms/internal/ads/zzfij;

.field public zzj:Ljava/lang/String;

.field public final zzk:Z

.field public final zzl:Z

.field public final zzm:Landroid/os/Bundle;

.field public final zzn:Landroid/os/Bundle;

.field public final zzo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbxk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbxk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbxj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfij;Ljava/lang/String;ZZLandroid/os/Bundle;Landroid/os/Bundle;I)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbxj;->zza:Landroid/os/Bundle;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbxj;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbxj;->zzd:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbxj;->zzc:Landroid/content/pm/ApplicationInfo;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbxj;->zze:Ljava/util/List;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbxj;->zzf:Landroid/content/pm/PackageInfo;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbxj;->zzg:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbxj;->zzh:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbxj;->zzi:Lcom/google/android/gms/internal/ads/zzfij;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbxj;->zzj:Ljava/lang/String;

    move v1, p11

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbxj;->zzk:Z

    move v1, p12

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbxj;->zzl:Z

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbxj;->zzm:Landroid/os/Bundle;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbxj;->zzn:Landroid/os/Bundle;

    move/from16 v1, p15

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzbxj;->zzo:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxj;->zza:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxj;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 3
    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxj;->zzc:Landroid/content/pm/ApplicationInfo;

    .line 4
    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxj;->zzd:Ljava/lang/String;

    .line 5
    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxj;->zze:Ljava/util/List;

    .line 6
    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxj;->zzf:Landroid/content/pm/PackageInfo;

    .line 7
    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxj;->zzg:Ljava/lang/String;

    .line 8
    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxj;->zzh:Ljava/lang/String;

    .line 9
    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxj;->zzi:Lcom/google/android/gms/internal/ads/zzfij;

    .line 10
    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0xb

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxj;->zzj:Ljava/lang/String;

    .line 11
    invoke-static {p1, p2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xc

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbxj;->zzk:Z

    .line 12
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xd

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbxj;->zzl:Z

    .line 13
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xe

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxj;->zzm:Landroid/os/Bundle;

    .line 14
    invoke-static {p1, p2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 p2, 0xf

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxj;->zzn:Landroid/os/Bundle;

    .line 15
    invoke-static {p1, p2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 p2, 0x10

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbxj;->zzo:I

    .line 16
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 17
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

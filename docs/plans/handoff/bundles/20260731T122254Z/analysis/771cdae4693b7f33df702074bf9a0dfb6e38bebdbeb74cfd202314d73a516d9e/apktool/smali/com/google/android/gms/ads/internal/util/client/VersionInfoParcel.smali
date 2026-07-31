.class public final Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/ads/internal/util/client/zzc;


# instance fields
.field public final versionCode:I

.field public zzGG:Ljava/lang/String;

.field public zzGH:I

.field public zzGI:I

.field public zzGJ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/util/client/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/client/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->CREATOR:Lcom/google/android/gms/ads/internal/util/client/zzc;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "afma-sdk-a-v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;-><init>(ILjava/lang/String;IIZ)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGG:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGH:I

    iput p4, p0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGI:I

    iput-boolean p5, p0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzGJ:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/util/client/zzc;->zza(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/os/Parcel;I)V

    return-void
.end method

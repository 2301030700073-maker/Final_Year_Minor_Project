.class public final Lcom/google/android/gms/internal/ads/zzbqp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/ads/internal/util/zzbc;

.field static final zzb:Lcom/google/android/gms/ads/internal/util/zzbc;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzbqb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbqn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbqn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbqp;->zza:Lcom/google/android/gms/ads/internal/util/zzbc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbqo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbqo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbqp;->zzb:Lcom/google/android/gms/ads/internal/util/zzbc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzflp;)V
    .locals 8
    .param p4    # Lcom/google/android/gms/internal/ads/zzflp;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbqb;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbqp;->zza:Lcom/google/android/gms/ads/internal/util/zzbc;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbqp;->zzb:Lcom/google/android/gms/ads/internal/util/zzbc;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbqb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzbc;Lcom/google/android/gms/ads/internal/util/zzbc;Lcom/google/android/gms/internal/ads/zzflp;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzbqp;->zzc:Lcom/google/android/gms/internal/ads/zzbqb;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqi;Lcom/google/android/gms/internal/ads/zzbqh;)Lcom/google/android/gms/internal/ads/zzbqf;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbqt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqp;->zzc:Lcom/google/android/gms/internal/ads/zzbqb;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbqt;-><init>(Lcom/google/android/gms/internal/ads/zzbqb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqi;Lcom/google/android/gms/internal/ads/zzbqh;)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzbqy;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbqy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqp;->zzc:Lcom/google/android/gms/internal/ads/zzbqb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbqy;-><init>(Lcom/google/android/gms/internal/ads/zzbqb;)V

    return-object v0
.end method

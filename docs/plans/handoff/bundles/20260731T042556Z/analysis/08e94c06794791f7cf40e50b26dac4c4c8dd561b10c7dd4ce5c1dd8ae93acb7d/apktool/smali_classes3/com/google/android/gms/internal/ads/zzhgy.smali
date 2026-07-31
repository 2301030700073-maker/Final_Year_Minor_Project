.class final synthetic Lcom/google/android/gms/internal/ads/zzhgy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzheq;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhgy;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhgy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhgy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgy;->zza:Lcom/google/android/gms/internal/ads/zzhgy;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzgwj;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgvt;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhhf;

    sget v0, Lcom/google/android/gms/internal/ads/zzhhb;->zza:I

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhgv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgv;-><init>([B)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhgv;->zza(Lcom/google/android/gms/internal/ads/zzhhf;)Lcom/google/android/gms/internal/ads/zzhgv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhhf;->zzc()I

    move-result p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhtb;->zzb(I)Lcom/google/android/gms/internal/ads/zzhtb;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhgv;->zzb(Lcom/google/android/gms/internal/ads/zzhtb;)Lcom/google/android/gms/internal/ads/zzhgv;

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzhgv;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhgv;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhgv;->zzd()Lcom/google/android/gms/internal/ads/zzhgw;

    move-result-object p1

    return-object p1
.end method

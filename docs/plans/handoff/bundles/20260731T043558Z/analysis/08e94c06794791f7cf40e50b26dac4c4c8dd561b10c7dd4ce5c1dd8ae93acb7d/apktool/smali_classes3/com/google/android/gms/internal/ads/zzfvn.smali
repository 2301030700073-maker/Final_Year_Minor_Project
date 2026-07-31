.class public final Lcom/google/android/gms/internal/ads/zzfvn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Landroidx/datastore/core/Serializer;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzfvn;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzfvk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfvn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfvn;->zza:Lcom/google/android/gms/internal/ads/zzfvn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvk;->zzd()Lcom/google/android/gms/internal/ads/zzfvk;

    move-result-object v0

    const-string v1, "getDefaultInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfvn;->zzb:Lcom/google/android/gms/internal/ads/zzfvk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic getDefaultValue()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfvn;->zzb:Lcom/google/android/gms/internal/ads/zzfvk;

    return-object v0
.end method

.method public final readFrom(Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfvk;->zzc(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzfvk;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfvn;->zzb:Lcom/google/android/gms/internal/ads/zzfvk;

    :goto_0
    return-object p1
.end method

.method public final synthetic writeTo(Ljava/lang/Object;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfvk;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhur;->zzaO(Ljava/io/OutputStream;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

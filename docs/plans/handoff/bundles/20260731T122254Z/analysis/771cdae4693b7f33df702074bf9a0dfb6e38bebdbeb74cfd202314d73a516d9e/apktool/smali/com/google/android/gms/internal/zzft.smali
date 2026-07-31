.class public Lcom/google/android/gms/internal/zzft;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzft$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzha$zza;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzid;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/internal/zzft$zza;)Lcom/google/android/gms/internal/zzhh;
    .locals 7

    iget-object v0, p3, Lcom/google/android/gms/internal/zzha$zza;->zzFs:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzsp:Z

    if-eqz v1, :cond_2

    instance-of p5, p2, Lcom/google/android/gms/ads/internal/zzm;

    if-eqz p5, :cond_0

    new-instance p5, Lcom/google/android/gms/internal/zzfx;

    move-object v2, p2

    check-cast v2, Lcom/google/android/gms/ads/internal/zzm;

    new-instance v3, Lcom/google/android/gms/internal/zzbc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzbc;-><init>()V

    move-object v0, p5

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzfx;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/internal/zzbc;Lcom/google/android/gms/internal/zzha$zza;Lcom/google/android/gms/internal/zzan;Lcom/google/android/gms/internal/zzft$zza;)V

    move-object p2, p5

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid NativeAdManager type. Found: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "null"

    :goto_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; Required: NativeAdManager."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean p2, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCK:Z

    if-eqz p2, :cond_3

    new-instance p2, Lcom/google/android/gms/internal/zzfw;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzfw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzha$zza;Lcom/google/android/gms/internal/zzid;Lcom/google/android/gms/internal/zzef;Lcom/google/android/gms/internal/zzft$zza;)V

    goto :goto_1

    :cond_3
    iget-boolean p2, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzCQ:Z

    if-eqz p2, :cond_4

    new-instance p2, Lcom/google/android/gms/internal/zzfr;

    invoke-direct {p2, p1, p3, p5, p7}, Lcom/google/android/gms/internal/zzfr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzha$zza;Lcom/google/android/gms/internal/zzid;Lcom/google/android/gms/internal/zzft$zza;)V

    goto :goto_1

    :cond_4
    sget-object p2, Lcom/google/android/gms/internal/zzbz;->zzuj:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/zzlk;->zzoX()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/zzlk;->isAtLeastL()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-interface {p5}, Lcom/google/android/gms/internal/zzid;->zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object p2

    iget-boolean p2, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzsn:Z

    if-eqz p2, :cond_5

    new-instance p2, Lcom/google/android/gms/internal/zzfv;

    invoke-direct {p2, p1, p3, p5, p7}, Lcom/google/android/gms/internal/zzfv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzha$zza;Lcom/google/android/gms/internal/zzid;Lcom/google/android/gms/internal/zzft$zza;)V

    goto :goto_1

    :cond_5
    new-instance p2, Lcom/google/android/gms/internal/zzfu;

    invoke-direct {p2, p1, p3, p5, p7}, Lcom/google/android/gms/internal/zzfu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzha$zza;Lcom/google/android/gms/internal/zzid;Lcom/google/android/gms/internal/zzft$zza;)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzhh;->zzgj()V

    return-object p2
.end method

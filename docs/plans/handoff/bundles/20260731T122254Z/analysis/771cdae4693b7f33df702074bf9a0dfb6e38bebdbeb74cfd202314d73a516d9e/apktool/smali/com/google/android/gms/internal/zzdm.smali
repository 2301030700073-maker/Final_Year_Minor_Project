.class public Lcom/google/android/gms/internal/zzdm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# static fields
.field static final zzwy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzww:Lcom/google/android/gms/ads/internal/zzd;

.field private final zzwx:Lcom/google/android/gms/internal/zzep;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdm;->zzwy:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/internal/zzdm;->zzwy:Ljava/util/Map;

    const-string v1, "resize"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzdm;->zzwy:Ljava/util/Map;

    const-string v1, "playVideo"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzdm;->zzwy:Ljava/util/Map;

    const-string v1, "storePicture"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzdm;->zzwy:Ljava/util/Map;

    const-string v1, "createCalendarEvent"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzdm;->zzwy:Ljava/util/Map;

    const-string v1, "setOrientationProperties"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzdm;->zzwy:Ljava/util/Map;

    const-string v1, "closeResizedAd"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/internal/zzep;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdm;->zzww:Lcom/google/android/gms/ads/internal/zzd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdm;->zzwx:Lcom/google/android/gms/internal/zzep;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzid;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzid;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "a"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/zzdm;->zzwy:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdm;->zzww:Lcom/google/android/gms/ads/internal/zzd;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdm;->zzww:Lcom/google/android/gms/ads/internal/zzd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzd;->zzbd()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdm;->zzww:Lcom/google/android/gms/ads/internal/zzd;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzd;->zzo(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    const-string p1, "Unknown MRAID command called."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaA(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzdm;->zzwx:Lcom/google/android/gms/internal/zzep;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzep;->zzn(Z)V

    return-void

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/zzeq;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzeq;-><init>(Lcom/google/android/gms/internal/zzid;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeq;->execute()V

    return-void

    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/zzeo;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzeo;-><init>(Lcom/google/android/gms/internal/zzid;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeo;->execute()V

    return-void

    :pswitch_3
    new-instance v0, Lcom/google/android/gms/internal/zzer;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzer;-><init>(Lcom/google/android/gms/internal/zzid;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzer;->execute()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzdm;->zzwx:Lcom/google/android/gms/internal/zzep;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzep;->zzh(Ljava/util/Map;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

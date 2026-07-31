.class final Lcom/google/android/gms/internal/ads/zzclr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdjc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzckz;

.field private zzb:Lcom/google/android/gms/internal/ads/zzfdq;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfcu;

.field private zzd:Lcom/google/android/gms/internal/ads/zzdeo;

.field private zze:Lcom/google/android/gms/internal/ads/zzcxx;

.field private zzf:Lcom/google/android/gms/internal/ads/zzena;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzckz;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclr;->zza:Lcom/google/android/gms/internal/ads/zzckz;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdjd;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclr;->zzd:Lcom/google/android/gms/internal/ads/zzdeo;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdeo;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzifp;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclr;->zze:Lcom/google/android/gms/internal/ads/zzcxx;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcxx;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzifp;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclr;->zzf:Lcom/google/android/gms/internal/ads/zzena;

    const-class v1, Lcom/google/android/gms/internal/ads/zzena;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzifp;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcls;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcuu;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcuu;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfht;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfht;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcwv;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcwv;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdvx;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzdvx;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzclr;->zzd:Lcom/google/android/gms/internal/ads/zzdeo;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzclr;->zze:Lcom/google/android/gms/internal/ads/zzcxx;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelg;->zza()Lcom/google/android/gms/internal/ads/zzele;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzclr;->zzf:Lcom/google/android/gms/internal/ads/zzena;

    iget-object v13, p0, Lcom/google/android/gms/internal/ads/zzclr;->zzb:Lcom/google/android/gms/internal/ads/zzfdq;

    iget-object v14, p0, Lcom/google/android/gms/internal/ads/zzclr;->zzc:Lcom/google/android/gms/internal/ads/zzfcu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclr;->zza:Lcom/google/android/gms/internal/ads/zzckz;

    const/4 v12, 0x0

    move-object v2, v0

    .line 4
    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzcls;-><init>(Lcom/google/android/gms/internal/ads/zzckz;Lcom/google/android/gms/internal/ads/zzcuu;Lcom/google/android/gms/internal/ads/zzfht;Lcom/google/android/gms/internal/ads/zzcwv;Lcom/google/android/gms/internal/ads/zzdvx;Lcom/google/android/gms/internal/ads/zzdeo;Lcom/google/android/gms/internal/ads/zzcxx;Lcom/google/android/gms/internal/ads/zzele;Lcom/google/android/gms/internal/ads/zzena;Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzfdq;Lcom/google/android/gms/internal/ads/zzfcu;)V

    return-object v0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/internal/ads/zzdjc;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclr;->zzc:Lcom/google/android/gms/internal/ads/zzfcu;

    return-object p0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfdq;)Lcom/google/android/gms/internal/ads/zzdjc;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclr;->zzb:Lcom/google/android/gms/internal/ads/zzfdq;

    return-object p0
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzena;)Lcom/google/android/gms/internal/ads/zzdjc;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzena;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclr;->zzf:Lcom/google/android/gms/internal/ads/zzena;

    return-object p0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzdjc;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcxx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclr;->zze:Lcom/google/android/gms/internal/ads/zzcxx;

    return-object p0
.end method

.method public final bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzdeo;)Lcom/google/android/gms/internal/ads/zzdjc;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdeo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclr;->zzd:Lcom/google/android/gms/internal/ads/zzdeo;

    return-object p0
.end method

.method public final bridge synthetic zzh()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzclr;->zza()Lcom/google/android/gms/internal/ads/zzdjd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzi(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/internal/ads/zzcxu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclr;->zzc:Lcom/google/android/gms/internal/ads/zzfcu;

    return-object p0
.end method

.method public final synthetic zzj(Lcom/google/android/gms/internal/ads/zzfdq;)Lcom/google/android/gms/internal/ads/zzcxu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclr;->zzb:Lcom/google/android/gms/internal/ads/zzfdq;

    return-object p0
.end method

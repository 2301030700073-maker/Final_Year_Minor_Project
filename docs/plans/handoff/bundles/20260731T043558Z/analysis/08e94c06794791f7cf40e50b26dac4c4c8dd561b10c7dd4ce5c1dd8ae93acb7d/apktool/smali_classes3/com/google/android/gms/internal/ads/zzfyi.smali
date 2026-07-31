.class final Lcom/google/android/gms/internal/ads/zzfyi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgbh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfxz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfyf;

.field private zzc:Landroid/content/Context;

.field private zzd:Landroid/view/View;

.field private zze:Landroid/app/Activity;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/util/Map;

.field private zzh:Lcom/google/android/gms/internal/ads/zzauc;

.field private zzi:Lcom/google/android/gms/internal/ads/zzfyq;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfxz;Lcom/google/android/gms/internal/ads/zzfyf;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zza:Lcom/google/android/gms/internal/ads/zzfxz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zzb:Lcom/google/android/gms/internal/ads/zzfyf;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgbi;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zzc:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzifp;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zzg:Ljava/util/Map;

    const-class v1, Ljava/util/Map;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzifp;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zzh:Lcom/google/android/gms/internal/ads/zzauc;

    const-class v1, Lcom/google/android/gms/internal/ads/zzauc;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzifp;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zzi:Lcom/google/android/gms/internal/ads/zzfyq;

    const-class v1, Lcom/google/android/gms/internal/ads/zzfyq;

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzifp;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zza:Lcom/google/android/gms/internal/ads/zzfxz;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zzb:Lcom/google/android/gms/internal/ads/zzfyf;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zzc:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zzd:Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zze:Landroid/app/Activity;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zzf:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zzg:Ljava/util/Map;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zzh:Lcom/google/android/gms/internal/ads/zzauc;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zzi:Lcom/google/android/gms/internal/ads/zzfyq;

    move-object v2, v0

    .line 5
    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzfyj;-><init>(Lcom/google/android/gms/internal/ads/zzfxz;Lcom/google/android/gms/internal/ads/zzfyf;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzauc;Lcom/google/android/gms/internal/ads/zzfyq;)V

    return-object v0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfyq;)Lcom/google/android/gms/internal/ads/zzgbh;
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfyq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zzi:Lcom/google/android/gms/internal/ads/zzfyq;

    return-object p0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzauc;)Lcom/google/android/gms/internal/ads/zzgbh;
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzauc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zzh:Lcom/google/android/gms/internal/ads/zzauc;

    return-object p0
.end method

.method public final bridge synthetic zzd(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzgbh;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zzg:Ljava/util/Map;

    return-object p0
.end method

.method public final synthetic zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgbh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final synthetic zzf(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzgbh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zze:Landroid/app/Activity;

    return-object p0
.end method

.method public final synthetic zzg(Landroid/view/View;)Lcom/google/android/gms/internal/ads/zzgbh;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zzd:Landroid/view/View;

    return-object p0
.end method

.method public final bridge synthetic zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgbh;
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zzc:Landroid/content/Context;

    return-object p0
.end method

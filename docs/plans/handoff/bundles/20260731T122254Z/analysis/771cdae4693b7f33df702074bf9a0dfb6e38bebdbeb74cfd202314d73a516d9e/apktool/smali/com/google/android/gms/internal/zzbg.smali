.class public Lcom/google/android/gms/internal/zzbg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbf;


# instance fields
.field private final zzrh:Lcom/google/android/gms/internal/zzbe;

.field private final zzri:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/util/AbstractMap$SimpleEntry<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdg;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbg;->zzrh:Lcom/google/android/gms/internal/zzbe;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbg;->zzri:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdg;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbg;->zzrh:Lcom/google/android/gms/internal/zzbe;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbe;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbg;->zzri:Ljava/util/HashSet;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbg;->zzrh:Lcom/google/android/gms/internal/zzbe;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbe;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbg;->zzrh:Lcom/google/android/gms/internal/zzbe;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbe;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdg;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbg;->zzrh:Lcom/google/android/gms/internal/zzbe;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbe;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbg;->zzri:Ljava/util/HashSet;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzcg()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbg;->zzri:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/AbstractMap$SimpleEntry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregistering eventhandler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzdg;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaB(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbg;->zzrh:Lcom/google/android/gms/internal/zzbe;

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdg;

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/zzbe;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzdg;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbg;->zzri:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

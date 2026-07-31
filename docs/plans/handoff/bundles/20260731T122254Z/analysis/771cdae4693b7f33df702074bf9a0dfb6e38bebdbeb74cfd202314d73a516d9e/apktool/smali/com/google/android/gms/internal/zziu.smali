.class public Lcom/google/android/gms/internal/zziu;
.super Ljava/lang/Object;


# direct methods
.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/zznj$zzc;)Lcom/google/android/gms/appdatasearch/DocumentSection;
    .locals 2

    new-instance v0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzJ(Z)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzbs(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object p0

    const-string v0, "blob"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzbr(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzkM()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/appdatasearch/DocumentSection;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrn;->zzf(Lcom/google/android/gms/internal/zzrn;)[B

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/appdatasearch/DocumentSection;-><init>([BLcom/google/android/gms/appdatasearch/RegisterSectionInfo;)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/appindexing/Action;JLjava/lang/String;I)Lcom/google/android/gms/appdatasearch/UsageInfo;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/appindexing/Action;->zzkP()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string p0, "object"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "id"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "id"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "name"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/google/android/gms/internal/zziv;->zza(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v3, v1, v4, v2}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zza(Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    move-result-object v1

    const-string v2, ".private:ssbContext"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ".private:ssbContext"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzh([B)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    const-string v2, ".private:ssbContext"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1
    const-string v2, ".private:accountName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ".private:accountName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/accounts/Account;

    const-string v4, "com.google"

    invoke-direct {v3, v2, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zza(Landroid/accounts/Account;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    const-string v2, ".private:accountName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2
    const-string v2, ".private:isContextOnly"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const-string v2, ".private:isContextOnly"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    const-string v4, ".private:isContextOnly"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    const-string v4, ".private:isDeviceOnly"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, ".private:isDeviceOnly"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, ".private:isDeviceOnly"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_4
    const-string v4, ".private:action"

    invoke-static {v0}, Lcom/google/android/gms/internal/zziu;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zznj$zzc;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zziu;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zznj$zzc;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    new-instance v0, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;-><init>()V

    invoke-static {p3, p0}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zza(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/appdatasearch/DocumentId;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentId;)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzw(J)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzal(I)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object p0

    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zzkJ()Lcom/google/android/gms/appdatasearch/DocumentContents;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentContents;)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzL(Z)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzam(I)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzkN()Lcom/google/android/gms/appdatasearch/UsageInfo;

    move-result-object p0

    return-object p0
.end method

.method static zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zznj$zzc;
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/zznj$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zznj$zzc;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/zznj$zzb;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zznj$zzb;-><init>()V

    iput-object v3, v5, Lcom/google/android/gms/internal/zznj$zzb;->name:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/zznj$zzd;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zznj$zzd;-><init>()V

    iput-object v3, v5, Lcom/google/android/gms/internal/zznj$zzb;->zzawp:Lcom/google/android/gms/internal/zznj$zzd;

    instance-of v3, v4, Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v5, Lcom/google/android/gms/internal/zznj$zzb;->zzawp:Lcom/google/android/gms/internal/zznj$zzd;

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/internal/zznj$zzd;->zzabE:Ljava/lang/String;

    goto :goto_1

    :cond_0
    instance-of v3, v4, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    iget-object v3, v5, Lcom/google/android/gms/internal/zznj$zzb;->zzawp:Lcom/google/android/gms/internal/zznj$zzd;

    check-cast v4, Landroid/os/Bundle;

    invoke-static {v4}, Lcom/google/android/gms/internal/zziu;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zznj$zzc;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/zznj$zzd;->zzawu:Lcom/google/android/gms/internal/zznj$zzc;

    goto :goto_1

    :cond_1
    const-string v3, "AppDataSearchClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v2, "type"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "type"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/zznj$zzc;->type:Ljava/lang/String;

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/google/android/gms/internal/zznj$zzb;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/gms/internal/zznj$zzb;

    iput-object p0, v0, Lcom/google/android/gms/internal/zznj$zzc;->zzawq:[Lcom/google/android/gms/internal/zznj$zzb;

    return-object v0
.end method

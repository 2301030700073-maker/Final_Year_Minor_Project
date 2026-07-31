.class final Lcom/google/android/gms/internal/ads/zzggr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private zza:Ljava/util/Optional;

.field private zzb:Ljava/util/Optional;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzazy;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzazy;->zza()Lcom/google/android/gms/internal/ads/zzbae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbae;->zzb()Lcom/google/android/gms/internal/ads/zzbag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbag;->zza()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhvi;->zzv()[B

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzazy;->zza()Lcom/google/android/gms/internal/ads/zzbae;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbae;->zzd()Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhvi;->zzv()[B

    move-result-object p1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggr;->zza:Ljava/util/Optional;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggr;->zzb:Ljava/util/Optional;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    .line 3
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhpo;->zza()V

    new-instance v1, Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    const-string v3, "eyJwcmltYXJ5S2V5SWQiOjMzMTUxOTk4MTksImtleSI6W3sia2V5RGF0YSI6eyJ0eXBlVXJsIjoidHlwZS5nb29nbGVhcGlzLmNvbS9nb29nbGUuY3J5cHRvLnRpbmsuRWNkc2FQdWJsaWNLZXkiLCJ2YWx1ZSI6IkVnWUlBeEFDR0FFYUlRQVNoRGZwOUM5QjcrMU1nMmJQbHJ5WExPOHVScDd6YWZJMldSYURmR1ZqVmlJaEFJNFZzTmVrcCs0bVY0d2toZlhVb3pQZWs5TjgxcUdIK2plNnhjOFpoQkhQIiwia2V5TWF0ZXJpYWxUeXBlIjoiQVNZTU1FVFJJQ19QVUJMSUMifSwic3RhdHVzIjoiRU5BQkxFRCIsImtleUlkIjozMzE1MTk5ODE5LCJvdXRwdXRQcmVmaXhUeXBlIjoiVElOSyJ9XX0="

    invoke-virtual {v2, v3}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgwo;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgwe;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhga;->zzc()Lcom/google/android/gms/internal/ads/zzhga;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/zzgwm;

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgwe;->zzg(Lcom/google/android/gms/internal/ads/zzgvq;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgwm;

    .line 7
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzggr;->zza:Ljava/util/Optional;

    new-instance v1, Ljava/lang/String;

    .line 8
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    const-string v3, "eyJwcmltYXJ5S2V5SWQiOjMwODI3ODA4ODgsImtleSI6W3sia2V5RGF0YSI6eyJ0eXBlVXJsIjoidHlwZS5nb29nbGVhcGlzLmNvbS9nb29nbGUuY3J5cHRvLnRpbmsuRWNkc2FQdWJsaWNLZXkiLCJ2YWx1ZSI6IkVnWUlBeEFDR0FFYUlRQkEyWW5HaWFpc3pEcGtJcWpjalorUTJ2alFUUldQZjhFcTlkZVlhNFpKa3lJaEFCQWFESTd6QWJkQXVpQmlnOWdHSkJ1VTUzSGg5Z0RCa0t2amswS2tabDhjIiwia2V5TWF0ZXJpYWxUeXBlIjoiQVNZTU1FVFJJQ19QVUJMSUMifSwic3RhdHVzIjoiRU5BQkxFRCIsImtleUlkIjozMDgyNzgwODg4LCJvdXRwdXRQcmVmaXhUeXBlIjoiVElOSyJ9XX0="

    invoke-virtual {v2, v3}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgwo;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgwe;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhga;->zzc()Lcom/google/android/gms/internal/ads/zzhga;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/zzgwm;

    .line 10
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgwe;->zzg(Lcom/google/android/gms/internal/ads/zzgvq;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgwm;

    .line 11
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzggr;->zzb:Ljava/util/Optional;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    :try_start_2
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "Failed to verify program"

    invoke-direct {v2, v3, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 11
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggr;->zza:Ljava/util/Optional;

    .line 13
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggr;->zza:Ljava/util/Optional;

    .line 14
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgwm;

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzgwm;->zza([B[B)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggr;->zzb:Ljava/util/Optional;

    .line 15
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggr;->zzb:Ljava/util/Optional;

    .line 16
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgwm;

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzgwm;->zza([B[B)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    const/4 p1, 0x1

    return p1

    :catch_2
    const/4 p1, 0x0

    return p1
.end method

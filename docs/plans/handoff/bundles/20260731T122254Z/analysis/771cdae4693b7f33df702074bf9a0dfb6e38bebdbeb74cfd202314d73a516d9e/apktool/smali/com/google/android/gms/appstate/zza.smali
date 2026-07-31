.class public final Lcom/google/android/gms/appstate/zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/appstate/AppState;


# instance fields
.field private final zzOf:I

.field private final zzOg:Ljava/lang/String;

.field private final zzOh:[B

.field private final zzOi:Z

.field private final zzOj:Ljava/lang/String;

.field private final zzOk:[B


# direct methods
.method public constructor <init>(Lcom/google/android/gms/appstate/AppState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getKey()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/appstate/zza;->zzOf:I

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getLocalVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/appstate/zza;->zzOg:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getLocalData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/appstate/zza;->zzOh:[B

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->hasConflict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/appstate/zza;->zzOi:Z

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getConflictVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/appstate/zza;->zzOj:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getConflictData()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/appstate/zza;->zzOk:[B

    return-void
.end method

.method static zza(Lcom/google/android/gms/appstate/AppState;)I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getKey()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getLocalVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getLocalData()[B

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->hasConflict()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getConflictVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getConflictData()[B

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzt;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zza(Lcom/google/android/gms/appstate/AppState;Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/google/android/gms/appstate/AppState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/appstate/AppState;

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getKey()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getKey()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getLocalVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getLocalVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getLocalData()[B

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getLocalData()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->hasConflict()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->hasConflict()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getConflictVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getConflictVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getConflictData()[B

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getConflictData()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static zzb(Lcom/google/android/gms/appstate/AppState;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzt;->zzt(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "Key"

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getKey()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "LocalVersion"

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getLocalVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "LocalData"

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getLocalData()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "HasConflict"

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->hasConflict()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "ConflictVersion"

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getConflictVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "ConflictData"

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getConflictData()[B

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzt$zza;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/appstate/zza;->zza(Lcom/google/android/gms/appstate/AppState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/appstate/zza;->zzkT()Lcom/google/android/gms/appstate/AppState;

    move-result-object v0

    return-object v0
.end method

.method public getConflictData()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/zza;->zzOk:[B

    return-object v0
.end method

.method public getConflictVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/zza;->zzOj:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/appstate/zza;->zzOf:I

    return v0
.end method

.method public getLocalData()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/zza;->zzOh:[B

    return-object v0
.end method

.method public getLocalVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/zza;->zzOg:Ljava/lang/String;

    return-object v0
.end method

.method public hasConflict()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/appstate/zza;->zzOi:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/appstate/zza;->zza(Lcom/google/android/gms/appstate/AppState;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/appstate/zza;->zzb(Lcom/google/android/gms/appstate/AppState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzkT()Lcom/google/android/gms/appstate/AppState;
    .locals 0

    return-object p0
.end method

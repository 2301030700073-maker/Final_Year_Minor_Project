.class public final Lcom/google/android/gms/drive/ExecutionOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    }
.end annotation


# static fields
.field public static final CONFLICT_STRATEGY_KEEP_REMOTE:I = 0x1

.field public static final CONFLICT_STRATEGY_OVERWRITE_REMOTE:I = 0x0

.field public static final MAX_TRACKING_TAG_STRING_LENGTH:I = 0x10000


# instance fields
.field private final zzadn:Ljava/lang/String;

.field private final zzado:Z

.field private final zzadp:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzadn:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzado:Z

    iput p3, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzadp:I

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/ExecutionOptions;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/drive/Drive;->zzNX:Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$ClientKey;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/drive/internal/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/ExecutionOptions;->zzpj()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/zzs;->zzpE()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Application must define an exported DriveEventService subclass in AndroidManifest.xml to be notified on completion"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public static zzbX(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static zzbY(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static zzct(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/high16 v0, 0x10000

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/drive/ExecutionOptions;

    iget-object v3, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzadn:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/drive/ExecutionOptions;->zzadn:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzadp:I

    iget v4, v2, Lcom/google/android/gms/drive/ExecutionOptions;->zzadp:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzado:Z

    iget-boolean v2, v2, Lcom/google/android/gms/drive/ExecutionOptions;->zzado:Z

    if-ne v3, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzadn:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzadp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzado:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzt;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public zzpi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzadn:Ljava/lang/String;

    return-object v0
.end method

.method public zzpj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzado:Z

    return v0
.end method

.method public zzpk()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzadp:I

    return v0
.end method

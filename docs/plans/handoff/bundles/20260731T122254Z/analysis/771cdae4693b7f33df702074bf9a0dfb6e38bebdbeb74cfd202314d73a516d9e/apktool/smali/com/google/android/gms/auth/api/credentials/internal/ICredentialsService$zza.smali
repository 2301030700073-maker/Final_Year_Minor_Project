.class public abstract Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsService$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsService$zza$zza;
    }
.end annotation


# direct methods
.method public static zzaq(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsService$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsService$zza$zza;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsCallbacks$zza;->zzap(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsCallbacks;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsService$zza;->performDisableAutoSignInOperation(Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsCallbacks;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    const-string v2, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsCallbacks$zza;->zzap(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsCallbacks;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v0, Lcom/google/android/gms/auth/api/credentials/internal/DeleteRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/internal/DeleteRequest;

    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsService$zza;->performCredentialsDeleteOperation(Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsCallbacks;Lcom/google/android/gms/auth/api/credentials/internal/DeleteRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    const-string v2, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsCallbacks$zza;->zzap(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsCallbacks;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;

    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsService$zza;->performCredentialsSaveOperation(Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsCallbacks;Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    const-string v2, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsCallbacks$zza;->zzap(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsCallbacks;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsService$zza;->performCredentialsRequestOperation(Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsCallbacks;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_3
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

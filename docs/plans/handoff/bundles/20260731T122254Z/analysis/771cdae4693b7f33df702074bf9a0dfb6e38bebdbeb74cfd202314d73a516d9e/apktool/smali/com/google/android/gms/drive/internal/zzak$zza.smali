.class public abstract Lcom/google/android/gms/drive/internal/zzak$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/drive/internal/zzak;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/internal/zzak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/internal/zzak$zza$zza;
    }
.end annotation


# direct methods
.method public static zzaO(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzak;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/drive/internal/zzak;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/drive/internal/zzak;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/drive/internal/zzak$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/internal/zzak$zza$zza;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x18

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_27

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_26

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzam$zza;->zzaQ(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzam;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/zzam;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/drive/internal/QueryRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/QueryRequest;

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzam$zza;->zzaQ(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzam;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v3}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/QueryRequest;Lcom/google/android/gms/drive/internal/zzam;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/drive/internal/RemovePermissionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/RemovePermissionRequest;

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/RemovePermissionRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_3
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/drive/internal/UpdatePermissionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/UpdatePermissionRequest;

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/UpdatePermissionRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_4
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/drive/internal/AddPermissionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/AddPermissionRequest;

    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/AddPermissionRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/drive/internal/GetPermissionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/GetPermissionsRequest;

    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/GetPermissionsRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_6
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/gms/drive/internal/UnsubscribeResourceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/UnsubscribeResourceRequest;

    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/UnsubscribeResourceRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_7
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/gms/drive/internal/GetChangesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/GetChangesRequest;

    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/GetChangesRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_8
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zzf(Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_9
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/drive/internal/FetchThumbnailRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/FetchThumbnailRequest;

    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/FetchThumbnailRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_a
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zze(Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_b
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/android/gms/drive/internal/UntrashResourceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/UntrashResourceRequest;

    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/UntrashResourceRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_c
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/drive/internal/CancelPendingActionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/CancelPendingActionsRequest;

    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/CancelPendingActionsRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_d
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/google/android/gms/drive/internal/SetFileUploadPreferencesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/SetFileUploadPreferencesRequest;

    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/SetFileUploadPreferencesRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_e
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zzd(Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_f
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/gms/drive/RealtimeDocumentSyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/RealtimeDocumentSyncRequest;

    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/RealtimeDocumentSyncRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_10
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/google/android/gms/drive/internal/SetDrivePreferencesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/SetDrivePreferencesRequest;

    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/SetDrivePreferencesRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_11
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zzc(Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_12
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zzb(Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_13
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;

    :cond_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/CheckResourceIdsExistRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_14
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;

    :cond_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/GetDriveIdFromUniqueIdentifierRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_15
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;

    :cond_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_16
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;

    :cond_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/LoadRealtimeRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_17
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/google/android/gms/drive/internal/QueryRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/QueryRequest;

    :cond_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zzb(Lcom/google/android/gms/drive/internal/QueryRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_18
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;

    :cond_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/CloseContentsAndUpdateMetadataRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_19
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/google/android/gms/drive/internal/TrashResourceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/TrashResourceRequest;

    :cond_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/TrashResourceRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1a
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/google/android/gms/drive/internal/DisconnectRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/DisconnectRequest;

    :cond_14
    invoke-virtual {p0, v1}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/DisconnectRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1b
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;

    :cond_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzam$zza;->zzaQ(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzam;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v4

    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/RemoveEventListenerRequest;Lcom/google/android/gms/drive/internal/zzam;Ljava/lang/String;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1c
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;

    :cond_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzam$zza;->zzaQ(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzam;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v4

    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/AddEventListenerRequest;Lcom/google/android/gms/drive/internal/zzam;Ljava/lang/String;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1d
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/google/android/gms/drive/internal/ListParentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/ListParentsRequest;

    :cond_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/ListParentsRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1e
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;

    :cond_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1f
    const-string v3, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    sget-object v1, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;

    :cond_19
    invoke-virtual {p0, v1}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;)Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1a

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    :cond_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_20
    const-string v3, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    sget-object v1, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;

    :cond_1b
    invoke-virtual {p0, v1}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;)Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1c

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    :cond_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_21
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_22
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/CloseContentsRequest;

    :cond_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/CloseContentsRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_23
    const-string v3, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v1, Lcom/google/android/gms/drive/internal/OpenContentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/drive/internal/OpenContentsRequest;

    :cond_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/OpenContentsRequest;Lcom/google/android/gms/drive/internal/zzal;)Lcom/google/android/gms/drive/internal/DriveServiceResponse;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1f

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Lcom/google/android/gms/drive/internal/DriveServiceResponse;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    :cond_1f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_24
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/google/android/gms/drive/internal/CreateFolderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/CreateFolderRequest;

    :cond_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/CreateFolderRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_25
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/CreateFileRequest;

    :cond_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/CreateFileRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_26
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/google/android/gms/drive/internal/CreateContentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/CreateContentsRequest;

    :cond_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/CreateContentsRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_27
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;

    :cond_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/UpdateMetadataRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_28
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/google/android/gms/drive/internal/QueryRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/QueryRequest;

    :cond_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/QueryRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_29
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/google/android/gms/drive/internal/GetMetadataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/GetMetadataRequest;

    :cond_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/GetMetadataRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_26
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_27
    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/google/android/gms/drive/internal/DeleteResourceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/drive/internal/DeleteResourceRequest;

    :cond_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/internal/zzal$zza;->zzaP(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/zzal;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/drive/internal/zzak$zza;->zza(Lcom/google/android/gms/drive/internal/DeleteResourceRequest;Lcom/google/android/gms/drive/internal/zzal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x29
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

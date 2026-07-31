.class public abstract Lcom/google/android/gms/wearable/internal/zzar$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/wearable/internal/zzar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/zzar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/internal/zzar$zza$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzdO(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/zzar;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/wearable/internal/zzar;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzar;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzar$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/zzar$zza$zza;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/google/android/gms/wearable/internal/GetCloudSyncSettingResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/GetCloudSyncSettingResponse;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/GetCloudSyncSettingResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/google/android/gms/wearable/internal/GetCloudSyncOptInOutDoneResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/GetCloudSyncOptInOutDoneResponse;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/GetCloudSyncOptInOutDoneResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/google/android/gms/wearable/internal/RemoveLocalCapabilityResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/RemoveLocalCapabilityResponse;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/RemoveLocalCapabilityResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/google/android/gms/wearable/internal/AddLocalCapabilityResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/AddLocalCapabilityResponse;

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/AddLocalCapabilityResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/google/android/gms/wearable/internal/GetAllCapabilitiesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/GetAllCapabilitiesResponse;

    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/GetAllCapabilitiesResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/google/android/gms/wearable/internal/GetCapabilityResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/GetCapabilityResponse;

    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/GetCapabilityResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_6
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lcom/google/android/gms/wearable/internal/ChannelSendFileResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/ChannelSendFileResponse;

    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/ChannelSendFileResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_7
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Lcom/google/android/gms/wearable/internal/ChannelReceiveFileResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/ChannelReceiveFileResponse;

    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/ChannelReceiveFileResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_8
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    sget-object v0, Lcom/google/android/gms/wearable/internal/GetChannelOutputStreamResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/GetChannelOutputStreamResponse;

    :cond_8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/GetChannelOutputStreamResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_9
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    sget-object v0, Lcom/google/android/gms/wearable/internal/GetChannelInputStreamResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/GetChannelInputStreamResponse;

    :cond_9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/GetChannelInputStreamResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_a
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    sget-object v0, Lcom/google/android/gms/wearable/internal/CloseChannelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/CloseChannelResponse;

    :cond_a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zzb(Lcom/google/android/gms/wearable/internal/CloseChannelResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_b
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    sget-object v0, Lcom/google/android/gms/wearable/internal/CloseChannelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/CloseChannelResponse;

    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/CloseChannelResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_c
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    sget-object v0, Lcom/google/android/gms/wearable/internal/OpenChannelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/OpenChannelResponse;

    :cond_c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/OpenChannelResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_d
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    sget-object v0, Lcom/google/android/gms/wearable/internal/GetConfigsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/GetConfigsResponse;

    :cond_d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/GetConfigsResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_e
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    sget-object v0, Lcom/google/android/gms/wearable/internal/StorageInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/StorageInfoResponse;

    :cond_e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/StorageInfoResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_f
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_10
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    sget-object v0, Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;

    :cond_10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/GetConnectedNodesResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_11
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_11

    sget-object v0, Lcom/google/android/gms/wearable/internal/GetLocalNodeResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/GetLocalNodeResponse;

    :cond_11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/GetLocalNodeResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_12
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    sget-object v0, Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;

    :cond_12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/GetFdForAssetResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_13
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    sget-object v0, Lcom/google/android/gms/wearable/internal/SendMessageResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/SendMessageResponse;

    :cond_13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/SendMessageResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_14
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    sget-object v0, Lcom/google/android/gms/wearable/internal/DeleteDataItemsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/DeleteDataItemsResponse;

    :cond_14
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/DeleteDataItemsResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_15
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/zze;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/zze;->zzS(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    :cond_15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zzad(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_16
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    sget-object v0, Lcom/google/android/gms/wearable/internal/GetDataItemResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/GetDataItemResponse;

    :cond_16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/GetDataItemResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_17
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    sget-object v0, Lcom/google/android/gms/wearable/internal/PutDataResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/PutDataResponse;

    :cond_17
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/PutDataResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_18
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    sget-object v0, Lcom/google/android/gms/wearable/internal/GetConfigResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/GetConfigResponse;

    :cond_18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzar$zza;->zza(Lcom/google/android/gms/wearable/internal/GetConfigResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_19
    const-string v0, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_18
        :pswitch_17
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
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public abstract Lcom/google/android/gms/internal/zzmk$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzmk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzmk$zza$zza;
    }
.end annotation


# direct methods
.method public static zzbv(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzmk;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/zzmk;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzmk;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzmk$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzmk$zza$zza;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/google/android/gms/fitness/request/DailyTotalRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DailyTotalRequest;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmk$zza;->zza(Lcom/google/android/gms/fitness/request/DailyTotalRequest;)V

    return v1

    :pswitch_1
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/google/android/gms/fitness/request/ReadRawRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/ReadRawRequest;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmk$zza;->zza(Lcom/google/android/gms/fitness/request/ReadRawRequest;)V

    return v1

    :pswitch_2
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/google/android/gms/fitness/request/ReadStatsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/ReadStatsRequest;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmk$zza;->zza(Lcom/google/android/gms/fitness/request/ReadStatsRequest;)V

    return v1

    :pswitch_3
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/google/android/gms/fitness/request/GetSyncInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/GetSyncInfoRequest;

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmk$zza;->zza(Lcom/google/android/gms/fitness/request/GetSyncInfoRequest;)V

    return v1

    :pswitch_4
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmk$zza;->zza(Lcom/google/android/gms/fitness/request/DataDeleteRequest;)V

    return v1

    :pswitch_5
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/google/android/gms/fitness/request/DataInsertRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataInsertRequest;

    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmk$zza;->zza(Lcom/google/android/gms/fitness/request/DataInsertRequest;)V

    return v1

    :pswitch_6
    const-string v2, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/DataReadRequest;

    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmk$zza;->zza(Lcom/google/android/gms/fitness/request/DataReadRequest;)V

    return v1

    :cond_7
    const-string v0, "com.google.android.gms.fitness.internal.IGoogleFitHistoryApi"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

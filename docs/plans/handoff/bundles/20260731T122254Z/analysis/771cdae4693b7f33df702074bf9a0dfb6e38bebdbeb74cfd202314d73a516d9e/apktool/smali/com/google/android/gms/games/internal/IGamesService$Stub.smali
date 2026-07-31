.class public abstract Lcom/google/android/gms/games/internal/IGamesService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/games/internal/IGamesService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/IGamesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzbM(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/games/internal/IGamesService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/IGamesService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    move-object v10, p2

    move-object/from16 v11, p3

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    packed-switch p1, :pswitch_data_7

    packed-switch p1, :pswitch_data_8

    packed-switch p1, :pswitch_data_9

    packed-switch p1, :pswitch_data_a

    packed-switch p1, :pswitch_data_b

    packed-switch p1, :pswitch_data_c

    packed-switch p1, :pswitch_data_d

    packed-switch p1, :pswitch_data_e

    packed-switch p1, :pswitch_data_f

    packed-switch p1, :pswitch_data_10

    packed-switch p1, :pswitch_data_11

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :sswitch_1
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zztb()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_0
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :sswitch_2
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    move-object v0, v9

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_0
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzta()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/google/android/gms/games/PlayerEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    :cond_3
    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/PlayerEntity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_4
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_2
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzJ(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_3
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesClient$Stub;->zzbL(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesClient;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesClient;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_4
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb([Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_5
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v7, 0x1

    :cond_5
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v7, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_6
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    goto :goto_2

    :cond_6
    move-object v4, v0

    :goto_2
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :cond_7
    move-object v5, v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v9

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza([Lcom/google/android/gms/games/multiplayer/ParticipantEntity;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_8

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_8
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_7
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v5, 0x1

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    :goto_3
    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;ILjava/lang/String;[Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_8
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzv(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_a

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_a
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_9
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v7, 0x1

    :cond_b
    invoke-virtual {v9, v0, v1, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzf(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_a
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/achievement/AchievementEntity;

    :cond_c
    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/achievement/AchievementEntity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_d

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_d
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_b
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v7, 0x1

    :cond_e
    invoke-virtual {v9, v0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzh(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_c
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v7, 0x1

    :cond_f
    invoke-virtual {v9, v0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzg(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_d
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_10
    invoke-virtual {v9, v1, v2, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_e
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v7, 0x1

    :cond_11
    invoke-virtual {v9, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzaa(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_f
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsQ()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_10
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsP()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_11
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzcO(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_12

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_12
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_12
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;

    invoke-virtual {v4, v10}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;->zzdT(Landroid/os/Parcel;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    move-result-object v4

    goto :goto_4

    :cond_13
    move-object v4, v0

    :goto_4
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    sget-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/Contents;

    :cond_14
    move-object v5, v0

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_13
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    const/4 v7, 0x1

    :cond_15
    invoke-virtual {v9, v0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zze(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_14
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    const/4 v7, 0x1

    :cond_16
    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v7, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_15
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb([I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_17

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_17
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_16
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    const/4 v7, 0x1

    :cond_18
    invoke-virtual {v9, v0, v1, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_17
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    const/4 v5, 0x1

    goto :goto_5

    :cond_19
    const/4 v5, 0x0

    :goto_5
    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_18
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzt(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_19
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v7, 0x1

    :cond_1a
    invoke-virtual {v9, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzZ(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1a
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsZ()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_1b
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1c
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1d
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v4, 0x1

    goto :goto_6

    :cond_1b
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v5, 0x1

    goto :goto_7

    :cond_1c
    const/4 v5, 0x0

    :goto_7
    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzf(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1e
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v4, 0x1

    goto :goto_8

    :cond_1d
    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v5, 0x1

    goto :goto_9

    :cond_1e
    const/4 v5, 0x0

    :goto_9
    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zze(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1f
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzr(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_20
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/Contents;

    :cond_1f
    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/drive/Contents;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_21
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    const/4 v5, 0x1

    goto :goto_a

    :cond_20
    const/4 v5, 0x0

    :goto_a
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    const/4 v6, 0x1

    goto :goto_b

    :cond_21
    const/4 v6, 0x0

    :goto_b
    move-object v0, v9

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_22
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzp(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_23
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    const/4 v7, 0x1

    :cond_22
    invoke-virtual {v9, v0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzf(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_24
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    const/4 v6, 0x1

    goto :goto_c

    :cond_23
    const/4 v6, 0x0

    :goto_c
    move-object v0, v9

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_25
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zze(JLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_26
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;JLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_27
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzI(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_28
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_29
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_24

    const/4 v7, 0x1

    :cond_24
    invoke-virtual {v9, v0, v1, v2, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;[IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_2a
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzf(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_2b
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzu(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_2c
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_25

    sget-object v3, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;->CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;

    invoke-virtual {v3, v10}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeCreator;->zzdT(Landroid/os/Parcel;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    move-result-object v3

    goto :goto_d

    :cond_25
    move-object v3, v0

    :goto_d
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    sget-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/Contents;

    :cond_26
    invoke-virtual {v9, v1, v2, v3, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_2d
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_27

    const/4 v7, 0x1

    :cond_27
    invoke-virtual {v9, v0, v1, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zze(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_2e
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzs(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_2f
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_28

    const/4 v7, 0x1

    :cond_28
    invoke-virtual {v9, v0, v1, v2, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_30
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_29

    const/4 v7, 0x1

    :cond_29
    invoke-virtual {v9, v0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_31
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_e

    :cond_2a
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_f

    :cond_2b
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Ljava/lang/String;ZZI)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2c

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_2c
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_32
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsY()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_33
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzj(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_34
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsO()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_35
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2d

    sget-object v0, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->CREATOR:Lcom/google/android/gms/games/internal/request/GameRequestClusterCreator;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/games/internal/request/GameRequestClusterCreator;->zzdH(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/request/GameRequestCluster;

    move-result-object v0

    :cond_2d
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/request/GameRequestCluster;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2e

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_2e
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_36
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2f

    sget-object v0, Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;->CREATOR:Lcom/google/android/gms/games/internal/multiplayer/InvitationClusterCreator;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/games/internal/multiplayer/InvitationClusterCreator;->zzdF(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;

    move-result-object v0

    :cond_2f
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/multiplayer/ZInvitationCluster;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_30

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_30
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_37
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_38
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_39
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;I[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_3a
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_31

    const/4 v7, 0x1

    :cond_31
    invoke-virtual {v9, v0, v1, v2, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_3b
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_3c
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsM()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_32

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_32
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_3d
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzu(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_3e
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsN()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_3f
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(I[BILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_33

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_33
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_40
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_41
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, v9

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_42
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_43
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_44
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_45
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_46
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, v9

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[Ljava/lang/String;I[BI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_47
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzd(JLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_48
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;JLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_49
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzH(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_4a
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_4b
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/games/multiplayer/ParticipantEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/games/multiplayer/ParticipantEntity;

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_34

    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    goto :goto_10

    :cond_34
    move-object v4, v0

    :goto_10
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_35

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :cond_35
    move-object v5, v0

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza([Lcom/google/android/gms/games/multiplayer/ParticipantEntity;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_36

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_36
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_4c
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzcX(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_37

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_37
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_4d
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    const/4 v4, 0x1

    goto :goto_11

    :cond_38
    const/4 v4, 0x0

    :goto_11
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    const/4 v5, 0x1

    goto :goto_12

    :cond_39
    const/4 v5, 0x0

    :goto_12
    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_4e
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsJ()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_4f
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsX()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3a

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_3a
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_50
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsI()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3b

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_3b
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_51
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3c

    sget-object v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    :cond_3c
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3d

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_3d
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_52
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsH()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3e

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_3e
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_53
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x1

    goto :goto_13

    :cond_3f
    const/4 v2, 0x0

    :goto_13
    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzc(IIZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_40

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_40
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_54
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_41

    const/4 v2, 0x1

    goto :goto_14

    :cond_41
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(IIZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_42

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_42
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_55
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsC()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_43

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_43
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_56
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsB()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_44

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_44
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_57
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsA()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_45

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_45
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_58
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzcW(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_46

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_46
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_59
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsz()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_47

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_47
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_5a
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzq(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_5b
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_48

    const/4 v4, 0x1

    goto :goto_15

    :cond_48
    const/4 v4, 0x0

    :goto_15
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_49

    const/4 v5, 0x1

    goto :goto_16

    :cond_49
    const/4 v5, 0x0

    :goto_16
    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_5c
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4a

    const/4 v7, 0x1

    :cond_4a
    invoke-virtual {v9, v0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_5d
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzd(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_5e
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzz(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_5f
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsL()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_60
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4b

    const/4 v7, 0x1

    :cond_4b
    invoke-virtual {v9, v0, v1, v2, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_61
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsW()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_62
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzc(JLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_63
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;JLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_64
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(JLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_65
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;JLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_66
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_67
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zze(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_68
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_69
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzp(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_6a
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzG(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_6b
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_6c
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_6d
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzo(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_6e
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzn(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_6f
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_70
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_71
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzm(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_72
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzl(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_73
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4c

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_4c
    move-object v5, v0

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;II[Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_74
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_75
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzcV(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_76
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_77
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4d

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_4d
    move-object v5, v0

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_78
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_79
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzk(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_7a
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4e

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :cond_4e
    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzj(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4f

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_4f
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_7b
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_50

    const/4 v7, 0x1

    :cond_50
    invoke-virtual {v9, v0, v1, v2, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_7c
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_51

    const/4 v7, 0x1

    :cond_51
    invoke-virtual {v9, v0, v1, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_7d
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_52

    const/4 v7, 0x1

    :cond_52
    invoke-virtual {v9, v0, v1, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_7e
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_53

    const/4 v7, 0x1

    :cond_53
    invoke-virtual {v9, v0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_7f
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_54

    const/4 v7, 0x1

    :cond_54
    invoke-virtual {v9, v0, v1, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_80
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_55

    const/4 v4, 0x1

    goto :goto_17

    :cond_55
    const/4 v4, 0x0

    :goto_17
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_56

    const/4 v5, 0x1

    goto :goto_18

    :cond_56
    const/4 v5, 0x0

    :goto_18
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_57

    const/4 v6, 0x1

    goto :goto_19

    :cond_57
    const/4 v6, 0x0

    :goto_19
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_58

    const/4 v7, 0x1

    :cond_58
    move-object v0, v9

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_81
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_59

    const/4 v2, 0x1

    goto :goto_1a

    :cond_59
    const/4 v2, 0x0

    :goto_1a
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5a

    const/4 v7, 0x1

    :cond_5a
    invoke-virtual {v9, v0, v1, v2, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zze(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_82
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5b

    const/4 v2, 0x1

    goto :goto_1b

    :cond_5b
    const/4 v2, 0x0

    :goto_1b
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5c

    const/4 v7, 0x1

    :cond_5c
    invoke-virtual {v9, v0, v1, v2, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_83
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5d

    const/4 v7, 0x1

    :cond_5d
    invoke-virtual {v9, v0, v1, v2, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_84
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5e

    const/4 v7, 0x1

    :cond_5e
    invoke-virtual {v9, v0, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_85
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsV()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5f

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Lcom/google/android/gms/common/data/DataHolder;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_5f
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_86
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_60

    const/4 v4, 0x1

    goto :goto_1c

    :cond_60
    const/4 v4, 0x0

    :goto_1c
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_61

    const/4 v5, 0x1

    goto :goto_1d

    :cond_61
    const/4 v5, 0x0

    :goto_1d
    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_87
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_62

    const/4 v7, 0x1

    :cond_62
    invoke-virtual {v9, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzY(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_88
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsU()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_89
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzcU(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_63

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_63
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_8a
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzy(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_8b
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzcQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_8c
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_64

    const/4 v7, 0x1

    :cond_64
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_65

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_65
    invoke-virtual {v9, v1, v7, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;ZLandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_8d
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzi(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_8e
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzi(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_8f
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzcT(Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_90
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzF(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_91
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_92
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzj(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_93
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzh(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_94
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzt(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_95
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_66

    const/4 v7, 0x1

    :cond_66
    invoke-virtual {v9, v0, v1, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_96
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzh(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_67

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_67
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_97
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzg(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_98
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzc(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_99
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzcS(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_9a
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzg(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_9b
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_68

    const/4 v2, 0x1

    goto :goto_1e

    :cond_68
    const/4 v2, 0x0

    :goto_1e
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_69

    const/4 v7, 0x1

    :cond_69
    invoke-virtual {v9, v0, v1, v2, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_9c
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzf(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_9d
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6a

    const/4 v2, 0x1

    goto :goto_1f

    :cond_6a
    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6b

    const/4 v7, 0x1

    :cond_6b
    invoke-virtual {v9, v0, v1, v2, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_9e
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v4, 0x1

    goto :goto_20

    :cond_6c
    const/4 v4, 0x0

    :goto_20
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6d

    const/4 v5, 0x1

    goto :goto_21

    :cond_6d
    const/4 v5, 0x0

    :goto_21
    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_9f
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6e

    const/4 v4, 0x1

    goto :goto_22

    :cond_6e
    const/4 v4, 0x0

    :goto_22
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v5, 0x1

    goto :goto_23

    :cond_6f
    const/4 v5, 0x0

    :goto_23
    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;IIZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_a0
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzf(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_a1
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zze(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_a2
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_a3
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_70

    const/4 v7, 0x1

    :cond_70
    move-object v0, v9

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_a4
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_71

    const/4 v7, 0x1

    :cond_71
    move-object v0, v9

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_a5
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_a6
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_a7
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzfD(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_a8
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzcR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_a9
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb([BLjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_aa
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;[BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_ab
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_ac
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_72

    const/4 v4, 0x1

    goto :goto_24

    :cond_72
    const/4 v4, 0x0

    :goto_24
    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v0, v9

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/IBinder;Ljava/lang/String;ZJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_ad
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_73

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_73
    move-object v5, v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_74

    const/4 v6, 0x1

    goto :goto_25

    :cond_74
    const/4 v6, 0x0

    :goto_25
    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/IBinder;I[Ljava/lang/String;Landroid/os/Bundle;ZJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_ae
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzq(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_af
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzr(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_b0
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zze(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_b1
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_b2
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_75

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_75
    move-object v5, v0

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_b3
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_76

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_76
    invoke-virtual {v9, v1, v2, v3, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_b4
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_77

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_77
    invoke-virtual {v9, v1, v2, v3, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_b5
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_b6
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_78

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_78
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9, v1, v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/Bundle;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_b7
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_79

    const/4 v6, 0x1

    goto :goto_26

    :cond_79
    const/4 v6, 0x0

    :goto_26
    move-object v0, v9

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IIIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_b8
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v6, 0x1

    goto :goto_27

    :cond_7a
    const/4 v6, 0x0

    :goto_27
    move-object v0, v9

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IIIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_b9
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_ba
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_bb
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_bc
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7b

    const/4 v2, 0x1

    goto :goto_28

    :cond_7b
    const/4 v2, 0x0

    :goto_28
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7c

    const/4 v7, 0x1

    :cond_7c
    invoke-virtual {v9, v0, v1, v2, v7}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_bd
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_be
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsT()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_7d

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Lcom/google/android/gms/common/data/DataHolder;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_7d
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_bf
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_c0
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_c1
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsR()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_c2
    const-string v1, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7e

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_7e
    invoke-virtual {v9, v1, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_c3
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzlM()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_7f

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    return v12

    :cond_7f
    invoke-virtual {v11, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_c4
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzsK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_c5
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->zzbK(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_c6
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzE(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1394
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x157d
        :pswitch_86
        :pswitch_85
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1771
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1965
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1b59
        :pswitch_79
        :pswitch_78
        :pswitch_77
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1f41
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2329
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x233b
        :pswitch_4e
        :pswitch_4d
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x2346
        :pswitch_4c
        :pswitch_4b
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x2711
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x2af9
        :pswitch_33
        :pswitch_32
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x2ee1
        :pswitch_31
        :pswitch_30
        :pswitch_2f
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x2ee5
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
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
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x32c9
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x36b1
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x3a99
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x3c8d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2344 -> :sswitch_2
        0x3e81 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

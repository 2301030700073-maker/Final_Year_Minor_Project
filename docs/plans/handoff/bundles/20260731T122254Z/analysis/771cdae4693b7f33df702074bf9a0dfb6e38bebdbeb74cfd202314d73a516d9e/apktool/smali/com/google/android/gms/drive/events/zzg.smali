.class public Lcom/google/android/gms/drive/events/zzg;
.super Ljava/lang/Object;


# direct methods
.method public static zza(ILcom/google/android/gms/drive/DriveId;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :pswitch_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

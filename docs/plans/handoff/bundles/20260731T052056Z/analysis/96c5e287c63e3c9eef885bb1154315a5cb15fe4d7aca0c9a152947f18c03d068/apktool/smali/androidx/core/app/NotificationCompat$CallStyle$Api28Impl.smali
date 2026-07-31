.class public abstract Landroidx/core/app/NotificationCompat$CallStyle$Api28Impl;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static addPerson(Landroid/app/Notification$Builder;Landroid/app/Person;)Landroid/app/Notification$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static castToParcelable(Landroid/app/Person;)Landroid/os/Parcelable;
    .locals 0

    .line 1
    check-cast p0, Landroid/os/Parcelable;

    .line 2
    .line 3
    return-object p0
.end method

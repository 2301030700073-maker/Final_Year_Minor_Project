.class public final Lcom/fsck/k9/notification/NotificationLightDecoder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static decode(IIZ)Lnet/thunderbird/feature/notification/NotificationLight;
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p0, Lnet/thunderbird/feature/notification/NotificationLight;->Disabled:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const p2, 0xffffff

    .line 7
    .line 8
    .line 9
    and-int/2addr p0, p2

    .line 10
    and-int/2addr p1, p2

    .line 11
    if-ne p0, p1, :cond_1

    .line 12
    .line 13
    sget-object p0, Lnet/thunderbird/feature/notification/NotificationLight;->AccountColor:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    if-ne p0, p2, :cond_2

    .line 17
    .line 18
    sget-object p0, Lnet/thunderbird/feature/notification/NotificationLight;->White:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_2
    const/high16 p1, 0xff0000

    .line 22
    .line 23
    if-ne p0, p1, :cond_3

    .line 24
    .line 25
    sget-object p0, Lnet/thunderbird/feature/notification/NotificationLight;->Red:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_3
    const p1, 0xff00

    .line 29
    .line 30
    .line 31
    if-ne p0, p1, :cond_4

    .line 32
    .line 33
    sget-object p0, Lnet/thunderbird/feature/notification/NotificationLight;->Green:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_4
    const/16 p1, 0xff

    .line 37
    .line 38
    if-ne p0, p1, :cond_5

    .line 39
    .line 40
    sget-object p0, Lnet/thunderbird/feature/notification/NotificationLight;->Blue:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_5
    const p1, 0xffff00

    .line 44
    .line 45
    .line 46
    if-ne p0, p1, :cond_6

    .line 47
    .line 48
    sget-object p0, Lnet/thunderbird/feature/notification/NotificationLight;->Yellow:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_6
    const p1, 0xffff

    .line 52
    .line 53
    .line 54
    if-ne p0, p1, :cond_7

    .line 55
    .line 56
    sget-object p0, Lnet/thunderbird/feature/notification/NotificationLight;->Cyan:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_7
    const p1, 0xff00ff

    .line 60
    .line 61
    .line 62
    if-ne p0, p1, :cond_8

    .line 63
    .line 64
    sget-object p0, Lnet/thunderbird/feature/notification/NotificationLight;->Magenta:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_8
    sget-object p0, Lnet/thunderbird/feature/notification/NotificationLight;->SystemDefaultColor:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 68
    .line 69
    return-object p0
.end method

.class public final Lcom/fsck/k9/ui/messagelist/MessageListAppearance$Creator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    move p0, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p0, v3

    .line 21
    move v3, v1

    .line 22
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    move v4, p0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v4, v1

    .line 31
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    move v5, p0

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move v5, v1

    .line 40
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_3

    .line 45
    .line 46
    move v6, p0

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    move v6, v1

    .line 49
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-eqz v7, :cond_4

    .line 54
    .line 55
    move v7, p0

    .line 56
    goto :goto_4

    .line 57
    :cond_4
    move v7, v1

    .line 58
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_5

    .line 63
    .line 64
    move v8, p0

    .line 65
    goto :goto_5

    .line 66
    :cond_5
    move v8, v1

    .line 67
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;->valueOf(Ljava/lang/String;)Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    new-instance v1, Lcom/fsck/k9/FontSizes;

    .line 84
    .line 85
    invoke-direct {v1}, Lcom/fsck/k9/FontSizes;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-direct/range {v0 .. v10}, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;-><init>(Lcom/fsck/k9/FontSizes;IZZZZZZLnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;)V

    .line 89
    .line 90
    .line 91
    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Lcom/fsck/k9/ui/messagelist/MessageListAppearance;

    .line 2
    .line 3
    return-object p0
.end method

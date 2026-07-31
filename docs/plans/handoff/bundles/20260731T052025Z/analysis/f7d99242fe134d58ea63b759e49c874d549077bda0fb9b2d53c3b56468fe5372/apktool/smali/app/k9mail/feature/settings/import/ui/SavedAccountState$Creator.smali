.class public final Lapp/k9mail/feature/settings/import/ui/SavedAccountState$Creator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x1

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    move p0, v4

    .line 27
    move v4, v5

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p0, v4

    .line 30
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    invoke-static {v6}, Lapp/k9mail/feature/settings/import/ui/ImportStatus;->valueOf(Ljava/lang/String;)Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    move v7, v5

    .line 39
    move-object v5, v6

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    move v8, v7

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-eqz v9, :cond_1

    .line 54
    .line 55
    move v9, v8

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move v9, v8

    .line 58
    move v8, p0

    .line 59
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    move v9, p0

    .line 67
    :goto_2
    invoke-direct/range {v0 .. v9}, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;-><init>(ILjava/lang/String;Ljava/lang/String;ZLapp/k9mail/feature/settings/import/ui/ImportStatus;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 68
    .line 69
    .line 70
    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Lapp/k9mail/feature/settings/import/ui/SavedAccountState;

    .line 2
    .line 3
    return-object p0
.end method

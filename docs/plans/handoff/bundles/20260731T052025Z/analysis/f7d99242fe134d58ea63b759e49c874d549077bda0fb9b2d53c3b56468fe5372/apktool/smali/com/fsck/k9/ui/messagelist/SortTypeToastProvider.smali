.class public final Lcom/fsck/k9/ui/messagelist/SortTypeToastProvider;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static getToast(Lnet/thunderbird/core/android/account/SortType;Z)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 15
    .line 16
    .line 17
    return v0

    .line 18
    :pswitch_0
    const p0, 0x7f1205f1

    .line 19
    .line 20
    .line 21
    return p0

    .line 22
    :pswitch_1
    const p0, 0x7f12060a

    .line 23
    .line 24
    .line 25
    return p0

    .line 26
    :pswitch_2
    const p0, 0x7f120612

    .line 27
    .line 28
    .line 29
    return p0

    .line 30
    :pswitch_3
    const p0, 0x7f12060d

    .line 31
    .line 32
    .line 33
    return p0

    .line 34
    :pswitch_4
    const p0, 0x7f12060f

    .line 35
    .line 36
    .line 37
    return p0

    .line 38
    :pswitch_5
    const p0, 0x7f120609

    .line 39
    .line 40
    .line 41
    return p0

    .line 42
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    packed-switch p0, :pswitch_data_1

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 50
    .line 51
    .line 52
    return v0

    .line 53
    :pswitch_6
    const p0, 0x7f120611

    .line 54
    .line 55
    .line 56
    return p0

    .line 57
    :pswitch_7
    const p0, 0x7f12060b

    .line 58
    .line 59
    .line 60
    return p0

    .line 61
    :pswitch_8
    const p0, 0x7f120613

    .line 62
    .line 63
    .line 64
    return p0

    .line 65
    :pswitch_9
    const p0, 0x7f12060e

    .line 66
    .line 67
    .line 68
    return p0

    .line 69
    :pswitch_a
    const p0, 0x7f120610

    .line 70
    .line 71
    .line 72
    return p0

    .line 73
    :pswitch_b
    const p0, 0x7f12060c

    .line 74
    .line 75
    .line 76
    return p0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.class public final Lapp/k9mail/legacy/ui/folder/FolderIconProvider;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static getFolderIcon(Lnet/thunderbird/feature/mail/folder/api/FolderType;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :pswitch_0
    const p0, 0x7f08010e

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :pswitch_1
    const p0, 0x7f0800be

    .line 21
    .line 22
    .line 23
    return p0

    .line 24
    :pswitch_2
    const p0, 0x7f0800db

    .line 25
    .line 26
    .line 27
    return p0

    .line 28
    :pswitch_3
    const p0, 0x7f0800d7

    .line 29
    .line 30
    .line 31
    return p0

    .line 32
    :pswitch_4
    const p0, 0x7f080115

    .line 33
    .line 34
    .line 35
    return p0

    .line 36
    :pswitch_5
    const p0, 0x7f080108

    .line 37
    .line 38
    .line 39
    return p0

    .line 40
    :pswitch_6
    const p0, 0x7f0800ed

    .line 41
    .line 42
    .line 43
    return p0

    .line 44
    :pswitch_7
    const p0, 0x7f0800e6

    .line 45
    .line 46
    .line 47
    return p0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

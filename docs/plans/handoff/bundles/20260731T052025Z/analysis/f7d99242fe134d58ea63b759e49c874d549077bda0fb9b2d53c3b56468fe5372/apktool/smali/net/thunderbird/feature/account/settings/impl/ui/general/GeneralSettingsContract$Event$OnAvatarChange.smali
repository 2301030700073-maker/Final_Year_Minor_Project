.class public final Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarChange;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event;


# instance fields
.field public final avatar:Lnet/thunderbird/feature/account/avatar/Avatar;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/account/avatar/Avatar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarChange;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarChange;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarChange;

    .line 10
    .line 11
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarChange;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 12
    .line 13
    iget-object p1, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarChange;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_2

    .line 20
    .line 21
    :goto_0
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarChange;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "OnAvatarChange(avatar="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarChange;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

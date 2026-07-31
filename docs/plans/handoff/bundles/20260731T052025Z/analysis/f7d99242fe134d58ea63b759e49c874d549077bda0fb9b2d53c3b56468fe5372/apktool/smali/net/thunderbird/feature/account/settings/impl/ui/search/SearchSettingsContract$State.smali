.class public final Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final serverSearchLimit:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

.field public final subtitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;->serverSearchLimit:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 7
    .line 8
    return-void
.end method

.method public static copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;I)Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;
    .locals 1

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;->serverSearchLimit:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;

    .line 17
    .line 18
    invoke-direct {p0, p1, p2}, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;-><init>(Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;

    .line 10
    .line 11
    iget-object v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;->serverSearchLimit:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 23
    .line 24
    iget-object p1, p1, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;->serverSearchLimit:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_3

    .line 31
    .line 32
    :goto_0
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;->serverSearchLimit:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 14
    .line 15
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    add-int/2addr p0, v0

    .line 20
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "State(subtitle="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", serverSearchLimit="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsContract$State;->serverSearchLimit:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")"

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

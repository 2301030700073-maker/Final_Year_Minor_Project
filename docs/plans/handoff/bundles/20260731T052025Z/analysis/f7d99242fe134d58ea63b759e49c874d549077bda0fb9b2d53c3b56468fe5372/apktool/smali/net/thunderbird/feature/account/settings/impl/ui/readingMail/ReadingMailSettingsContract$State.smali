.class public final Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final isMarkMessageAsReadOnView:Z

.field public final showPictures:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

.field public final subtitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->showPictures:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 7
    .line 8
    iput-boolean p3, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->isMarkMessageAsReadOnView:Z

    .line 9
    .line 10
    return-void
.end method

.method public static copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;ZI)Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;
    .locals 1

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 v0, p4, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->showPictures:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-boolean p3, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->isMarkMessageAsReadOnView:Z

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;

    .line 26
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;-><init>(Ljava/lang/String;Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;Z)V

    .line 28
    .line 29
    .line 30
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
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;

    .line 10
    .line 11
    iget-object v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->subtitle:Ljava/lang/String;

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
    iget-object v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->showPictures:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 23
    .line 24
    iget-object v1, p1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->showPictures:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-boolean p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->isMarkMessageAsReadOnView:Z

    .line 34
    .line 35
    iget-boolean p1, p1, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->isMarkMessageAsReadOnView:Z

    .line 36
    .line 37
    if-eq p0, p1, :cond_4

    .line 38
    .line 39
    :goto_0
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 42
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->subtitle:Ljava/lang/String;

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
    iget-object v1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->showPictures:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 14
    .line 15
    invoke-virtual {v1}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v1, v0

    .line 20
    mul-int/lit8 v1, v1, 0x1f

    .line 21
    .line 22
    iget-boolean p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->isMarkMessageAsReadOnView:Z

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    const/16 p0, 0x4cf

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 p0, 0x4d5

    .line 30
    .line 31
    :goto_1
    add-int/2addr v1, p0

    .line 32
    return v1
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
    iget-object v1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", showPictures="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->showPictures:Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isMarkMessageAsReadOnView="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ")"

    .line 29
    .line 30
    iget-boolean p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsContract$State;->isMarkMessageAsReadOnView:Z

    .line 31
    .line 32
    invoke-static {v1, v0, p0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

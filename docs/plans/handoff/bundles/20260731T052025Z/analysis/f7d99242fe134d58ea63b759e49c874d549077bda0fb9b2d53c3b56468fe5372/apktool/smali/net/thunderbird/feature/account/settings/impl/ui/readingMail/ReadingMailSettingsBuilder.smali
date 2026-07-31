.class public final Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

.field public final selectOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/common/resources/StringsResourceManager;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder;->resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 5
    .line 6
    new-instance p1, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 7
    .line 8
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    invoke-direct {v0, p0, v1}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder;I)V

    .line 12
    .line 13
    .line 14
    const-string v2, "NEVER"

    .line 15
    .line 16
    invoke-direct {p1, v2, v0}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 20
    .line 21
    new-instance v2, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v3, 0x4

    .line 24
    invoke-direct {v2, p0, v3}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder;I)V

    .line 25
    .line 26
    .line 27
    const-string v3, "ALWAYS"

    .line 28
    .line 29
    invoke-direct {v0, v3, v2}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 33
    .line 34
    new-instance v3, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    const/4 v4, 0x5

    .line 37
    invoke-direct {v3, p0, v4}, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder;I)V

    .line 38
    .line 39
    .line 40
    const-string v4, "ONLY_FROM_CONTACTS"

    .line 41
    .line 42
    invoke-direct {v2, v4, v3}, Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 43
    .line 44
    .line 45
    new-array v1, v1, [Lnet/thunderbird/core/ui/setting/SettingValue$Select$SelectOption;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    aput-object p1, v1, v3

    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    aput-object v0, v1, p1

    .line 52
    .line 53
    const/4 p1, 0x2

    .line 54
    aput-object v2, v1, p1

    .line 55
    .line 56
    invoke-static {v1}, Lokio/Okio;->persistentListOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsBuilder;->selectOptions:Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;

    .line 61
    .line 62
    return-void
.end method

.class public final Lorg/schabi/newpipe/settings/SettingsResourceRegistry;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/settings/SettingsResourceRegistry;


# instance fields
.field public final registeredEntries:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->INSTANCE:Lorg/schabi/newpipe/settings/SettingsResourceRegistry;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->registeredEntries:Ljava/util/HashSet;

    .line 10
    .line 11
    const-class v0, Lorg/schabi/newpipe/settings/MainSettingsFragment;

    .line 12
    .line 13
    const v1, 0x7f16000a

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1, v0}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(ILjava/lang/Class;)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, v0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->searchable:Z

    .line 22
    .line 23
    const-class v0, Lorg/schabi/newpipe/settings/AppearanceSettingsFragment;

    .line 24
    .line 25
    const v2, 0x7f160001

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v2, v0}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(ILjava/lang/Class;)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 29
    .line 30
    .line 31
    const-class v0, Lorg/schabi/newpipe/settings/ContentSettingsFragment;

    .line 32
    .line 33
    const v2, 0x7f160004

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v2, v0}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(ILjava/lang/Class;)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 37
    .line 38
    .line 39
    const-class v0, Lorg/schabi/newpipe/settings/DebugSettingsFragment;

    .line 40
    .line 41
    const v2, 0x7f160005

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v2, v0}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(ILjava/lang/Class;)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-boolean v1, v0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->searchable:Z

    .line 49
    .line 50
    const-class v0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;

    .line 51
    .line 52
    const v1, 0x7f160006

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1, v0}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(ILjava/lang/Class;)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 56
    .line 57
    .line 58
    const-class v0, Lorg/schabi/newpipe/settings/HistorySettingsFragment;

    .line 59
    .line 60
    const v1, 0x7f160008

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1, v0}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(ILjava/lang/Class;)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 64
    .line 65
    .line 66
    const-class v0, Lorg/schabi/newpipe/settings/NotificationSettingsFragment;

    .line 67
    .line 68
    const v1, 0x7f16000c

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v1, v0}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(ILjava/lang/Class;)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 72
    .line 73
    .line 74
    const-class v0, Lorg/schabi/newpipe/settings/PlayerNotificationSettingsFragment;

    .line 75
    .line 76
    const v1, 0x7f16000d

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1, v0}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(ILjava/lang/Class;)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 80
    .line 81
    .line 82
    const-class v0, Lorg/schabi/newpipe/settings/UpdateSettingsFragment;

    .line 83
    .line 84
    const v1, 0x7f16000e

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v1, v0}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(ILjava/lang/Class;)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 88
    .line 89
    .line 90
    const-class v0, Lorg/schabi/newpipe/settings/VideoAudioSettingsFragment;

    .line 91
    .line 92
    const v1, 0x7f16000f

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v1, v0}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(ILjava/lang/Class;)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 96
    .line 97
    .line 98
    const-class v0, Lorg/schabi/newpipe/settings/ExoPlayerSettingsFragment;

    .line 99
    .line 100
    const v1, 0x7f160007

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v1, v0}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(ILjava/lang/Class;)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 104
    .line 105
    .line 106
    const-class v0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;

    .line 107
    .line 108
    const v1, 0x7f160003

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v1, v0}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->add(ILjava/lang/Class;)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 112
    .line 113
    .line 114
    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Class;)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;-><init>(ILjava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->registeredEntries:Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final getEntryByPreferencesResId(I)Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->registeredEntries:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-direct {v0, p1, v1}, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda0;-><init>(II)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 27
    .line 28
    return-object p0
.end method

.method public final getPreferencesResId(Ljava/lang/Class;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry;->registeredEntries:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 26
    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    const/4 p0, -0x1

    .line 30
    return p0

    .line 31
    :cond_0
    iget p0, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->preferencesResId:I

    .line 32
    .line 33
    return p0
.end method

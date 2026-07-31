.class public final Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final fragmentClass:Ljava/lang/Class;

.field public final preferencesResId:I

.field public searchable:Z


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->searchable:Z

    .line 6
    .line 7
    iput-object p2, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->fragmentClass:Ljava/lang/Class;

    .line 8
    .line 9
    iput p1, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->preferencesResId:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const-class v2, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;

    .line 18
    .line 19
    iget v2, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->preferencesResId:I

    .line 20
    .line 21
    iget v3, p1, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->preferencesResId:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->fragmentClass:Ljava/lang/Class;

    .line 26
    .line 27
    iget-object p1, p1, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->fragmentClass:Ljava/lang/Class;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    return v0

    .line 36
    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->preferencesResId:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SettingsResourceRegistry$SettingRegistryEntry;->fragmentClass:Ljava/lang/Class;

    .line 12
    .line 13
    aput-object p0, v1, v2

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    aput-object v0, v1, p0

    .line 17
    .line 18
    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

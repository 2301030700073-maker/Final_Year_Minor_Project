.class public final Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

.field public final avatarMonogram:Lnet/thunderbird/core/validation/input/StringInputField;

.field public final avatarType:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$AvatarType;

.field public final color:Lnet/thunderbird/core/validation/input/IntegerInputField;

.field public final name:Lnet/thunderbird/core/validation/input/StringInputField;

.field public final subtitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/IntegerInputField;Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$AvatarType;Lnet/thunderbird/feature/account/avatar/Avatar;Lnet/thunderbird/core/validation/input/StringInputField;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->name:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 10
    .line 11
    iput-object p3, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->color:Lnet/thunderbird/core/validation/input/IntegerInputField;

    .line 12
    .line 13
    iput-object p4, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->avatarType:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$AvatarType;

    .line 14
    .line 15
    iput-object p5, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 16
    .line 17
    iput-object p6, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->avatarMonogram:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 18
    .line 19
    return-void
.end method

.method public static copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/IntegerInputField;Lnet/thunderbird/feature/account/avatar/Avatar;I)Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;
    .locals 7

    .line 1
    and-int/lit8 v0, p5, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    move-object v1, p1

    .line 8
    and-int/lit8 p1, p5, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->name:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 13
    .line 14
    :cond_1
    move-object v2, p2

    .line 15
    and-int/lit8 p1, p5, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p3, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->color:Lnet/thunderbird/core/validation/input/IntegerInputField;

    .line 20
    .line 21
    :cond_2
    move-object v3, p3

    .line 22
    iget-object v4, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->avatarType:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$AvatarType;

    .line 23
    .line 24
    and-int/lit8 p1, p5, 0x10

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    iget-object p4, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 29
    .line 30
    :cond_3
    move-object v5, p4

    .line 31
    iget-object v6, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->avatarMonogram:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;

    .line 40
    .line 41
    invoke-direct/range {v0 .. v6}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;-><init>(Ljava/lang/String;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/IntegerInputField;Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$AvatarType;Lnet/thunderbird/feature/account/avatar/Avatar;Lnet/thunderbird/core/validation/input/StringInputField;)V

    .line 42
    .line 43
    .line 44
    return-object v0
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
    instance-of v0, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;

    .line 10
    .line 11
    iget-object v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->subtitle:Ljava/lang/String;

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
    iget-object v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->name:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 23
    .line 24
    iget-object v1, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->name:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/validation/input/StringInputField;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->color:Lnet/thunderbird/core/validation/input/IntegerInputField;

    .line 34
    .line 35
    iget-object v1, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->color:Lnet/thunderbird/core/validation/input/IntegerInputField;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/validation/input/IntegerInputField;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget-object v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->avatarType:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$AvatarType;

    .line 45
    .line 46
    iget-object v1, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->avatarType:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$AvatarType;

    .line 47
    .line 48
    if-eq v0, v1, :cond_5

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    iget-object v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 52
    .line 53
    iget-object v1, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 54
    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_6
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->avatarMonogram:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 63
    .line 64
    iget-object p1, p1, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->avatarMonogram:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/validation/input/StringInputField;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-nez p0, :cond_7

    .line 71
    .line 72
    :goto_0
    const/4 p0, 0x0

    .line 73
    return p0

    .line 74
    :cond_7
    :goto_1
    const/4 p0, 0x1

    .line 75
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    move v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->name:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 15
    .line 16
    invoke-virtual {v2}, Lnet/thunderbird/core/validation/input/StringInputField;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr v2, v1

    .line 21
    mul-int/lit8 v2, v2, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->color:Lnet/thunderbird/core/validation/input/IntegerInputField;

    .line 24
    .line 25
    invoke-virtual {v1}, Lnet/thunderbird/core/validation/input/IntegerInputField;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v1, v2

    .line 30
    mul-int/lit8 v1, v1, 0x1f

    .line 31
    .line 32
    iget-object v2, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->avatarType:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$AvatarType;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/2addr v2, v1

    .line 39
    mul-int/lit8 v2, v2, 0x1f

    .line 40
    .line 41
    iget-object v1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    :goto_1
    add-int/2addr v2, v0

    .line 51
    mul-int/lit8 v2, v2, 0x1f

    .line 52
    .line 53
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->avatarMonogram:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 54
    .line 55
    invoke-virtual {p0}, Lnet/thunderbird/core/validation/input/StringInputField;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    add-int/2addr p0, v2

    .line 60
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
    iget-object v1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->subtitle:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", name="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->name:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", color="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->color:Lnet/thunderbird/core/validation/input/IntegerInputField;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", avatarType="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->avatarType:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$AvatarType;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", avatar="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", avatarMonogram="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->avatarMonogram:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p0, ")"

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method

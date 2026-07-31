.class public final Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final appLanguage:Ljava/lang/String;

.field public final appTheme:Lnet/thunderbird/core/preference/AppTheme;

.field public final fixedMessageViewTheme:Z

.field public final messageComposeTheme:Lnet/thunderbird/core/preference/SubTheme;

.field public final messageViewTheme:Lnet/thunderbird/core/preference/SubTheme;

.field public final splitViewMode:Lnet/thunderbird/core/preference/SplitViewMode;


# direct methods
.method public constructor <init>(ZLnet/thunderbird/core/preference/AppTheme;Lnet/thunderbird/core/preference/SubTheme;Lnet/thunderbird/core/preference/SubTheme;Ljava/lang/String;Lnet/thunderbird/core/preference/SplitViewMode;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-boolean p1, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->fixedMessageViewTheme:Z

    .line 17
    .line 18
    iput-object p2, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->appTheme:Lnet/thunderbird/core/preference/AppTheme;

    .line 19
    .line 20
    iput-object p3, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageViewTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 21
    .line 22
    iput-object p4, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageComposeTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 23
    .line 24
    iput-object p5, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->appLanguage:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p6, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->splitViewMode:Lnet/thunderbird/core/preference/SplitViewMode;

    .line 27
    .line 28
    return-void
.end method

.method public static copy$default(Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;ZLnet/thunderbird/core/preference/AppTheme;Lnet/thunderbird/core/preference/SubTheme;Lnet/thunderbird/core/preference/SubTheme;Ljava/lang/String;Lnet/thunderbird/core/preference/SplitViewMode;I)Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;
    .locals 7

    .line 1
    and-int/lit8 v0, p7, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->fixedMessageViewTheme:Z

    .line 6
    .line 7
    :cond_0
    move v1, p1

    .line 8
    and-int/lit8 p1, p7, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->appTheme:Lnet/thunderbird/core/preference/AppTheme;

    .line 13
    .line 14
    :cond_1
    move-object v2, p2

    .line 15
    and-int/lit8 p1, p7, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p3, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageViewTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 20
    .line 21
    :cond_2
    move-object v3, p3

    .line 22
    and-int/lit8 p1, p7, 0x8

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    iget-object p4, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageComposeTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 27
    .line 28
    :cond_3
    move-object v4, p4

    .line 29
    and-int/lit8 p1, p7, 0x10

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    iget-object p5, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->appLanguage:Ljava/lang/String;

    .line 34
    .line 35
    :cond_4
    move-object v5, p5

    .line 36
    and-int/lit8 p1, p7, 0x20

    .line 37
    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    iget-object p6, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->splitViewMode:Lnet/thunderbird/core/preference/SplitViewMode;

    .line 41
    .line 42
    :cond_5
    move-object v6, p6

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    new-instance v0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 62
    .line 63
    invoke-direct/range {v0 .. v6}, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;-><init>(ZLnet/thunderbird/core/preference/AppTheme;Lnet/thunderbird/core/preference/SubTheme;Lnet/thunderbird/core/preference/SubTheme;Ljava/lang/String;Lnet/thunderbird/core/preference/SplitViewMode;)V

    .line 64
    .line 65
    .line 66
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
    instance-of v0, p1, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 10
    .line 11
    iget-boolean v0, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->fixedMessageViewTheme:Z

    .line 12
    .line 13
    iget-boolean v1, p1, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->fixedMessageViewTheme:Z

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->appTheme:Lnet/thunderbird/core/preference/AppTheme;

    .line 19
    .line 20
    iget-object v1, p1, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->appTheme:Lnet/thunderbird/core/preference/AppTheme;

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    iget-object v0, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageViewTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 26
    .line 27
    iget-object v1, p1, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageViewTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 28
    .line 29
    if-eq v0, v1, :cond_4

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    iget-object v0, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageComposeTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 33
    .line 34
    iget-object v1, p1, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageComposeTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 35
    .line 36
    if-eq v0, v1, :cond_5

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_5
    iget-object v0, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->appLanguage:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v1, p1, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->appLanguage:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_6

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_6
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->splitViewMode:Lnet/thunderbird/core/preference/SplitViewMode;

    .line 51
    .line 52
    iget-object p1, p1, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->splitViewMode:Lnet/thunderbird/core/preference/SplitViewMode;

    .line 53
    .line 54
    if-eq p0, p1, :cond_7

    .line 55
    .line 56
    :goto_0
    const/4 p0, 0x0

    .line 57
    return p0

    .line 58
    :cond_7
    :goto_1
    const/4 p0, 0x1

    .line 59
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->fixedMessageViewTheme:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x4cf

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x4d5

    .line 9
    .line 10
    :goto_0
    const/16 v1, 0x1f

    .line 11
    .line 12
    mul-int/2addr v0, v1

    .line 13
    iget-object v2, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->appTheme:Lnet/thunderbird/core/preference/AppTheme;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/2addr v2, v0

    .line 20
    mul-int/2addr v2, v1

    .line 21
    iget-object v0, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageViewTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/2addr v0, v2

    .line 28
    mul-int/2addr v0, v1

    .line 29
    iget-object v2, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageComposeTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    add-int/2addr v2, v0

    .line 36
    mul-int/2addr v2, v1

    .line 37
    iget-object v0, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->appLanguage:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v2, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->splitViewMode:Lnet/thunderbird/core/preference/SplitViewMode;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    add-int/2addr p0, v0

    .line 50
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DisplayCoreSettings(fixedMessageViewTheme="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->fixedMessageViewTheme:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", appTheme="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->appTheme:Lnet/thunderbird/core/preference/AppTheme;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", messageViewTheme="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageViewTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", messageComposeTheme="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->messageComposeTheme:Lnet/thunderbird/core/preference/SubTheme;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", appLanguage="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->appLanguage:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", splitViewMode="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->splitViewMode:Lnet/thunderbird/core/preference/SplitViewMode;

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

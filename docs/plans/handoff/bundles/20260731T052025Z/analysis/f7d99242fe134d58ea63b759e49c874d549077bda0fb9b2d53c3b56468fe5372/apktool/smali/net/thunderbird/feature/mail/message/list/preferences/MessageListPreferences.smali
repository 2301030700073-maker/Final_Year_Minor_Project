.class public final Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final actionRequiringUserConfirmation:Lkotlinx/collections/immutable/ImmutableSet;

.field public final colorizeBackgroundWhenRead:Z

.field public final dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

.field public final density:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

.field public final excerptLines:I

.field public final groupConversations:Z

.field public final senderAboveSubject:Z

.field public final showCorrespondentNames:Z

.field public final showFavouriteButton:Z

.field public final showMessageAvatar:Z


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;ZZZZZILnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;Lkotlinx/collections/immutable/ImmutableSet;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->density:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 14
    .line 15
    iput-boolean p2, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->groupConversations:Z

    .line 16
    .line 17
    iput-boolean p3, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showCorrespondentNames:Z

    .line 18
    .line 19
    iput-boolean p4, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showMessageAvatar:Z

    .line 20
    .line 21
    iput-boolean p5, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showFavouriteButton:Z

    .line 22
    .line 23
    iput-boolean p6, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->senderAboveSubject:Z

    .line 24
    .line 25
    iput p7, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->excerptLines:I

    .line 26
    .line 27
    iput-object p8, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 28
    .line 29
    iput-object p9, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->actionRequiringUserConfirmation:Lkotlinx/collections/immutable/ImmutableSet;

    .line 30
    .line 31
    iput-boolean p10, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->colorizeBackgroundWhenRead:Z

    .line 32
    .line 33
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
    instance-of v1, p1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;

    .line 12
    .line 13
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->density:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 14
    .line 15
    iget-object v3, p1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->density:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->groupConversations:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->groupConversations:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showCorrespondentNames:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showCorrespondentNames:Z

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showMessageAvatar:Z

    .line 35
    .line 36
    iget-boolean v3, p1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showMessageAvatar:Z

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showFavouriteButton:Z

    .line 42
    .line 43
    iget-boolean v3, p1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showFavouriteButton:Z

    .line 44
    .line 45
    if-eq v1, v3, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->senderAboveSubject:Z

    .line 49
    .line 50
    iget-boolean v3, p1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->senderAboveSubject:Z

    .line 51
    .line 52
    if-eq v1, v3, :cond_7

    .line 53
    .line 54
    return v2

    .line 55
    :cond_7
    iget v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->excerptLines:I

    .line 56
    .line 57
    iget v3, p1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->excerptLines:I

    .line 58
    .line 59
    if-eq v1, v3, :cond_8

    .line 60
    .line 61
    return v2

    .line 62
    :cond_8
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 63
    .line 64
    iget-object v3, p1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 65
    .line 66
    if-eq v1, v3, :cond_9

    .line 67
    .line 68
    return v2

    .line 69
    :cond_9
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->actionRequiringUserConfirmation:Lkotlinx/collections/immutable/ImmutableSet;

    .line 70
    .line 71
    iget-object v3, p1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->actionRequiringUserConfirmation:Lkotlinx/collections/immutable/ImmutableSet;

    .line 72
    .line 73
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_a

    .line 78
    .line 79
    return v2

    .line 80
    :cond_a
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->colorizeBackgroundWhenRead:Z

    .line 81
    .line 82
    iget-boolean p1, p1, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->colorizeBackgroundWhenRead:Z

    .line 83
    .line 84
    if-eq p0, p1, :cond_b

    .line 85
    .line 86
    return v2

    .line 87
    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->density:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->groupConversations:Z

    .line 10
    .line 11
    const/16 v2, 0x4d5

    .line 12
    .line 13
    const/16 v3, 0x4cf

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    move v1, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showCorrespondentNames:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    move v1, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_1
    add-int/2addr v0, v1

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showMessageAvatar:Z

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    move v1, v3

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move v1, v2

    .line 40
    :goto_2
    add-int/2addr v0, v1

    .line 41
    mul-int/lit8 v0, v0, 0x1f

    .line 42
    .line 43
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showFavouriteButton:Z

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    move v1, v3

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    move v1, v2

    .line 50
    :goto_3
    add-int/2addr v0, v1

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->senderAboveSubject:Z

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    move v1, v3

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    move v1, v2

    .line 60
    :goto_4
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->excerptLines:I

    .line 64
    .line 65
    add-int/2addr v0, v1

    .line 66
    mul-int/lit8 v0, v0, 0x1f

    .line 67
    .line 68
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/2addr v1, v0

    .line 75
    mul-int/lit8 v1, v1, 0x1f

    .line 76
    .line 77
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->actionRequiringUserConfirmation:Lkotlinx/collections/immutable/ImmutableSet;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    add-int/2addr v0, v1

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    .line 85
    .line 86
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->colorizeBackgroundWhenRead:Z

    .line 87
    .line 88
    if-eqz p0, :cond_5

    .line 89
    .line 90
    move v2, v3

    .line 91
    :cond_5
    add-int/2addr v0, v2

    .line 92
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MessageListPreferences(density="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->density:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", groupConversations="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->groupConversations:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", showCorrespondentNames="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", showMessageAvatar="

    .line 29
    .line 30
    const-string v2, ", showFavouriteButton="

    .line 31
    .line 32
    iget-boolean v3, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showCorrespondentNames:Z

    .line 33
    .line 34
    iget-boolean v4, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showMessageAvatar:Z

    .line 35
    .line 36
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, ", senderAboveSubject="

    .line 40
    .line 41
    const-string v2, ", excerptLines="

    .line 42
    .line 43
    iget-boolean v3, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->showFavouriteButton:Z

    .line 44
    .line 45
    iget-boolean v4, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->senderAboveSubject:Z

    .line 46
    .line 47
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->excerptLines:I

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ", dateTimeFormat="

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, ", actionRequiringUserConfirmation="

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->actionRequiringUserConfirmation:Lkotlinx/collections/immutable/ImmutableSet;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, ", colorizeBackgroundWhenRead="

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/list/preferences/MessageListPreferences;->colorizeBackgroundWhenRead:Z

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p0, ")"

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method

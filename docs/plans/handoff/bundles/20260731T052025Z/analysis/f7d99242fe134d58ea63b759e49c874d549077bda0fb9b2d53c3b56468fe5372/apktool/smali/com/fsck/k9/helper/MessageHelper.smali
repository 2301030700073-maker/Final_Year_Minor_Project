.class public final Lcom/fsck/k9/helper/MessageHelper;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final SPOOF_ADDRESS_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

.field public final messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

.field public final resourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "[^(]@"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/fsck/k9/helper/MessageHelper;->SPOOF_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/resources/K9CoreResourceProvider;Lapp/k9mail/core/android/common/contact/ContactRepository;Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/helper/MessageHelper;->resourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/helper/MessageHelper;->contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/helper/MessageHelper;->messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getRecipientDisplayNames([Lcom/fsck/k9/mail/Address;ZZI)Ljava/lang/CharSequence;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/helper/MessageHelper;->resourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/resources/K9CoreResourceProvider;->context:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    array-length v1, p1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_3

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/helper/MessageHelper;->messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 12
    .line 13
    invoke-virtual {v1}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->getConfig()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 18
    .line 19
    iget-boolean v1, v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowContactName:Z

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/fsck/k9/helper/MessageHelper;->contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object p0, v2

    .line 28
    :goto_0
    array-length v1, p1

    .line 29
    const/16 v3, 0x32

    .line 30
    .line 31
    if-lt v1, v3, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move-object v2, p0

    .line 35
    :goto_1
    new-instance p0, Landroid/text/SpannableStringBuilder;

    .line 36
    .line 37
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    array-length v1, p1

    .line 41
    const/4 v3, 0x0

    .line 42
    :goto_2
    if-ge v3, v1, :cond_4

    .line 43
    .line 44
    aget-object v4, p1, v3

    .line 45
    .line 46
    invoke-static {v4, p2, p3, p4, v2}, Lcom/fsck/k9/helper/FileHelper;->toFriendly(Lcom/fsck/k9/mail/Address;ZZILapp/k9mail/core/android/common/contact/ContactRepository;)Ljava/lang/CharSequence;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 51
    .line 52
    .line 53
    array-length v4, p1

    .line 54
    add-int/lit8 v4, v4, -0x1

    .line 55
    .line 56
    if-ge v3, v4, :cond_3

    .line 57
    .line 58
    const/16 v4, 0x2c

    .line 59
    .line 60
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .line 67
    .line 68
    const p2, 0x7f12045d

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    const/16 p2, 0x20

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    return-object p0

    .line 95
    :cond_5
    :goto_3
    const p0, 0x7f120652

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    return-object p0
.end method

.method public final getSenderDisplayName(Lcom/fsck/k9/mail/Address;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/helper/MessageHelper;->resourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/resources/K9CoreResourceProvider;->context:Landroid/content/Context;

    .line 6
    .line 7
    const p1, 0x7f120653

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/helper/MessageHelper;->messageListPreferencesManager:Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 19
    .line 20
    invoke-virtual {v0}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->getConfig()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 25
    .line 26
    iget-boolean v1, v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowContactName:Z

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object p0, p0, Lcom/fsck/k9/helper/MessageHelper;->contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    :goto_0
    invoke-virtual {v0}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->getConfig()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 39
    .line 40
    iget-boolean v1, v1, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowCorrespondentNames:Z

    .line 41
    .line 42
    invoke-virtual {v0}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->getConfig()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 47
    .line 48
    iget-boolean v2, v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isChangeContactNameColor:Z

    .line 49
    .line 50
    invoke-virtual {v0}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->getConfig()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 55
    .line 56
    iget v0, v0, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->contactNameColor:I

    .line 57
    .line 58
    invoke-static {p1, v1, v2, v0, p0}, Lcom/fsck/k9/helper/FileHelper;->toFriendly(Lcom/fsck/k9/mail/Address;ZZILapp/k9mail/core/android/common/contact/ContactRepository;)Ljava/lang/CharSequence;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.class public final Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final contactNameColor:Ljava/lang/Integer;

.field public final contactNameProvider:Lcom/fsck/k9/helper/RealContactNameProvider;

.field public final meText:Ljava/lang/String;

.field public final showContactNames:Z

.field public final showCorrespondentNames:Z


# direct methods
.method public constructor <init>(Lcom/fsck/k9/helper/RealContactNameProvider;ZZLjava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;->contactNameProvider:Lcom/fsck/k9/helper/RealContactNameProvider;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;->showCorrespondentNames:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;->showContactNames:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;->contactNameColor:Ljava/lang/Integer;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;->meText:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final buildDisplayName(Lcom/fsck/k9/mail/Address;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;->meText:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    const/4 v1, 0x6

    .line 21
    const/16 v2, 0x40

    .line 22
    .line 23
    invoke-static {v0, v2, p0, v1}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-lez p0, :cond_1

    .line 28
    .line 29
    add-int/lit8 p0, p0, -0x1

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    const/16 v1, 0x28

    .line 36
    .line 37
    if-eq p0, v1, :cond_1

    .line 38
    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    :cond_1
    if-eqz v0, :cond_2

    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_2
    iget-object p0, p1, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 44
    .line 45
    return-object p0
.end method

.method public final getDisplayName(Lcom/fsck/k9/mail/Address;Lnet/thunderbird/core/android/account/LegacyAccountDto;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->findIdentity(Lcom/fsck/k9/mail/Address;)Lnet/thunderbird/core/android/account/Identity;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p2}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdentities()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 p2, 0x1

    .line 26
    if-ne p1, p2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, v1, Lnet/thunderbird/core/android/account/Identity;->description:Ljava/lang/String;

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    iget-object p1, v1, Lnet/thunderbird/core/android/account/Identity;->name:Ljava/lang/String;

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iget-object p1, v1, Lnet/thunderbird/core/android/account/Identity;->email:Ljava/lang/String;

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    :goto_0
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;->meText:Ljava/lang/String;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_1
    return-object p1

    .line 45
    :cond_2
    iget-boolean p2, p0, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;->showCorrespondentNames:Z

    .line 46
    .line 47
    if-nez p2, :cond_3

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_3
    iget-boolean p2, p0, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;->showContactNames:Z

    .line 51
    .line 52
    if-eqz p2, :cond_7

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lnet/thunderbird/core/common/mail/TokensKt;->toEmailAddressOrNull(Ljava/lang/String;)Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    if-eqz p2, :cond_4

    .line 62
    .line 63
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;->contactNameProvider:Lcom/fsck/k9/helper/RealContactNameProvider;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/fsck/k9/helper/RealContactNameProvider;->contactRepository:Lapp/k9mail/core/android/common/contact/ContactRepository;

    .line 66
    .line 67
    check-cast v0, Lapp/k9mail/core/android/common/contact/CachingContactRepository;

    .line 68
    .line 69
    invoke-virtual {v0, p2}, Lapp/k9mail/core/android/common/contact/CachingContactRepository;->getContactFor(Lnet/thunderbird/core/common/mail/EmailAddress;)Lapp/k9mail/core/android/common/contact/Contact;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    iget-object p2, p2, Lapp/k9mail/core/android/common/contact/Contact;->name:Ljava/lang/String;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    const/4 p2, 0x0

    .line 79
    :goto_1
    if-nez p2, :cond_5

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;->buildDisplayName(Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_5
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;->contactNameColor:Ljava/lang/Integer;

    .line 87
    .line 88
    if-eqz p0, :cond_6

    .line 89
    .line 90
    new-instance p1, Landroid/text/SpannableString;

    .line 91
    .line 92
    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    invoke-direct {v0, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    const/16 p2, 0x21

    .line 109
    .line 110
    const/4 v1, 0x0

    .line 111
    invoke-virtual {p1, v0, v1, p0, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 112
    .line 113
    .line 114
    return-object p1

    .line 115
    :cond_6
    return-object p2

    .line 116
    :cond_7
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;->buildDisplayName(Lcom/fsck/k9/mail/Address;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0
.end method

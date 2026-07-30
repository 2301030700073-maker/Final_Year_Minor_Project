.class public Lcom/android/contacts/model/SimCard;
.super Ljava/lang/Object;
.source "SimCard.java"


# static fields
.field public static final NO_SUBSCRIPTION_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SimCard"


# instance fields
.field private final mCarrierName:Ljava/lang/CharSequence;

.field private mContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimContact;",
            ">;"
        }
    .end annotation
.end field

.field private final mCountryCode:Ljava/lang/String;

.field private mDismissed:Z

.field private final mDisplayName:Ljava/lang/CharSequence;

.field private mImported:Z

.field private final mPhoneNumber:Ljava/lang/String;

.field private final mSimId:Ljava/lang/String;

.field private final mSubscriptionId:I


# direct methods
.method public constructor <init>(Lcom/android/contacts/model/SimCard;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/android/contacts/model/SimCard;->mDismissed:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/contacts/model/SimCard;->mImported:Z

    .line 58
    iget-object v0, p1, Lcom/android/contacts/model/SimCard;->mSimId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/SimCard;->mSimId:Ljava/lang/String;

    .line 59
    iget v0, p1, Lcom/android/contacts/model/SimCard;->mSubscriptionId:I

    iput v0, p0, Lcom/android/contacts/model/SimCard;->mSubscriptionId:I

    .line 60
    iget-object v0, p1, Lcom/android/contacts/model/SimCard;->mCarrierName:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/contacts/model/SimCard;->mCarrierName:Ljava/lang/CharSequence;

    .line 61
    iget-object v0, p1, Lcom/android/contacts/model/SimCard;->mDisplayName:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/contacts/model/SimCard;->mDisplayName:Ljava/lang/CharSequence;

    .line 62
    iget-object v0, p1, Lcom/android/contacts/model/SimCard;->mPhoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/SimCard;->mPhoneNumber:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/android/contacts/model/SimCard;->mCountryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/model/SimCard;->mCountryCode:Ljava/lang/String;

    .line 64
    iget-boolean v0, p1, Lcom/android/contacts/model/SimCard;->mDismissed:Z

    iput-boolean v0, p0, Lcom/android/contacts/model/SimCard;->mDismissed:Z

    .line 65
    iget-boolean v0, p1, Lcom/android/contacts/model/SimCard;->mImported:Z

    iput-boolean v0, p0, Lcom/android/contacts/model/SimCard;->mImported:Z

    .line 66
    iget-object v0, p1, Lcom/android/contacts/model/SimCard;->mContacts:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/contacts/model/SimCard;->mContacts:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/contacts/model/SimCard;->mContacts:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/android/contacts/model/SimCard;->mDismissed:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/contacts/model/SimCard;->mImported:Z

    .line 73
    iput-object p1, p0, Lcom/android/contacts/model/SimCard;->mSimId:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/android/contacts/model/SimCard;->mSubscriptionId:I

    .line 75
    iput-object p3, p0, Lcom/android/contacts/model/SimCard;->mCarrierName:Ljava/lang/CharSequence;

    .line 76
    iput-object p4, p0, Lcom/android/contacts/model/SimCard;->mDisplayName:Ljava/lang/CharSequence;

    .line 77
    iput-object p5, p0, Lcom/android/contacts/model/SimCard;->mPhoneNumber:Ljava/lang/String;

    if-eqz p6, :cond_0

    .line 78
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p6, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/contacts/model/SimCard;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 83
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/model/SimCard;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static create(Landroid/telephony/SubscriptionInfo;)Lcom/android/contacts/model/SimCard;
    .locals 8

    .line 241
    new-instance v7, Lcom/android/contacts/model/SimCard;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 242
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 243
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/model/SimCard;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public static create(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Lcom/android/contacts/model/SimCard;
    .locals 14

    .line 247
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 248
    new-instance v0, Lcom/android/contacts/model/SimCard;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    .line 250
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/contacts/model/SimCard;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 253
    :cond_0
    new-instance p0, Lcom/android/contacts/model/SimCard;

    const/4 v10, 0x0

    const/4 v13, 0x0

    const-string v9, ""

    const-string v12, ""

    move-object v8, p0

    move-object v11, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/contacts/model/SimCard;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public areContactsAvailable()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/contacts/model/SimCard;->mContacts:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 205
    const-class v2, Lcom/android/contacts/model/SimCard;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 207
    :cond_1
    check-cast p1, Lcom/android/contacts/model/SimCard;

    .line 209
    iget v2, p0, Lcom/android/contacts/model/SimCard;->mSubscriptionId:I

    iget v3, p1, Lcom/android/contacts/model/SimCard;->mSubscriptionId:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/contacts/model/SimCard;->mDismissed:Z

    iget-boolean v3, p1, Lcom/android/contacts/model/SimCard;->mDismissed:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/contacts/model/SimCard;->mImported:Z

    iget-boolean v3, p1, Lcom/android/contacts/model/SimCard;->mImported:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/SimCard;->mSimId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/model/SimCard;->mSimId:Ljava/lang/String;

    .line 210
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/SimCard;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/model/SimCard;->mPhoneNumber:Ljava/lang/String;

    .line 211
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/model/SimCard;->mCountryCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/contacts/model/SimCard;->mCountryCode:Ljava/lang/String;

    .line 212
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getContactCount()I
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/contacts/model/SimCard;->mContacts:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Contacts not loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimContact;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/android/contacts/model/SimCard;->mContacts:Ljava/util/List;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/contacts/model/SimCard;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/CharSequence;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/contacts/model/SimCard;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormattedPhone()Ljava/lang/CharSequence;
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/contacts/model/SimCard;->mPhoneNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/model/SimCard;->mCountryCode:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/contacts/model/SimCard;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSimId()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/contacts/model/SimCard;->mSimId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionId()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/android/contacts/model/SimCard;->mSubscriptionId:I

    return v0
.end method

.method public hasContacts()Z
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/contacts/model/SimCard;->mContacts:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Contacts not loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasPhone()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/contacts/model/SimCard;->mPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValidSubscriptionId()Z
    .locals 2

    .line 95
    iget v0, p0, Lcom/android/contacts/model/SimCard;->mSubscriptionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 217
    iget-object v1, p0, Lcom/android/contacts/model/SimCard;->mSimId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/contacts/model/SimCard;->mPhoneNumber:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/contacts/model/SimCard;->mCountryCode:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 218
    iget v1, p0, Lcom/android/contacts/model/SimCard;->mSubscriptionId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 219
    iget-boolean v1, p0, Lcom/android/contacts/model/SimCard;->mDismissed:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 220
    iget-boolean v1, p0, Lcom/android/contacts/model/SimCard;->mImported:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isDismissed()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/android/contacts/model/SimCard;->mDismissed:Z

    return v0
.end method

.method public isImportable()Z
    .locals 3

    const-string v0, "SimCard"

    const/4 v1, 0x3

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isImportable: isDismissed? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/model/SimCard;->isDismissed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isImported? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Lcom/android/contacts/model/SimCard;->isImported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " contacts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/model/SimCard;->mContacts:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/SimCard;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/model/SimCard;->isImported()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/model/SimCard;->hasContacts()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImported()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/android/contacts/model/SimCard;->mImported:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimCard{mSimId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/model/SimCard;->mSimId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSubscriptionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/contacts/model/SimCard;->mSubscriptionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCarrierName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/model/SimCard;->mCarrierName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDisplayName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/model/SimCard;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mPhoneNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/model/SimCard;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCountryCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/contacts/model/SimCard;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mDismissed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/contacts/model/SimCard;->mDismissed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mImported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/contacts/model/SimCard;->mImported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mContacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/model/SimCard;->mContacts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withContacts(Ljava/util/List;)Lcom/android/contacts/model/SimCard;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/SimContact;",
            ">;)",
            "Lcom/android/contacts/model/SimCard;"
        }
    .end annotation

    .line 191
    new-instance v0, Lcom/android/contacts/model/SimCard;

    invoke-direct {v0, p0}, Lcom/android/contacts/model/SimCard;-><init>(Lcom/android/contacts/model/SimCard;)V

    .line 192
    iput-object p1, v0, Lcom/android/contacts/model/SimCard;->mContacts:Ljava/util/List;

    return-object v0
.end method

.method public varargs withContacts([Lcom/android/contacts/model/SimContact;)Lcom/android/contacts/model/SimCard;
    .locals 1

    .line 197
    new-instance v0, Lcom/android/contacts/model/SimCard;

    invoke-direct {v0, p0}, Lcom/android/contacts/model/SimCard;-><init>(Lcom/android/contacts/model/SimCard;)V

    .line 198
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/android/contacts/model/SimCard;->mContacts:Ljava/util/List;

    return-object v0
.end method

.method public withDismissedState(Z)Lcom/android/contacts/model/SimCard;
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/android/contacts/model/SimCard;->mImported:Z

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/model/SimCard;->withImportAndDismissStates(ZZ)Lcom/android/contacts/model/SimCard;

    move-result-object p1

    return-object p1
.end method

.method public withImportAndDismissStates(ZZ)Lcom/android/contacts/model/SimCard;
    .locals 1

    .line 176
    new-instance v0, Lcom/android/contacts/model/SimCard;

    invoke-direct {v0, p0}, Lcom/android/contacts/model/SimCard;-><init>(Lcom/android/contacts/model/SimCard;)V

    .line 177
    iput-boolean p1, v0, Lcom/android/contacts/model/SimCard;->mImported:Z

    .line 178
    iput-boolean p2, v0, Lcom/android/contacts/model/SimCard;->mDismissed:Z

    return-object v0
.end method

.method public withImportedState(Z)Lcom/android/contacts/model/SimCard;
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/android/contacts/model/SimCard;->mDismissed:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/model/SimCard;->withImportAndDismissStates(ZZ)Lcom/android/contacts/model/SimCard;

    move-result-object p1

    return-object p1
.end method
